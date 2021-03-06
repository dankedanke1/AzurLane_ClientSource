slot0 = class("MailLayer", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "MailBoxUI2"
end

function slot0.init(slot0)
	slot0.closeButton = slot0:findTF("main/top/btnBack")
	slot0.takeAllButton = slot0:findTF("main/get_all_button")
	slot0.deleteAllButton = slot0:findTF("main/delete_all_button")
	slot0.mailPanel = slot0:findTF("main/list_panel/list")
	slot0.pullToRefreshNewer = slot0:findTF("pull_to_refresh_newer", slot0.mailPanel)
	slot0.pullToRefreshOlder = slot0:findTF("pull_to_refresh_older", slot0.mailPanel)
	slot0.mailList = slot0:findTF("mails", slot0.mailPanel)
	slot0.mailTpl = slot0:getTpl("mail_tpl", slot0.mailList)
	slot0.nullTpl = slot0:findTF("null_tpl", slot0.mailPanel)
	slot0.scrollBar = slot0:findTF("Scrollbar", slot0.mailPanel)
	slot0.mailCount = slot0:findTF("main/count_bg/Text")
	slot0.toggleNormal = slot0:findTF("main/toggle_normal")
	slot0.toggleMatter = slot0:findTF("main/toggle_matter")
	slot0.letterPanel = slot0:findTF("letter")
	slot0.attachmentList = slot0:findTF("content_panel/main/attachment_list", slot0.letterPanel)
	slot0.attachmentTpl = slot0:getTpl("attachments/equipmenttpl ", slot0.attachmentList)
	slot0.radioImp = slot0:findTF("matter", slot0.letterPanel)
	slot0.mailTip = slot0:findTF("main/tip")
	slot0.mailboxCtrl = GetOrAddComponent(slot0._go, "Animator")

	slot0.mailboxCtrl:Update(0)

	slot0.mailTFsById = {}
	slot0.UIMgr = pg.UIMgr.GetInstance()

	slot0.UIMgr:BlurPanel(slot0._tf)

	slot0.msgBoxTF = slot0:findTF("msgbox")

	setActive(slot0.msgBoxTF, false)

	slot0.msgConfirmBtn = slot0:findTF("window/button_container/custom_button_1", slot0.msgBoxTF)
	slot0.msgCancelBtn = slot0:findTF("window/button_container/custom_button_2", slot0.msgBoxTF)
	slot0.msgItemContainerTF = slot0:findTF("window/items/scrollview/list/", slot0.msgBoxTF)
	slot0.msgItemTF = slot0:getTpl("item", slot0.msgItemContainerTF)
	slot0.msgContentTF = slot0:findTF("window/items/Text", slot0.msgBoxTF):GetComponent(typeof(Text))
end

function slot0.setMailData(slot0, slot1)
	slot0.mailVOs = slot1
end

function slot0.setUnreadMailCount(slot0, slot1)
	slot0.unreadCount = slot1
end

function slot0.setMailCount(slot0, slot1)
	slot0.totalCount = slot1
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0._tf, function ()
		slot0:emit(slot1.ON_CLOSE)
	end, SFX_CANCEL)
	onButton(slot0, slot0.closeButton, function ()
		triggerButton(slot0._tf)
	end, SFX_CANCEL)
	onButton(slot0, slot0.deleteAllButton, function ()
		if slot0.totalCount == 0 then
			pg.TipsMgr:GetInstance():ShowTips(i18n("main_mailLayer_mailBoxClear"))

			return
		end

		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("main_mailLayer_quest_clear"),
			onYes = function ()
				slot0:emit(MailMediator.ON_DELETE_ALL)
			end
		})
	end, SFX_PANEL)
	onButton(slot0, slot0.takeAllButton, function ()
		if slot0.totalCount == 0 then
			pg.TipsMgr:GetInstance():ShowTips(i18n("main_mailLayer_mailBoxClear"))

			return
		end

		slot0:emit(MailMediator.ON_TAKE_ALL)
	end, SFX_PANEL)
	onToggle(slot0, slot0.toggleNormal, function (slot0)
		slot0:updateMailList()
	end, SFX_PANEL)
	onToggle(slot0, slot0.toggleMatter, function (slot0)
		slot0:updateMailList()
	end, SFX_PANEL)

	slot1 = slot0.mailPanel:GetComponent("UIPullToRefreshTrigger")
	slot0.pullToRefreshNewer:GetComponent("CanvasGroup").alpha = 0
	slot0.pullToRefreshOlder:GetComponent("CanvasGroup").alpha = 0

	pg.DelegateInfo.Add(slot0, slot1.onValueChanged)
	slot1.onValueChanged:AddListener(function (slot0)
		if slot0 > 0 then
			slot0.alpha = slot0 * slot0
		else
			slot0.alpha = 0
		end

		if slot0 < 0 and #slot1.mailVOs < slot1.totalCount then
			slot2.alpha = slot0 * slot0
		else
			slot2.alpha = 0
		end
	end)
	pg.DelegateInfo.Add(slot0, slot1.onRefreshTop)
	slot1.onRefreshTop:AddListener(function ()
		if #slot0.mailVOs < slot0.totalCount and slot0.unreadCount > 0 then
			slot0:emit(MailMediator.ON_MORE_NEWER)
		else
			pg.TipsMgr:GetInstance():ShowTips(i18n("main_mailLayer_noNewMail"))
		end
	end)

	slot4 = slot0.mailPanel:GetComponent("ScrollRect")

	pg.DelegateInfo.Add(slot0, slot1.onDragEnd)
	slot1.onDragEnd:AddListener(function ()
		if slot0.verticalNormalizedPosition <= 0.1 and #slot1.mailVOs < slot1.totalCount then
			slot1:emit(MailMediator.ON_MORE_OLDER)
		end
	end)
