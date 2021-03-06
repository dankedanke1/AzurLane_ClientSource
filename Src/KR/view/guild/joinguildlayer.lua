slot0 = class("JoinGuildLayer", import("..base.BaseUI"))
slot2 = i18n("guild_search_list_max_count", slot1)

function slot0.getUIName(slot0)
	return "JoinGuildUI"
end

function slot0.setGuildVOs(slot0, slot1)
	slot0.guildVOs = slot1
end

function slot0.setPlayerVO(slot0, slot1)
	slot0.playerVO = slot1
end

function slot0.init(slot0)
	slot0.guildViewRect = slot0:findTF("add_panel/view")
	slot0.refreshBtn = slot0:findTF("add_panel/center/refresh")
	slot0.searchBtn = slot0:findTF("add_panel/center/search")
	slot0.searchBar = slot0:findTF("add_panel/center/search_bar"):GetComponent(typeof(InputField))
	slot0.backBtn = slot0:findTF("top/back")
	slot0.sortBtn = slot0:findTF("add_panel/center/sort_button")
	slot0.sortBtnContainer = slot0:findTF("add_panel/sort_panel/mask/panel")
	slot0.sortBtnTpl = slot0:getTpl("add_panel/sort_panel/mask/panel/tpl")
	slot0.sortPanel = slot0:findTF("add_panel/sort_panel")
	slot0.redScrollBar = slot0:findTF("add_panel/view/red_scrollbar"):GetComponent(typeof(Scrollbar))
	slot0.yellowScrollBar = slot0:findTF("add_panel/view/yellow_scrollbar"):GetComponent(typeof(Scrollbar))
	slot0.blueScrollBar = slot0:findTF("add_panel/view/blue_scrollbar"):GetComponent(typeof(Scrollbar))
	slot0.UIMgr = pg.UIMgr.GetInstance()

	setText(slot0:findTF("tip"), slot0)
	slot0:initGuildList()
end

function slot0.getTheme(slot0)
	if slot0 == Guild.FACTION_TYPE_BLHX then
		return "blue"
	elseif slot0 == Guild.FACTION_TYPE_CSZZ then
		return "red"
	end
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0.refreshBtn, function ()
		slot0:emit(JoinGuildMediator.REFRESH)
	end, SFX_PANEL)
	onButton(slot0, slot0.backBtn, function ()
		slot0:emit(slot1.ON_CLOSE)
	end, SOUND_BACK)
	onButton(slot0, slot0.searchBtn, function ()
		if wordVer(slot0) > 0 then
			pg.TipsMgr:GetInstance():ShowTips(i18n("playerinfo_mask_word"))

			return
		end

		slot0:emit(JoinGuildMediator.SEARCH, slot0)
	end, SFX_PANEL)
	onButton(slot0, slot0.sortBtn, function ()
		if go(slot0.sortPanel).activeSelf then
			slot0:closeSortPanel()
		else
			slot0:openSortPanel()
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.sortPanel, function ()
		slot0:closeSortPanel()
	end, SFX_PANEL)
end

function slot0.openSortPanel(slot0)
	slot0.isOpenSortPanel = true

	setActive(slot0.sortPanel, true)

	if not slot0.isInitSort then
		slot0.isInitSort = true

		slot0:initSort()
	end
end

slot3 = {
	{
		"index_all"
	},
	{
		"index_blhx",
		{
			"faction",
			Guild.FACTION_TYPE_BLHX
		}
	},
	{
		"index_cszz",
		{
			"faction",
			Guild.FACTION_TYPE_CSZZ
		}
	},
	{
		"index_power",
		{
			"policy",
			Guild.POLICY_TYPE_POWER
		}
	},
	{
		"index_relax",
		{
			"policy",
			Guild.POLICY_TYPE_RELAXATION
		}
	}
}
slot4 = {}

function slot0.initSort(slot0)
	for slot4, slot5 in ipairs(slot0) do
		slot6 = cloneTplTo(slot0.sortBtnTpl, slot0.sortBtnContainer)

		setImageSprite(slot6:Find("Image"), slot7, true)
		onToggle(slot0, slot6, function (slot0)
			if slot0 then
				slot0:filter(slot0.filter)
				setActive(slot0.sortPanel, false)
			end
		end)
	end

	for slot4, slot5 in ipairs(ipairs) do
		slot6 = cloneTplTo(slot0.sortBtnTpl, slot0.sortBtnContainer)

		setText(slot6:Find("Text"), slot5[2])
		onToggle(slot0, slot6, function (slot0)
			if slot0 then
				slot0:sortGuilds(slot1[1])
			end
		end)
	end
end

function slot0.closeSortPanel(slot0)
	slot0.isOpenSortPanel = nil

	setActive(slot0.sortPanel, false)
end

