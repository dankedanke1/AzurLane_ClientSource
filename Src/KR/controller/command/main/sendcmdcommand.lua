class("SendCmdCommand", pm.SimpleCommand).execute = function (slot0, slot1)
	if slot1:getBody().cmd == "local" then
		if slot2.arg1 == "debug" then
			DebugMgr.Inst:Active()
		elseif slot2.arg1 == "notification" then
			slot3 = pg.TimeMgr.GetInstance():GetServerTime() + 60
		elseif slot2.arg1 == "time" then
			print("server time: " .. pg.TimeMgr.GetInstance():GetServerTime())
		elseif slot2.arg1 == "act" then
			for slot7, slot8 in pairs(slot3) do
				print(slot8.id)
			end
		end

		return
	end

	slot3 = slot2.cmd
	slot4 = slot2.arg1

	pg.ConnectionMgr.GetInstance():Send(11100, {
		cmd = slot2.cmd,
		arg1 = slot2.arg1,
		arg2 = slot2.arg2,
		arg3 = slot2.arg3
	}, 11101, function (slot0)
		print("response: " .. slot0.msg)
		slot0:sendNotification(GAME.SEND_CMD_DONE, slot0.msg)

		if slot0.sendNotification == "into" and string.find(slot0.msg, "Result:ok") then
			ys.Battle.BattleState.GenerateVertifyData()
			slot0:sendNotification(GAME.GO_SCENE, SCENE.COMBATLOAD, {
				token = 99,
				mainFleetId = 1,
				prefabFleet = {},
				stageId = tonumber(tonumber),
				system = SYSTEM_TEST,
				drops = {}
			})
		end
	end)
end

return class("SendCmdCommand", pm.SimpleCommand)