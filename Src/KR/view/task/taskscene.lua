slot0 = class("TaskScene", import("..base.BaseUI"))
slot0.CHAT_SHOW_TIME = 2
slot0.CHAT_ANIMATION_TIME = 0.3

function slot0.getUIName(slot0)
	return "TaskScene"
end

function slot0.setTaskVOs(slot0, slot1)
	slot0.taskVOsById = slot1
end

function slot0.init(slot0)
	slot0._guiderLoaded = true

	require("ShareCfg.task_ui_config")

	slot0._topPanel = slot0:findTF("top")

	SetParent(slot0._topPanel, pg.UIMgr.GetInstance().OverlayMain)
	pg.UIMgr.GetInstance():PartialBlur(slot0._topPanel:Find("title"), true)

	slot0._backBtn = slot0._topPanel:Find("title/back")
	slot0._scrllPanel = slot0:findTF("taskBGCenter/right_panel")
	slot0._scrollView = slot0._scrllPanel:GetComponent("LScrollRect")
	slot0._leftLength = slot0:findTF("left_length")
	slot0._tagRoot = slot0:findTF("left_length/tagRoot")
	slot0.taskIconTpl = slot0:findTF("taskTagOb/task_icon_default")
	slot0.rewardBox = slot0:findTF("RewardBox")
	slot0.rewardPanel = findTF(slot0.rewardBox, "frame/reward_panel")
	slot0.rewardTpl = findTF(slot0.rewardPanel, "reward_tpl")
	slot0.rewardContent = findTF(slot0.rewardPanel, "content")
	slot0.querenBtn = findTF(slot0.rewardBox, "frame/querenBtn")
end

function slot0.setTaskStoryIconRes(slot0, slot1, slot2)
	slot3 = slot0:findTF("taskTagOb/" .. slot2) or cloneTplTo(slot0.taskIconTpl, slot0:findTF("taskTagOb"))

	slot0:setSpriteTo("taskTagOb/" .. slot2, slot1, true)
end

function slot0.didEnter(slot0)
	onButton(slot0, slot0._backBtn, function ()
		slot0:uiExitAnimating()
		slot0.uiExitAnimating:emit(slot1.ON_BACK, nil, 0.3)
	end, SFX_CANCEL)
	setActive(slot0:findTF("stamp"), getProxy(TaskProxy):mingshiTouchFlagEnabled())

	if LOCK_CLICK_MINGSHI then
		setActive(slot0:findTF("stamp"), false)
	end

	onButton(slot0, slot0:findTF("stamp"), function ()
		getProxy(TaskProxy):dealMingshiTouchFlag(5)
	end, SFX_CONFIRM)
	onButton(slot0, slot0.querenBtn, function ()
		removeAllChildren(slot0.rewardContent)
		SetActive(slot0.rewardBox, false)
	end, SFX_CANCEL)
	slot0:initTypeTag()
	slot0:createTasks()

	slot1 = slot0.toggles[slot0.contextData.page or "all"]

	if slot0.toggles and slot1 then
		triggerToggle(slot1, true)
	end

	setAnchoredPosition(slot0._topPanel, {
		y = slot0._topPanel.rect.height
	})
	setAnchoredPosition(slot0._leftLength, {
		x = -1 * slot0._leftLength.rect.width
	})
	setActive(slot0._scrllPanel, false)
	onNextTick(function ()
		if slot0.exited then
			return
		end

		setActive(slot0._scrllPanel, true)
		setActive:uiStartAnimating()
	end)
end

function slot0.uiStartAnimating(slot0)
	setAnchoredPosition(slot0._scrllPanel, {
		x = slot0._scrllPanel.transform.localPosition.x + 1280
	})
	shiftPanel(slot0._topPanel, nil, 0, slot2, slot1, true, true)
	shiftPanel(slot0._leftLength, 0, nil, slot2, slot1, true, true)
	shiftPanel(slot0._scrllPanel, slot3, nil, slot2, slot1, true, true, nil, function ()
		slot0:dispatchUILoaded(true)
	end)

	slot0.tweens = topAnimation(slot0:findTF("title/bg/left", slot0._topPanel), slot0:findTF("title/bg/right", slot0._topPanel), slot0:findTF("title/bg/title_task", slot0._topPanel), slot0:findTF("title/bg/handbook", slot0._topPanel), nil, function ()
		slot0.tweens = nil
	end)
end

function slot0.uiExitAnimating(slot0)
	shiftPanel(slot0._topPanel, nil, slot0._topPanel.rect.height, slot2, slot1, true, true)
	shiftPanel(slot0._leftLength, -1 * slot0._leftLength.rect.width, nil, slot2, slot1, true, true)
	shiftPanel(slot0._scrllPanel, slot0._scrllPanel.transform.localPosition.x + 1280, nil, 0.3, 0, true, true)
