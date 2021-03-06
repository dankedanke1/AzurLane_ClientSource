slot0 = class("ShipEvaluationLayer", import("..base.BaseUI"))
slot0.EVENT_LIKE = "event like"
slot0.EVENT_EVA = "event eva"
slot0.EVENT_ZAN = "event zan"

function slot0.getUIName(slot0)
	return "EvaluationUI"
end

function slot0.init(slot0)
	slot0.mask = slot0:findTF("mask")
	slot0.mainPanel = slot0:findTF("mainPanel")
	slot0.head = slot0:findTF("bg/left_panel/ship_tpl", slot0.mainPanel)
	slot0.labelHeart = slot0:findTF("bg/left_panel/zan_count/bg/Text", slot0.mainPanel)
	slot0.labelEva = slot0:findTF("bg/left_panel/evaluation_count/bg/Text", slot0.mainPanel)
	slot0.btnLike = slot0:findTF("bg/left_panel/btnLike", slot0.mainPanel)
	slot0.btnEva = slot0:findTF("bg/bottom_panel/send_btn", slot0.mainPanel)
	slot0.btnClose = slot0:findTF("bg/top_panel/btnBack", slot0.mainPanel)
	slot0.input = slot0:findTF("bg/bottom_panel/Input", slot0.mainPanel)
	slot0.inputText = slot0:findTF("Text", slot0.input)
	slot0.labelTip = slot0:findTF("bg/bottom_panel/tip", slot0.mainPanel)
	slot0.list = slot0:findTF("bg/right_panel/list", slot0.mainPanel)
	slot0.content = slot0:findTF("content", slot0.list)
	slot0.itemTpl = slot0:findTF("bg/right_panel/item", slot0.mainPanel)
	slot0.iconType = findTF(slot0.head, "icon_bg/type"):GetComponent(typeof(Image))
	slot0.imageBg = findTF(slot0.head, "icon_bg"):GetComponent(typeof(Image))
	slot0.imageFrame = findTF(slot0.head, "icon_bg/frame"):GetComponent(typeof(Image))
	slot0.iconShip = findTF(slot0.head, "icon_bg/icon"):GetComponent(typeof(Image))
	slot0.labelName = findTF(slot0.head, "icon_bg/name"):GetComponent(typeof(Text))
	slot0.stars = findTF(slot0.head, "icon_bg/stars")
	slot0.star = findTF(slot0.head, "icon_bg/stars/star_tpl")

	setActive(slot0.itemTpl, false)
	setActive(slot0.labelTip, false)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf, false)
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0.mask, function ()
		slot0:emit(BaseUI.ON_CLOSE)
	end, SFX_CANCEL)
	onButton(slot0, slot0.btnClose, function ()
		slot0:emit(BaseUI.ON_CLOSE)
	end, SFX_CANCEL)
	onButton(slot0, slot0.btnLike, function ()
		slot0:emit(slot1.EVENT_LIKE)
	end, SFX_PANEL)
	onButton(slot0, slot0.btnEva, function ()
		if string.len(slot0) > 0 then
			setInputText(slot0.input, "")
			slot0:emit(slot1.EVENT_EVA, slot0)
		end
	end, SFX_PANEL)
	onInputChanged(slot0, slot0.input, function ()
		slot1, slot2 = nil

		if string.len(slot0) > 0 then
			if CollectionProxy.MAX_DAILY_EVA_COUNT <= slot0.shipGroup.evaluation.ievaCount then
				slot1 = true
				slot2 = i18n("eva_count_limit")
			elseif wordVer(slot0) > 0 then
				slot1 = true
				slot2 = i18n("invalidate_evaluation")
			end
		end

		if slot1 then
			setActive(slot0.labelTip, true)
			setText(slot0.labelTip, slot2)
			setTextColor(slot0.inputText, Color.red)
			setButtonEnabled(slot0.btnEva, false)
		else
			setActive(slot0.labelTip, false)
			setTextColor(slot0.inputText, Color.white)
			setButtonEnabled(slot0.btnEva, true)
		end
	end)
