slot0 = class("ActivityMediator", import("..base.ContextMediator"))
slot0.EVENT_GO_SCENE = "event go scene"
slot0.EVENT_OPERATION = "event operation"
slot0.GO_SHOPS_LAYER = "event go shop layer"
slot0.BATTLE_OPERA = "event difficult sel"
slot0.REQUEST_VOTE_INFO = "event request vote info"
slot0.GO_VOTE_LAYER = "event go vote layer"
slot0.GO_BACKYARD = "event go backyard"
slot0.GO_LOTTERY = "event go lottery"
slot0.OPEN_HITMONSTERNIAN = "event open hit monster nian"
slot0.CLOSE_HITMONSTERNIAN = "event close hit monster nian"
slot0.EVENT_COLORING_ACHIEVE = "event coloring achieve"
slot0.ON_TASK_SUBMIT = "event on task submit"
slot0.ON_TASK_GO = "event on task go"
slot0.OPEN_MONOPOLY = "event open monopoly"
slot0.CLOSE_MONOPOLY = "event close monopoly"
slot0.GO_DODGEM = "event go dodgem"

function slot0.register(slot0)
	slot0.UIAvalibleCallbacks = {}

	slot0:bind(slot0.OPEN_MONOPOLY, function ()
		if slot0.UIAvalible then
			slot0()
		else
			table.insert(slot0.UIAvalibleCallbacks, slot0)
		end
	end)
	slot0:bind(slot0.CLOSE_MONOPOLY, function ()
		if getProxy(ContextProxy):getContextByMediator(MonopolyMediator) then
			slot0:sendNotification(GAME.REMOVE_LAYERS, {
				context = slot1
			})
		end
	end)
	slot0:bind(slot0.EVENT_OPERATION, function (slot0, slot1)
		slot0:sendNotification(GAME.ACTIVITY_OPERATION, slot1)
	end)
	slot0:bind(slot0.EVENT_GO_SCENE, function (slot0, slot1, slot2)
		slot0:sendNotification(GAME.GO_SCENE, slot1, slot2)
	end)
	slot0:bind(slot0.GO_SHOPS_LAYER, function (slot0, slot1)
		slot0:addSubLayers(Context.New({
			mediator = ShopsMediator,
			viewComponent = ShopsLayer,
			data = slot1 or {
				warp = ShopsLayer.TYPE_ACTIVITY
			}
		}))
	end)
	slot0:bind(slot0.BATTLE_OPERA, function ()
		slot6.mapIdx, slot6.chapterId = getProxy(ChapterProxy):getLastMapForActivity()

		pg.m02:sendNotification(GAME.GO_SCENE, SCENE.LEVEL, {
			chapterId = slot1,
			mapIdx = slot0
		})
	end)
	slot0:bind(slot0.REQUEST_VOTE_INFO, function (slot0, slot1)
		slot0:sendNotification(GAME.REQUEST_VOTE_INFO, slot1)
	end)
	slot0:bind(slot0.GO_VOTE_LAYER, function (slot0, slot1)
		slot0:addSubLayers(Context.New({
			mediator = VoteMediator,
			viewComponent = VoteScene,
			data = slot1
		}))
	end)
	slot0:bind(slot0.GO_LOTTERY, function (slot0)
		slot0:addSubLayers(Context.New({
			mediator = LotteryMediator,
			viewComponent = LotteryLayer,
			data = {
				activityId = getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_LOTTERY).id
			}
		}))
	end)
	slot0:bind(slot0.GO_BACKYARD, function (slot0)
		slot0:sendNotification(GAME.GO_SCENE, SCENE.BACKYARD)
	end)
	slot0:bind(slot0.OPEN_HITMONSTERNIAN, function (slot0)
		function slot1()
			if getProxy(ContextProxy):getContextByMediator(HitMonsterNianMediator) then
				return
			end

			slot0:addSubLayers(Context.New({
				viewComponent = HitMonsterNianLayer,
				mediator = HitMonsterNianMediator
			}))
		end

		if slot0.UIAvalible then
			slot1()
		else
			table.insert(slot0.UIAvalibleCallbacks, slot1)
		end
	end)
	slot0:bind(slot0.CLOSE_HITMONSTERNIAN, function (slot0)
		if getProxy(ContextProxy):getContextByMediator(HitMonsterNianMediator) then
			slot0:sendNotification(GAME.REMOVE_LAYERS, {
				context = slot2
			})
		end
	end)
	slot0:bind(slot0.EVENT_COLORING_ACHIEVE, function (slot0, slot1)
		slot0:sendNotification(GAME.COLORING_ACHIEVE, slot1)
	end)
	slot0:bind(slot0.ON_TASK_SUBMIT, function (slot0, slot1)
		slot0:sendNotification(GAME.SUBMIT_TASK, slot1.id)
	end)
	slot0:bind(slot0.ON_TASK_GO, function (slot0, slot1)
		slot0:sendNotification(GAME.TASK_GO, {
			taskVO = slot1
		})
	end)
	slot0:bind(slot0.GO_DODGEM, function (slot0)
		slot0:sendNotification(GAME.BEGIN_STAGE, {
			system = SYSTEM_DODGEM,
			stageId = ys.Battle.BattleConfig.BATTLE_DODGEM_STAGES[math.random(#ys.Battle.BattleConfig.BATTLE_DODGEM_STAGES)]
		})
	end)

	slot1 = getProxy(ActivityProxy)

	slot0.viewComponent:setActivities(slot2)
	slot0.viewComponent:setAllActivity(slot1:getData())
	slot0.viewComponent:setPlayer(slot4)
	slot0.viewComponent:setFlagShip(getProxy(BayProxy).getShipById(slot5, getProxy(PlayerProxy).getRawData(slot3).character))
	slot0:showNextActivity()
end

function slot0.onUIAvalible(slot0)
	slot0.UIAvalible = true

	_.each(slot0.UIAvalibleCallbacks, function (slot0)
		slot0()
	end)
end

function slot0.listNotificationInterests(slot0)
	return {
		ActivityProxy.ACTIVITY_ADDED,
		ActivityProxy.ACTIVITY_UPDATED,
		ActivityProxy.ACTIVITY_OPERATION_DONE,
		ActivityProxy.ACTIVITY_SHOW_AWARDS,
		ActivityProxy.ACTIVITY_SHOW_BB_RESULT,
		ActivityProxy.ACTIVITY_SHOW_LOTTERY_AWARD_RESULT,
		GAME.COLORING_ACHIEVE_DONE,
		GAME.SUBMIT_TASK_DONE,
		GAME.BEGIN_STAGE_DONE
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == ActivityProxy.ACTIVITY_ADDED or slot2 == ActivityProxy.ACTIVITY_UPDATED then
		if slot3:getConfig("type") == ActivityConst.ACTIVITY_TYPE_LOTTERY then
			return
		end

		slot0.viewComponent:updateActivity(slot3)
	elseif slot2 == ActivityProxy.ACTIVITY_OPERATION_DONE then
		slot0:showNextActivity()
	elseif slot2 == ActivityProxy.ACTIVITY_SHOW_AWARDS then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.awards, slot3.callback)
	elseif slot2 == ActivityProxy.ACTIVITY_SHOW_BB_RESULT then
		slot0.viewComponent:displayBBResult(slot3.numbers, slot3.callback)
	elseif slot2 == ActivityProxy.ACTIVITY_SHOW_LOTTERY_AWARD_RESULT then
		slot0.viewComponent.showLotteryAwardResult(slot3.awards, slot3.number, slot3.callback)
	elseif slot2 == GAME.COLORING_ACHIEVE_DONE then
		slot0.viewComponent:playBonusAnim(function ()
			slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot1.drops, function ()
				slot0.viewComponent:flush_coloring()
			end)
		end)
	else
		if slot2 == GAME.SUBMIT_TASK_DONE then
			getProxy(TaskProxy).setOnAchieved(slot4, true)
			slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3, function ()
				slot0:setOnAchieved(false)
				slot0.setOnAchieved:addTmpToTask()
				slot1.viewComponent:updateTaskLayers()
			end)

			return
		end

		if slot2 == GAME.BEGIN_STAGE_DONE then
			slot0:sendNotification(GAME.GO_SCENE, SCENE.COMBATLOAD, slot3)
		end
	end
