slot0 = class("ServerNoticeLayer", import("..base.BaseUI"))
slot0.OPEN_ACTIVITY_PANEL = "event open activity panel"
slot0.GO_SCENE = "event go scene"
slot0.SET_STOP_REMIND = "event set stop remind"

function slot0.getUIName(slot0)
	return "ServerNoticeUI"
end

function slot0.init(slot0)
	slot0.trFrame = slot0:findTF("frame")
	slot0.scroll = slot0:findTF("frame/scroll"):GetComponent("ScrollRect")
	slot0.trContent = slot0:findTF("frame/scroll/content")
	slot0.trItem = slot0:findTF("frame/scroll/item")
	slot0.btnBack = slot0:findTF("frame/title_pop/btnBack")
	slot0.stopRemind = slot0:findTF("frame/title_pop/stopRemind")
	slot0.bannerSnap = slot0:findTF("frame/top/scroll"):GetComponent("HScrollSnap")
	slot0.bannerContent = slot0:findTF("frame/top/scroll/content")
	slot0.bannerItem = slot0:findTF("frame/top/scroll/item")
	slot0.bannerDots = slot0:findTF("frame/top/scroll/dots")
	slot0.bannerDot = slot0:findTF("frame/top/scroll/dot")

	slot0.trItem.gameObject:SetActive(false)
	slot0.bannerItem.gameObject:SetActive(false)
	slot0.bannerDot.gameObject:SetActive(false)

	slot0.bannerSnap.autoSnap = 5

	if isAiriUS() then
		slot0.userAgreeContainer = slot0:findTF("frame/container")
		slot0.userAgreeBtns = slot0:findTF("frame/btns")
		slot0.userAgreeBtn1 = slot0:findTF("frame/btns/UserAgreeBtn")
		slot0.userAgreeBtn2 = slot0:findTF("frame/btns/priBtn")
		slot0.userAgreeBtn3 = slot0:findTF("frame/btns/raw1Btn")
		slot0.userAgreeBtn4 = slot0:findTF("frame/btns/raw2Btn")
		slot0.frameTop = slot0:findTF("frame/top")
		slot0.frameScroll = slot0:findTF("frame/scroll")
	end
end

function slot0.didEnter(slot0)
	triggerToggle(slot0.stopRemind, slot2)
	onButton(slot0, slot0.btnBack, function ()
		if isAiriUS() and slot0.agreeActive then
			slot0:activeUserAgree(false)

			return
		end

		slot0:emit(BaseUI.ON_CLOSE)
	end, SFX_CANCEL)
	onToggle(slot0, slot0.stopRemind, function (slot0)
		slot0:emit(slot1.SET_STOP_REMIND, slot0)
	end)

	slot3 = slot0.trFrame:GetComponent("CanvasGroup")

	LeanTween.cancel(go(slot0.trFrame))
	LeanTween.value(go(slot0.trFrame), 0, 1, 0.3):setEase(LeanTweenType.easeOutBack):setOnUpdate(System.Action_float(function (slot0)
		slot0.alpha = slot0
		slot0.trFrame.localScale = Vector3(0.8, 0.8, 1) + Vector3(0.2, 0.2, 0) * slot0
	end))
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf, false)

	if isAiriUS() then
		slot0:activeUserAgree("", false)
		onButton(slot0, slot0.userAgreeBtn1, function ()
			slot0:activeUserAgree(require("ShareCfg.UserAgreement").content, true)
		end, SFX_PANEL)
		onButton(slot0, slot0.userAgreeBtn2, function ()
			slot0:activeUserAgree(require("ShareCfg.UserAgreement2").content, true)
		end, SFX_PANEL)
		onButton(slot0, slot0.userAgreeBtn3, function ()
			slot0:activeUserAgree(require("ShareCfg.UserAgreement3").content, true)
		end, SFX_PANEL)
		onButton(slot0, slot0.userAgreeBtn4, function ()
			slot0:activeUserAgree(require("ShareCfg.UserAgreement4").content, true)
		end, SFX_PANEL)
	end
end

function slot0.activeUserAgree(slot0, slot1, slot2)
	SetActive(slot0.userAgreeContainer, slot2)

	if slot2 then
		setText(slot0:findTF("scrollrect/content/Text", slot0.userAgreeContainer), slot1)
		scrollTo(slot0:findTF("scrollrect", slot0.userAgreeContainer), 0, 1)
	end

	SetActive(slot0.frameTop, not slot2)
	SetActive(slot0.frameScroll, not slot2)
	SetActive(slot0.stopRemind, not slot2)

	slot0.agreeActive = slot2
end

function slot0.updateNotices(slot0, slot1)
	for slot5 = slot0.trContent.childCount + 1, #slot1, 1 do
		cloneTplTo(slot0.trItem, slot0.trContent)
	end

	for slot5 = slot0.trContent.childCount - 1, #slot1, -1 do
		Destroy(slot0.trContent:GetChild(slot5))
	end

	for slot5 = 0, slot0.trContent.childCount - 1, 1 do
		slot0:updateChild(slot0.trContent:GetChild(slot5), slot1[slot5 + 1])
	end

	onNextTick(function ()
		if slot0.trContent.childCount > 0 then
			triggerToggle(slot0.trContent:GetChild(0):Find("title"), true)
		end
	end)
end

function slot0.updateChild(slot0, slot1, slot2)
	slot3 = slot1:Find("title")
	slot6 = slot1:Find("detail").gameObject
	slot7 = slot1:GetComponent("LayoutElement")
	slot8 = slot1:Find("detail/label"):GetComponent("RichText")

	slot8:AddListener(function (slot0, slot1)
		if slot0 == "url" then
			Application.OpenURL(slot1)
		end
	end)
	slot3:Find("read").gameObject.SetActive(slot4, not slot2.isRead)

	slot3:Find("label"):GetComponent("Text").text = slot2.title
	slot8.text = slot2.content

	onToggle(slot0, slot3, function (slot0)
		if slot0 then
			slot0:markAsRead()
		end

		slot1:SetActive(not slot0.isRead)
		slot1:SetActive(slot0)
		Canvas.ForceUpdateCanvases()

		slot0.preferredHeight = (slot0 and 52 + slot2.transform.rect.height) or 52
	end, SFX_PANEL)
end

function slot0.updateBanner(slot0, slot1)
	for slot5 = slot0.bannerDots.childCount + 1, #slot1, 1 do
		cloneTplTo(slot0.bannerDot, slot0.bannerDots)

		slot6 = Instantiate(slot0.bannerItem)

		slot6:SetActive(true)
		slot0.bannerSnap:AddChild(slot6)
	end

	for slot5 = slot0.bannerDots.childCount - 1, #slot1, -1 do
		Destroy(slot0.bannerDots:GetChild(slot5))
		Destroy(slot0.bannerSnap:RmoveChild(slot5))
	end

	for slot5 = 0, slot0.bannerDots.childCount - 1, 1 do
		LoadImageSpriteAsync("activitybanner/" .. slot1[slot5 + 1].pic, slot0:findTF("pic", slot0.bannerContent:GetChild(slot5)), true)
		onButton(slot0, slot0.bannerContent.GetChild(slot5), function ()
			if slot0.type == 1 then
				Application.OpenURL(slot0.param)
			elseif slot0.type == 2 then
				slot1:emit(slot2.GO_SCENE, slot0.param)
			elseif slot0.type == 3 then
				slot1:emit(slot2.OPEN_ACTIVITY_PANEL, slot0.param)
			end
		end, SFX_PANEL)
	end
end

function slot0.willExit(slot0)
	LeanTween.cancel(go(slot0.trFrame))
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
