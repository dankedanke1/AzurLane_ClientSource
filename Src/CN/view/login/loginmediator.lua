slot0 = class("LoginMediator", import("..base.ContextMediator"))
slot0.ON_LOGIN = "LoginMediator:ON_LOGIN"
slot0.ON_REGISTER = "LoginMediator:ON_REGISTER"
slot0.ON_SERVER = "LoginMediator:ON_SERVER"

function slot0.register(slot0)
	slot0:bind(slot0.ON_LOGIN, function (slot0, slot1)
		slot0:sendNotification(GAME.USER_LOGIN, slot1)
	end)
	slot0:bind(slot0.ON_REGISTER, function (slot0, slot1)
		slot0:sendNotification(GAME.USER_REGISTER, slot1)
	end)
	slot0:bind(slot0.ON_SERVER, function (slot0, slot1)
		slot0:sendNotification(GAME.SERVER_LOGIN, slot1)
	end)

	slot1 = getProxy(SettingsProxy)
	slot0.process = coroutine.wrap(function ()
		if not slot0:getUserAgreement() then
			slot1.viewComponent:showUserAgreement(slot1.process)
			coroutine.yield()
			coroutine.yield:setUserAgreement()
		end

		slot0 = nil

		if isPlatform() then
			if isTencent() then
				slot1.viewComponent:switchToTencentLogin()
			else
				slot1.viewComponent:switchToServer()
			end
		else
			slot1.viewComponent:switchToLogin()

			slot1 = getProxy(UserProxy)

			slot1.viewComponent:setLastLogin(slot1:getLastLoginUser())
		end

		if slot1.contextData.code then
			if slot1.contextData.code ~= 0 then
				slot1(pg.MsgboxMgr.GetInstance(), {
					modal = true,
					hideNo = true,
					content = ({
						i18n("login_loginMediator_kickOtherLogin"),
						i18n("login_loginMediator_kickServerClose"),
						i18n("login_loginMediator_kickIntError"),
						i18n("login_loginMediator_kickTimeError"),
						i18n("login_loginMediator_kickLoginOut"),
						i18n("login_loginMediator_serverLoginErro"),
						i18n("login_loginMediator_vertifyFail"),
						[99] = i18n("login_loginMediator_dataExpired")
					})[slot1.contextData.code] or i18n("login_loginMediator_kickUndefined", slot1.contextData.code)
				})
			end

			if slot0 then
				if slot0.type == 1 then
					slot0.arg3 = ""
				elseif slot0.type == 2 then
					slot0.arg2 = ""
				end

				slot1.viewComponent:setLastLogin(slot0)
			end
		else
			slot1.viewComponent:setAutoLogin()
		end

		if slot1.contextData.loginPlatform then
			BilibiliSdkMgr.inst:login(0)
		elseif isTencent() then
			BilibiliSdkMgr.inst:tryTencLogin()
		end

		slot1.viewComponent:autoLogin()
	end)

	slot0.process()
end

function slot0.listNotificationInterests(slot0)
	return {
		GAME.USER_LOGIN_SUCCESS,
		GAME.USER_LOGIN_FAILED,
		GAME.USER_REGISTER_SUCCESS,
		GAME.USER_REGISTER_FAILED,
		GAME.SERVER_LOGIN_SUCCESS,
		GAME.SERVER_LOGIN_FAILED,
		GAME.LOAD_PLAYER_DATA_DONE,
		ServerProxy.SERVERS_UPDATED,
		GAME.PLATFORM_LOGIN_DONE,
		GAME.SERVER_LOGIN_WAIT,
		GAME.BEGIN_STAGE_DONE
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == ServerProxy.SERVERS_UPDATED then
		slot0.viewComponent:updateServerList(slot3)
	elseif slot2 == GAME.USER_LOGIN_SUCCESS then
		pg.TipsMgr:GetInstance():ShowTips(i18n("login_loginMediator_loginSuccess"))
		slot0.viewComponent:setLastLoginServer(slot5)
		slot0.viewComponent:switchToServer()

		if #getProxy(GatewayNoticeProxy).getGatewayNotices(slot6, false) > 0 then
			slot0:addSubLayers(Context.New({
				mediator = GatewayNoticeMediator,
				viewComponent = GatewayNoticeLayer
			}))
		end
	elseif slot2 == GAME.USER_REGISTER_SUCCESS then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			modal = true,
			hideNo = true,
			content = i18n("login_loginMediator_quest_RegisterSuccess"),
			onYes = function ()
				slot0:sendNotification(GAME.USER_LOGIN, slot0)
			end
		})
	elseif slot2 == GAME.SERVER_LOGIN_SUCCESS then
		if slot3.uid == 0 then
			pg.GuideMgr2:GetInstance():Reset()
			pg.GuideMgr2:GetInstance():updateCurrentGuideStep(0)
			slot0:sendNotification(GAME.BEGIN_STAGE, {
				system = SYSTEM_PROLOGUE
			})
		else
			slot0:blockEvents()
			slot0.facade:sendNotification(GAME.LOAD_PLAYER_DATA, {
				id = slot3.uid
			})
		end
	elseif slot2 == GAME.USER_REGISTER_FAILED then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			modal = true,
			hideNo = true,
			content = errorTip("login_loginMediator_registerFail", slot3)
		})
	elseif slot2 == GAME.USER_LOGIN_FAILED then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			modal = true,
			hideNo = true,
			content = errorTip("login_loginMediator_userLoginFail_error", slot3),
			onYes = function ()
				if slot0 == 20 then
					slot1.viewComponent:switchToRegister()
				elseif slot0 == 3 or slot0 == 6 then
					slot1.viewComponent:switchToServer()
				elseif slot0 == 1 or slot0 == 9 or slot0 == 11 or slot0 == 12 then
					slot1.viewComponent:switchToLogin()
				elseif isPlatform() then
					slot1.viewComponent:switchToServer()
				else
					slot1.viewComponent:switchToLogin()
				end
			end
		})
	elseif slot2 == GAME.SERVER_LOGIN_FAILED then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			modal = true,
			hideNo = true,
			content = errorTip("login_loginMediator_serverLoginFail", slot3),
			onYes = function ()
				if isPlatform() then
					slot0.viewComponent:switchToServer()
				else
					slot0.viewComponent:switchToLogin()
				end
			end
		})
	elseif slot2 == GAME.LOAD_PLAYER_DATA_DONE then
		slot0.viewComponent:unloadExtraVoice()
		slot0:sendNotification(GAME.GO_SCENE, SCENE.MAINUI, {
			isFromLogin = true
		})
	elseif slot2 == GAME.BEGIN_STAGE_DONE then
		slot0.viewComponent:unloadExtraVoice()
		slot0:sendNotification(GAME.GO_SCENE, SCENE.COMBATLOAD, slot3)
	elseif slot2 == GAME.PLATFORM_LOGIN_DONE then
		slot0:sendNotification(GAME.USER_LOGIN, slot3.user)
	elseif slot2 == GAME.SERVER_LOGIN_WAIT then
		slot0.viewComponent:SwitchToWaitPanel(slot3)
	end
end

return slot0
