return {
	uiEffect = "",
	name = "Clev",
	cd = 0,
	picture = "0",
	desc = "Clev",
	painting = 1,
	id = 11922,
	castCV = "skill",
	aniEffect = {
		effect = "jineng",
		offset = {
			0,
			-2,
			0
		}
	},
	effect_list = {
		{
			targetAniEffect = "",
			casterAniEffect = "",
			type = "BattleSkillAddBuff",
			target_choise = "TargetShipTag",
			arg_list = {
				buff_id = 11921,
				ship_tag_list = {
					"Cleveland-Class"
				}
			}
		},
		{
			targetAniEffect = "",
			casterAniEffect = "",
			type = "BattleSkillAddBuff",
			target_choise = "TargetSelf",
			arg_list = {
				buff_id = 11922
			}
		}
	}
}