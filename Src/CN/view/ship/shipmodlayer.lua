slot0 = class("ShipModLayer", import("..base.BaseUI"))
slot1 = 12
slot0.IGNORE_ID = 4

function slot0.getUIName(slot0)
	return "ShipModUI1"
end

function slot0.setShipVOs(slot0, slot1)
	slot0.shipVOs = slot1
end

function slot0.init(slot0)
	slot0.shipContainer = slot0:findTF("main/bg/add_ship_panel/ships")
	slot0.attrsPanel = slot0:findTF("main/bg/property_panel/attrs")

	setText(slot0:findTF("main/bg/add_ship_panel/title/tip"), i18n("ship_mod_exp_to_attr_tip"))
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0:findTF("main/ok_btn"), function ()
		if slot0.shipVO:isActivityNpc() then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				content = i18n("npc_strength_tip"),
				onYes = slot0
			})
		else
			slot0()
		end
	end, SFX_CONFIRM)
	onButton(slot0, slot0:findTF("main/cancel_btn"), function ()
		if not slot0.contextData.materialShipIds or table.getCount(slot0) == 0 then
			return
		end

		slot0:clearAllShip()
	end, SFX_CANCEL)

	if not slot0.contextData.materialShipIds then
		slot0:switchToPage(0.1)
	end

	slot0:initAttrs()

	slot0.inited = true

	slot0:emit(ShipModMediator.LOADEND, slot0._tf:Find("main"))
end

function slot0.switchToPage(slot0, slot1)
	setAnchoredPosition(slot0._tf:Find("main"), Vector3(1300, 0, 0))
	LeanTween.moveLocal(go(findTF(slot0._tf, "main")), Vector3(620, 0, 0), 0.2):setEase(LeanTweenType.easeInOutSine):setDelay(slot1)
end

function slot0.startModShip(slot0)
	if not slot0.hasAddition then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("ship_mod_no_addition_tip"),
			onYes = function ()
				slot0:emit(ShipModMediator.MOD_SHIP, slot0.shipVO.id)
			end
		})
	else
		slot0:emit(ShipModMediator.MOD_SHIP, slot0.shipVO.id)
	end
end

function slot0.hasEliteShips(slot0, slot1, slot2)
	function slot4(slot0, slot1)
		if not _.include(slot0, slot0) then
			slot0[slot1] = slot0
		end
	end

	_.each(slot1, function (slot0)
		if slot0[slot0].level > 1 then
			slot1(i18n("destroy_high_level_tip"), 2)
		end

		if slot1:getRarity() >= 4 then
			slot1(i18n("destroy_high_rarity_tip"), 1)
		end
	end)

	return {
		"",
		""
	}
end

function slot0.setShip(slot0, slot1)
	if slot0.shipVO and slot0.shipVO.id ~= slot1.id then
		slot0:switchToPage()
	end

	slot0.shipVO = slot1

	slot0:initSelectedShips()

	if slot0.inited then
		slot0:initAttrs()
	end
end

function slot0.clearAllShip(slot0)
	for slot4 = 1, slot0, 1 do
		slot5 = slot0.shipContainer:GetChild(slot4 - 1)

		setActive(slot5:Find("add"), true)
		setActive(slot5:Find("icon_bg"), false)
		onButton(slot0, slot5:Find("add"), function ()
			slot0:emit(ShipModMediator.ON_SELECT_MATERIAL_SHIPS)
		end, SFX_PANEL)
	end

	slot0.contextData.materialShipIds = nil

	slot0:updateAttrs()
end

function slot0.initSelectedShips(slot0)
	slot2 = table.getCount(slot0.contextData.materialShipIds or {})

	for slot6 = 1, slot0, 1 do
		slot7 = slot0.shipContainer:GetChild(slot6 - 1)

		if slot6 <= slot2 then
			slot0:updateShip(slot7, slot1[slot6])
		else
			onButton(slot0, slot7:Find("add"), function ()
				slot0:emit(ShipModMediator.ON_SELECT_MATERIAL_SHIPS)
			end, SFX_PANEL)
		end

		setActive(slot7:Find("add"), slot2 < slot6)
		setActive(slot7:Find("icon_bg"), slot6 <= slot2)
	end
end

function slot0.updateShip(slot0, slot1, slot2)
	onButton(slot0, slot1, function ()
		for slot3, slot4 in pairs(slot0.contextData.materialShipIds) do
			if slot1 == slot4 then
				setActive(slot5, true)
				setActive(slot2:Find("icon_bg"), false)
				onButton(slot0, slot5, function ()
					slot0:emit(ShipModMediator.ON_SELECT_MATERIAL_SHIPS)
				end, SFX_PANEL)
				table.remove(slot0.contextData.materialShipIds, slot3)
				slot0:updateAttrs()

				break
			end
		end
	end, SFX_PANEL)
	updateShip(slot1, slot3, {
		initStar = true
	})
	setText(slot1:Find("icon_bg/lv/Text"), slot0.shipVOs[slot2].level)
