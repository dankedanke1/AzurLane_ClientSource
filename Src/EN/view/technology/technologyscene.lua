slot0 = class("TechnologyScene", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "TechnologyUI"
end

function slot0.setTechnologys(slot0, slot1)
	slot0.technologyVOs = slot1
end

function slot0.setRefreshFlag(slot0, slot1)
	slot0.flag = slot1
end

function slot0.setPlayer(slot0, slot1)
	slot0.player = slot1

	if slot0._resPanel then
		slot0._resPanel:setResources(slot1)
	end
end

function slot0.init(slot0)
	slot0.srcollView = slot0:findTF("main/srcoll_rect/content")
	slot0.srcollViewCG = slot0.srcollView:GetComponent(typeof(CanvasGroup))
	slot0.technologyTpl = slot0:findTF("main/selecte_panel/technology_card")
	slot0.selectetPanel = slot0:findTF("main/selecte_panel")

	setActive(slot0.selectetPanel, false)

	slot0.helpBtn = slot0:findTF("main/help_btn")
	slot0.refreshBtn = slot0:findTF("main/refresh_btn")
	slot0.backBtn = slot0:findTF("top/back")
	slot0.arrLeftBtn = slot0:findTF("main/selecte_panel/left_arr_btn")
	slot0.arrRightBtn = slot0:findTF("main/selecte_panel/right_arr_btn")
	slot0.descTxt = slot0:findTF("desc/bg/Text", slot0.selectetPanel):GetComponent(typeof(Text))
	slot0.timerTxt = slot0:findTF("timer/bg/Text", slot0.selectetPanel):GetComponent(typeof(Text))
	slot0.itemContainer = slot0:findTF("consume_panel/bg/container", slot0.selectetPanel)
	slot0.itemTpl = slot0:findTF("item_tpl", slot0.itemContainer)
	slot0.emptyTF = slot0:findTF("consume_panel/bg/empty", slot0.selectetPanel)
	slot0.taskPanel = slot0:findTF("consume_panel/bg/task_panel", slot0.selectetPanel)
	slot0.taskSlider = slot0.taskPanel:Find("slider"):GetComponent(typeof(Slider))
	slot0.taskDesc = slot0.taskPanel:Find("slider/Text"):GetComponent(typeof(Text))
	slot0.descBG = slot0:findTF("desc/bg", slot0.selectetPanel):GetComponent(typeof(Image))
	slot0.techTimer = {}
	slot0.refreshTimer = {}
	slot0.cardtimer = {}
	slot0._playerResOb = slot0:findTF("top/playerRes")
	slot0._resPanel = PlayerResource.New()

	tf(slot0._resPanel._go):SetParent(tf(slot0._playerResOb), false)
end

function slot0.didEnter(slot0)
	slot0:initTechnologys()
	onButton(slot0, slot0.helpBtn, function ()
		pg.MsgboxMgr.GetInstance():ShowHelpWindow({
			helps = pg.gametip.technology_help_text.tip
		})
	end, SFX_PANEL)
	onButton(slot0, slot0.refreshBtn, function ()
		if _.any(slot0.technologyVOs, function (slot0)
			return slot0.state ~= Technology.STATE_IDLE
		end) then
			pg.MsgboxMgr:GetInstance():ShowMsgBox({
				content = i18n("technology_canot_refresh")
			})

			return
		end

		pg.MsgboxMgr:GetInstance():ShowMsgBox({
			content = i18n("technology_refresh_tip"),
			onYes = function ()
				slot0:emit(TechnologyMediator.ON_REFRESH)
			end
		})
	end, SFX_PANEL)
	onButton(slot0, slot0.backBtn, function ()
		slot0:emit(slot1.ON_BACK)
	end, SOUND_BACK)
	onButton(slot0, slot0.selectetPanel, function ()
		slot0:cancelSelected()
	end, SFX_PANEL)
	slot0:updateRefreshBtn(slot0.flag)
	slot0._resPanel:setResources(slot0.player)
end

function slot0.initTechnologys(slot0)
	slot0.technologCards = {}

	removeAllChildren(slot0.srcollView)

	for slot4, slot5 in ipairs(slot0.technologyVOs) do
		slot6 = cloneTplTo(slot0.technologyTpl, slot0.srcollView)
		slot0.technologCards[slot5.id] = slot6

		onButton(slot0, slot6, function ()
			slot0:onSelected(slot0)
		end, SFX_PANEL)
		slot0:updateTechnologyTF(slot6, slot5)
		slot0:updateTimer(slot5)
	end
end

function slot0.updateRefreshBtn(slot0, slot1)
	setButtonEnabled(slot0.refreshBtn, slot1 == 0)
end

function slot0.onSelected(slot0, slot1)
	if not slot1 then
		return
	end

	if not slot0.technologyVOs[slot1] then
		return
	end

	slot0.technologyCount = table.getCount(slot0.technologyVOs)
	slot0.contextData.selectedIndex = slot1
	slot0.srcollViewCG.alpha = 0.3

	setActive(slot0.technologCards[slot2.id].Find(slot3, "frame"), false)
	setActive(slot0.technologCards[slot2.id].Find(slot3, "print"), false)
	setActive(slot0.selectetPanel, true)
	slot0:updateSelectedInfo(slot2)
	onButton(slot0, slot0.arrLeftBtn, function ()
		if slot0.inAnim then
			return
		end

		if slot1 - 1 == 0 then
			slot0 = slot0.technologyCount
		end

		slot0:cancelSelected(function ()
			slot0:onSelected(slot0)
		end)
	end, SFX_PANEL)
	onButton(slot0, slot0.arrRightBtn, function ()
		if slot0.inAnim then
			return
		end

		slot0:cancelSelected(function ()
			slot0:onSelected(slot0)
		end)
	end, SFX_PANEL)
end

function slot0.updateSelectedInfo(slot0, slot1)
	if not slot0.contextData.selectedIndex then
		return
	end

	slot0:updateTechnologyTF(slot0.technologyTpl, slot1, true)
	slot0:updateExtraInfo(slot1)
end

function slot0.updateExtraInfo(slot0, slot1)
	slot0.timerTxt.text = pg.TimeMgr.GetInstance():DescCDTime(slot2)
	slot0.descTxt.text = slot1:getConfig("desc")
	slot0.descBG.sprite = GetSpriteFromAtlas("ui/TechnologyUI_atlas", slot1:getConfig("rarity"))

	for slot8 = slot0.itemContainer.childCount + 1, #slot1:getConfig("consume"), 1 do
		cloneTplTo(slot0.itemTpl, slot0.itemContainer)
	end

	for slot8 = 1, slot0.itemContainer.childCount, 1 do
		setActive(slot0.itemContainer:GetChild(slot8 - 1), slot8 <= #slot3)

		if slot8 <= #slot3 then
			slot0:updateItem(slot9, slot1, slot3[slot8])
		end
	end

	setActive(slot0.emptyTF, not slot3 or #slot3 <= 0)

	if slot1:hasCondition() then
		slot0.taskSlider.value = getProxy(TaskProxy):getTaskById(slot1:getTaskId()) or Task.New({
			id = slot5
		}).progress / getProxy(TaskProxy).getTaskById(slot1.getTaskId()) or Task.New():getConfig("target_num")
		slot0.taskDesc.text = getProxy(TaskProxy).getTaskById(slot1.getTaskId()) or Task.New():getConfig("desc") .. "(" .. getProxy(TaskProxy).getTaskById(slot1.getTaskId()) or Task.New().progress .. "/" .. getProxy(TaskProxy).getTaskById(slot1.getTaskId()) or Task.New():getConfig("target_num") .. ")"
	else
		slot0.taskDesc.text = i18n("technology_task_none_tip")
		slot0.taskSlider.value = 0
	end

	if slot0.techTimer[slot1.id] then
		slot0.techTimer[slot1.id]:Stop()

		slot0.techTimer[slot1.id] = nil
	end

	function slot5()
		slot0.techTimer[slot1.id]:Stop()

		slot0.techTimer[slot1.id].Stop.techTimer[slot0.techTimer[slot1.id].id] = nil
		slot0.techTimer[slot1.id].Stop.techTimer.timerTxt.text = "00:00:00"
	end

	if slot1:isStarting() then
		slot0.techTimer[slot1.id] = Timer.New(function ()
			if slot0.time - pg.TimeMgr.GetInstance():GetServerTime() <= 0 then
				slot1()
			else
				slot2.timerTxt.text = pg.TimeMgr.GetInstance():DescCDTime(slot0.time - slot0)
			end
		end, 1, -1)

		slot0.techTimer[slot1.id]:Start()
		slot0.techTimer[slot1.id].func()
	end

	for slot10 = 1, slot0.itemContainer.childCount, 1 do
		slot11 = slot0.itemContainer:GetChild(slot10 - 1)

		setActive(slot11:Find("check"), slot1:isStart())
		setActive(slot11:Find("count"), not slot1:isStart())
	end
end

function slot0.cancelSelected(slot0, slot1)
	if not slot0.contextData.selectedIndex then
		if slot1 then
			slot1()
		end

		return
	end

	if not slot0.technologyVOs[slot2] then
		if slot1 then
			slot1()
		end

		return
	end

	slot0.inAnim = true
	slot0.srcollViewCG.alpha = 1

	setActive(slot0.technologCards[slot3.id].Find(slot4, "frame"), true)
	setActive(slot0.technologCards[slot3.id].Find(slot4, "print"), true)
	removeOnButton(slot0.arrLeftBtn)
	removeOnButton(slot0.arrRightBtn)
	setActive(slot0.selectetPanel, false)

	if slot0.timer then
		slot0.timer:Stop()

		slot0.timer = nil
	end

	slot0.contextData.selectedIndex = nil
	slot0.timer = Timer.New(function ()
		if slot0 then
			slot0()
		end

		slot1.inAnim = nil
	end, 0.2, 1)

	slot0.timer:Start()

	if slot0.techTimer[slot3.id] then
		slot0.techTimer[slot3.id]:Stop()

		slot0.techTimer[slot3.id] = nil
	end
end

function slot0.updateTechnology(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.technologyVOs) do
		if slot6.id == slot1.id then
			slot0.technologyVOs[slot5] = slot1
		end
	end

	slot0:updateTechnologyTF(slot2, slot1)
	slot0:updateTimer(slot1)
end

function slot0.updateTimer(slot0, slot1)
	slot3 = slot0.technologCards[slot1.id].Find(slot2, "frame/btns/dev_btn/Text"):GetComponent(typeof(Text))
	slot4 = slot0.technologCards[slot1.id].Find(slot2, "frame/btns/dev_btn/Image")

	if slot0.cardtimer[slot1.id] then
		slot0.cardtimer[slot1.id]:Stop()

		slot0.cardtimer[slot1.id] = nil
	end

	if Technology.STATE_STARTING == slot1:gteState() then
		setActive(go(slot3), true)
		setActive(slot4, false)

		slot0.cardtimer[slot1.id] = Timer.New(function ()
			if slot0.time - pg.TimeMgr:GetInstance():GetServerTime() <= 0 then
				if slot1.cardtimer[slot0.id] then
					slot1.cardtimer[slot0.id]:Stop()

					slot1.cardtimer[slot0.id] = nil
				end

				if not slot0:canFinish() then
					setActive(go(slot2), false)
					setActive(go(slot2), true)
				else
					slot2.text = "00:00:00"
				end
			else
				slot2.text = pg.TimeMgr:GetInstance():DescCDTime(slot0 - slot1)
			end
		end, 1, -1)

		slot0.cardtimer[slot1.id]:Start()
		slot0.cardtimer[slot1.id].func()
	end
end

function slot0.updateTechnologyTF(slot0, slot1, slot2, slot3)
	slot0:updateInfo(slot1, slot2)

	slot4 = slot2:gteState()

	setActive(slot0:findTF("frame/btns/start_btn", slot1), slot3 and slot4 == Technology.STATE_IDLE)
	setActive(slot0:findTF("frame/btns/finish_btn", slot1), slot4 == Technology.STATE_FINISHED)
	setActive(slot0:findTF("frame/btns/stop_btn", slot1), slot3 and slot4 == Technology.STATE_STARTING)
	setActive(slot0:findTF("frame/btns/desc_btn", slot1), not slot3 and slot4 == Technology.STATE_IDLE)
	setActive(slot0:findTF("frame/btns/dev_btn", slot1), not slot3 and slot4 == Technology.STATE_STARTING)
	removeOnButton(slot5)
	removeOnButton(slot0.findTF("frame/btns/finish_btn", slot1))
	removeOnButton(slot0.findTF("frame/btns/stop_btn", slot1))

	if slot0.refreshTimer[slot2.id] then
		slot0.refreshTimer[slot2.id]:Stop()

		slot0.refreshTimer[slot2.id] = nil
	end

	if slot4 == Technology.STATE_IDLE then
		onButton(slot0, slot5, function ()
			if _.any(slot0.technologyVOs, function (slot0)
				return slot0.state ~= Technology.STATE_IDLE
			end) then
				pg.TipsMgr:GetInstance():ShowTips(i18n("technology_is_actived"))

				return
			end

			if #slot1:getConfig("consume") > 0 then
				pg.MsgboxMgr:GetInstance():ShowMsgBox({
					content = i18n("technology_task_build_tip", getDropInfo(slot0)),
					onYes = function ()
						slot0:emit(TechnologyMediator.ON_START, slot1.id)
					end
				})
			else
				slot0:emit(TechnologyMediator.ON_START, slot1.id)
			end
		end, SFX_PANEL)
		setButtonEnabled(slot5, slot2:hasResToStart())
	elseif slot4 == Technology.STATE_STARTING then
		onButton(slot0, slot7, function ()
			pg.MsgboxMgr:GetInstance():ShowMsgBox({
				content = i18n("technology_stop_tip"),
				onYes = function ()
					slot0:emit(TechnologyMediator.ON_STOP, slot1.id)
				end
			})
		end, SFX_PANEL)

		if slot2.time - pg.TimeMgr:GetInstance():GetServerTime() > 0 then
			slot0.refreshTimer[slot2.id] = Timer.New(function ()
				slot0:emit(TechnologyMediator.ON_TIME_OVER, slot1.id)
			end, slot10, 1)

			slot0.refreshTimer[slot2.id]:Start()
		else
			slot0:emit(TechnologyMediator.ON_TIME_OVER, slot2.id)
		end
	elseif slot4 == Technology.STATE_FINISHED then
		onButton(slot0, slot6, function ()
			slot0:emit(TechnologyMediator.ON_FINISHED, slot1.id)
		end, SFX_PANEL)
		onButton(slot0, slot1, function ()
			slot0:emit(TechnologyMediator.ON_FINISHED, slot1.id)
		end, SFX_PANEL)
	end
end

function slot0.updateInfo(slot0, slot1, slot2)
	setImageSprite(slot0:findTF("frame/icon", slot1), GetSpriteFromAtlas("technologycard", slot3))
	setText(slot0:findTF("frame/name_bg/Text", slot1), slot2:getConfig("name"))
	setText(slot0:findTF("frame/sub_name", slot1), slot2:getConfig("sub_name") or "")
	setActive(slot0:findTF("frame/label", slot1), slot2:getConfig("label") and setText ~= "")

	if slot4 and slot4 ~= "" then
		setImageSprite(slot0:findTF("frame/label/Image", slot1), GetSpriteFromAtlas("technologycard", slot4))
	end

	slot7 = slot1:Find("frame/item_tpl")

	for slot12 = slot1:Find("frame/item_container").childCount + 1, #slot2:getConfig("drop_client"), 1 do
		cloneTplTo(slot7, slot6)
	end

	for slot12 = 1, slot6.childCount, 1 do
		setActive(slot6:GetChild(slot12 - 1), slot12 <= #slot5)

		if slot12 <= #slot5 then
			slot0:updateItem(slot13, slot2, slot5[slot12])
		end
	end
end

function slot0.updateItem(slot0, slot1, slot2, slot3)
	slot4 = nil

	if slot3[1] == DROP_TYPE_RESOURCE then
		slot4 = Item.New({
			id = id2ItemId(slot3[2])
		})
	elseif slot3[1] == DROP_TYPE_ITEM then
		slot4 = Item.New({
			id = slot3[2]
		})
	end

	GetImageSpriteFromAtlasAsync(slot4:getConfig("icon"), "", slot7)
	setImageSprite(slot5, GetSpriteFromAtlas("TechnologyCard", "frame_" .. slot8))
	setImageSprite(slot6, GetSpriteFromAtlas("weaponframes", "bg" .. ItemRarity.Rarity2Print(slot8)))

	if not IsNil(slot0:findTF("count", slot1)) then
		slot11 = nil

		setColorCount(slot10, (slot3[1] ~= DROP_TYPE_RESOURCE or slot0.player:getResById(slot3[2])) and getProxy(BagProxy):getItemCountById(slot4.id), slot3[3])
	end

	onButton(slot0, slot1, function ()
		if #(slot0:getConfig("display_icon") or {}) > 0 then
			pg.MsgboxMgr.GetInstance():ShowItemBox({
				items = _.map(slot0, function (slot0)
					return {
						type = slot0[1],
						id = slot0[2]
					}
				end),
				content = slot0:getConfig("display"),
				itemFunc = function (slot0)
					slot0:emit(slot1.ON_ITEM, slot0.id)
				end
			})
		else
			slot1:emit(slot2.ON_ITEM, slot0.id)
		end
	end, SFX_PANEL)
end

function slot0.clearTimer(slot0, ...)
	if slot0.timer then
		slot0.timer:Stop()

		slot0.timer = nil
	end

	for slot4, slot5 in pairs(slot0.techTimer) do
		slot5:Stop()
	end

	slot0.techTimer = {}

	for slot4, slot5 in pairs(slot0.refreshTimer) do
		slot5:Stop()
	end

	slot0.refreshTimer = {}

	for slot4, slot5 in pairs(slot0.cardtimer) do
		slot5:Stop()
	end

	slot0.cardtimer = {}
end

function slot0.willExit(slot0)
	slot0:clearTimer()

	slot0.techTimer = nil
	slot0.refreshTimer = nil
end

return slot0
