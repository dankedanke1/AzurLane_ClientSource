slot0 = class("ShipModMediator", import("..base.ContextMediator"))
slot0.ON_SELECT_MATERIAL_SHIPS = "ShipModMediator:ON_SELECT_MATERIAL_SHIPS"
slot0.MOD_SHIP = "ShipModMediator:MOD_SHIP"
slot0.ON_SKILL = "ShipModMediator:ON_SKILL"
slot0.LOADEND = "ShipModMediator:LOADEND"

function slot0.register(slot0)
	slot1 = getProxy(BayProxy)

	slot0.viewComponent:setShipVOs(slot2)
	slot0.viewComponent:setShip(slot3)
	slot0:bind(slot0.ON_SELECT_MATERIAL_SHIPS, function (slot0)
		slot1 = slot0:fileterShips(ShipStatus.FILTER_SHIPS_FLAGS_1)

		table.insert(slot1, 1, slot1.contextData.shipId)
		slot1:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD, {
			selectedMin = 0,
			skipSelect = true,
			blockLock = true,
			prevFlag = false,
			selectedMax = 12,
			leftTopInfo = i18n("word_equipment_intensify"),
			mode = DockyardScene.MODE_MOD,
			onShip = Ship.canDestroyShip,
			ignoredIds = slot1,
			selectedIds = slot1.contextData.materialShipIds,
			onSelected = function (slot0)
				slot0.contextData.materialShipIds = slot0
			end,
			sortData = {
				Asc = true,
				sort = 1
			}
		})
	end)
	slot0:bind(slot0.MOD_SHIP, function (slot0, slot1)
		slot0:sendNotification(GAME.MOD_SHIP, {
			shipId = slot1,
			shipIds = slot0.contextData.materialShipIds
		})
	end)
	slot0:bind(slot0.ON_SKILL, function (slot0, slot1, slot2)
		slot0:addSubLayers(Context.New({
			mediator = SkillInfoMediator,
			viewComponent = SkillInfoLayer,
			data = {
				skillOnShip = slot2,
				skillId = slot1
			}
		}))
	end)
	slot0:bind(slot0.LOADEND, function (slot0, slot1)
		slot0:sendNotification(slot1.LOADEND, slot1)
	end)
end

function slot0.listNotificationInterests(slot0)
	return {
		GAME.MOD_SHIP_DONE,
		ShipInfoMediator.NEXTSHIP
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == GAME.MOD_SHIP_DONE then
		slot0.contextData.materialShipIds = nil

		slot0.viewComponent:setShip(slot3.newShip)
		slot0.viewComponent:modAttrAnim(slot3.newShip, slot3.oldShip)
		pg.TipsMgr:GetInstance():ShowTips(i18n("ship_shipModLayer_modSuccess"))

		if table.getCount(slot3.equipments) > 0 then
			slot4 = {}

			for slot8, slot9 in pairs(slot3.equipments) do
				table.insert(slot4, slot9)
			end

			slot0:addSubLayers(Context.New({
				viewComponent = ResolveEquipmentLayer,
				mediator = ResolveEquipmentMediator,
				data = {
					Equipments = slot4
				}
			}))
		end
	elseif slot2 == ShipInfoMediator.NEXTSHIP then
		slot0.viewComponent:setShip(getProxy(BayProxy).getShipById(slot4, slot3))
	end
end

return slot0