end

function slot0.initAttrs(slot0)
	slot0.attrTFs = {}

	for slot4, slot5 in pairs(ShipModAttr.ID_TO_ATTR) do
		if slot0.IGNORE_ID ~= slot4 then
			slot0.attrTFs[slot4] = slot0.attrsPanel:Find("attr_" .. slot4)
		end
	end

	slot0:updateAttrs()
end

function slot0.updateAttrs(slot0)
	slot0.hasAddition = nil

	for slot4, slot5 in pairs(slot0.attrTFs) do
		slot0:updateAttr(slot4)
	end
end

function slot0.updateAttr(slot0, slot1)
	slot3 = slot0:findTF("info", slot2)
	slot4 = slot0.attrTFs[slot1].GetComponent(slot2, typeof(CanvasGroup))
	slot6 = slot0.shipVO:getModAttrTopLimit(slot5)
	slot7 = intProperties(slot0.shipVO:getShipProperties())
	slot10 = slot0.shipVO:getModExpRatio(slot5)
	slot11 = math.max(slot0.shipVO:getModExpRatio(ShipModAttr.ID_TO_ATTR[slot1]), 1)

	if slot0.getExpAddition(slot0.shipVO, slot8, slot5) ~= 0 then
		slot0.hasAddition = true
	end

	setText(slot0:findTF("info_container/addition", slot3), "+" .. slot14)
	setText(slot0:findTF("info_container/name", slot3), AttributeType.Type2Name(slot5))
	setText(slot0:findTF("max_container/Text", slot3), slot12)
	setText(slot0:findTF("info_container/value", slot3), slot7[slot5])

	slot4.alpha = (slot7[slot5] == 0 and 0.3) or 1

	slot0:setSliderValue((slot7[slot5] == 0 and 0.3) or 1, (slot9 + slot13) / slot11)

	slot16 = slot13 / slot11
	slot17 = slot13 + slot9 .. "/" .. slot10

	if slot12 == slot7[slot5] and slot7[slot5] ~= 0 then
		slot16 = 1
		slot17 = "MAX"
	end

	slot0:setSliderValue(slot18, slot16)
	setText(slot0:findTF("exp_container/Text", slot2), slot17)
end

function slot0.modAttrAnim(slot0, slot1, slot2, slot3)
	slot4 = slot3 or 0.3
	slot5 = intProperties(slot1:getShipProperties())
	slot6 = intProperties(slot2:getShipProperties())
	slot0.tweens = {}

	for slot10, slot11 in pairs(slot0.attrTFs) do
		slot14 = slot0.shipVO:getModAttrBaseMax(ShipModAttr.ID_TO_ATTR[slot10])

		if slot1:getModAttrTopLimit(slot12) == 0 then
			slot0:updateAttr(slot10)
		else
			slot16 = slot0:findTF("info", slot15)
			slot17 = slot0:findTF("info_container/value", slot16)
			slot22 = slot0:findTF("cur_slider", slot16).GetComponent(slot20, typeof(Slider))
			slot25 = slot0:findTF("info_container/addition", slot16)
			slot26 = slot0:findTF("exp_container/Text", slot15)

			slot0:setSliderValue(slot23, 0)
			setText(slot0:findTF("exp_container/Text", slot15), slot24 .. "/" .. math.max(slot1:getModExpRatio(slot12), 1))

			function slot27(slot0, slot1)
				setText(slot0, slot0)
				setText(slot1, "+" .. slot1)
			end

			if slot5[slot12] - slot6[slot12] >= 1 then
				slot28 = slot6[slot12]

				slot0:tweenValue(slot22, slot22.value, 1, slot4, nil, function (slot0)
					slot0:setSliderValue(slot0.setSliderValue, slot0)
				end, function ()
					playSoundEffect(SFX_BREAK_OUT_FULL)

					slot0 = playSoundEffect + 1

					SFX_BREAK_OUT_FULL(SFX_BREAK_OUT_FULL, slot2[slot3] - SFX_BREAK_OUT_FULL)

					if slot2[slot3] -  > 0 then
						slot4:tweenValue(slot5, 0, 1, slot6, nil, function (slot0)
							slot0:setSliderValue(slot0.setSliderValue, slot0)
						end, function ()
							playSoundEffect(SFX_BREAK_OUT_FULL)

							slot0 = playSoundEffect + 1

							SFX_BREAK_OUT_FULL(SFX_BREAK_OUT_FULL, slot2[slot3] - SFX_BREAK_OUT_FULL)

							if SFX_BREAK_OUT_FULL == slot2[slot3] - SFX_BREAK_OUT_FULL[SFX_BREAK_OUT_FULL] then
								slot4:tweenValue(slot5, 0, slot6 / slot7, slot8, nil, function (slot0)
									slot0:setSliderValue(slot0.setSliderValue, slot0)
								end, function ()
									if slot0 == slot1[slot2] then
										slot3:setSliderValue(slot4, 1)
										setText(slot5, "MAX")
									end
								end)
							end
						end, slot0)
					else
						slot4:tweenValue(slot5, 0, slot7 / slot8, slot8, nil, function (slot0)
							slot0:setSliderValue(slot0.setSliderValue, slot0)
						end, function ()
							if slot0 == slot1[slot2] then
								slot3:setSliderValue(slot4, 1)
								setText(slot5, "MAX")
							end
						end)
					end
				end)
			else
				slot0:tweenValue(slot22, slot22.value, slot24 / slot19, slot4, nil, function (slot0)
					slot0:setSliderValue(slot0.setSliderValue, slot0)
				end, function ()
					if slot0 == slot1[slot2] then
						slot3:setSliderValue(slot4, 1)
						setText(slot5, "MAX")
					end
				end)
			end
		end
	end
