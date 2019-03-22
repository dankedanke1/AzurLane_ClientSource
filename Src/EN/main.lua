ys = {}
pg = {
	_weak = setmetatable({}, {
		__mode = "k"
	})
}

require("Include")
require("tolua.reflection")
tolua.loadassembly("Assembly-CSharp")
math.randomseed(os.time())

CSharpVersion = NetConst.GatewayState

print("C# Ver. " .. CSharpVersion)
print("test")

PLATFORM = LuaHelper.GetPlatformInt()
CHANNEL_NAME = LuaHelper.GetSDKChannelName()
PLATFORM_CH = 1
PLATFORM_JP = 2
PLATFORM_KR = 3
PLATFORM_US = 4
PLATFORM_CODE = PLATFORM_US

if PLATFORM_CODE == PLATFORM_US then
	if CSharpVersion > 23 then
		require("Support/Helpers/AiriSdkSupport")
		require("Support/Helpers/AiriTrackSupport")
	else
		require("Support/Helpers/AiriSdkSupport_old")
		require("Support/Helpers/AiriTrackSupport_old")
	end
end

SDK_EXIT_CODE = 99
BilibiliSdkMgr.sandboxKey = "BLHXSESAUH180704"

if PLATFORM == 8 then
	BilibiliSdkMgr.inst:init()
end

function luaIdeDebugFunc()
	breakInfoFun = require("LuaDebugjit")("localhost", 7003)
	time = Timer.New(breakInfoFun, 0.5, -1, 1)

	time:Start()
end

function isPlatform()
	return BilibiliSdkMgr.inst.isPlatform
end

function isTencent()
	return BilibiliSdkMgr.inst.isTenc
end

function isAiriJP()
	return BilibiliSdkMgr.inst.isAiriJP
end

function isAiriUS()
	return BilibiliSdkMgr.inst.isAiriUS
end

if CSharpVersion > 12 and BilibiliSdkMgr.inst.isClearAccountMode then
	LOCK_CLEAR_ACCOUNT = false
end

pg.TimeMgr.GetInstance():Init()
pg.PushNotificationMgr.GetInstance():Init()

function OnApplicationPause(slot0)
	print("OnApplicationPause: " .. tostring(slot0))

	if not pg.m02 then
		return
	end

	if slot0 then
		pg.m02:sendNotification(GAME.PAUSE_BATTLE)
		pg.PushNotificationMgr.GetInstance():PushAll()
	else
		BilibiliSdkMgr.inst:callSdkApi("bindCpu", nil)
	end
end

function OnApplicationExit()
	if pg.GuideMgr2.GetInstance().managerState == pg.GuideMgr2.MANAGER_STATE.BUSY then
		return
	end

	if pg.GuideMgr.GetInstance().managerState == pg.GuideMgr.MANAGER_STATE.BUSY then
		return
	end

	if ys.Battle.BattleState:GetInstance() and slot0:GetState() == slot0.BATTLE_STATE_FIGHT and not slot0:IsPause() then
		pg.m02:sendNotification(GAME.PAUSE_BATTLE)

		return
	end

	if not pg.UIMgr.GetInstance()._loadPanel or slot1:LoadingRetainCount() ~= 0 then
		return
	end

	if pg.StoryMgr.GetInstance() and slot2.storyId then
		return
	end

	if not pg.m02 then
		return
	end

	if not slot3:retrieveProxy(ContextProxy.__cname) then
		return
	end

	if not slot4:getCurrentContext() then
		return
	end

	if pg.ShareMgr.GetInstance() and slot6.panel and slot7.gameObject.activeSelf then
		playSoundEffect(SFX_CANCEL)
		triggerButton(slot7:Find("main/btnBack"))

		return
	end

	if not slot3:retrieveMediator(slot5:retriveLastChild().mediator.__cname) or not slot8.viewComponent then
		return
	end

	slot10 = slot8.viewComponent._tf.parent
	slot11 = slot8.viewComponent._tf:GetSiblingIndex()
	slot13 = pg.MsgboxMgr.GetInstance() and slot12:getMsgBoxOb()
	slot14 = -1
	slot15 = nil

	if slot13 and slot13.activeSelf then
		slot15 = slot13.transform.parent
		slot14 = slot13.transform:GetSiblingIndex()
	end

	if slot10 == slot15 and slot14 < slot11 then
		slot9:onBackPressed()

		return
	end

	if slot13 and slot13.activeSelf then
		playSoundEffect(SFX_CANCEL)
		triggerButton(slot12._closeBtn)

		return
	end

	slot9:onBackPressed()
end

function OnReceiveMemoryWarning()
	return
end

function PressBack()
	if not IsNil(pg.MsgboxMgr.GetInstance()._go) then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("confirm_app_exit"),
			onYes = function ()
				Application.Quit()
			end
		})
	end
end

function GoLogin(slot0)
	pg.m02:sendNotification(GAME.GO_SCENE, SCENE.LOGIN, {
		loginPlatform = slot0
	})
	gcAll()
end

function SDKLogin(slot0, slot1, slot2)
	return
end

function SDKLogout(slot0)
	if pg.m02 then
		pg.m02:sendNotification(GAME.LOGOUT, {
			code = slot0
		})
	end
end

function PaySuccess(slot0, slot1)
	return
end

function ShowMsgBox(slot0)
	if pg.m02 then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			hideNo = true,
			content = slot0
		})
	end
end

function PayFailed(slot0, slot1)
	return
end

function AiriCheckAudit()
	return NetConst.GATEWAY_PORT == 20001 and NetConst.GATEWAY_HOST == "audit.us.yo-star.com"
end

function AiriCheckPreAudit()
	return false
end

function AiriCheckPretest()
	return NetConst.GATEWAY_PORT == 30001 and NetConst.GATEWAY_HOST == "audit.us.yo-star.com"
end

slot2 = os.clock()

seriesAsync({
	function (slot0)
		pg.UIMgr.GetInstance():Init(slot0)
	end,
	function (slot0)
		parallelAsync({
			function (slot0)
				pg.FontMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.ShaderMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.CriMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.PoolMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.TipsMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.MsgboxMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.GuideMgr2.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.StoryMgr.GetInstance():Init(slot0)
			end,
			function (slot0)
				pg.SystemOpenMgr.GetInstance():Init(slot0)
			end
		}, slot0)
	end
}, function (slot0)
	print("loading cost: " .. os.clock() - slot0)
	VersionMgr.Inst:DestroyUI()
	pg.UIMgr.GetInstance():displayLoadingBG(true)
	pg.UIMgr.GetInstance():LoadingOn()

	if slot0 then
		pg.UIMgr.GetInstance():Loading(slot0)
		error(slot0)

		return
	end

	BilibiliSdkMgr.inst:callSdkApi("bindCpu", nil)

	pg.m02 = pm.Facade.getInstance("m02")

	pg.m02:registerCommand(GAME.STARTUP, StartupCommand)
	pg.m02:sendNotification(GAME.STARTUP)
	BilibiliSdkMgr.inst:localLogin()

	if Application.isEditor then
		pg.UIMgr.GetInstance():AddDebugButton("QATool", function ()
			DebugMgr.Inst:Switch2QATool()
		end)
	end
end)

return
