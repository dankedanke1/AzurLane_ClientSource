return {
	{
		shipInfoScene = {
			equip = {
				number = 5,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 6.1,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 7.2,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 8.3,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 9.4,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 10.5,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 11.6,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 12.7,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 13.8,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	{
		shipInfoScene = {
			equip = {
				number = 15,
				type = {
					7,
					8,
					9
				},
				nationality = {
					1
				}
			}
		}
	},
	desc_get = "使用克洛希德的舰载机将额外获得5.0%(满级15.0%)的装备效率",
	name = "独立技能1",
	init_effect = "",
	id = 11910,
	time = 0,
	picture = "",
	desc = "使用克洛希德的舰载机将额外获得$1的装备效率",
	stack = 1,
	color = "red",
	icon = 11910,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				skill_id = 11910,
				target = "TargetSelf"
			}
		}
	}
}
