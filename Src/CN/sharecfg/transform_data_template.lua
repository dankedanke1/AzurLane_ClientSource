pg = pg or {}
pg.transform_data_template = {
	[501] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 501,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[502] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 502,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			501
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[503] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 503,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			501
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[504] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 504,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			503
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[505] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 505,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			503
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[506] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 506,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			505
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[507] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 507,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			505
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[508] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 508,
		icon = "skill_red",
		skill_id = 2001,
		descrip = "习得技能【快速装填】",
		condition_id = {
			507
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[509] = {
		use_gold = 1400,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 509,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			507
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[510] = {
		use_gold = 1600,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 510,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			502,
			509
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[511] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101039,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 511,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+15，机动+25",
		condition_id = {
			508,
			509,
			510
		},
		effect = {
			{
				cannon = 15,
				dodge = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[601] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[602] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 602,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			601
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[603] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 603,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			601
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[604] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 604,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			603
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[605] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 605,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			603
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[606] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 606,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			605
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[607] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			605
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[608] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 608,
		icon = "skill_red",
		skill_id = 2001,
		descrip = "习得技能【快速装填】",
		condition_id = {
			607
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[609] = {
		use_gold = 1400,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 609,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			607
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[610] = {
		use_gold = 1600,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 610,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			602,
			609
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[611] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101049,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 611,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+15，机动+25",
		condition_id = {
			608,
			609,
			610
		},
		effect = {
			{
				cannon = 15,
				dodge = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[1901] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 1901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[1902] = {
		use_gold = 600,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 1902,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			1901
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[1903] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 1903,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			1901
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[1904] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 1904,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			1903
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[1905] = {
		use_gold = 1200,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 1905,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			1903
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[1906] = {
		use_gold = 1500,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 1906,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			1902,
			1905
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[1907] = {
		use_gold = 1800,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 1907,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			1905
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[1908] = {
		use_gold = 2000,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 1908,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			1907
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[1909] = {
		use_gold = 2500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 1909,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			1907
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			},
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[1910] = {
		use_gold = 3000,
		name = "雷击强化III",
		max_level = 3,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 1910,
		icon = "Tp_3",
		skill_id = 0,
		descrip = "雷击+5/雷击+10/雷击+15",
		condition_id = {
			1904,
			1909
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 10
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				},
				{
					17023,
					5
				}
			},
			{
				{
					18003,
					1
				},
				{
					17023,
					10
				}
			},
			{
				{
					18003,
					1
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			5,
			10,
			15
		}
	},
	[1911] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101179,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 1911,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+30，机动+20",
		condition_id = {
			1909,
			1910
		},
		effect = {
			{
				cannon = 30,
				dodge = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[1912] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 1912,
		icon = "skill_red",
		skill_id = 11210,
		descrip = "习得技能【歼灭模式】",
		condition_id = {
			1911
		},
		effect = {
			{
				torpedo = 10
			},
			{
				skill_id = 11210
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					2
				},
				{
					17013,
					20
				}
			}
		},
		gear_score = {
			30
		}
	},
	[2601] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 2601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[2602] = {
		use_gold = 400,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 2602,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			2601
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[2603] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 2603,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			2601
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[2604] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 2604,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			2603
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[2605] = {
		use_gold = 1000,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 2605,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			2603
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[2606] = {
		use_gold = 1200,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 2606,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			2602,
			2605
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			},
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[2607] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 2607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			2605
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[2608] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 2608,
		icon = "skill_blue",
		skill_id = 4081,
		descrip = "习得技能【烟雾弹】",
		condition_id = {
			2607
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[2609] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 2609,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			2607
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[2610] = {
		use_gold = 2500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 2610,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			2604,
			2609
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[2611] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101249,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 2611,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，装填+15，防空+35",
		condition_id = {
			2608,
			2609,
			2610
		},
		effect = {
			{
				antiaircraft = 35,
				reload = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[2701] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 2701,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[2702] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 2702,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			2701
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[2703] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 2703,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			2701
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[2704] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 2704,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			2703
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[2705] = {
		use_gold = 1000,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 2705,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			2703
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[2706] = {
		use_gold = 1200,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 2706,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			2702,
			2705
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			},
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[2707] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 2707,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			2705
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[2708] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 2708,
		icon = "skill_blue",
		skill_id = 4091,
		descrip = "习得技能【防空模式】",
		condition_id = {
			2707
		},
		effect = {
			{
				skill_id = 4091
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[2709] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 2709,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			2707
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[2710] = {
		use_gold = 2500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 2710,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			2704,
			2709
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[2711] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101259,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 2711,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+15，防空+35",
		condition_id = {
			2708,
			2709,
			2710
		},
		effect = {
			{
				cannon = 15,
				antiaircraft = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[3601] = {
		use_gold = 600,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 1,
		level_limit = 1,
		star_limit = 3,
		id = 3601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[3602] = {
		use_gold = 800,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 3,
		id = 3602,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			3601
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[3603] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 4,
		id = 3603,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			3601
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[3604] = {
		use_gold = 1500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 4,
		id = 3604,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			3603
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			5,
			10
		}
	},
	[3605] = {
		use_gold = 1800,
		name = "防空炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 5,
		id = 3605,
		icon = "Aaup_2",
		skill_id = 0,
		descrip = "防空炮武器效率+5%/防空炮武器效率+5%",
		condition_id = {
			3603
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			},
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[3606] = {
		use_gold = 2000,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 5,
		id = 3606,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			3604
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[3607] = {
		use_gold = 2500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 5,
		id = 3607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			3605
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17003,
					25
				}
			},
			{
				{
					18013,
					1
				},
				{
					17003,
					25
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[3608] = {
		use_gold = 3000,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 5,
		id = 3608,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			3602,
			3607
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[3609] = {
		use_gold = 4000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 6,
		id = 3609,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			3607
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				}
			},
			{
				{
					18013,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[3610] = {
		use_gold = 5000,
		name = "炮击强化III",
		max_level = 3,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 6,
		id = 3610,
		icon = "Cn_3",
		skill_id = 0,
		descrip = "炮击+5/炮击+10/炮击+15",
		condition_id = {
			3606,
			3609
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 10
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17013,
					10
				}
			},
			{
				{
					18013,
					2
				},
				{
					17013,
					20
				}
			},
			{
				{
					18013,
					3
				},
				{
					17013,
					30
				}
			}
		},
		gear_score = {
			5,
			10,
			15
		}
	},
	[3611] = {
		use_gold = 7500,
		name = "近代化改造",
		max_level = 1,
		skin_id = 102089,
		use_ship = 1,
		level_limit = 85,
		star_limit = 6,
		id = 3611,
		icon = "mt_red",
		skill_id = 0,
		descrip = [[
近代化改造完成

改造后<color=#A9F548>【主炮底座+1】</color>
改造后<color=#A9F548>【全弹发射II】</color>技能将升级为<color=#A9F548>【专属弹幕-圣地亚哥I】</color>]],
		condition_id = {
			3609,
			3610
		},
		effect = {
			{
				cannon = 15,
				antiaircraft = 30
			}
		},
		ship_id = {
			{
				102084,
				102174
			}
		},
		use_item = {
			{
				{
					59749,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[3612] = {
		use_gold = 5000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 1,
		level_limit = 90,
		star_limit = 6,
		id = 3612,
		icon = "skill_red",
		skill_id = 11720,
		descrip = "习得技能【星之歌】",
		condition_id = {
			3608,
			3611
		},
		effect = {
			{
				skill_id = 11720
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					5
				}
			}
		},
		gear_score = {
			30
		}
	},
	[4401] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 4401,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+80",
		condition_id = {},
		effect = {
			{
				durability = 80
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[4402] = {
		use_gold = 400,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 4402,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			4401
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[4403] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 4403,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			4401
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[4404] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 4404,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			4403
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[4405] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 4405,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+80/耐久+120",
		condition_id = {
			4403
		},
		effect = {
			{
				durability = 80
			},
			{
				durability = 120
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			},
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[4406] = {
		use_gold = 1200,
		name = "副炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 4406,
		icon = "sgup_1",
		skill_id = 0,
		descrip = "副炮武器效率+5%",
		condition_id = {
			4405
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[4407] = {
		use_gold = 1500,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 4407,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			4405
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[4408] = {
		use_gold = 1800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 4408,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			4407
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[4409] = {
		use_gold = 2000,
		name = "舰体改良III",
		max_level = 3,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 4409,
		icon = "hp_3",
		skill_id = 0,
		descrip = "耐久+80/耐久+120/耐久+160",
		condition_id = {
			4407
		},
		effect = {
			{
				durability = 80
			},
			{
				durability = 120
			},
			{
				durability = 160
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			10,
			10
		}
	},
	[4410] = {
		use_gold = 2500,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 4410,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			4402,
			4409
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[4411] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 103069,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 4411,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，耐久+150，炮击+20",
		condition_id = {
			4408,
			4409,
			4410
		},
		effect = {
			{
				durability = 150,
				cannon = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[5201] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 5201,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[5202] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 5202,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			5201
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[5203] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 5203,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			5201
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[5204] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 5204,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			5203
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[5205] = {
		use_gold = 600,
		name = "副炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 5205,
		icon = "sgup_1",
		skill_id = 0,
		descrip = "副炮武器效率+5%",
		condition_id = {
			5203
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[5206] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 5206,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+10",
		condition_id = {
			5205
		},
		effect = {
			{
				antiaircraft = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[5207] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 5207,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			5205
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					1
				}
			},
			{
				{
					18022,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[5208] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 5208,
		icon = "skill_red",
		skill_id = 2041,
		descrip = "习得技能【重点打击】",
		condition_id = {
			5207
		},
		effect = {
			{
				skill_id = 2041
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[5209] = {
		use_gold = 1400,
		name = "副炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 5209,
		icon = "sgup_2",
		skill_id = 0,
		descrip = "副炮武器效率+5%/副炮武器效率+5%",
		condition_id = {
			5207
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					1
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[5210] = {
		use_gold = 1600,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 5210,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			5202,
			5209
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[5211] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 105019,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 5211,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，命中+15，防空+30",
		condition_id = {
			5208,
			5209,
			5210
		},
		effect = {
			{
				antiaircraft = 30,
				hit = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[5301] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 5301,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[5302] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 5302,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			5301
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[5303] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 5303,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			5301
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[5304] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 5304,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			5303
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[5305] = {
		use_gold = 600,
		name = "副炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 5305,
		icon = "sgup_1",
		skill_id = 0,
		descrip = "副炮武器效率+5%",
		condition_id = {
			5303
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[5306] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 5306,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+10",
		condition_id = {
			5305
		},
		effect = {
			{
				antiaircraft = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[5307] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 5307,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			5305
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					1
				}
			},
			{
				{
					18022,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[5308] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 5308,
		icon = "skill_red",
		skill_id = 2041,
		descrip = "习得技能【重点打击】",
		condition_id = {
			5307
		},
		effect = {
			{
				skill_id = 2041
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[5309] = {
		use_gold = 1400,
		name = "副炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 5309,
		icon = "sgup_2",
		skill_id = 0,
		descrip = "副炮武器效率+5%/副炮武器效率+5%",
		condition_id = {
			5307
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					1
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[5310] = {
		use_gold = 1600,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 5310,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			5302,
			5309
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[5311] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 105029,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 5311,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，命中+10，防空+35",
		condition_id = {
			5308,
			5309,
			5310
		},
		effect = {
			{
				antiaircraft = 35,
				hit = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[7001] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 7001,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7002] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 7002,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			7001
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7003] = {
		use_gold = 600,
		name = "空战精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 7003,
		icon = "ffup_1",
		skill_id = 0,
		descrip = "轰炸机机武器效率+5%",
		condition_id = {
			7001
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7004] = {
		use_gold = 800,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 7004,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			7003
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7005] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 7005,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			7003
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7006] = {
		use_gold = 1200,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 7006,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			7005
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7007] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 7007,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			7005
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[7008] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 7008,
		icon = "skill_yellow",
		skill_id = 3041,
		descrip = "习得技能【制空支援】",
		condition_id = {
			7007
		},
		effect = {
			{
				skill_id = 3041
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[7009] = {
		use_gold = 2000,
		name = "空战精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 7009,
		icon = "ffup_2",
		skill_id = 0,
		descrip = "轰炸机武器效率+5%/轰炸机武器效率+5%",
		condition_id = {
			7007,
			7008
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7010] = {
		use_gold = 2500,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 7010,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			7004,
			7009
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7011] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 106019,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 7011,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+20，航空+25",
		condition_id = {
			7009,
			7010
		},
		effect = {
			{
				air = 25,
				antiaircraft = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[7101] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 7101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7102] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 7102,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			7101
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7103] = {
		use_gold = 400,
		name = "轰炸精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 7103,
		icon = "bfup_1",
		skill_id = 0,
		descrip = "轰炸机机武器效率+5%",
		condition_id = {
			7101
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7104] = {
		use_gold = 500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 7104,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			7103
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7105] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 7105,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			7103
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7106] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 7106,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			7105
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7107] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 7107,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			7105
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[7108] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 7108,
		icon = "skill_yellow",
		skill_id = 1045,
		descrip = "习得技能【防空指挥·主力】",
		condition_id = {
			7107
		},
		effect = {
			{
				skill_id = 1045
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[7109] = {
		use_gold = 1400,
		name = "轰炸精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 7109,
		icon = "bfup_2",
		skill_id = 0,
		descrip = "轰炸机武器效率+5%/轰炸机武器效率+5%",
		condition_id = {
			7107,
			7108
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7110] = {
		use_gold = 1600,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 7110,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			7104,
			7109
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7111] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 106029,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 7111,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+20，航空+25",
		condition_id = {
			7109,
			7110
		},
		effect = {
			{
				air = 25,
				antiaircraft = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[7201] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 7201,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7202] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 7202,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			7201
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7203] = {
		use_gold = 400,
		name = "空战精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 7203,
		icon = "ffup_1",
		skill_id = 0,
		descrip = "战斗机武器效率+4%",
		condition_id = {
			7201
		},
		effect = {
			{
				equipment_proficiency_2 = 0.04,
				equipment_proficiency_1 = 0.04
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7204] = {
		use_gold = 500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 7204,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			7203
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7205] = {
		use_gold = 600,
		name = "轰炸精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 7205,
		icon = "bfup_1",
		skill_id = 0,
		descrip = "轰炸机武器效率+5%",
		condition_id = {
			7203
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7206] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 7206,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			7205
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7207] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 7207,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			7205
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[7208] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 7208,
		icon = "skill_yellow",
		skill_id = 1037,
		descrip = "习得技能【制空支援】",
		condition_id = {
			7207
		},
		effect = {
			{
				skill_id = 1037
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[7209] = {
		use_gold = 1400,
		name = "空战精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 7209,
		icon = "ffup_2",
		skill_id = 0,
		descrip = "战斗机武器效率+4%/战斗机武器效率+7%",
		condition_id = {
			7207,
			7208
		},
		effect = {
			{
				equipment_proficiency_2 = 0.04,
				equipment_proficiency_1 = 0.04
			},
			{
				equipment_proficiency_2 = 0.07,
				equipment_proficiency_1 = 0.07
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7210] = {
		use_gold = 1600,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 7210,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			7204,
			7209
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7211] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 107019,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 7211,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+20，航空+25",
		condition_id = {
			7209,
			7210
		},
		effect = {
			{
				air = 25,
				antiaircraft = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[7401] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 7401,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7402] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 7402,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			7401
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7403] = {
		use_gold = 800,
		name = "空战精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 7403,
		icon = "ffup_1",
		skill_id = 0,
		descrip = "战斗机武器效率+5%",
		condition_id = {
			7401
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7404] = {
		use_gold = 1000,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 7404,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			7403
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					5
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7405] = {
		use_gold = 1200,
		name = "轰炸精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 7405,
		icon = "bfup_1",
		skill_id = 0,
		descrip = "轰炸机机武器效率+3%",
		condition_id = {
			7403
		},
		effect = {
			{
				equipment_proficiency_2 = 0.03,
				equipment_proficiency_3 = 0.03
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7406] = {
		use_gold = 1500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 7406,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			7405
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7407] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 7407,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			7405
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[7408] = {
		use_gold = 2000,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 7408,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			7407,
			7402
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[7409] = {
		use_gold = 2500,
		name = "轰炸精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 7409,
		icon = "bfup_2",
		skill_id = 0,
		descrip = "轰炸机武器效率+3%/轰炸机武器效率+4%",
		condition_id = {
			7407
		},
		effect = {
			{
				equipment_proficiency_2 = 0.03,
				equipment_proficiency_3 = 0.03
			},
			{
				equipment_proficiency_2 = 0.04,
				equipment_proficiency_3 = 0.04
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				}
			},
			{
				{
					18033,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7410] = {
		use_gold = 3000,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 7410,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			7409
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				},
				{
					17043,
					15
				}
			},
			{
				{
					18033,
					2
				},
				{
					17043,
					35
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7411] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 107039,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 7411,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，防空+35，航空+10",
		condition_id = {
			7409,
			7410
		},
		effect = {
			{
				air = 10,
				antiaircraft = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[7412] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 7412,
		icon = "skill_red",
		skill_id = 11400,
		descrip = "习得技能【魔女的恶作剧】",
		condition_id = {
			7411
		},
		effect = {
			{
				skill_id = 11400
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			25
		}
	},
	[7501] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 7501,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7502] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 7502,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			7501
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[7503] = {
		use_gold = 400,
		name = "轰炸精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 7503,
		icon = "bfup_1",
		skill_id = 0,
		descrip = "轰炸机武器效率+4%",
		condition_id = {
			7501
		},
		effect = {
			{
				equipment_proficiency_3 = 0.04,
				equipment_proficiency_2 = 0.04
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7504] = {
		use_gold = 500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 7504,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			7503
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[7505] = {
		use_gold = 600,
		name = "鱼雷俯冲I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 7505,
		icon = "tfup_1",
		skill_id = 0,
		descrip = "鱼雷机武器效率+5%",
		condition_id = {
			7503
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7506] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 7506,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			7505
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[7507] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 7507,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			7505
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[7508] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 7508,
		icon = "skill_yellow",
		skill_id = 3011,
		descrip = "习得技能【强袭空母】",
		condition_id = {
			7507
		},
		effect = {
			{
				skill_id = 3011
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[7509] = {
		use_gold = 1400,
		name = "轰炸精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 7509,
		icon = "bfup_2",
		skill_id = 0,
		descrip = "轰炸机武器效率+4%/轰炸机武器效率+7%",
		condition_id = {
			7507,
			7508
		},
		effect = {
			{
				equipment_proficiency_3 = 0.04,
				equipment_proficiency_2 = 0.04
			},
			{
				equipment_proficiency_3 = 0.07,
				equipment_proficiency_2 = 0.07
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7510] = {
		use_gold = 1600,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 7510,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			7504,
			7509
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[7511] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 107049,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 7511,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+20，航空+25",
		condition_id = {
			7509,
			7510
		},
		effect = {
			{
				air = 25,
				antiaircraft = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[8201] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 8201,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8202] = {
		use_gold = 400,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 8202,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			8201
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8203] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 8203,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			8201
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8204] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 8204,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			8203
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8205] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 8205,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			8203
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8206] = {
		use_gold = 1200,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 8206,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			8205
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8207] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 8207,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			8205
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[8208] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 8208,
		icon = "skill_yellow",
		skill_id = 5051,
		descrip = "习得技能【旗舰掩护】",
		condition_id = {
			8207
		},
		effect = {
			{
				skill_id = 5051
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[8209] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 8209,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			8207
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[8210] = {
		use_gold = 2500,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 8210,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			8202,
			8209
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[8211] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201029,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 8211,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，机动+15",
		condition_id = {
			8208,
			8209,
			8210
		},
		effect = {
			{
				dodge = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[8301] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 8301,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8302] = {
		use_gold = 400,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 8302,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			8301
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8303] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 8303,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			8301
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8304] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 8304,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			8303
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8305] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 8305,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			8303
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8306] = {
		use_gold = 1200,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 8306,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			8305
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8307] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 8307,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			8305
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[8308] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 8308,
		icon = "skill_yellow",
		skill_id = 1081,
		descrip = "习得技能【空袭引导】",
		condition_id = {
			8307
		},
		effect = {
			{
				skill_id = 1081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[8309] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 8309,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			8307
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[8310] = {
		use_gold = 2500,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 8310,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			8302,
			8309
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[8311] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201039,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 8311,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，机动+15",
		condition_id = {
			8308,
			8309,
			8310
		},
		effect = {
			{
				dodge = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[8801] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 8801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8802] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 8802,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			8801
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8803] = {
		use_gold = 400,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 8803,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			8801
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8804] = {
		use_gold = 500,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 8804,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			8803
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8805] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 8805,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			8803
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8806] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 8806,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			8805
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8807] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 8807,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			8805
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[8808] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 8808,
		icon = "skill_blue",
		skill_id = 4081,
		descrip = "习得技能【烟雾弹】",
		condition_id = {
			8807
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[8809] = {
		use_gold = 1400,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 8809,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			8807,
			8808
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[8810] = {
		use_gold = 1600,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 8810,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			8802,
			8809
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[8811] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201089,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 8811,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+25，机动+20",
		condition_id = {
			8809,
			8810
		},
		effect = {
			{
				dodge = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[8901] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 8901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8902] = {
		use_gold = 300,
		name = "命中强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 8902,
		icon = "hit_1",
		skill_id = 0,
		descrip = "命中+5",
		condition_id = {
			8901
		},
		effect = {
			{
				hit = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[8903] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 8903,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			8901
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8904] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 8904,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			8903
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[8905] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 8905,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			8903
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8906] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 8906,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			8905
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[8907] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 8907,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			8905
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[8908] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 8908,
		icon = "skill_blue",
		skill_id = 4081,
		descrip = "习得技能【烟雾弹】",
		condition_id = {
			8907
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[8909] = {
		use_gold = 1400,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 8909,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			8907,
			8908
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[8910] = {
		use_gold = 1600,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 8910,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			8902,
			8909
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[8911] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201099,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 8911,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+30，机动+15",
		condition_id = {
			8909,
			8910
		},
		effect = {
			{
				cannon = 30,
				dodge = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[9001] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 9001,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[9002] = {
		use_gold = 300,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 9002,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			9001
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[9003] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 9003,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			9001
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[9004] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 9004,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			9003
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[9005] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 9005,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			9003
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[9006] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 9006,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			9005
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[9007] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 9007,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			9005
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[9008] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 9008,
		icon = "skill_blue",
		skill_id = 4081,
		descrip = "习得技能【烟雾弹】",
		condition_id = {
			9007
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[9009] = {
		use_gold = 1400,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 9009,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			9007
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[9010] = {
		use_gold = 1600,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 9010,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			9002,
			9009
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[9011] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201109,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 9011,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，机动+25",
		condition_id = {
			9008,
			9009,
			9010
		},
		effect = {
			{
				cannon = 20,
				dodge = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[9101] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 9101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[9102] = {
		use_gold = 300,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 9102,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			9101
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[9103] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 9103,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			9101
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[9104] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 9104,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			9103
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[9105] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 9105,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			9103
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[9106] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 9106,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			9105
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[9107] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 9107,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			9105
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[9108] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 9108,
		icon = "skill_blue",
		skill_id = 1061,
		descrip = "习得技能【侧翼掩护】",
		condition_id = {
			9107
		},
		effect = {
			{
				skill_id = 1061
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[9109] = {
		use_gold = 1400,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 9109,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			9107
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[9110] = {
		use_gold = 1600,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 9110,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			9102,
			9109
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[9111] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201119,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 9111,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+25，机动+20",
		condition_id = {
			9108,
			9109,
			9110
		},
		effect = {
			{
				cannon = 25,
				dodge = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[9201] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 9201,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[9202] = {
		use_gold = 400,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 9202,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			9201
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[9203] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 9203,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			9201
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[9204] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 9204,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			9203
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[9205] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 9205,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			9203
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[9206] = {
		use_gold = 1200,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 9206,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			9205
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[9207] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 9207,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			9205
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[9208] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 9208,
		icon = "skill_blue",
		skill_id = 1061,
		descrip = "习得技能【侧翼掩护】",
		condition_id = {
			9207
		},
		effect = {
			{
				skill_id = 1061
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[9209] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 9209,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			9207
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[9210] = {
		use_gold = 2500,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 9210,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			9202,
			9209
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[9211] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201129,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 9211,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+25，机动+20",
		condition_id = {
			9208,
			9209,
			9210
		},
		effect = {
			{
				cannon = 25,
				dodge = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[10101] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 10101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10102] = {
		use_gold = 600,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 10102,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			10101
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10103] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 10103,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			10101
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10104] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 10104,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			10103
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10105] = {
		use_gold = 1200,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 10105,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			10103
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10106] = {
		use_gold = 1500,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 10106,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			10105
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10107] = {
		use_gold = 1800,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 10107,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			10105
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					5
				}
			}
		},
		gear_score = {
			25
		}
	},
	[10108] = {
		use_gold = 2000,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 10108,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			10102,
			10107
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[10109] = {
		use_gold = 2500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 10109,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			10107
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			},
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10110] = {
		use_gold = 3000,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 10110,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			10109
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				},
				{
					17023,
					5
				}
			},
			{
				{
					18003,
					2
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10111] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 201219,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 10111,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+25，机动+20",
		condition_id = {
			10109,
			10110
		},
		effect = {
			{
				dodge = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[10112] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 10112,
		icon = "skill_red",
		skill_id = 10860,
		descrip = "习得技能【强袭模式·EX】",
		condition_id = {
			10111
		},
		effect = {
			{
				skill_id = 10860
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					2
				},
				{
					17023,
					20
				}
			}
		},
		gear_score = {
			30
		}
	},
	[10401] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 10401,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10402] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 10402,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			10401
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10403] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 10403,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			10401
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10404] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 10404,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			10403
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10405] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 10405,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			10403
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10406] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 10406,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			10405
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10407] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 10407,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			10405
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[10408] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 10408,
		icon = "skill_red",
		skill_id = 4081,
		descrip = "习得技能【烟雾弹】",
		condition_id = {
			10407
		},
		effect = {
			{
				skill_id = 4081
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[10409] = {
		use_gold = 1400,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 10409,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			10407,
			10408
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10410] = {
		use_gold = 1600,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 10410,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			10404,
			10409
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10411] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 202019,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 10411,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，雷击+25",
		condition_id = {
			10409,
			10410
		},
		effect = {
			{
				cannon = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[10501] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 10501,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10502] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 10502,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			10501
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10503] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 10503,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			10501
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10504] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 10504,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			10503
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10505] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 10505,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			10503
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10506] = {
		use_gold = 1200,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 10506,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			10505
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10507] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 10507,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			10505
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[10508] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 10508,
		icon = "skill_red",
		skill_id = 10710,
		descrip = "习得技能【巨兽猎手】",
		condition_id = {
			10507
		},
		effect = {
			{
				skill_id = 10710
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[10509] = {
		use_gold = 2000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 10509,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			10507,
			10508
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10510] = {
		use_gold = 2500,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 10510,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			10504,
			10509
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10511] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 202029,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 10511,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，雷击+25",
		condition_id = {
			10509,
			10510
		},
		effect = {
			{
				cannon = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[10601] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 10601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10602] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 10602,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			10601
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[10603] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 10603,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			10601
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10604] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 10604,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			10603
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[10605] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 10605,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			10603
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10606] = {
		use_gold = 1200,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 10606,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			10605
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[10607] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 10607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			10605
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[10608] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 10608,
		icon = "skill_red",
		skill_id = 10710,
		descrip = "习得技能【巨兽猎手】",
		condition_id = {
			10607
		},
		effect = {
			{
				skill_id = 10710
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[10609] = {
		use_gold = 2000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 10609,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			10607,
			10608
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10610] = {
		use_gold = 2500,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 10610,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			10604,
			10609
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[10611] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 202039,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 10611,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，雷击+25",
		condition_id = {
			10609,
			10610
		},
		effect = {
			{
				cannon = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[12201] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 12201,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+80",
		condition_id = {},
		effect = {
			{
				durability = 80
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[12202] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 12202,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			12201
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[12203] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 12203,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			12201
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[12204] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 12204,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			12203
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[12205] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 12205,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			12203
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[12206] = {
		use_gold = 1200,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 12206,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			12205
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[12207] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 12207,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+80/耐久+120",
		condition_id = {
			12205
		},
		effect = {
			{
				durability = 80
			},
			{
				durability = 120
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[12208] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 12208,
		icon = "skill_red",
		skill_id = 2011,
		descrip = "习得技能【火力全开】",
		condition_id = {
			12207
		},
		effect = {
			{
				skill_id = 2011
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[12209] = {
		use_gold = 2000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 12209,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			12207
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[12210] = {
		use_gold = 2500,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 12210,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			12204,
			12209
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[12211] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 203049,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 12211,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+25，雷击+20",
		condition_id = {
			12208,
			12209,
			12210
		},
		effect = {
			{
				cannon = 25,
				torpedo = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[12501] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 12501,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[12502] = {
		use_gold = 400,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 12502,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			12501
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[12503] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 12503,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			12501
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[12504] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 12504,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			12503
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[12505] = {
		use_gold = 1000,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 12505,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			12503
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[12506] = {
		use_gold = 1200,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 12506,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			12505
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[12507] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 12507,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			12505
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[12508] = {
		use_gold = 1800,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 12508,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			12502,
			12507
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[12509] = {
		use_gold = 2000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 12509,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			12507
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[12510] = {
		use_gold = 2500,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 12510,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			12509,
			12506
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17013,
					5
				}
			},
			{
				{
					18013,
					2
				},
				{
					17013,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[12511] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 203079,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 12511,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+30，装填+15",
		condition_id = {
			12509,
			12510
		},
		effect = {
			{
				cannon = 30,
				reload = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[12512] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 85,
		star_limit = 5,
		id = 12512,
		icon = "skill_yellow",
		skill_id = 11770,
		descrip = "习得技能【Terror Field】",
		condition_id = {
			12511
		},
		effect = {
			{
				skill_id = 11770
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			50
		}
	},
	[12601] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 12601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[12602] = {
		use_gold = 400,
		name = "命中强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 12602,
		icon = "hit_1",
		skill_id = 0,
		descrip = "命中+5",
		condition_id = {
			12601
		},
		effect = {
			{
				hit = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[12603] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 12603,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			12601
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[12604] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 12604,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			12603
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[12605] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 12605,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			12603
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[12606] = {
		use_gold = 1200,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 12606,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+5",
		condition_id = {
			12605
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[12607] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 12607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			12605
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[12608] = {
		use_gold = 1800,
		name = "命中强化II",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 12608,
		icon = "hit_1",
		skill_id = 0,
		descrip = "命中+5",
		condition_id = {
			12602,
			12607
		},
		effect = {
			{
				hit = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[12609] = {
		use_gold = 2000,
		name = "防空炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 12609,
		icon = "Aaup_2",
		skill_id = 0,
		descrip = "防空炮武器效率+5%/防空炮武器效率+5%",
		condition_id = {
			12607
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			},
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[12610] = {
		use_gold = 2500,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 12610,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			12609
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17013,
					5
				}
			},
			{
				{
					18013,
					2
				},
				{
					17013,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[12611] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 203089,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 12611,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+30，命中+15",
		condition_id = {
			12609,
			12610
		},
		effect = {
			{
				cannon = 30,
				hit = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[12612] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 85,
		star_limit = 5,
		id = 12612,
		icon = "skill_red",
		skill_id = 10710,
		descrip = "习得技能【巨兽猎手】",
		condition_id = {
			12611
		},
		effect = {
			{
				skill_id = 10710
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			50
		}
	},
	[13101] = {
		use_gold = 600,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 1,
		level_limit = 1,
		star_limit = 3,
		id = 13101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[13102] = {
		use_gold = 800,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 3,
		id = 13102,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			13101
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[13103] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 4,
		id = 13103,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			13101
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[13104] = {
		use_gold = 1500,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 4,
		id = 13104,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+10",
		condition_id = {
			13103
		},
		effect = {
			{
				antiaircraft = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[13105] = {
		use_gold = 1800,
		name = "防空炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 5,
		id = 13105,
		icon = "Aaup_2",
		skill_id = 0,
		descrip = "防空炮武器效率+5%/防空炮武器效率+5%",
		condition_id = {
			13103
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			},
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[13106] = {
		use_gold = 2000,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 5,
		id = 13106,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			13104,
			13105
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[13107] = {
		use_gold = 2500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 5,
		id = 13107,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			13105
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18023,
					1
				},
				{
					17003,
					25
				}
			},
			{
				{
					18023,
					1
				},
				{
					17003,
					25
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[13108] = {
		use_gold = 3000,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 5,
		id = 13108,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			13102,
			13107
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18023,
					1
				}
			},
			{
				{
					18023,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[13109] = {
		use_gold = 4000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 6,
		id = 13109,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			13107
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18023,
					2
				}
			},
			{
				{
					18023,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[13110] = {
		use_gold = 5000,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 6,
		id = 13110,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			13108,
			13109
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18023,
					2
				},
				{
					17013,
					10
				}
			},
			{
				{
					18023,
					4
				},
				{
					17013,
					30
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[13111] = {
		use_gold = 7500,
		name = "近代化改造",
		max_level = 1,
		skin_id = 205029,
		use_ship = 1,
		level_limit = 85,
		star_limit = 6,
		id = 13111,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = [[
近代化改造完成

改造后<color=#A9F548>第一个【设备】</color>栏位增加可装备设备类型<color=#A9F548>【反潜机】</color>
改造后解锁<color=#A9F548>【反潜】</color>属性
改造后<color=#A9F548>【神射手】</color>技能将升级为<color=#A9F548>【神射手·改】</color>]],
		condition_id = {
			13106,
			13109
		},
		effect = {
			{
				antiaircraft = 20,
				hit = 25
			}
		},
		ship_id = {
			{
				205024,
				205124
			}
		},
		use_item = {
			{
				{
					59762,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[13112] = {
		use_gold = 5000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 1,
		level_limit = 90,
		star_limit = 6,
		id = 13112,
		icon = "skill_yellow",
		skill_id = 11880,
		descrip = "习得技能【皇家传奇】",
		condition_id = {
			13111
		},
		effect = {
			{
				skill_id = 11880
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18023,
					5
				}
			}
		},
		gear_score = {
			30
		}
	},
	[15501] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 15501,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[15502] = {
		use_gold = 600,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 15502,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			15501
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[15503] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 15503,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			15501
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[15504] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 15504,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			15503
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[15505] = {
		use_gold = 1200,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 15505,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			15503
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[15506] = {
		use_gold = 1500,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 15506,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			15505
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[15507] = {
		use_gold = 1800,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 15507,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			15505
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					5
				}
			}
		},
		gear_score = {
			25
		}
	},
	[15508] = {
		use_gold = 2000,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 15508,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			15504,
			15507
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[15509] = {
		use_gold = 2500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 15509,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			15507
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			},
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[15510] = {
		use_gold = 3000,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 15510,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			15506,
			15509
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				},
				{
					17023,
					5
				}
			},
			{
				{
					18003,
					2
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[15511] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301059,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 15511,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，机动+15",
		condition_id = {
			15509,
			15510
		},
		effect = {
			{
				dodge = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[15512] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 15512,
		icon = "skill_blue",
		skill_id = 10940,
		descrip = "习得技能【鬼神演舞】",
		condition_id = {
			15508,
			15511
		},
		effect = {
			{
				skill_id = 10940
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					2
				},
				{
					17023,
					20
				}
			}
		},
		gear_score = {
			30
		}
	},
	[16701] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 16701,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[16702] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 16702,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			16701
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[16703] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 16703,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			16701
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[16704] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 16704,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			16703
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[16705] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 16705,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			16703
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[16706] = {
		use_gold = 1200,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 16706,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			16705
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[16707] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 16707,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			16705
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[16708] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 16708,
		icon = "skill_yellow",
		skill_id = 5001,
		descrip = "习得技能【火力干扰】",
		condition_id = {
			16707
		},
		effect = {
			{
				skill_id = 5001
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[16709] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 16709,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			16705
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[16710] = {
		use_gold = 2500,
		name = "反潜强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 16710,
		icon = "as_2",
		skill_id = 0,
		descrip = "反潜+5/反潜+15",
		condition_id = {
			16709
		},
		effect = {
			{
				antisub = 5
			},
			{
				antisub = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[16711] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301179,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 16711,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，装填+15",
		condition_id = {
			16709,
			16710
		},
		effect = {
			{
				reload = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[16801] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 16801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[16802] = {
		use_gold = 300,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 16802,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			16801
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[16803] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 16803,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			16801
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[16804] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 16804,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			16803
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[16805] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 16805,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			16803
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[16806] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 16806,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			16805
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[16807] = {
		use_gold = 1000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 16807,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			16805
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[16808] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 16808,
		icon = "skill_yellow",
		skill_id = 5021,
		descrip = "习得技能【空母护航】",
		condition_id = {
			16807
		},
		effect = {
			{
				skill_id = 5021
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[16809] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 16809,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			16807
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[16810] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 16810,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			16806,
			16809
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[16811] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301189,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 16811,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，机动+15",
		condition_id = {
			16809,
			16810
		},
		effect = {
			{
				dodge = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[18701] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 18701,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[18702] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 18702,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			18701
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[18703] = {
		use_gold = 400,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 18703,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			18701
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[18704] = {
		use_gold = 500,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 18704,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			18703
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[18705] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 18705,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			18703
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[18706] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 18706,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			18705
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[18707] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 18707,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			18705
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[18708] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 18708,
		icon = "skill_red",
		skill_id = 2051,
		descrip = "习得技能【鱼雷连射】",
		condition_id = {
			18707
		},
		effect = {
			{
				skill_id = 2051
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[18709] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 18709,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			18707
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[18710] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 18710,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			18704,
			18709
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[18711] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 302099,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 18711,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+10，雷击+35",
		condition_id = {
			18708,
			18709,
			18710
		},
		effect = {
			{
				cannon = 10,
				torpedo = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[18801] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 18801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+80",
		condition_id = {},
		effect = {
			{
				durability = 80
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[18802] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 18802,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			18801
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[18803] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 18803,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			18801
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[18804] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 18804,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			18803
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[18805] = {
		use_gold = 1200,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 18805,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			18803
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[18806] = {
		use_gold = 1500,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 18806,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			18805
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[18807] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 18807,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+80/耐久+120",
		condition_id = {
			18805
		},
		effect = {
			{
				durability = 80
			},
			{
				durability = 120
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[18808] = {
		use_gold = 2000,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 18808,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			18807
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[18809] = {
		use_gold = 2500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 18809,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			18807
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[18810] = {
		use_gold = 3000,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 18810,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			18804,
			18809
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17013,
					15
				}
			},
			{
				{
					18013,
					2
				},
				{
					17013,
					35
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[18811] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 302109,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 18811,
		icon = "mt_red",
		skill_id = 0,
		descrip = [[
近代化改造完成

改造后<color=#A9F548>【主武器】</color>装备栏位装备类型更改为<color=#A9F548>【重巡主炮】</color>
原来的<color=#A9F548>【主武器】</color>栏位装备将被放入仓库
改造后<color=#A9F548>【主炮底座+1】</color>、<color=#A9F548>【鱼雷底座-1】</color>
改造后<color=#A9F548>【全弹发射II】</color>技能将升级为<color=#A9F548>【全弹发射改】</color>
改造后<color=#A9F548>【反潜】</color>属性将归零、无法装备<color=#A9F548>声呐和深水炸弹</color>]],
		condition_id = {
			18809,
			18810
		},
		effect = {
			{
				cannon = 10,
				antiaircraft = 25
			}
		},
		ship_id = {
			{
				302104,
				303154
			}
		},
		use_item = {
			{
				{
					18013,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[18812] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 18812,
		icon = "skill_red",
		skill_id = 11220,
		descrip = "习得技能【持续打击】",
		condition_id = {
			18811
		},
		effect = {
			{
				skill_id = 11220
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			30
		}
	},
	[19001] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 19001,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+80",
		condition_id = {},
		effect = {
			{
				durability = 80
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[19002] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 19002,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			19001
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[19003] = {
		use_gold = 400,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 19003,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			19001
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[19004] = {
		use_gold = 500,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 19004,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			19003
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[19005] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 19005,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			19003
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[19006] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 19006,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			19005
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[19007] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 19007,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+80/耐久+120",
		condition_id = {
			19005
		},
		effect = {
			{
				durability = 80
			},
			{
				durability = 120
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[19008] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 19008,
		icon = "skill_red",
		skill_id = 2051,
		descrip = "习得技能【鱼雷连射】",
		condition_id = {
			19007
		},
		effect = {
			{
				skill_id = 2051
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[19009] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 19009,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			19007
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[19010] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 19010,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			19006,
			19009
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[19011] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 303019,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 19011,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，雷击+25",
		condition_id = {
			19009,
			19010
		},
		effect = {
			{
				cannon = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[19101] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 19101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+80",
		condition_id = {},
		effect = {
			{
				durability = 80
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[19102] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 19102,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			19101
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[19103] = {
		use_gold = 400,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 19103,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			19101
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[19104] = {
		use_gold = 500,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 19104,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			19103
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[19105] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 19105,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			19103
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[19106] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 19106,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			19105
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[19107] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 19107,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+80/耐久+120",
		condition_id = {
			19105
		},
		effect = {
			{
				durability = 80
			},
			{
				durability = 120
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[19108] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 19108,
		icon = "skill_red",
		skill_id = 2051,
		descrip = "习得技能【鱼雷连射】",
		condition_id = {
			19107
		},
		effect = {
			{
				skill_id = 2051
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[19109] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 19109,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			19107
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[19110] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 19110,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			19106,
			19109
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[19111] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 303029,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 19111,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，雷击+25",
		condition_id = {
			19109,
			19110
		},
		effect = {
			{
				cannon = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[20801] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 20801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+100",
		condition_id = {},
		effect = {
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[20802] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 20802,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			20801
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[20803] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 20803,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			20801,
			20802
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[20804] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 20804,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			20803
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[20805] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 20805,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			20803
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[20806] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 20806,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			20805
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[20807] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 20807,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+100/耐久+150",
		condition_id = {
			20805
		},
		effect = {
			{
				durability = 100
			},
			{
				durability = 150
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					1
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[20808] = {
		use_gold = 1200,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 20808,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			20807
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[20809] = {
		use_gold = 1400,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 20809,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			20804,
			20808
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[20810] = {
		use_gold = 5000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 305019,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 20810,
		icon = "mt_red",
		skill_id = 0,
		descrip = [[
近代化改造完成

习得技能<color=#A9F548>【航空预备】</color>
第一次执行空中支援时，额外进行一轮航空弹幕攻击(威力随技能等级提升)，每场战斗只能触发1次

改造后<color=#A9F548>【主炮底座-1】</color>
改造后<color=#A9F548>主炮效率</color>提高20%
改造后<color=#A9F548>【副武器】</color>装备栏位装备类型更改为<color=#A9F548>【水侦】</color>
在装备<color=#A9F548>【水侦】</color>的情况下，<color=#A9F548>【魟改】</color>可以进行<color=#A9F548>空中支援</color>]],
		condition_id = {
			20808
		},
		effect = {
			{
				cannon = 20,
				air = 25
			}
		},
		ship_id = {
			{
				305014,
				310014
			}
		},
		use_item = {
			{
				{
					18023,
					3
				},
				{
					17043,
					60
				}
			}
		},
		gear_score = {
			50
		}
	},
	[20811] = {
		use_gold = 1600,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 85,
		star_limit = 5,
		id = 20811,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+20",
		condition_id = {
			20806,
			20810
		},
		effect = {
			{
				air = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[20901] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 20901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+100",
		condition_id = {},
		effect = {
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[20902] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 20902,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			20901
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[20903] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 20903,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			20901,
			20902
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[20904] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 20904,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			20903
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[20905] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 20905,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			20903
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[20906] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 20906,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			20905
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[20907] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 20907,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+100/耐久+150",
		condition_id = {
			20905
		},
		effect = {
			{
				durability = 100
			},
			{
				durability = 150
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					1
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[20908] = {
		use_gold = 1200,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 20908,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			20907
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[20909] = {
		use_gold = 1400,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 20909,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			20904,
			20908
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[20910] = {
		use_gold = 5000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 305029,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 20910,
		icon = "mt_red",
		skill_id = 0,
		descrip = [[
近代化改造完成

习得技能<color=#A9F548>【航空预备】</color>
第一次执行空中支援时，额外进行一轮航空弹幕攻击(威力随技能等级提升)，每场战斗只能触发1次

改造后<color=#A9F548>【主炮底座-1】</color>
改造后<color=#A9F548>主炮效率</color>提高20%
改造后<color=#A9F548>【副武器】</color>装备栏位装备类型更改为<color=#A9F548>【水侦】</color>
在装备<color=#A9F548>【水侦】</color>的情况下，<color=#A9F548>【鲼改】</color>可以进行<color=#A9F548>空中支援</color>]],
		condition_id = {
			20908
		},
		effect = {
			{
				cannon = 20,
				air = 25
			}
		},
		ship_id = {
			{
				305024,
				310024
			}
		},
		use_item = {
			{
				{
					18023,
					3
				},
				{
					17043,
					60
				}
			}
		},
		gear_score = {
			50
		}
	},
	[20911] = {
		use_gold = 1600,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 85,
		star_limit = 5,
		id = 20911,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+20",
		condition_id = {
			20906,
			20910
		},
		effect = {
			{
				air = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[21001] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 21001,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+100",
		condition_id = {},
		effect = {
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[21002] = {
		use_gold = 300,
		name = "命中强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 10,
		star_limit = 2,
		id = 21002,
		icon = "hit_1",
		skill_id = 0,
		descrip = "命中+5",
		condition_id = {
			21001
		},
		effect = {
			{
				hit = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[21003] = {
		use_gold = 400,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 30,
		star_limit = 4,
		id = 21003,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			21001
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[21004] = {
		use_gold = 500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 21004,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			21003
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			},
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			5,
			10
		}
	},
	[21005] = {
		use_gold = 10000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 305039,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 21005,
		icon = "mt_red",
		skill_id = 0,
		descrip = [[
近代化改造完成

改造后<color=#A9F548>【主炮底座-1】</color>
改造后<color=#A9F548>主炮效率</color>提高25%
改造后<color=#A9F548>【副武器】</color>装备栏位装备类型更改为<color=#A9F548>【水侦】</color>
在装备<color=#A9F548>【水侦】</color>的情况下，<color=#A9F548>【鳌改】</color>可以进行<color=#A9F548>空中支援</color>]],
		condition_id = {
			21002,
			21003
		},
		effect = {
			{
				cannon = 30,
				air = 15
			}
		},
		ship_id = {
			{
				305034,
				310034
			}
		},
		use_item = {
			{
				{
					18023,
					5
				},
				{
					17043,
					80
				}
			}
		},
		gear_score = {
			50
		}
	},
	[21006] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 21006,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			21005
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[21007] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 80,
		star_limit = 5,
		id = 21007,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			21006
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[21008] = {
		use_gold = 1200,
		name = "防空炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 85,
		star_limit = 5,
		id = 21008,
		icon = "Aaup_2",
		skill_id = 0,
		descrip = "防空炮武器效率+5%/防空炮武器效率+5%",
		condition_id = {
			21006
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			},
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[21009] = {
		use_gold = 1400,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 21009,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			21004,
			21008
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[21010] = {
		use_gold = 1500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 21010,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			21008,
			21009
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[21011] = {
		use_gold = 1600,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 21011,
		icon = "skill_red",
		skill_id = 11610,
		descrip = "习得技能【航空战队】",
		condition_id = {
			21010
		},
		effect = {
			{
				skill_id = 11610
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				}
			}
		},
		gear_score = {
			35
		}
	},
	[21101] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 21101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+100",
		condition_id = {},
		effect = {
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[21102] = {
		use_gold = 300,
		name = "命中强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 10,
		star_limit = 2,
		id = 21102,
		icon = "hit_1",
		skill_id = 0,
		descrip = "命中+5",
		condition_id = {
			21101
		},
		effect = {
			{
				hit = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[21103] = {
		use_gold = 400,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 30,
		star_limit = 4,
		id = 21103,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			21101
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[21104] = {
		use_gold = 500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 21104,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			21103
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					2
				}
			},
			{
				{
					18021,
					2
				}
			}
		},
		gear_score = {
			5,
			10
		}
	},
	[21105] = {
		use_gold = 10000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 305049,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 21105,
		icon = "mt_red",
		skill_id = 0,
		descrip = [[
近代化改造完成

改造后<color=#A9F548>【主炮底座-1】</color>
改造后<color=#A9F548>主炮效率</color>提高25%
改造后<color=#A9F548>【副武器】</color>装备栏位装备类型更改为<color=#A9F548>【水侦】</color>
在装备<color=#A9F548>【水侦】</color>的情况下，<color=#A9F548>【螯改】</color>可以进行<color=#A9F548>空中支援</color>]],
		condition_id = {
			21102,
			21103
		},
		effect = {
			{
				cannon = 30,
				air = 15
			}
		},
		ship_id = {
			{
				305044,
				310044
			}
		},
		use_item = {
			{
				{
					18023,
					5
				},
				{
					17043,
					80
				}
			}
		},
		gear_score = {
			50
		}
	},
	[21106] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 21106,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			21105
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[21107] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 80,
		star_limit = 5,
		id = 21107,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			21106
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18021,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[21108] = {
		use_gold = 1200,
		name = "防空炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 85,
		star_limit = 5,
		id = 21108,
		icon = "Aaup_2",
		skill_id = 0,
		descrip = "防空炮武器效率+5%/防空炮武器效率+5%",
		condition_id = {
			21106
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			},
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[21109] = {
		use_gold = 1400,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 21109,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			21104,
			21108
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[21110] = {
		use_gold = 1500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 21110,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			21108,
			21109
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18022,
					2
				}
			},
			{
				{
					18022,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[21111] = {
		use_gold = 1600,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 21111,
		icon = "skill_red",
		skill_id = 11600,
		descrip = "习得技能【格斗炮术】",
		condition_id = {
			21110
		},
		effect = {
			{
				skill_id = 11600
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				}
			}
		},
		gear_score = {
			35
		}
	},
	[22201] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 22201,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[22202] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 22202,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			22201
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[22203] = {
		use_gold = 400,
		name = "轰炸精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 22203,
		icon = "bfup_1",
		skill_id = 0,
		descrip = "轰炸机武器效率+5%",
		condition_id = {
			22201,
			22202
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[22204] = {
		use_gold = 500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 22204,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			22203
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[22205] = {
		use_gold = 600,
		name = "鱼雷俯冲I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 22205,
		icon = "tfup_1",
		skill_id = 0,
		descrip = "鱼雷机武器效率+5%",
		condition_id = {
			22203
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[22206] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 22206,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			22205
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[22207] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 22207,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			22205
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[22208] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 22208,
		icon = "skill_yellow",
		skill_id = 3041,
		descrip = "习得技能【制空支援】",
		condition_id = {
			22207
		},
		effect = {
			{
				skill_id = 3041
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[22209] = {
		use_gold = 1400,
		name = "轰炸精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 22209,
		icon = "bfup_2",
		skill_id = 0,
		descrip = "轰炸机武器效率+5%/轰炸机武器效率+5%",
		condition_id = {
			22207,
			22208
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[22210] = {
		use_gold = 1600,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 22210,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			22204,
			22209
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[22211] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 306059,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 22211,
		icon = "mt_yellow",
		skill_id = 0,
		descrip = "近代化改造完成，防空+20，航空+25",
		condition_id = {
			22209,
			22210
		},
		effect = {
			{
				air = 25,
				antiaircraft = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[22601] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 22601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[22602] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 22602,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			22601
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[22603] = {
		use_gold = 800,
		name = "空战精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 22603,
		icon = "ffup_1",
		skill_id = 0,
		descrip = "",
		condition_id = {
			22601
		},
		effect = {
			{
				equipment_proficiency_1 = 0.04
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[22604] = {
		use_gold = 1000,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 22604,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			22603
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					5
				}
			}
		},
		gear_score = {
			20
		}
	},
	[22605] = {
		use_gold = 1200,
		name = "鱼雷俯冲I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 22605,
		icon = "bfup_1",
		skill_id = 0,
		descrip = "",
		condition_id = {
			22603
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[22606] = {
		use_gold = 1500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 22606,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			22605
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[22607] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 22607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			22605
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[22608] = {
		use_gold = 2000,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 22608,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			22607,
			22602
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[22609] = {
		use_gold = 2500,
		name = "空战精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 22609,
		icon = "ffup_2",
		skill_id = 0,
		descrip = "",
		condition_id = {
			22607
		},
		effect = {
			{
				equipment_proficiency_1 = 0.04
			},
			{
				equipment_proficiency_1 = 0.07
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				}
			},
			{
				{
					18033,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[22610] = {
		use_gold = 3000,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 22610,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			22609
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				},
				{
					17043,
					15
				}
			},
			{
				{
					18033,
					2
				},
				{
					17043,
					35
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[22611] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 307039,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 22611,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，防空+35，机动+10",
		condition_id = {
			22609,
			22610
		},
		effect = {
			{
				dodge = 10,
				antiaircraft = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[22612] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 22612,
		icon = "skill_red",
		skill_id = 11830,
		descrip = "习得技能【】",
		condition_id = {
			22611
		},
		effect = {
			{
				skill_id = 11830
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			25
		}
	},
	[22701] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 22701,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[22702] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 22702,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			22701
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[22703] = {
		use_gold = 800,
		name = "空战精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 22703,
		icon = "ffup_1",
		skill_id = 0,
		descrip = "",
		condition_id = {
			22701
		},
		effect = {
			{
				equipment_proficiency_1 = 0.04
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[22704] = {
		use_gold = 1000,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 22704,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			22703
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18031,
					5
				}
			}
		},
		gear_score = {
			20
		}
	},
	[22705] = {
		use_gold = 1200,
		name = "轰炸精通I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 22705,
		icon = "tfup_1",
		skill_id = 0,
		descrip = "",
		condition_id = {
			22703
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[22706] = {
		use_gold = 1500,
		name = "航空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 22706,
		icon = "air_1",
		skill_id = 0,
		descrip = "航空+10",
		condition_id = {
			22705
		},
		effect = {
			{
				air = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[22707] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 22707,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			22705
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					2
				}
			},
			{
				{
					18032,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[22708] = {
		use_gold = 2000,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 22708,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			22707,
			22702
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18032,
					1
				}
			},
			{
				{
					18032,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[22709] = {
		use_gold = 2500,
		name = "空战精通II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 22709,
		icon = "ffup_2",
		skill_id = 0,
		descrip = "",
		condition_id = {
			22707
		},
		effect = {
			{
				equipment_proficiency_1 = 0.04
			},
			{
				equipment_proficiency_1 = 0.07
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				}
			},
			{
				{
					18033,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[22710] = {
		use_gold = 3000,
		name = "航空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 22710,
		icon = "air_2",
		skill_id = 0,
		descrip = "航空+10/航空+15",
		condition_id = {
			22709
		},
		effect = {
			{
				air = 10
			},
			{
				air = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					1
				},
				{
					17043,
					15
				}
			},
			{
				{
					18033,
					2
				},
				{
					17043,
					35
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[22711] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 307049,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 22711,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，防空+35，机动+10",
		condition_id = {
			22709,
			22710
		},
		effect = {
			{
				dodge = 10,
				antiaircraft = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[22712] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 22712,
		icon = "skill_red",
		skill_id = 11840,
		descrip = "习得技能【】",
		condition_id = {
			22711
		},
		effect = {
			{
				skill_id = 11840
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18033,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			25
		}
	},
	[23601] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 23601,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[23602] = {
		use_gold = 600,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 23602,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			23601
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[23603] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 23603,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			23601
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[23604] = {
		use_gold = 1000,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 23604,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			23603
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			},
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			5,
			10
		}
	},
	[23605] = {
		use_gold = 1200,
		name = "防空炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 23605,
		icon = "Aaup_2",
		skill_id = 0,
		descrip = "防空炮武器效率+5%/防空炮武器效率+5%",
		condition_id = {
			23603
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			},
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[23606] = {
		use_gold = 1500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 23606,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			23605
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[23607] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 23607,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			23605
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[23608] = {
		use_gold = 2000,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 23608,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			23607
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[23609] = {
		use_gold = 2500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 23609,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			23607
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			},
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[23610] = {
		use_gold = 3000,
		name = "炮击强化III",
		max_level = 3,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 23610,
		icon = "Cn_3",
		skill_id = 0,
		descrip = "炮击+5/炮击+10/炮击+15",
		condition_id = {
			23604,
			23609
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 10
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				},
				{
					17013,
					5
				}
			},
			{
				{
					18003,
					1
				},
				{
					17013,
					10
				}
			},
			{
				{
					18003,
					1
				},
				{
					17013,
					15
				}
			}
		},
		gear_score = {
			5,
			10,
			15
		}
	},
	[23611] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 401239,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 23611,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+25，反潜+20",
		condition_id = {
			23609
		},
		effect = {
			{
				antisub = 20,
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[23612] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 23612,
		icon = "skill_red",
		skill_id = 11320,
		descrip = "习得技能【毁灭模式】",
		condition_id = {
			23611
		},
		effect = {
			{
				skill_id = 11320
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					2
				},
				{
					17013,
					20
				}
			}
		},
		gear_score = {
			30
		}
	},
	[23901] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 23901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[23902] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 23902,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			23901
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[23903] = {
		use_gold = 400,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 23903,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			23901
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[23904] = {
		use_gold = 500,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 23904,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			23903
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[23905] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 23905,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			23903
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[23906] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 23906,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			23905
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[23907] = {
		use_gold = 1000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 23907,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			23905
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					1
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[23908] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 23908,
		icon = "skill_red",
		skill_id = 2111,
		descrip = "习得技能【袭扰战术】",
		condition_id = {
			23907
		},
		effect = {
			{
				skill_id = 2111
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[23909] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 23909,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			23907
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[23910] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 23910,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			23904,
			23909
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[23911] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 402029,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 23911,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+20，雷击+15",
		condition_id = {
			23908,
			23909,
			23910
		},
		effect = {
			{
				cannon = 20,
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[25801] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 25801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[25802] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 25802,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			25801
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[25803] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 25803,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			25801
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[25804] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 25804,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			25803
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[25805] = {
		use_gold = 1200,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 25805,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			25803
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[25806] = {
		use_gold = 1500,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 25806,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			25802,
			25805
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[25807] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 25807,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			25805
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[25808] = {
		use_gold = 2000,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 25808,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			25807
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[25809] = {
		use_gold = 2500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 25809,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			25807
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[25810] = {
		use_gold = 3000,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 25810,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			25804,
			25809
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17013,
					15
				}
			},
			{
				{
					18013,
					2
				},
				{
					17013,
					35
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[25811] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 502029,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 25811,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+25，机动+20",
		condition_id = {
			25809,
			25810
		},
		effect = {
			{
				cannon = 25,
				dodge = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					4
				}
			}
		},
		gear_score = {
			50
		}
	},
	[25812] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 25812,
		icon = "skill_red",
		skill_id = 10950,
		descrip = "习得技能【尚武之魂】",
		condition_id = {
			25808,
			25811
		},
		effect = {
			{
				skill_id = 10950
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			30
		}
	},
	[25901] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 25901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[25902] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 25902,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			25901
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[25903] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 25903,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			25901
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[25904] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 25904,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			25903
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[25905] = {
		use_gold = 1200,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 25905,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			25903
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[25906] = {
		use_gold = 1500,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 25906,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			25902,
			25905
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[25907] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 25907,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			25905
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[25908] = {
		use_gold = 2000,
		name = "机动强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 25908,
		icon = "dd_2",
		skill_id = 0,
		descrip = "机动+5/机动+10",
		condition_id = {
			25907
		},
		effect = {
			{
				dodge = 5
			},
			{
				dodge = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[25909] = {
		use_gold = 2500,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 25909,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			25907
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[25910] = {
		use_gold = 3000,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 25910,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			25904,
			25909
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17013,
					15
				}
			},
			{
				{
					18013,
					2
				},
				{
					17013,
					35
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[25911] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 502039,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 25911,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+25，机动+20",
		condition_id = {
			25909,
			25910
		},
		effect = {
			{
				cannon = 25,
				dodge = 20
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					4
				}
			}
		},
		gear_score = {
			50
		}
	},
	[25912] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 25912,
		icon = "skill_red",
		skill_id = 10950,
		descrip = "习得技能【尚武之魂】",
		condition_id = {
			25908,
			25911
		},
		effect = {
			{
				skill_id = 10950
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			30
		}
	},
	[26301] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 26301,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[26302] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 26302,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			26301
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[26303] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 26303,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			26301
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[26304] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 26304,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			26303
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[26305] = {
		use_gold = 1000,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 26305,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			26303
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[26306] = {
		use_gold = 1200,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 26306,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			26302,
			26305
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			},
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[26307] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 26307,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+60/耐久+90",
		condition_id = {
			26305
		},
		effect = {
			{
				durability = 60
			},
			{
				durability = 90
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[26308] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 26308,
		icon = "skill_yellow",
		skill_id = 5001,
		descrip = "习得技能【火力干扰】",
		condition_id = {
			26307
		},
		effect = {
			{
				skill_id = 5001
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[26309] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 26309,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			26307
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[26310] = {
		use_gold = 2500,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 26310,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			26304,
			26309
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[26311] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101279,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 26311,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+15，防空+35",
		condition_id = {
			26308,
			26309,
			26310
		},
		effect = {
			{
				cannon = 15,
				antiaircraft = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[26901] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 26901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[26902] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 26902,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			26901
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[26903] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 26903,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			26901
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[26904] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 26904,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			26903
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[26905] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 26905,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			26903
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[26906] = {
		use_gold = 1200,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 26906,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			26905
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[26907] = {
		use_gold = 1500,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 26907,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			26905
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[26908] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 26908,
		icon = "skill_red",
		skill_id = 11130,
		descrip = "习得技能【第一驱逐舰】",
		condition_id = {
			26907
		},
		effect = {
			{
				skill_id = 11130
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[26909] = {
		use_gold = 2000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 26909,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			26907
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[26910] = {
		use_gold = 2500,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 26910,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			26902,
			26909
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[26911] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301309,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 26911,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，命中+10，防空+25",
		condition_id = {
			26908,
			26909,
			26910
		},
		effect = {
			{
				antiaircraft = 25,
				hit = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[27001] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 27001,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[27002] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 27002,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			27001
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[27003] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 27003,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			27001
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[27004] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 27004,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			27003
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[27005] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 27005,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			27003
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[27006] = {
		use_gold = 1200,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 27006,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			27005
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[27007] = {
		use_gold = 1500,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 27007,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			27005
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[27008] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 27008,
		icon = "skill_blue",
		skill_id = 4071,
		descrip = "习得技能【紧急回避】",
		condition_id = {
			27007
		},
		effect = {
			{
				skill_id = 4071
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[27009] = {
		use_gold = 2000,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 27009,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			27007
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[27010] = {
		use_gold = 2500,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 27010,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			27002,
			27009
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[27011] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301319,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 27011,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，命中+10，防空+25",
		condition_id = {
			27008,
			27009,
			27010
		},
		effect = {
			{
				antiaircraft = 25,
				hit = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[27101] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 1,
		id = 27101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					1
				}
			}
		},
		gear_score = {
			10
		}
	},
	[27102] = {
		use_gold = 300,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 1,
		id = 27102,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			27101
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[27103] = {
		use_gold = 400,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 2,
		id = 27103,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			27101
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[27104] = {
		use_gold = 500,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 2,
		id = 27104,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			27103
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			15
		}
	},
	[27105] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 3,
		id = 27105,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			27103
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[27106] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 3,
		id = 27106,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			27105
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[27107] = {
		use_gold = 1000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 3,
		id = 27107,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			27105
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[27108] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 3,
		id = 27108,
		icon = "skill_yellow",
		skill_id = 1011,
		descrip = "习得技能【雷击指挥·驱逐舰】",
		condition_id = {
			27107
		},
		effect = {
			{
				skill_id = 1011
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[27109] = {
		use_gold = 1400,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 4,
		id = 27109,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			27107
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[27110] = {
		use_gold = 1600,
		name = "装填强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 4,
		id = 27110,
		icon = "rl_2",
		skill_id = 0,
		descrip = "装填+5/装填+10",
		condition_id = {
			27102,
			27109
		},
		effect = {
			{
				reload = 5
			},
			{
				reload = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[27111] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301329,
		use_ship = 1,
		level_limit = 80,
		star_limit = 4,
		id = 27111,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+25，防空+20",
		condition_id = {
			27108,
			27109,
			27110
		},
		effect = {
			{
				antiaircraft = 20,
				torpedo = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					6
				}
			}
		},
		gear_score = {
			50
		}
	},
	[30101] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 30101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+45",
		condition_id = {},
		effect = {
			{
				durability = 45
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[30102] = {
		use_gold = 600,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 30102,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			30101
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[30103] = {
		use_gold = 800,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 30103,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			30101
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[30104] = {
		use_gold = 1000,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 30104,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			30103
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[30105] = {
		use_gold = 1200,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 30105,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			30103
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[30106] = {
		use_gold = 1500,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 30106,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			30104,
			30105
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					1
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[30107] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 30107,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+45/耐久+75",
		condition_id = {
			30105
		},
		effect = {
			{
				durability = 45
			},
			{
				durability = 75
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			},
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[30108] = {
		use_gold = 2000,
		name = "防空强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 30108,
		icon = "aa_2",
		skill_id = 0,
		descrip = "防空+15/防空+25",
		condition_id = {
			30102,
			30107
		},
		effect = {
			{
				antiaircraft = 15
			},
			{
				antiaircraft = 25
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[30109] = {
		use_gold = 2500,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 30109,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			30107
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			},
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[30110] = {
		use_gold = 3000,
		name = "雷击强化III",
		max_level = 3,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 30110,
		icon = "Tp_3",
		skill_id = 0,
		descrip = "雷击+5/雷击+10/雷击+15",
		condition_id = {
			30109
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 10
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				},
				{
					17023,
					5
				}
			},
			{
				{
					18003,
					1
				},
				{
					17023,
					10
				}
			},
			{
				{
					18003,
					1
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			10,
			10,
			10
		}
	},
	[30111] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 101319,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 30111,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+35，反潜+10",
		condition_id = {
			30109,
			30110
		},
		effect = {
			{
				antisub = 10,
				torpedo = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[30112] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 30112,
		icon = "skill_blue",
		skill_id = 11480,
		descrip = "习得技能【库拉湾之战】，炮击+15",
		condition_id = {
			30111
		},
		effect = {
			{
				cannon = 15
			},
			{
				skill_id = 11480
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			30
		}
	},
	[30801] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 30801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[30802] = {
		use_gold = 400,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 30802,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			30801
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[30803] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 30803,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			30801
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[30804] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 30804,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			30803
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[30805] = {
		use_gold = 1000,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 30805,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			30803
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[30806] = {
		use_gold = 1200,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 30806,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			30802,
			30805
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[30807] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 30807,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			30805
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[30808] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 30808,
		icon = "skill_yellow",
		skill_id = 5041,
		descrip = "习得技能【照明弹】",
		condition_id = {
			30807
		},
		effect = {
			{
				skill_id = 5041
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[30809] = {
		use_gold = 2000,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 30809,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			30807,
			30808
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[30810] = {
		use_gold = 2500,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 30810,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			30804,
			30809
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[30811] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 302129,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 30811,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+10，雷击+35",
		condition_id = {
			30809,
			30810
		},
		effect = {
			{
				cannon = 10,
				torpedo = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[30901] = {
		use_gold = 400,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 30901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[30902] = {
		use_gold = 600,
		name = "装填强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 30902,
		icon = "rl_1",
		skill_id = 0,
		descrip = "装填+5",
		condition_id = {
			30901
		},
		effect = {
			{
				reload = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			10
		}
	},
	[30903] = {
		use_gold = 800,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 30903,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			30901
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[30904] = {
		use_gold = 1000,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 30904,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			30903
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					5
				}
			}
		},
		gear_score = {
			15
		}
	},
	[30905] = {
		use_gold = 1200,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 30905,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			30903
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[30906] = {
		use_gold = 1500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 30906,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			30902,
			30905
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			20
		}
	},
	[30907] = {
		use_gold = 1800,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 30907,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			30905
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[30908] = {
		use_gold = 2000,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 30908,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			30907
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[30909] = {
		use_gold = 2500,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 30909,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			30907
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			},
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[30910] = {
		use_gold = 3000,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 30910,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			30904,
			30909
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				},
				{
					17023,
					5
				}
			},
			{
				{
					18013,
					2
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[30911] = {
		use_gold = 4000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 302139,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 30911,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，炮击+10，雷击+35",
		condition_id = {
			30909,
			30910
		},
		effect = {
			{
				cannon = 10,
				torpedo = 35
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					3
				}
			}
		},
		gear_score = {
			50
		}
	},
	[30912] = {
		use_gold = 3000,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 90,
		star_limit = 5,
		id = 30912,
		icon = "skill_yellow",
		skill_id = 10890,
		descrip = "习得技能【不屈之神通】",
		condition_id = {
			30911
		},
		effect = {
			{
				skill_id = 10890
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					2
				},
				{
					17003,
					50
				}
			}
		},
		gear_score = {
			30
		}
	},
	[31801] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 31801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[31802] = {
		use_gold = 300,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 31802,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			31801
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[31803] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 31803,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			31801
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[31804] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 31804,
		icon = "cn_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			31803
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[31805] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 31805,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			31803
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[31806] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 31806,
		icon = "tp_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			31805
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					5
				}
			}
		},
		gear_score = {
			20
		}
	},
	[31807] = {
		use_gold = 1000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 31807,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			31805
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[31808] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 31808,
		icon = "skill_blue",
		skill_id = 4071,
		descrip = "习得技能【紧急回避】",
		condition_id = {
			31807
		},
		effect = {
			{
				skill_id = 4071
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[31809] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 31809,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			31807
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[31810] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 31810,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			31806,
			31809
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				},
				{
					17023,
					5
				}
			},
			{
				{
					18002,
					2
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[31811] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301619,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 31811,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，机动+15",
		condition_id = {
			31809,
			31810
		},
		effect = {
			{
				dodge = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[31901] = {
		use_gold = 200,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 31901,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[31902] = {
		use_gold = 300,
		name = "机动强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 31902,
		icon = "dd_1",
		skill_id = 0,
		descrip = "机动+5",
		condition_id = {
			31901
		},
		effect = {
			{
				dodge = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[31903] = {
		use_gold = 400,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 31903,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			31901
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[31904] = {
		use_gold = 500,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 31904,
		icon = "cn_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			31903
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[31905] = {
		use_gold = 600,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 31905,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			31903
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[31906] = {
		use_gold = 800,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 31906,
		icon = "tp_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			31905
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					5
				}
			}
		},
		gear_score = {
			20
		}
	},
	[31907] = {
		use_gold = 1000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 31907,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			31905
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			25
		}
	},
	[31908] = {
		use_gold = 1200,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 31908,
		icon = "skill_red",
		skill_id = 2121,
		descrip = "习得技能【集火信号-鱼雷】",
		condition_id = {
			31907
		},
		effect = {
			{
				skill_id = 2121
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[31909] = {
		use_gold = 1400,
		name = "鱼雷改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 31909,
		icon = "tpup_2",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%/鱼雷武器效率+5%",
		condition_id = {
			31907
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			},
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[31910] = {
		use_gold = 1600,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 31910,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			31906,
			31909
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					2
				},
				{
					17023,
					5
				}
			},
			{
				{
					18002,
					2
				},
				{
					17023,
					15
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[31911] = {
		use_gold = 2000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 301629,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 31911,
		icon = "mt_red",
		skill_id = 0,
		descrip = "近代化改造完成，雷击+30，机动+15",
		condition_id = {
			31909,
			31910
		},
		effect = {
			{
				dodge = 15,
				torpedo = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[34801] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 34801,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[34802] = {
		use_gold = 400,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 34802,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			34801
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[34803] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 34803,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			34801
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[34804] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 34804,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			34803
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[34805] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 34805,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			34803
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[34806] = {
		use_gold = 1200,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 34806,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			34802,
			34805
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			},
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[34807] = {
		use_gold = 1500,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 34807,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			34805
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[34808] = {
		use_gold = 1800,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 34808,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			34807
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[34809] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 34809,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			34807
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[34810] = {
		use_gold = 2500,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 34810,
		icon = "skill_blue",
		skill_id = 4071,
		descrip = "习得技能【紧急回避】",
		condition_id = {
			34809
		},
		effect = {
			{
				skill_id = 4071
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					4
				}
			}
		},
		gear_score = {
			30
		}
	},
	[34811] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 801029,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 34811,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+15，反潜+30",
		condition_id = {
			34809,
			34810
		},
		effect = {
			{
				antisub = 30,
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[35101] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 35101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+60",
		condition_id = {},
		effect = {
			{
				durability = 60
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[35102] = {
		use_gold = 400,
		name = "雷击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 35102,
		icon = "tp_1",
		skill_id = 0,
		descrip = "雷击+10",
		condition_id = {
			35101
		},
		effect = {
			{
				torpedo = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[35103] = {
		use_gold = 600,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 35103,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			35101
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[35104] = {
		use_gold = 800,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 35104,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+15",
		condition_id = {
			35103
		},
		effect = {
			{
				antiaircraft = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[35105] = {
		use_gold = 1000,
		name = "鱼雷改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 35105,
		icon = "tpup_1",
		skill_id = 0,
		descrip = "鱼雷武器效率+5%",
		condition_id = {
			35103
		},
		effect = {
			{
				equipment_proficiency_2 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[35106] = {
		use_gold = 1200,
		name = "雷击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 35106,
		icon = "tp_2",
		skill_id = 0,
		descrip = "雷击+5/雷击+15",
		condition_id = {
			35102,
			35105
		},
		effect = {
			{
				torpedo = 5
			},
			{
				torpedo = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18001,
					2
				}
			},
			{
				{
					18001,
					2
				}
			}
		},
		gear_score = {
			10,
			10
		}
	},
	[35107] = {
		use_gold = 1500,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 35107,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			35105
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[35108] = {
		use_gold = 1800,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 35108,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			35107
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					1
				}
			},
			{
				{
					18002,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[35109] = {
		use_gold = 2000,
		name = "动力强化",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 35109,
		icon = "sp_1",
		skill_id = 0,
		descrip = "航速+3",
		condition_id = {
			35107
		},
		effect = {
			{
				speed = 3
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					3
				}
			}
		},
		gear_score = {
			30
		}
	},
	[35110] = {
		use_gold = 2500,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 35110,
		icon = "skill_blue",
		skill_id = 4071,
		descrip = "习得技能【紧急回避】",
		condition_id = {
			35109
		},
		effect = {
			{
				skill_id = 4071
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18002,
					4
				}
			}
		},
		gear_score = {
			30
		}
	},
	[35111] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 901019,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 35111,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，防空+30，反潜+15",
		condition_id = {
			35109,
			35110
		},
		effect = {
			{
				antisub = 15,
				antiaircraft = 30
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18003,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	[36101] = {
		use_gold = 300,
		name = "舰体改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 1,
		star_limit = 2,
		id = 36101,
		icon = "hp_1",
		skill_id = 0,
		descrip = "耐久+70",
		condition_id = {},
		effect = {
			{
				durability = 70
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[36102] = {
		use_gold = 400,
		name = "命中强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 5,
		star_limit = 2,
		id = 36102,
		icon = "rl_1",
		skill_id = 0,
		descrip = "命中+5",
		condition_id = {
			36101
		},
		effect = {
			{
				hit = 5
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					2
				}
			}
		},
		gear_score = {
			10
		}
	},
	[36103] = {
		use_gold = 600,
		name = "主炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 20,
		star_limit = 3,
		id = 36103,
		icon = "mgup_1",
		skill_id = 0,
		descrip = "主炮武器效率+5%",
		condition_id = {
			36101
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[36104] = {
		use_gold = 800,
		name = "炮击强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 25,
		star_limit = 3,
		id = 36104,
		icon = "cn_1",
		skill_id = 0,
		descrip = "炮击+10",
		condition_id = {
			36103
		},
		effect = {
			{
				cannon = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			15
		}
	},
	[36105] = {
		use_gold = 1000,
		name = "防空炮改良I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 35,
		star_limit = 4,
		id = 36105,
		icon = "aaup_1",
		skill_id = 0,
		descrip = "防空炮武器效率+5%",
		condition_id = {
			36103
		},
		effect = {
			{
				equipment_proficiency_3 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					3
				}
			}
		},
		gear_score = {
			20
		}
	},
	[36106] = {
		use_gold = 1200,
		name = "防空强化I",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 40,
		star_limit = 4,
		id = 36106,
		icon = "aa_1",
		skill_id = 0,
		descrip = "防空+10",
		condition_id = {
			36102,
			36105
		},
		effect = {
			{
				antiaircraft = 10
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18011,
					4
				}
			}
		},
		gear_score = {
			20
		}
	},
	[36107] = {
		use_gold = 1500,
		name = "舰体改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 50,
		star_limit = 4,
		id = 36107,
		icon = "hp_2",
		skill_id = 0,
		descrip = "耐久+70/耐久+100",
		condition_id = {
			36105
		},
		effect = {
			{
				durability = 70
			},
			{
				durability = 100
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					1
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			15
		}
	},
	[36108] = {
		use_gold = 1800,
		name = "战术启发",
		max_level = 1,
		skin_id = 0,
		use_ship = 0,
		level_limit = 55,
		star_limit = 4,
		id = 36108,
		icon = "skill_yellow",
		skill_id = 1004,
		descrip = "习得技能【炮术指挥·先锋】",
		condition_id = {
			36107
		},
		effect = {
			{
				skill_id = 1004
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					3
				}
			}
		},
		gear_score = {
			25
		}
	},
	[36109] = {
		use_gold = 2000,
		name = "主炮改良II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 70,
		star_limit = 5,
		id = 36109,
		icon = "mgup_2",
		skill_id = 0,
		descrip = "主炮武器效率+5%/主炮武器效率+5%",
		condition_id = {
			36107,
			36108
		},
		effect = {
			{
				equipment_proficiency_1 = 0.05
			},
			{
				equipment_proficiency_1 = 0.05
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[36110] = {
		use_gold = 2500,
		name = "炮击强化II",
		max_level = 2,
		skin_id = 0,
		use_ship = 0,
		level_limit = 75,
		star_limit = 5,
		id = 36110,
		icon = "cn_2",
		skill_id = 0,
		descrip = "炮击+5/炮击+15",
		condition_id = {
			36104,
			36109
		},
		effect = {
			{
				cannon = 5
			},
			{
				cannon = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18012,
					2
				}
			},
			{
				{
					18012,
					2
				}
			}
		},
		gear_score = {
			10,
			20
		}
	},
	[36111] = {
		use_gold = 3000,
		name = "近代化改造",
		max_level = 1,
		skin_id = 202199,
		use_ship = 1,
		level_limit = 85,
		star_limit = 5,
		id = 36111,
		icon = "mt_blue",
		skill_id = 0,
		descrip = "近代化改造完成，装填+15，防空+30",
		condition_id = {
			36109,
			36110
		},
		effect = {
			{
				antiaircraft = 30,
				reload = 15
			}
		},
		ship_id = {},
		use_item = {
			{
				{
					18013,
					1
				}
			}
		},
		gear_score = {
			50
		}
	},
	all = {
		501,
		502,
		503,
		504,
		505,
		506,
		507,
		508,
		509,
		510,
		511,
		601,
		602,
		603,
		604,
		605,
		606,
		607,
		608,
		609,
		610,
		611,
		1901,
		1902,
		1903,
		1904,
		1905,
		1906,
		1907,
		1908,
		1909,
		1910,
		1911,
		1912,
		2601,
		2602,
		2603,
		2604,
		2605,
		2606,
		2607,
		2608,
		2609,
		2610,
		2611,
		2701,
		2702,
		2703,
		2704,
		2705,
		2706,
		2707,
		2708,
		2709,
		2710,
		2711,
		3601,
		3602,
		3603,
		3604,
		3605,
		3606,
		3607,
		3608,
		3609,
		3610,
		3611,
		3612,
		4401,
		4402,
		4403,
		4404,
		4405,
		4406,
		4407,
		4408,
		4409,
		4410,
		4411,
		5201,
		5202,
		5203,
		5204,
		5205,
		5206,
		5207,
		5208,
		5209,
		5210,
		5211,
		5301,
		5302,
		5303,
		5304,
		5305,
		5306,
		5307,
		5308,
		5309,
		5310,
		5311,
		7001,
		7002,
		7003,
		7004,
		7005,
		7006,
		7007,
		7008,
		7009,
		7010,
		7011,
		7101,
		7102,
		7103,
		7104,
		7105,
		7106,
		7107,
		7108,
		7109,
		7110,
		7111,
		7201,
		7202,
		7203,
		7204,
		7205,
		7206,
		7207,
		7208,
		7209,
		7210,
		7211,
		7401,
		7402,
		7403,
		7404,
		7405,
		7406,
		7407,
		7408,
		7409,
		7410,
		7411,
		7412,
		7501,
		7502,
		7503,
		7504,
		7505,
		7506,
		7507,
		7508,
		7509,
		7510,
		7511,
		8201,
		8202,
		8203,
		8204,
		8205,
		8206,
		8207,
		8208,
		8209,
		8210,
		8211,
		8301,
		8302,
		8303,
		8304,
		8305,
		8306,
		8307,
		8308,
		8309,
		8310,
		8311,
		8801,
		8802,
		8803,
		8804,
		8805,
		8806,
		8807,
		8808,
		8809,
		8810,
		8811,
		8901,
		8902,
		8903,
		8904,
		8905,
		8906,
		8907,
		8908,
		8909,
		8910,
		8911,
		9001,
		9002,
		9003,
		9004,
		9005,
		9006,
		9007,
		9008,
		9009,
		9010,
		9011,
		9101,
		9102,
		9103,
		9104,
		9105,
		9106,
		9107,
		9108,
		9109,
		9110,
		9111,
		9201,
		9202,
		9203,
		9204,
		9205,
		9206,
		9207,
		9208,
		9209,
		9210,
		9211,
		10101,
		10102,
		10103,
		10104,
		10105,
		10106,
		10107,
		10108,
		10109,
		10110,
		10111,
		10112,
		10401,
		10402,
		10403,
		10404,
		10405,
		10406,
		10407,
		10408,
		10409,
		10410,
		10411,
		10501,
		10502,
		10503,
		10504,
		10505,
		10506,
		10507,
		10508,
		10509,
		10510,
		10511,
		10601,
		10602,
		10603,
		10604,
		10605,
		10606,
		10607,
		10608,
		10609,
		10610,
		10611,
		12201,
		12202,
		12203,
		12204,
		12205,
		12206,
		12207,
		12208,
		12209,
		12210,
		12211,
		12501,
		12502,
		12503,
		12504,
		12505,
		12506,
		12507,
		12508,
		12509,
		12510,
		12511,
		12512,
		12601,
		12602,
		12603,
		12604,
		12605,
		12606,
		12607,
		12608,
		12609,
		12610,
		12611,
		12612,
		13101,
		13102,
		13103,
		13104,
		13105,
		13106,
		13107,
		13108,
		13109,
		13110,
		13111,
		13112,
		15501,
		15502,
		15503,
		15504,
		15505,
		15506,
		15507,
		15508,
		15509,
		15510,
		15511,
		15512,
		16701,
		16702,
		16703,
		16704,
		16705,
		16706,
		16707,
		16708,
		16709,
		16710,
		16711,
		16801,
		16802,
		16803,
		16804,
		16805,
		16806,
		16807,
		16808,
		16809,
		16810,
		16811,
		18701,
		18702,
		18703,
		18704,
		18705,
		18706,
		18707,
		18708,
		18709,
		18710,
		18711,
		18801,
		18802,
		18803,
		18804,
		18805,
		18806,
		18807,
		18808,
		18809,
		18810,
		18811,
		18812,
		19001,
		19002,
		19003,
		19004,
		19005,
		19006,
		19007,
		19008,
		19009,
		19010,
		19011,
		19101,
		19102,
		19103,
		19104,
		19105,
		19106,
		19107,
		19108,
		19109,
		19110,
		19111,
		20801,
		20802,
		20803,
		20804,
		20805,
		20806,
		20807,
		20808,
		20809,
		20810,
		20811,
		20901,
		20902,
		20903,
		20904,
		20905,
		20906,
		20907,
		20908,
		20909,
		20910,
		20911,
		21001,
		21002,
		21003,
		21004,
		21005,
		21006,
		21007,
		21008,
		21009,
		21010,
		21011,
		21101,
		21102,
		21103,
		21104,
		21105,
		21106,
		21107,
		21108,
		21109,
		21110,
		21111,
		22201,
		22202,
		22203,
		22204,
		22205,
		22206,
		22207,
		22208,
		22209,
		22210,
		22211,
		22601,
		22602,
		22603,
		22604,
		22605,
		22606,
		22607,
		22608,
		22609,
		22610,
		22611,
		22612,
		22701,
		22702,
		22703,
		22704,
		22705,
		22706,
		22707,
		22708,
		22709,
		22710,
		22711,
		22712,
		23601,
		23602,
		23603,
		23604,
		23605,
		23606,
		23607,
		23608,
		23609,
		23610,
		23611,
		23612,
		23901,
		23902,
		23903,
		23904,
		23905,
		23906,
		23907,
		23908,
		23909,
		23910,
		23911,
		25801,
		25802,
		25803,
		25804,
		25805,
		25806,
		25807,
		25808,
		25809,
		25810,
		25811,
		25812,
		25901,
		25902,
		25903,
		25904,
		25905,
		25906,
		25907,
		25908,
		25909,
		25910,
		25911,
		25912,
		26301,
		26302,
		26303,
		26304,
		26305,
		26306,
		26307,
		26308,
		26309,
		26310,
		26311,
		26901,
		26902,
		26903,
		26904,
		26905,
		26906,
		26907,
		26908,
		26909,
		26910,
		26911,
		27001,
		27002,
		27003,
		27004,
		27005,
		27006,
		27007,
		27008,
		27009,
		27010,
		27011,
		27101,
		27102,
		27103,
		27104,
		27105,
		27106,
		27107,
		27108,
		27109,
		27110,
		27111,
		30101,
		30102,
		30103,
		30104,
		30105,
		30106,
		30107,
		30108,
		30109,
		30110,
		30111,
		30112,
		30801,
		30802,
		30803,
		30804,
		30805,
		30806,
		30807,
		30808,
		30809,
		30810,
		30811,
		30901,
		30902,
		30903,
		30904,
		30905,
		30906,
		30907,
		30908,
		30909,
		30910,
		30911,
		30912,
		31801,
		31802,
		31803,
		31804,
		31805,
		31806,
		31807,
		31808,
		31809,
		31810,
		31811,
		31901,
		31902,
		31903,
		31904,
		31905,
		31906,
		31907,
		31908,
		31909,
		31910,
		31911,
		34801,
		34802,
		34803,
		34804,
		34805,
		34806,
		34807,
		34808,
		34809,
		34810,
		34811,
		35101,
		35102,
		35103,
		35104,
		35105,
		35106,
		35107,
		35108,
		35109,
		35110,
		35111,
		36101,
		36102,
		36103,
		36104,
		36105,
		36106,
		36107,
		36108,
		36109,
		36110,
		36111
	}
}

return
