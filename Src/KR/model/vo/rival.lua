slot0 = class("Rival", import(".BaseVO"))

function slot0.Ctor(slot0, slot1)
	slot0.id = slot1.id
	slot0.level = slot1.level
	slot0.icon = slot1.icon
	slot0.name = slot1.name
	slot0.score = slot1.score or 0
	slot0.rank = slot1.rank
	slot0.remoulded = false

	if slot1.remoulded and slot1.remoulded == 1 then
		slot0.remoulded = true
	end

	slot0.propose = slot1.propose and slot1.propose > 0
	slot0.proposeTime = slot1.propose
	slot0.vanguardShips = {}
	slot0.mainShips = {}

	function slot2(slot0)
		if slot0:getTeamType() == TeamType.Vanguard then
			table.insert(slot0.vanguardShips, slot0)
		elseif slot0:getTeamType() == TeamType.Main then
			table.insert(slot0.mainShips, slot0)
		end
	end

	for slot6, slot7 in ipairs(slot1.vanguard_ship_list) do
		Ship.New(slot7).isRival = true

		slot2(Ship.New(slot7))
	end

	for slot6, slot7 in ipairs(slot1.main_ship_list) do
		Ship.New(slot7).isRival = true

		slot2(Ship.New(slot7))
	end

	slot0.score = slot0.score + SeasonInfo.INIT_POINT
	slot0.skinId = slot1.skin_id or 0

	if slot0.skinId == 0 and pg.ship_data_statistics[slot0.icon] then
		slot0.skinId = slot3.skin_id
	end
end

function slot0.getPainting(slot0)
	slot2 = nil

	if pg.ship_skin_template[slot0.skinId] then
		return ((HXSet.isHx() or slot1.painting) and ((slot1.painting_hx ~= "" and slot1.painting_hx) or slot1.painting)) or "unknown"
	end
end

function slot0.getShips(slot0)
	slot1 = {}

	for slot5, slot6 in ipairs(slot0.vanguardShips) do
		table.insert(slot1, slot6)
	end

	for slot5, slot6 in ipairs(slot0.mainShips) do
		table.insert(slot1, slot6)
	end

	return slot1
end

function slot0.GetGearScoreSum(slot0, slot1)
	slot2 = nil

	if slot1 == "main" then
		slot2 = slot0.mainShips
	elseif slot1 == "vanguard" then
		slot2 = slot0.vanguardShips
	end

	slot3 = 0

	for slot7, slot8 in ipairs(slot2) do
		slot3 = slot3 + slot8:getShipCombatPower()
	end

	return math.floor(slot3)
end

return slot0