end

function slot0.UnblurMailBox(slot0)
	slot0.UIMgr:UnblurPanel(slot0._tf, slot0.UIMgr._normalUIMain)
end

function slot0.updateMailList(slot0)
	table.sort(slot0.mailVOs, Mail.sortByTime)

	slot3 = not getToggleState(slot0.toggleNormal) and not getToggleState(slot0.toggleMatter)

	if slot3 then
		slot0.toggleNormal:GetComponent(typeof(Toggle)).isOn = true
		slot0.toggleMatter:GetComponent(typeof(Toggle)).isOn = true
	end

	slot4 = slot1 or slot3
	slot5 = slot2 or slot3

	for slot9, slot10 in ipairs(slot0.mailVOs) do
		if slot0.mailTFsById[slot10.id] then
			slot11:SetAsLastSibling()
		else
			slot0.mailTFsById[slot10.id] = cloneTplTo(slot0.mailTpl, slot0.mailList)

			slot0:updateMail(slot10)
		end

		setActive(slot11, (slot10.importantFlag ~= 1 and slot4) or (slot10.importantFlag == 1 and slot5))
	end

	setActive(slot0.deleteAllButton, slot4 or not slot5)

	if #slot0.mailVOs == 0 then
		setActive(slot0.nullTpl, true)
	else
		setActive(slot0.nullTpl, false)
	end

	slot0:updateMailCount()
end

