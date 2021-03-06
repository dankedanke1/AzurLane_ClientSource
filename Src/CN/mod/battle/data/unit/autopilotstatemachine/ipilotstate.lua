ys = ys or {}
slot1 = class("IPilotState")
ys.Battle.IPilotState = slot1
slot1.__name = "IPilotState"
slot1.STATE_APPROACH = "approach"
slot1.STATE_AWAY = "away"
slot1.STATE_AROUND = "around"
slot1.STATE_CHARGE = "charge"
slot1.STATE_ASLEEP = "asleep"
slot1.INPUT_UNIT_SENSER = "InputUnitSenser"
slot1.INPUT_HP_CHANGE = "InputHPChange"
slot1.INPUT_WEAPON_STATE = "InputWeaponState"
slot1.INPUT_TIME = "InputTime"
slot1.IndexToInput = {
	slot1.INPUT_UNIT_SENSER,
	slot1.INPUT_HP_CHANGE,
	slot1.INPUT_WEAPON_STATE,
	slot1.INPUT_TIME
}
slot1.KEY_WORD_PLAYER = "player"
slot1.KEY_WORD_ESCORT = "escort"
slot1.KEY_WORD_HEALER = "healer"
slot1.KEY_WORD_TRIGGER = "trigger"
slot1.KEY_WORD_DISTANCE = "distance"
slot1.KEY_WORD_HP = "hp"
slot1.KEY_WORD_STATE = "state"
slot1.KEY_WORD_LESS = "less"
slot1.KEY_WORD_GREATER = "greater"
slot1.KEY_WORD_EQUAL = "equal"
slot1.KEY_WORD_RATE = "rate"
slot1.KEY_WORD_DELTA = "delta"
slot1.KEY_WORD_READY = "ready"
slot1.KEY_WORD_CD = "cd"

function slot1.Ctor(slot0, slot1)
	slot0._target = slot1

	slot0:InitTimeTransition()
end

function slot1.WhenEnter(slot0)
	slot0._NextTranferTime = pg.TimeMgr.GetInstance():GetCombatTime() + slot0._tranferTime
end

function slot1.CalculateDirection(slot0, slot1, slot2)
	return
end

function slot1.FixAxis(slot0, slot1)
	if slot0._transParam.fixZ == true then
		slot1.z = 0
	end

	if slot0._transParam.fixX == true then
		slot1.x = 0
	end

	slot1.y = 0
end

function slot1.SetTransitionParam(slot0, slot1, slot2)
	slot0._transParam = slot1
	slot0._triggerUnit = slot2

	return slot0:ParseTransitionParam()
end

function slot1.InitTimeTransition(slot0)
	slot0._tranferTime = 0
	slot2 = 0

	for slot6, slot7 in ipairs(slot1) do
		if slot0.IndexToInput[slot7.input] == slot0.INPUT_TIME then
			slot0._tranferTime = slot7.value.value
			slot0._timeTransition = slot7

			break
		end
	end
end

function slot1.ParseTransitionParam(slot0)
	if slot0._transParam.target ~= nil and table.getCount(slot0._transParam.target) ~= 0 then
		if slot0._transParam.target.type == slot0.KEY_WORD_TRIGGER then
			if slot0._triggerUnit ~= nil then
				slot0._referenceTarget = slot0._triggerUnit
				slot0._triggerUnit = nil
				slot0._referencePoint = nil

				return true
			else
				return false
			end
		else
			slot2 = nil

			if slot1.type == slot0.KEY_WORD_PLAYER then
				slot2 = slot0._target:GetUnitSenserList().player
			elseif slot1.type == slot0.KEY_WORD_ESCORT then
				slot2 = slot0._target:GetUnitSenserList().escort
			elseif slot1.type == slot0.KEY_WORD_HEALER then
				slot2 = slot0._target:GetUnitSenserList().healer
			end

			if slot1.filter == slot0.KEY_WORD_DISTANCE then
				for slot6, slot7 in ipairs(slot2) do
					slot8 = slot7.dist

					if slot1.operation == slot0.KEY_WORD_LESS and slot8 <= slot1.value then
						slot0._referenceTarget = slot7.unit

						return true
					elseif slot1.operation == slot0.KEY_WORD_GREATER and slot1.value <= slot8 then
						slot0._referenceTarget = slot7.unit

						return true
					elseif slot1.operation == slot0.KEY_WORD_EQUAL and slot8 == slot1.value then
						slot0._referenceTarget = slot7.unit

						return true
					end
				end

				return false
			elseif slot1.filter == slot0.KEY_WORD_HP then
				return false
			elseif slot1.filter == slot0.KEY_WORD_STATE then
				return false
			end
		end
	elseif slot0._transParam.point ~= nil and table.getCount(slot0._transParam.point) ~= 0 then
		slot0._referencePoint = Vector3(slot0._transParam.point[1], 0, slot0._transParam.point[2])
		slot0._referenceTarget = nil

		return true
	elseif slot0._transParam.random ~= nil and table.getCount(slot0._transParam.random) ~= 0 then
		if slot0.Battle.BattleFormulas.RandomPosNull(slot0._transParam.random) then
			slot0._referencePoint = slot2
			slot0._referenceTarget = nil

			return true
		else
			return false
		end
	elseif slot0._transParam.shift ~= nil and table.getCount(slot0._transParam.shift) ~= 0 then
		slot0._referencePoint = slot0._target:GetUnit():GetPosition() + Vector3(slot0._transParam.shift.x or 0, 0, slot0._transParam.shift.z or 0)
		slot0._referenceTarget = nil

		return true
	else
		return false
	end
