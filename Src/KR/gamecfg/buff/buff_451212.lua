return {
	time = 0,
	name = "潜艇-指挥-雷击I",
	init_effect = "",
	id = 451212,
	picture = "",
	desc = "该入口提供战外挂载到战内",
	stack = 1,
	color = "yellow",
	icon = 451210,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onSubmarineAid"
			},
			arg_list = {
				skill_id = 451210
			}
		}
	}
}