function slot0.updateMailCount(slot0)
	setText(slot0.mailCount, slot0.totalCount .. "/100")
	slot0:showMailTip(#slot0.mailVOs ~= slot0.totalCount)
end

function slot0.showMailTip(slot0, slot1)
	setActive(slot0.mailTip, slot1)

	if slot1 then
		if not LeanTween.isTweening(go(slot0.mailTip)) then
			LeanTween.alpha(slot0.mailTip, 0, 0)
			LeanTween.alpha(slot0.mailTip, 1, 0.7):setEase(LeanTweenType.easeInOutSine):setLoopPingPong()
		end
	elseif LeanTween.isTweening(go(slot0.mailTip)) then
		LeanTween.cancel(go(slot0.mailTip))
	end
end

function slot0.addMail(slot0, slot1)
	table.insert(slot0.mailVOs, slot1)
	slot0:updateMailList()
end

function slot0.openMail(slot0, slot1)
	slot0.mailboxCtrl:SetBool("isOpen", true)
	setText(findTF(slot2, "content_panel/main/attachment_list/title"), slot1.title)
	setText(findTF(slot2, "from/time"), os.date("%Y-%m-%d", slot1.date))
	setText(findTF(slot2, "from/text"), slot1.sender)
	setText(findTF(slot2, "content_panel/main/attachment_list/mail_content/content"), slot1.content)

	slot3 = findTF(slot2, "get_button")
	slot4 = 0

	if slot1.attachFlag == slot1.ATTACHMENT_EXIST then
		setButtonEnabled(slot3, true)
		onButton(slot0, slot3, function ()
			slot0:emit(MailMediator.ON_TAKE, slot1.id)
		end, SFX_PANEL)

		slot4 = 1
	else
		slot4 = (slot1.attachFlag == slot1.ATTACHMENT_NONE and 2) or 3

		setButtonEnabled(slot3, false)
	end

	setActive(findTF(slot3, "get"), slot4 == 1)
	setActive(findTF(slot3, "none"), slot4 == 2)
	setActive(findTF(slot3, "got"), slot4 == 3)
	setActive(findTF(slot3, "mask"), slot4 ~= 1)
	setActive(slot0.attachmentList, true)
	removeAllChildren(setActive)

	for slot9, slot10 in ipairs(slot1.attachments) do
		slot0:setAttachment(cloneTplTo(slot0.attachmentTpl, slot5), slot10, slot1.readFlag == 2 and slot1.attachFlag == slot1.ATTACHMENT_TAKEN)
	end

	setActive(slot0.radioImp:Find("on"), slot1.importantFlag == 1)
	onButton(slot0, slot0.radioImp, function ()
		slot0(pg.MsgboxMgr.GetInstance(), {
			content = i18n((slot0.importantFlag == 1 and "mail_confirm_cancel_important_flag") or "mail_confirm_set_important_flag"),
			onYes = function ()
				slot0.emit(slot1, MailMediator.ON_CHANGE_IMP, slot1.id, (slot1.importantFlag == 1 and 0) or 1)
			end
		})
	end, SFX_PANEL)

	slot0.lastOpenMailId = slot1.id
end

function slot0.setAttachment(slot0, slot1, slot2, slot3)
	setActive(slot1:Find("mask"), slot3)
	updateDrop(slot1, {
		type = slot2.dropType,
		id = slot2.id,
		count = slot2.count
	})
	onButton(slot0, slot1, function ()
		if slot0.dropType == DROP_TYPE_RESOURCE then
			slot1:emit(slot2.ON_ITEM, id2ItemId(slot0.id))
		elseif slot0.dropType == DROP_TYPE_ITEM or slot0.dropType == DROP_TYPE_SHIP then
			slot1:emit(slot2.ON_DROP, {
				type = slot0.dropType,
				id = slot0.id,
				count = slot0.count
			})
		elseif slot0.dropType == DROP_TYPE_FURNITURE then
			pg.MsgboxMgr.GetInstance():showSingleItemBox({
				hideNo = true,
				content = "",
				yesText = "text_confirm",
				drop = {
					type = DROP_TYPE_FURNITURE,
					id = slot0.id,
					cfg = pg.furniture_data_template[slot0.id]
				}
			})
		elseif slot0.dropType == DROP_TYPE_EQUIP then
			slot1:emit(slot2.ON_EQUIPMENT, {
				equipmentId = slot0.id,
				type = EquipmentInfoMediator.DISPLAY
			})
		end
	end)
end

function slot0.updateMail(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.mailVOs) do
		if slot6.id == slot1.id then
			slot0.mailVOs[slot5] = slot1
		end
	end

	if slot0.mailTFsById[slot1.id] then
		onButton(slot0, slot2, function ()
			setActive(findTF(findTF, "check_mark"), true)

			if setActive.preCheckMark and slot1.preCheckMark ~= slot0 then
				setActive(slot1.preCheckMark, false)
			end

			slot1.preCheckMark = findTF(slot0, "check_mark")

			slot1:emit(MailMediator.ON_OPEN, slot2.id)
			onButton(onButton, slot1.preCheckMark, function ()
				slot0.mailboxCtrl:SetBool("isOpen", false)

				slot0.mailboxCtrl.SetBool.lastOpenMailId = nil

				setActive(slot0.preCheckMark, false)
			end, SFX_PANEL)
		end, SFX_PANEL)

		slot3 = slot0:findTF("mask", slot2)

		setActive(findTF(slot2, "tip_bg"), slot1.attachFlag ~= slot1.ATTACHMENT_NONE)
		setActive(findTF(slot2, "tip_bg"), not (slot1.attachFlag ~= slot1.ATTACHMENT_NONE))
		setActive(findTF(slot2, "icon"), slot1.attachFlag ~= slot1.ATTACHMENT_NONE)

		if slot1.attachFlag ~= slot1.ATTACHMENT_NONE then
			setText(findTF(slot2, "tip_bg/Text"), i18n("mail_count", #slot1.attachments))
			slot0:setAttachment(slot6, slot1.attachments[1], slot1.attachFlag == 2)
			setActive(slot3, slot1.readFlag == 2 and slot1.attachFlag == slot1.ATTACHMENT_TAKEN)
		else
			if slot1.readFlag == 2 then
				slot0:setSpriteTo("resources/mail_read", slot5, true)
			else
				slot0:setSpriteTo("resources/mail_unread", slot5, true)
			end

			setActive(slot3, slot1.readFlag == 2)
		end

		setText(slot7, slot1.title)
		setText(slot8, os.date("%Y-%m-%d %H:%M:%S", slot1.date))
		setActive(slot2:Find("star"), slot1.importantFlag == 1)

		if slot0.lastOpenMailId == slot1.id then
			slot0:openMail(slot1)
		end
	end
end

function slot0.removeMail(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.mailVOs) do
		if slot6.id == slot1.id then
			table.remove(slot0.mailVOs, slot5)

			break
		end
	end

	if slot0.mailTFsById[slot1.id] then
		if slot0.preCheckMark == findTF(slot0.mailTFsById[slot1.id], "check_mark") then
			slot0.preCheckMark = nil
		end

		Destroy(slot2)
	end

	if #slot0.mailVOs == 0 then
		setActive(slot0.nullTpl, true)
	end

	if slot0.lastOpenMailId == slot1.id then
		slot0.mailboxCtrl:SetBool("isOpen", false)
	end

	slot0:updateMailCount()
end

function slot0.onDelete(slot0, slot1)
	if slot1.attachFlag == slot1.ATTACHMENT_EXIST then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("main_mailLayer_quest_deleteNotTakeAttach"),
			onYes = function ()
				slot0:emit(MailMediator.ON_DELETE, slot1.id)
			end
		})
	elseif slot1.attachFlag == slot1.ATTACHMENT_EXIST then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("main_mailLayer_quest_deleteNotRead"),
			onYes = function ()
				slot0:emit(MailMediator.ON_DELETE, slot1.id)
			end
		})
	else
		slot0:emit(MailMediator.ON_DELETE, slot1.id)
	end
