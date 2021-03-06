slot0 = class("ChatRoomLayer", import("..base.BaseUI"))

function slot0.getUIName(slot0)
	return "ChatRoomUI"
end

function slot0.setFriendVO(slot0, slot1)
	slot0.friendVO = slot1
end

function slot0.setFriends(slot0, slot1)
	slot0.friendVOs = slot1
end

function slot0.setPlayer(slot0, slot1)
	slot0.playerVO = slot1
end

function slot0.setCacheMsgs(slot0, slot1)
	slot0.cacheMsgsVOs = slot1
end

function slot0.init(slot0)
	slot0.frame = slot0:findTF("frame")
	slot0.friendView = slot0:findTF("left_length/bg/scrollView", slot0.frame)
	slot0.friendContainer = slot0:findTF("friends", slot0.friendView)
	slot0.leftBg = slot0:findTF("left_length/bg", slot0.frame)
	slot0.arr = slot0:findTF("friend_btn/arr", slot0.leftBg)
	slot0.friendCountLabel = slot0:findTF("left_length/bg/friend_btn/Text", slot0.frame):GetComponent(typeof(Text))
	slot0.chatPanel = slot0:findTF("notification_panel", slot0.frame)
	slot0.sendBtn = slot0:findTF("frame/bottom/send", slot0.chatPanel)
	slot0.inputTF = slot0:findTF("frame/bottom/inputbg/input", slot0.chatPanel)
	slot0.chatsRect = slot0:findTF("frame/list", slot0.chatPanel)
	slot0.chatsContainer = slot0:findTF("frame/list/content", slot0.chatPanel)
	slot0.otherPopTpl = slot0:getTpl("frame/list/popo_others", slot0.chatPanel)
	slot0.selfPopTpl = slot0:getTpl("frame/list/popo_self", slot0.chatPanel)
	slot0.friendBtn = slot0:findTF("friend_btn", slot0.leftBg)

	pg.UIMgr.GetInstance():BlurPanel(slot0.frame)

	slot0.mainPanel = pg.UIMgr:GetInstance().UIMain
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0:findTF("frame/bottom/emoji", slot0.chatPanel), function ()
		slot0:emit(ChatRoomMediator.OPEN_EMOJI, function (slot0)
			slot0:sendMessage(string.gsub(ChatConst.EmojiCode, "code", slot0))
		end)
	end, SFX_PANEL)
	onButton(slot0, slot0._tf, function ()
		slot0:emit(slot1.ON_CLOSE)
	end, SOUND_BACK)
	onToggle(slot0, slot0.friendBtn, function (slot0)
		slot0.arr.eulerAngles = (slot0 and Vector3(0, 0, 0)) or Vector3(0, 0, 90)
	end, SFX_PANEL)
	triggerToggle(slot0.friendBtn, true)
	slot0:initFriends()
end

function slot0.updateFriendCountLabel(slot0)
	slot0.friendCountLabel.text = #slot0.friendVOs .. "/" .. MAX_FRIEND_COUNT
end

function slot0.initFriends(slot0)
	slot0.friendItems = {}
	slot0.friendRect = slot0.friendView:GetComponent("LScrollRect")

	function slot0.friendRect.onInitItem(slot0)
		slot0:initFriend(slot0)
	end

	function slot0.friendRect.onUpdateItem(slot0, slot1)
		slot0:updateFriend(slot0, slot1)
	end

	slot0:sortFriend()
	slot0:updateFriendCountLabel()
end

function slot0.createFriendItem(slot0, slot1)
	slot3 = slot0.friendVO

	return {
		tf = tf(slot1),
		nameTF = ()["tf"]:Find("name"):GetComponent(typeof(Text)),
		lvTF = ()["tf"]:Find("lv/Text"):GetComponent(typeof(Text)),
		iconTF = ()["tf"]:Find("icon_bg/icon"):GetComponent(typeof(Image)),
		toggle = ()["tf"]:GetComponent(typeof(Toggle)),
		dateTF = ()["tf"]:Find("date"):GetComponent(typeof(Text)),
		onlineTF = ()["tf"]:Find("online"),
		update = function (slot0, slot1, slot2)
			slot0.friendVO = slot1
			slot0.nameTF.text = slot1.name
			slot0.lvTF.text = slot1.level
			slot3 = pg.ship_data_statistics[slot1.icon]

			LoadSpriteAsync("qicon/" .. Ship.New({
				configId = slot1.icon
			}):getPainting(), function (slot0)
				if not slot0 then
					slot0.iconTF.sprite = GetSpriteFromAtlas("heroicon/unknown", "")
				else
					slot0.iconTF.sprite = slot0
				end
			end)

			if slot1.id == slot1.id and slot0.toggle.isOn == false then
				triggerToggle(slot0.tf, true)
			end

			setActive(slot0.onlineTF, slot1.online == Friend.ONLINE)
			setActive(slot0.dateTF, slot1.online == Friend.OFFLINE)

			slot0.dateTF.text = pg.TimeMgr.GetInstance():DescTime(slot1.preOnLineTime, "%Y/%m/%d")
		end
	}
end

function slot0.updateFriend(slot0, slot1, slot2)
	if not slot0.friendItems[slot2] then
		slot0:initFriend(slot2)

		slot3 = slot0.friendItems[slot2]
	end

	slot3:update(slot0.friendVOs[slot1 + 1])
end

function slot0.initFriend(slot0, slot1)
	onToggle(slot0, slot0:createFriendItem(slot1).tf, function (slot0)
		if slot0 and slot0.friendVO then
			slot1:openChatPanel(slot0.friendVO)

			slot1.openChatPanel.contextData.friendVO = friendVO

			slot1.openChatPanel.contextData:setFriendVO(slot0.friendVO)
			slot1.openChatPanel.contextData.setFriendVO:emit(ChatRoomMediator.CLEAR_UNREADCOUNT, slot0.friendVO.id)
		end
	end)

	slot0.friendItems[slot1] = slot0.createFriendItem(slot1)