function slot0.createGuildCard(slot0, slot1)
	return {
		go = slot1,
		tf = tf(slot1),
		nameTF = ()["tf"]:Find("name"):GetComponent(typeof(Text)),
		lvTF = ()["tf"]:Find("lv/Text"):GetComponent(typeof(Text)),
		countTF = ()["tf"]:Find("count_container/count"):GetComponent(typeof(Text)),
		applyBtn = ()["tf"]:Find("apply_btn"),
		flagName = ()["tf"]:Find("container/name"):GetComponent(typeof(Text)),
		policy = ()["tf"]:Find("container/policy"):GetComponent(typeof(Text)),
		frameTF = ()["tf"]:Find("icon_frame"):GetComponent(typeof(Image)),
		iconTF = ()["tf"]:Find("icon_frame/icon"):GetComponent(typeof(Image)),
		bg = ()["tf"]:GetComponent(typeof(Image)),
		applyBg = ()["applyBtn"]:GetComponent(typeof(Image)),
		update = function (slot0, slot1)
			if not slot1 then
				return
			end

			slot2 = JoinGuildLayer.getTheme(slot1:getFaction())
			slot0.frameTF.sprite = GetSpriteFromAtlas("ui/JoinGuildUI_atlas", slot2 .. "_icon_frame")
			slot0.iconTF.sprite = GetSpriteFromAtlas("ui/JoinGuildUI_atlas", slot2 .. "_icon")
			slot0.bg.sprite = GetSpriteFromAtlas("ui/JoinGuildUI_atlas", slot2 .. "_frame")
			slot0.applyBg.sprite = GetSpriteFromAtlas("ui/JoinGuildUI_atlas", slot2 .. "_apply")
			slot0.guildVO = slot1
			slot0.nameTF.text = slot1:getName()
			slot0.lvTF.text = slot1.level
			slot0.countTF.text = slot1.memberCount .. "/" .. slot1:getMaxMember()
			slot0.flagName.text = slot1:getCommader().name
			slot0.policy.text = slot1:getPolicyName()
		end
	}
end

function slot0.initGuildList(slot0)
	slot0.viewRect = slot0.guildViewRect:GetComponent("LScrollRect")

	function slot0.viewRect.onInitItem(slot0)
		slot0:onInitItem(slot0)
	end

	function slot0.viewRect.onUpdateItem(slot0, slot1)
		slot0:onUpdateItem(slot0, slot1)
	end

	slot0.items = {}
end

function slot0.onInitItem(slot0, slot1)
	slot0.items[slot1] = slot0:createGuildCard(slot1)

	onButton(slot0, slot0.items[slot1].applyBtn, function ()
		if slot0.playerVO:inGuildCDTime() then
			pg.TipsMgr:GetInstance():ShowTips(i18n("guild_leave_cd_time"))

			return
		end

		slot0:showApply(slot0.items[slot0].guildVO)
	end, SFX_PANEL)
end

function slot0.onUpdateItem(slot0, slot1, slot2)
	if not slot0.items[slot2] then
		slot0:onInitItem(slot2)

		slot3 = slot0.items[slot2]
	end

	slot3:update(slot0.sortVOs[slot1 + 1])
end

