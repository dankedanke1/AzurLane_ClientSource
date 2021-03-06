slot0 = class("ActivityGoodsCard")

function slot0.Ctor(slot0, slot1)
	pg.DelegateInfo.New(slot0)

	slot0.go = slot1
	slot0.tr = tf(slot1)
	slot0.itemTF = findTF(slot0.tr, "item")
	slot0.nameTF = findTF(slot0.tr, "item/name"):GetComponent(typeof(Text))
	slot0.resIconTF = findTF(slot0.tr, "item/consume/contain/icon"):GetComponent(typeof(Image))
	slot0.mask = slot0.tr:Find("mask")
	slot0.maskText = slot0.mask:Find("sale_out/Text"):GetComponent(typeof(Text))
	slot0.countTF = findTF(slot0.tr, "item/consume/contain/Text"):GetComponent(typeof(Text))
	slot0.discountTF = findTF(slot0.tr, "item/discount")

	setActive(slot0.discountTF, false)

	slot0.limitCountTF = findTF(slot0.tr, "item/count_contain/count"):GetComponent(typeof(Text))
end

function slot0.update(slot0, slot1)
	slot0.goodsVO = slot1
	slot2, slot3 = slot0.goodsVO:canPurchase()

	setActive(slot0.mask, not slot2)

	slot0.maskText.text = slot3 or i18n("common_sale_out")

	updateDrop(slot0.itemTF, {
		type = slot1:getConfig("commodity_type"),
		id = slot1:getConfig("commodity_id"),
		count = slot1:getConfig("num")
	})

	slot7 = ""

	if slot1.getConfig("commodity_type") == DROP_TYPE_SKIN then
		slot7 = pg.ship_skin_template[slot5].name or "??"
	else
		slot0.nameTF.text = shortenString(slot6.cfg.name or "??", 8)
		slot0.countTF.text = slot1:getConfig("resource_num")
		slot8 = nil
	end

	if slot1:getConfig("resource_category") == DROP_TYPE_RESOURCE then
		slot8 = GetSpriteFromAtlas(pg.item_data_statistics[id2ItemId(slot1:getConfig("resource_type"))].icon, "")
	elseif slot9 == DROP_TYPE_ITEM then
		slot8 = GetSpriteFromAtlas(pg.item_data_statistics[slot1:getConfig("resource_type")].icon, "")
	end

	slot0.resIconTF.sprite = slot8

	if slot1:getConfig("num_limit") == 0 then
		slot0.limitCountTF.text = i18n("common_no_limit")
	else
		slot10 = slot1:getConfig("num_limit")

		if slot4 == DROP_TYPE_SKIN and not slot2 then
			slot0.limitCountTF.text = "0/" .. slot10
		else
			slot0.limitCountTF.text = slot10 - slot1.buyCount .. "/" .. slot10
		end
	end
end

function slot0.setAsLastSibling(slot0)
	slot0.tr:SetAsLastSibling()
end

function slot0.dispose(slot0)
	pg.DelegateInfo.Dispose(slot0)
end

return slot0