end

function slot0.createTasks(slot0)
	slot0.taskCards = {}

	function slot0._scrollView.onInitItem(slot0)
		slot0:onInitTask(slot0)
	end

	function slot0._scrollView.onUpdateItem(slot0, slot1)
		slot0:onUpdateTask(slot0, slot1)
	end
end

function slot0.onInitTask(slot0, slot1)
	slot0.taskCards[slot1] = TaskCard.New(slot1, slot0)
end

function slot0.onUpdateTask(slot0, slot1, slot2)
	if not slot0.taskCards[slot2] then
		slot0:onInitTask(slot2)

		slot3 = slot0.taskCards[slot2]
	end

	slot3:update(slot0.taskVOs[slot1 + 1])
end

function slot0.filterTasks(slot0, slot1)
	slot0.taskVOs = {}
	slot0._currentToggleType = slot1
	slot2 = nil
	slot2 = (pg.GuideMgr2.ENABLE_GUIDE ~= true or pg.taskUIConfig.guider_filter[slot0._currentToggleType]) and pg.taskUIConfig.filter[slot0._currentToggleType]

	for slot6, slot7 in pairs(slot0.taskVOsById) do
		if slot7:getConfig("visibility") == 1 and slot2[slot7:getConfig("type")] then
			table.insert(slot0.taskVOs, slot7)
		end
	end

	slot0:sortTasks()
	slot0._scrollView:SetTotalCount(#slot0.taskVOs)
end

function slot0.sortTasks(slot0)
	function slot1(slot0, slot1, slot2)
		return slot3(slot0) < slot3(slot1)
	end

	table.sort(slot0.taskVOs, function (slot0, slot1)
		if slot0:getTaskStatus() == slot1:getTaskStatus() then
			if slot0:getConfig("type") == slot1:getConfig("type") then
				return slot0.id < slot1.id
			elseif slot0:getTaskStatus() == 0 then
				return slot0(slot0:getConfig("type"), slot1:getConfig("type"), {
					26,
					36,
					6,
					3,
					4,
					5,
					2,
					1
				})
			elseif slot0:getTaskStatus() == 1 then
				return slot0(slot0:getConfig("type"), slot1:getConfig("type"), {
					26,
					36,
					6,
					1,
					4,
					2,
					5,
					3
				})
			end
		else
			return slot0(slot0:getTaskStatus(), slot1:getTaskStatus(), {
				1,
				0,
				2
			})
		end
	end)
end

function slot0.initTypeTag(slot0)
	slot0.toggles = {}

	for slot5, slot6 in pairs(slot1) do
		slot0.toggles[slot5] = slot0:findTF(slot5, slot0._tagRoot)

		onToggle(slot0, slot0.findTF(slot5, slot0._tagRoot), function (slot0)
			if slot0 then
				slot0:filterTasks(slot0.filterTasks)
			end
		end, SFX_PANEL)
	end
end

function slot0.addTask(slot0, slot1)
	print("add tgsk " .. slot1.id)

	slot0.taskVOsById[slot1.id] = slot1

	slot0:filterTasks(slot0._currentToggleType)
end

function slot0.removeTask(slot0, slot1)
	print("revemo tgsk " .. slot1.id)

	slot0.taskVOsById[slot1.id] = nil

	slot0:filterTasks(slot0._currentToggleType)
end

function slot0.updateTask(slot0, slot1)
	slot0:addTask(slot1)
end

function slot0.GoToFilter(slot0, slot1)
	triggerToggle(slot0:findTF(slot1, slot0._tagRoot), true)
end

function slot0.onSubmit(slot0, slot1)
	if slot0.onShowAwards then
		return
	end

	slot0:emit(TaskMediator.ON_TASK_SUBMIT, slot1)
end

function slot0.onGo(slot0, slot1)
	if slot0.onShowAwards then
		return
	end

	slot0:emit(TaskMediator.ON_TASK_GO, slot1)
end

function slot0.unPartialBlur(slot0)
	SetParent(slot0._topPanel, slot0._tf)
	pg.UIMgr.GetInstance():PartialBlur(slot0._topPanel:Find("title"), false)
end

function slot0.willExit(slot0)
	for slot4, slot5 in pairs(slot0.taskCards) do
		slot5:dispose()
	end

	if slot0.tweens then
		cancelTweens(slot0.tweens)
	end

	slot1 = pg.taskUIConfig
end

return slot0