end

function slot0.showNextActivity(slot0)
	if not getProxy(ActivityProxy) then
		return
	end

	if slot1:findNextAutoActivity() then
		slot0.viewComponent:selectActivity(slot2.id)

		if slot2:getConfig("type") == ActivityConst.ACTIVITY_TYPE_7DAYSLOGIN or slot3 == ActivityConst.ACTIVITY_TYPE_MONTHSIGN then
			slot0:sendNotification(GAME.ACTIVITY_OPERATION, {
				cmd = 1,
				activity_id = slot2.id
			})
		elseif slot3 == ActivityConst.ACTIVITY_TYPE_PROGRESSLOGIN then
			slot0:sendNotification(GAME.ACTIVITY_OPERATION, {
				activity_id = slot2.id,
				cmd = (slot2.data1 < 7 and 1) or 2
			})
		end
	elseif not slot0.viewComponent.activity then
		slot3 = slot1:getPanelActivities()

		if slot0.contextData.id == nil then
			slot0.viewComponent:selectActivity((slot0.contextData.type and _.detect(slot3, function (slot0)
				return slot0:getConfig("type") == slot0.contextData.type
			end) and slot0.contextData.type and _.detect(slot3, function (slot0)
				return slot0.getConfig("type") == slot0.contextData.type
			end).id) or 0)
		end
	end
end

return slot0