end

function slot1.InputUnitSenser(slot0)
	if #slot0._target:GetUnitSenserList().player == 0 then
		return
	end

	slot4 = {}
	slot5 = nil

	for slot9, slot10 in ipairs(slot3) do
		if slot0.IndexToInput[slot10.input] == slot0.INPUT_UNIT_SENSER then
			slot12 = slot10.value.operation
			slot13 = slot10.value.value

			if slot10.value.target == slot0.KEY_WORD_PLAYER and slot11.type == slot0.KEY_WORD_DISTANCE then
				for slot17, slot18 in ipairs(slot2) do
					slot19 = slot18.dist

					if slot12 == slot0.KEY_WORD_LESS and slot19 < slot13 then
						slot4[#slot4 + 1] = slot10
						slot5 = slot18.unit

						break
					elseif slot12 == slot0.KEY_WORD_GREATER and slot13 < slot19 then
						slot4[#slot4 + 1] = slot10
						slot5 = slot18.unit

						break
					elseif slot12 == slot0.KEY_WORD_EQUAL and slot19 == slot13 then
						slot4[#slot4 + 1] = slot10
						slot5 = slot18.unit

						break
					end
				end
			end
		end
	end

	if #slot4 == 0 then
		return
	end

	table.sort(slot4, slot0._sortFunc_)
	slot0._target:SwitchState(slot4[1].transition, slot4[1].param, slot5)
end

function slot1.InputWeaponState(slot0, slot1)
	slot3 = {}

	for slot7, slot8 in ipairs(slot2) do
		if slot0.IndexToInput[slot8.input] == slot0.INPUT_WEAPON_STATE then
			slot10 = 0

			if slot8.value.type == slot0.KEY_WORD_READY then
				for slot14, slot15 in ipairs(slot1) do
					if slot15:GetCurrentState() == slot0.Battle.BattleWeaponUnit.STATE_READY then
						slot10 = slot10 + 1
					end
				end
			elseif slot9.type == slot0.KEY_WORD_CD then
				for slot14, slot15 in ipairs(slot1) do
					if slot15:GetCurrentState() ~= slot0.Battle.BattleWeaponUnit.STATE_READY then
						slot10 = slot10 + 1
					end
				end
			end

			if slot9.operation == slot0.KEY_WORD_LESS then
				if slot10 < slot9.value then
					slot3[#slot3 + 1] = slot8
				end
			elseif slot9.operation == slot0.KEY_WORD_GREATER then
				if slot9.value < slot10 then
					slot3[#slot3 + 1] = slot8
				end
			elseif slot9.operation == slot0.KEY_WORD_EQUAL and slot10 == slot9.value then
				slot3[#slot3 + 1] = slot8
			end
		end
	end

	if #slot3 == 0 then
		return
	end

	table.sort(slot3, slot0._sortFunc_)
	slot0._target:SwitchState(slot3[1].transition, slot3[1].param, nil)
end

function slot1._sortFunc_(slot0, slot1)
	return slot0.priority < slot1.priority
end

return