end

function slot0.showMsgBox(slot0, slot1)
	slot0.isShowMsgBox = true

	setActive(slot0.msgBoxTF, true)
	onButton(slot0, slot0.msgCancelBtn, function ()
		slot0:closeMsgBox()
	end, SFX_PANEL)
	onButton(slot0, slot0.msgConfirmBtn, function ()
		if slot0.onYes then
			slot0.onYes()
		end

		slot1:closeMsgBox()
	end, SFX_PANEL)
	onButton(slot0, slot0.msgBoxTF, function ()
		slot0:closeMsgBox()
	end, SFX_PANEL)
	onButton(slot0, slot0:findTF("window/top/btnBack", slot0.msgBoxTF), function ()
		slot0:closeMsgBox()
	end, SFX_PANEL)
	removeAllChildren(slot0.msgItemContainerTF)

	slot2 = slot1.items or {}

	for slot6, slot7 in pairs(slot2) do
		updateDrop(cloneTplTo(slot0.msgItemTF, slot0.msgItemContainerTF), slot7)
	end

	slot0.msgContentTF.text = slot1.content or ""
end

function slot0.closeMsgBox(slot0)
	if slot0.isShowMsgBox then
		slot0.isShowMsgBox = nil

		setActive(slot0.msgBoxTF, false)
	end
end

function slot0.willExit(slot0)
	slot0:UnblurMailBox()
	slot0:closeMsgBox()
end

return slot0