end

function slot0.updateFriendVO(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.friendVOs) do
		if slot6.id == slot1.id then
			slot0.friendVOs[slot5] = slot1

			break
		end
	end

	if slot1.id == slot0.friendVO.id then
		slot0.friendVO = slot1
	end

	slot0:sortFriend()
end

function slot0.sortFriend(slot0)
	table.sort(slot0.friendVOs, function (slot0, slot1)
		if ((slot0.id == slot0.friendVO.id and 1) or 0) == ((slot1.id == slot0.friendVO.id and 1) or 0) then
			if slot0.online == slot1.online then
				if slot0.level == slot1.level then
					return slot0.id < slot1.id
				else
					return slot1.level < slot0.level
				end
			else
				return slot1.online < slot0.online
			end
		else
			return slot3 < slot2
		end
	end)
	slot0.friendRect:SetTotalCount(#slot0.friendVOs, -1)
end

function slot0.openChatPanel(slot0, slot1)
	slot0.friendVO = slot1

	removeAllChildren(slot0.chatsContainer)

	slot3 = pairs
	slot4 = slot0.cacheMsgsVOs[slot1.id] or {}

	for slot6, slot7 in slot3(slot4) do
		slot0:appendMsg(slot7)
	end

	setActive(slot0.chatPanel, true)
	onButton(slot0, slot0.sendBtn, function ()
		slot0 = getInputText(slot0.inputTF)

		setInputText(slot0.inputTF, "")
		slot0:sendMessage(slot0)
	end)
end

function slot0.sendMessage(slot0, slot1)
	if slot0.friendVO.online == Friend.OFFLINE then
		pg.TipsMgr:GetInstance():ShowTips(i18n("friend_send_msg_erro_tip"))

		return
	end

	if slot1 == "" then
		pg.TipsMgr:GetInstance():ShowTips(i18n("friend_send_msg_null_tip"))

		return
	end

	slot0:emit(ChatRoomMediator.SEND_FRIEND_MSG, slot0.friendVO.id, slot1)
end

function slot0.getPlayer(slot0, slot1)
	if slot1 == slot0.playerVO.id then
		return slot0.playerVO
	end

	for slot5, slot6 in ipairs(slot0.friendVOs) do
		if slot6.id == slot1 then
			return slot6
		end
	end
end

function slot0.appendMsg(slot0, slot1)
	if slot1.playerId ~= slot0.playerVO.id and slot1.playerId ~= slot0.friendVO.id then
		return
	end

	slot0:emit(ChatRoomMediator.CLEAR_UNREADCOUNT, slot0.friendVO.id)

	slot4 = cloneTplTo((slot1.playerId == slot0.playerVO.id and slot0.selfPopTpl) or slot0.otherPopTpl, slot0.chatsContainer)
	slot4:Find("popo/chat_bg/talk"):GetComponent(typeof(Text)).supportRichText = false
	slot4.Find("popo/chat_bg/talk").GetComponent(typeof(Text)).text = slot1.content

	setText(slot4:Find("name"), slot0:getPlayer(slot1.playerId).name)
	setText(slot4:Find("lv/Text"), slot0.getPlayer(slot1.playerId).level)
	setText(slot4:Find("time"), slot7)

	slot10 = slot0:findTF("circle/head", slot4):GetComponent("Image")

	LoadSpriteAsync("qicon/" .. Ship.New({
		configId = slot1.player.icon,
		skin_id = slot1.player.skinId
	}).getPainting(slot9), function (slot0)
		if not IsNil(slot0) then
			slot0.color = Color.white
			slot0.sprite = slot0 or LoadSprite("heroicon/unknown")
		end
	end)

	slot12 = slot0:findTF("star", slot11)

	for slot17 = slot0:findTF("circle/head/stars", slot4).childCount, pg.ship_data_statistics[slot1.player.icon].star - 1, 1 do
		cloneTplTo(slot12, slot11)
	end

	for slot17 = 1, slot8.star, 1 do
		setActive(slot11:GetChild(slot17 - 1), slot17 <= slot8.star)
	end

	if slot1.emojiId then
		slot15 = slot0:findTF("face", slot4)

		PoolMgr.GetInstance():GetPrefab("emoji/" .. pg.emoji_template[slot1.emojiId].pic, pg.emoji_template[slot1.emojiId].pic, true, function (slot0)
			if slot0 then
				slot0.name = slot1.pic

				if slot0:GetComponent("Animator") then
					slot1.enabled = true
				end

				setParent(slot0, slot0, false)
			else
				PoolMgr.GetInstance():ReturnPrefab("emoji/" .. slot1.pic, slot1.pic, slot0)
			end
		end)
	end

	setActive(slot4:Find("popo"), not slot1.emojiId)
	setActive(slot4:Find("face"), slot1.emojiId)

	slot4:GetComponent(typeof(LayoutElement)).preferredHeight = (slot1.emojiId and 213) or 133

	scrollToBottom(slot0.chatsRect)
end

function slot0.closeChatPanel(slot0)
	setActive(slot0.chatPanel, false)
end

function slot0.willExit(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0.frame, slot0._tf)
	eachChild(slot0.chatsContainer, function (slot0)
		if slot0:findTF("face", slot0).childCount > 0 then
			PoolMgr.GetInstance():ReturnPrefab("emoji/" .. slot1:GetChild(0).gameObject.name, slot1.GetChild(0).gameObject.name, slot1.GetChild(0).gameObject)
		end
	end)
end

return slot0
