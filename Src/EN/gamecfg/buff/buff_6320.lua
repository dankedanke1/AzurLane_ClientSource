return {
	time = 0,
	name = "TBD(VT-8)",
	init_effect = "",
	id = 6320,
	picture = "",
	desc = "更换舰载机",
	stack = 1,
	color = "yellow",
	icon = 6320,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAllInStrike"
			},
			arg_list = {
				skill_id = 6320,
				quota = 1
			}
		}
	}
}