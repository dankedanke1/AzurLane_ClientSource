slot0 = class("ServerLoginCommand", pm.SimpleCommand)
slot0.LoginLastTime = 0
slot0.LoginSafeLock = 0

function slot0.execute(slot0, slot1)
	print("connect to game server - " .. slot1:getBody().host .. ":" .. slot1.getBody().port)

	slot4 = getProxy(UserProxy).getData(slot3)

	if BilibiliSdkMgr.inst.channelUID == "" then
		slot5 = PLATFORM_LOCAL
	end

	function slot6(slot0)
		slot1(pg.ConnectionMgr.GetInstance(), 10022, {
			platform = slot0,
			account_id = slot1.uid,
			server_ticket = slot0 or slot1.token,
			serverid = pg.ConnectionMgr.GetInstance().id,
			check_key = HashUtil.CalcMD5(slot1.token .. AABBUDUD),
			device_id = getDeviceId()
		}, 10023, function (slot0)
			if slot0.result == 0 then
				print("connect success: " .. slot0.user_id)

				if slot0.status == Server.STATUS.REGISTER_FULL and slot0.user_id == 0 then
					pg.TipsMgr:GetInstance():ShowTips(i18n("login_register_full"))
					pg.ConnectionMgr.GetInstance():onDisconnected(true)
				else
					slot1.token = slot0.server_ticket
					slot1.server = slot0.id

					slot0.id:setLastLogin(slot0.id.setLastLogin)

					slot1 = getProxy(ServerProxy)

					slot1:setLastServer(slot0.id, slot1.uid)
					slot1:sendNotification(GAME.SERVER_LOGIN_SUCCESS, {
						uid = slot0.user_id
					})

					if slot0.user_id ~= 0 then
						SendAiriJPTracking(AIRIJP_TRACKING_ROLE_LOGIN, slot0.user_id)
					end
				end
			elseif slot0.result == 13 then
				pg.TipsMgr:GetInstance():ShowTips(i18n("login_game_not_ready"))
			elseif slot0.result == 15 then
				pg.TipsMgr:GetInstance():ShowTips(i18n("login_game_rigister_full"))
			elseif slot0.result == 17 then
				pg.TipsMgr:GetInstance():ShowTips(i18n("login_game_banned"))
			elseif slot0.result == 6 then
				pg.TipsMgr:GetInstance():ShowTips(i18n("login_game_login_full"))
			elseif slot0.result == 18 then
				slot3:sendNotification(GAME.SERVER_LOGIN_WAIT, math.floor(slot0.db_load / 100 + slot0.server_load / 1000 + 1))
			else
				slot3:sendNotification(GAME.SERVER_LOGIN_FAILED, slot0.result)
			end
		end, false)
	end

	slot0.LoginSafeLock = slot0.LoginSafeLock + 1

	if math.abs(os.time() - slot0.LoginLastTime) > 1 or slot0.LoginSafeLock >= 5 then
		slot0.LoginLastTime = slot7
		slot0.LoginSafeLock = 0

		if pg.ConnectionMgr.GetInstance():getConnection() and pg.ConnectionMgr.GetInstance():isConnected() then
			slot6()
		else
			pg.ConnectionMgr.GetInstance():Connect(slot2.host, slot2.port, function ()
				print("server: " .. slot0.id .. " uid: " .. slot1.uid)
				slot0.id()
			end, 6)
		end
	else
		pg.TipsMgr:GetInstance():ShowTips(i18n("login_game_frequence"))
	end
end

return slot0
