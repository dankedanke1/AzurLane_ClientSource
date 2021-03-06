slot0 = class("Item", import(".BaseVO"))
slot0.REVERT_EQUIPMENT_ID = 15007
slot0.INVISIBLE_TYPE = {
	0,
	9
}
slot0.PUZZLA_TYPE = 0
slot0.EQUIPMENT_SKIN_BOX = 11
slot0.BLUEPRINT_TYPE = 12
slot0.ASSIGNED_TYPE = 13

function itemId2icon(slot0)
	return pg.item_data_statistics[slot0].icon
end

function slot0.Ctor(slot0, slot1)
	slot0.configId = slot1.id
	slot0.id = slot0.configId
	slot0.dropType = slot1.type or 0
	slot0.type = slot0.dropType
	slot0.count = slot1.num or slot1.number or slot1.count
	slot0.name = slot1.name
	slot2 = pg.item_data_template[slot0.configId]
	slot0.itemConfigData = setmetatable({}, {
		__index = function (slot0, slot1)
			return slot0[slot1]
		end
	})
end

function slot0.bindConfigTable(slot0)
	return pg.item_data_statistics
end

function slot0.getTempCfgTable(slot0)
	return pg.item_data_template[slot0.id]
end

function slot0.couldSell(slot0)
	return table.getCount(slot0:getConfig("price")) > 0
end

function slot0.isDropItem(slot0)
	return slot0.dropType > 0
end

function slot0.isEnough(slot0, slot1)
	return slot1 <= slot0.count
end

function slot0.consume(slot0, slot1)
	slot0.count = slot0.count - slot1
end

function slot0.isDesignDrawing(slot0)
	return slot0:getConfig("type") == 9
end

function slot0.isVirtualItem(slot0)
	return slot0:getConfig("type") == 0
end

function slot0.getTempConfig(slot0, slot1)
	return slot0.itemConfigData[slot1]
end

function slot0.isEquipmentSkinBox(slot0)
	return slot0:getConfig("type") == slot0.EQUIPMENT_SKIN_BOX
end

function slot0.isBluePrintType(slot0)
	return slot0:getConfig("type") == slot0.BLUEPRINT_TYPE
end

return slot0