end

function slot0.setShipGroup(slot0, slot1)
	slot0.shipGroup = slot1
end

function slot0.setShowTrans(slot0, slot1)
	slot0.showTrans = slot1
end

function slot0.flushAll(slot0)
	slot0:flushShip()
	slot0:flushHeart()
	slot0:flushEva()
end

function slot0.flushShip(slot0)
	slot1 = slot0.shipGroup.shipConfig

	GetImageSpriteFromAtlasAsync("shipframe", ((slot0.shipGroup:isBluePrintGroup() and "1") or "") .. shipRarity2bgPrint(slot2), slot0.imageFrame)
	LoadImageSpriteAsync("bg/star_level_card_" .. ((slot0.shipGroup:isBluePrintGroup() and "1") or "") .. shipRarity2bgPrint(slot2), slot0.imageBg)

	slot0.iconShip.sprite = GetSpriteFromAtlas("shipYardIcon/unknown", "")

	LoadImageSpriteAsync("shipYardIcon/" .. slot0.shipGroup:getPainting(slot0.showTrans), slot0.iconShip, true)

	slot0.labelName.text = slot0.shipGroup:getName(slot0.showTrans)

	if not GetSpriteFromAtlas("shiptype", shipType2print(slot0.shipGroup:getShipType(slot0.showTrans))) then
		warning("找不到船形, shipConfigId: " .. shipVO.configId)
	end

	slot0.iconType.sprite = slot5

	for slot10 = slot0.stars.childCount, slot1.star - 1, 1 do
		cloneTplTo(slot0.star, slot0.stars)
	end
end

function slot0.flushHeart(slot0)
	setButtonEnabled(slot0.btnLike, not slot0.shipGroup.iheart)
	setText(slot0.labelHeart, slot0.shipGroup.evaluation.hearts)
end

function slot0.flushEva(slot0)
	setText(slot0.labelEva, slot0.shipGroup.evaluation.evaCount)

	for slot7 = slot0.content.childCount - 1, #slot0.shipGroup.evaluation.evas, -1 do
		Destroy(slot0.content:GetChild(slot7))
	end

	for slot7 = slot3, #slot2 - 1, 1 do
		cloneTplTo(slot0.itemTpl, slot0.content)
	end

	for slot7 = 1, #slot2, 1 do
		setActive(slot10, slot2[slot7].hot)
		setActive(slot0:findTF("normal", slot8), not slot2[slot7].hot)
		setText(slot14, slot9.nick_name .. ":")
		setText(slot15, slot9.good_count - slot9.bad_count)

		slot0:findTF("evaluation_frame/Text", slot8):GetComponent(typeof(Text)).supportRichText = false
		slot0.findTF("evaluation_frame/Text", slot8).GetComponent(typeof(Text)).text = slot9.context

		function slot16(slot0)
			if not slot0.izan then
				slot1:emit(slot2.EVENT_ZAN, slot0.id, slot0)
			else
				pg.TipsMgr:GetInstance():ShowTips(i18n("zan_ship_eva_error_7"))
			end
		end

		onButton(slot0, (slot2[slot7].hot and slot10) or slot11:Find("zan_bg/up"), function ()
			slot0(0)
		end, SFX_PANEL)
		onButton(slot0, (slot2[slot7].hot and slot10) or slot11:Find("zan_bg/down"), function ()
			slot0(1)
		end, SFX_PANEL)
		SetActive((slot2[slot7].hot and slot10) or slot11:Find("zan_bg/down"), not LOCK_DOWNVOTE or false)

		if LOCK_DOWNVOTE then
			slot12:Find("zan_bg/up").position = slot12:Find("zan_bg/down").position + Vector3(0, 0.15, 0)
		end
	end
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