function slot0.sortGuilds(slot0, slot1)
	slot0.sortVOs = Clone(slot0.guildVOs) or {}

	table.sort(slot0.sortVOs, function (slot0, slot1)
		if not slot0 then
			return slot0.id < slot1.id
		elseif slot0[slot0] == slot1[slot0] then
			return slot0.id < slot1.id
		else
			return slot1[slot0] < slot0[slot0]
		end
	end)
	slot0.viewRect:SetTotalCount(#slot0.sortVOs, 0)
end

function slot0.filter(slot0, slot1)
	slot0.sortVOs = {}

	setActive(slot0.redScrollBar.gameObject, slot3)
	setActive(slot0.blueScrollBar.gameObject, _.all(slot0.sortVOs, function (slot0)
		return slot0:getFaction() == Guild.FACTION_TYPE_BLHX
	end))
	setActive(slot0.yellowScrollBar.gameObject, not _.all(slot0.sortVOs, function (slot0)
		return slot0:getFaction() == Guild.FACTION_TYPE_CSZZ
	end) and not slot4)

	if slot3 then
		slot0.viewRect.verticalScrollbar = slot0.redScrollBar
	elseif slot4 then
		slot0.viewRect.verticalScrollbar = slot0.blueScrollBar
	else
		slot0.viewRect.verticalScrollbar = slot0.yellowScrollBar
	end

	slot0.contextData.filterData = slot2

	slot0.viewRect:SetTotalCount(#slot0.sortVOs, 0)
end

function slot0.showApply(slot0, slot1)
	if slot0.isShowApply then
		slot0:closeApply()
	end

	slot0.isShowApply = true
	slot0.appPanel = slot0:findTF(slot1:getApplyUIName())

	if IsNil(slot0.appPanel) then
		PoolMgr.GetInstance():GetUI(slot2, true, function (slot0)
			slot0.name = slot0
			slot0.appPanel = tf(slot0)

			setActive(slot1.appPanel, true)
			setParent(slot1.appPanel, slot1._tf)
			setParent:initApplyPanel()
			setParent.initApplyPanel:updateApplyPanel(setParent.initApplyPanel)
			setParent.initApplyPanel.updateApplyPanel.UIMgr:BlurPanel(slot1.appPanel)
		end)
	else
		setActive(slot0.appPanel, true)

		if slot0.preUIName ~= slot2 then
			slot0:initApplyPanel()
		end

		slot0:updateApplyPanel(slot1)
		slot0.UIMgr:BlurPanel(slot0.appPanel)
	end

	slot0.preUIName = slot2
end

function slot0.initApplyPanel(slot0)
	slot0.iconTF = findTF(slot0.appPanel, "apply_panel/frame/info_center/icon_contaon/icon"):GetComponent(typeof(Image))
	slot0.manifesto = findTF(slot0.appPanel, "apply_panel/frame/manifesto"):GetComponent(typeof(Text))
	slot0.starsTF = findTF(slot0.appPanel, "apply_panel/frame/info_center/icon_contaon/stars")
	slot0.starTF = findTF(slot0.appPanel, "apply_panel/frame/info_center/icon_contaon/stars/star")
	slot0.applyBtn = findTF(slot0.appPanel, "apply_panel/frame/confirm_btn")
	slot0.cancelBtn = findTF(slot0.appPanel, "apply_panel/frame/cancel_btn")
	slot0.nameTF = findTF(slot0.appPanel, "apply_panel/frame/info_top/name"):GetComponent(typeof(Text))
	slot0.levelTF = findTF(slot0.appPanel, "apply_panel/frame/info_top/lv/Text"):GetComponent(typeof(Text))
	slot0.factionTF = findTF(slot0.appPanel, "apply_panel/frame/info_top/faction/Text"):GetComponent(typeof(Text))
	slot0.countTF = findTF(slot0.appPanel, "apply_panel/frame/info_top/count_container/Text"):GetComponent(typeof(Text))
	slot0.flagName = findTF(slot0.appPanel, "apply_panel/frame/info_center/name_container/Text"):GetComponent(typeof(Text))
	slot0.policyTF = findTF(slot0.appPanel, "apply_panel/frame/info_center/policy_container/Text"):GetComponent(typeof(Text))
end

function slot0.updateApplyPanel(slot0, slot1)
	slot2 = Ship.New({
		configId = slot1:getCommader().icon
	})

	LoadSpriteAsync("QIcon/" .. slot2:getPainting(), function (slot0)
		slot0.iconTF.sprite = slot0
	end)

	slot0.manifesto.text = slot1.manifesto

	for slot8 = slot0.starsTF.childCount, pg.ship_data_statistics[slot2.configId].star - 1, 1 do
		cloneTplTo(slot0.starTF, slot0.starsTF)
	end

	for slot8 = 1, slot4, 1 do
		setActive(slot0.starsTF:GetChild(slot8 - 1), slot8 <= slot3.star)
	end

	slot0.nameTF.text = slot1.name
	slot0.levelTF.text = slot1.level
	slot0.factionTF.text = slot1:getFactionName()
	slot0.countTF.text = slot1.memberCount .. "/" .. slot1:getMaxMember()
	slot0.flagName.text = slot1:getCommader().name
	slot0.policyTF.text = slot1:getPolicyName()

	onButton(slot0, slot0.applyBtn, function ()
		pg.MsgboxMgr.GetInstance():ShowInputBox({
			onNo = true,
			yesText = "text_confirm",
			limit = 20,
			placeholder = i18n("guild_request_msg_placeholder"),
			title = i18n("guild_request_msg_title"),
			onYes = function (slot0)
				slot0:emit(JoinGuildMediator.APPLY, slot1.id, slot0)
			end
		})
	end, SFX_PANEL)
	onButton(slot0, slot0.cancelBtn, function ()
		slot0:closeApply()
	end, SFX_PANEL)
end

function slot0.closeApply(slot0)
	slot0.isShowApply = nil

	slot0.UIMgr:UnblurPanel(slot0.appPanel, slot0._tf)
	setActive(slot0.appPanel, false)
end

function slot0.onBackPressed(slot0)
	if slot0.isOpenSortPanel then
		slot0:closeSortPanel()
	elseif slot0.isShowApply then
		slot0:closeApply()
	else
		playSoundEffect(SFX_CANCEL)
		slot0:emit(slot0.ON_CLOSE)
	end
end

function slot0.willExit(slot0)
	if not IsNil(slot0.appPanel) then
		slot0:closeApply()
	end

	for slot4, slot5 in ipairs({
		"GuildApplyBlueUI",
		"GuildApplyRedUI"
	}) do
		if not IsNil(slot0:findTF(slot5)) then
			PoolMgr.GetInstance():ReturnUI(slot5, slot6)
		end
	end

	PoolMgr.GetInstance():DestroySprite("ui/JoinGuildUI_atlas")
end

return slot0