end

function slot0.tweenValue(slot0, slot1, slot2, slot3, slot4, slot5, slot6, slot7, slot8)
	slot0.tweens[slot1] = slot1
	slot10 = LeanTween.value(go(slot1), slot2, slot3, slot4):setOnUpdate(System.Action_float(function (slot0)
		if slot0 then
			slot0(slot0)
		end

		return
	end))
	slot9 = LeanTween.value(go(slot1), slot2, slot3, slot4).setOnUpdate(System.Action_float(function (slot0)
		if slot0 then
			slot0(slot0)
		end

		return
	end)).setDelay
	slot11 = slot5 or 0
	slot9 = LeanTween.value(go(slot1), slot2, slot3, slot4).setOnUpdate(System.Action_float(function (slot0)
		if slot0 then
			slot0(slot0)
		end

		return
	end)).setDelay(slot10, slot11):setOnComplete(System.Action(function ()
		if slot0 then
			slot0()
		end

		return
	end))
	slot11 = 0

	if slot8 and slot8 > 0 then
		slot9:setRepeat(slot8)
	end

	return
end

function slot0.getModExpAdditions(slot0, slot1)
	slot3 = pg.ship_data_template[slot0.configId].group_type
	slot4 = pg.ship_data_strengthen
	slot5 = {}

	for slot9, slot10 in pairs(ShipModAttr.ID_TO_ATTR) do
		slot11 = 0

		if slot9 ~= ShipModLayer.IGNORE_ID then
			for slot15, slot16 in pairs(slot1) do
				slot19 = slot4[slot2[slot16.configId].strengthen_id].attr_exp[slot9 - 1]

				if slot2[slot16.configId].group_type == slot3 then
					slot19 = slot19 * 2
				end

				slot11 = slot11 + slot19
			end
		end

		slot5[slot10] = slot11
	end

	return slot5
end

function slot0.getMaterialShips(slot0, slot1)
	slot2 = {}
	slot3 = ipairs

	if not slot1 then
		slot4 = {}
	end

	for slot6, slot7 in slot3(slot4) do
		table.insert(slot2, slot0.shipVOs[slot7])
	end

	return slot2
end

function slot0.getExpAddition(slot0, slot1, slot2)
	slot3 = slot0:getModExpAdditions(slot1)

	if slot0:getModAttrTopLimit(slot2) == 0 then
		return 0, 0
	else
		slot4 = Clone(slot0)

		slot4:addModAttrExp(slot2, slot3[slot2])

		return slot4:getModProperties(slot2) - slot0:getModProperties(slot2)
	end

	return
end

function slot0.getRemainExp(slot0, slot1)
	return slot0:getModProperties(slot1) % math.max(slot0:getModExpRatio(slot1), 1)
end

function slot0.setSliderValue(slot0, slot1, slot2)
	if slot2 ~= 0 or not slot2 then
		slot3 = math.max(slot2, 0.08)
	end

	slot1.value = slot3

	return
end

function slot0.willExit(slot0)
	slot1 = pairs

	if not slot0.tweens then
		slot2 = {}
	end

	for slot4, slot5 in slot1(slot2) do
		if LeanTween.isTweening(go(slot5)) then
			LeanTween.cancel(go(slot5))
		end
	end

	slot0.tweens = nil

	return
end

function slot0.onBackPressed(slot0)
	slot0:emit(BaseUI.ON_BACK_PRESSED, true)

	return
end

return slot0