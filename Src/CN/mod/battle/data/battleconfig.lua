ys.Battle.BattleConfig = ys.Battle.BattleConfig or {}
ys.Battle.BattleConfig.calcFPS = 30
ys.Battle.BattleConfig.viewFPS = 30
ys.Battle.BattleConfig.AIFPS = 10
ys.Battle.BattleConfig.calcInterval = 1 / ys.Battle.BattleConfig.calcFPS
ys.Battle.BattleConfig.viewInterval = 1 / ys.Battle.BattleConfig.viewFPS
ys.Battle.BattleConfig.AIInterval = 1 / ys.Battle.BattleConfig.AIFPS
ys.Battle.BattleConfig.FRIENDLY_CODE = 1
ys.Battle.BattleConfig.FOE_CODE = -1
ys.Battle.BattleConfig.SHIELD_CENTER_CONST = 3.14
ys.Battle.BattleConfig.SHIELD_CENTER_CONST_2 = 2.0933333333333333
ys.Battle.BattleConfig.SHIELD_CENTER_CONST_4 = 4.1866666666666665
ys.Battle.BattleConfig.SHIELD_ROTATE_CONST = 30 / math.pi * 18
ys.Battle.BattleConfig.K1 = 6
ys.Battle.BattleConfig.K2 = 100
ys.Battle.BattleConfig.K3 = 3.14
ys.Battle.BattleConfig.AIR_ASSIST_RELOAD_RATIO = 220
ys.Battle.BattleConfig.RANDOM_DAMAGE_MIN = 0
ys.Battle.BattleConfig.RANDOM_DAMAGE_MAX = 2
ys.Battle.BattleConfig.BASIC_TIME_SCALE = 1
ys.Battle.BattleConfig.SPINE_SCALE = 2
ys.Battle.BattleConfig.CAMERA_INIT_POS = Vector3(0, 62, -10)
ys.Battle.BattleConfig.CAMERA_SIZE = 20
ys.Battle.BattleConfig.CAMERA_BASE_HEIGH = 8
ys.Battle.BattleConfig.CAMERA_GOLDEN_RATE = 0.618
ys.Battle.BattleConfig.AntiAirConfig = {
	const_n = 10,
	const_K = 1000,
	const_N = 5,
	const_A = 20,
	const_B = 40,
	Restore_Interval = 1,
	Precast_duration = 0.25
}
ys.Battle.BattleConfig.AnitAirRepeaterConfig = {
	const_A = 32,
	const_B = 12,
	const_C = 220,
	upper_range = 35,
	lower_range = 15
}
ys.Battle.BattleConfig.ChargeWeaponConfig = {
	a1 = 0,
	K1 = 0,
	K2 = 1000,
	FIX_CD = 7,
	MEGA_FIX_CD = 3,
	GCD = 1,
	Enhance = 1.2,
	SIGHT_A = 0.35,
	SIGHT_B = -40,
	SIGHT_C = 38
}
ys.Battle.BattleConfig.TorpedoCFG = {
	T = 10,
	N = 1000,
	GCD = 0.5
}
ys.Battle.BattleConfig.AirAssistCFG = {
	GCD = 0.5
}
ys.Battle.BattleConfig.BulletHeight = 1
ys.Battle.BattleConfig.HeightOffsetRate = 1.5
ys.Battle.BattleConfig.CharacterFeetHight = -0.5
ys.Battle.BattleConfig.BombDetonateHeight = 1.2
ys.Battle.BattleConfig.CameraSizeChangeSpeed = 0.04
ys.Battle.BattleConfig.AircraftHeight = 10
ys.Battle.BattleConfig.AirFighterOffsetZ = 3
ys.Battle.BattleConfig.AirFighterHeight = 10
ys.Battle.BattleConfig.MaxLeft = -10000
ys.Battle.BattleConfig.MaxRight = 10000
ys.Battle.BattleConfig.BornOffset = Vector3(0, 0, 0.1)
ys.Battle.BattleConfig.FORMATION_ID = 10001
ys.Battle.BattleConfig.CelebrateDuration = 3
ys.Battle.BattleConfig.EscapeDuration = 5
ys.Battle.BattleConfig.BulletSpeedConvertConst = 0.1
ys.Battle.BattleConfig.ShipSpeedConvertConst = 0.01
ys.Battle.BattleConfig.AircraftSpeedConvertConst = 0.01
ys.Battle.BattleConfig.PLAYER_WEAPON_GLOBAL_COOL_DOWN_DURATION = 0.5
ys.Battle.BattleConfig.COUNT_DOWN_ESCAPE_AI_ID = 80006
ys.Battle.BattleConfig.RESOURCE_STEP = 10
ys.Battle.BattleConfig.RESOURCE_STAY_DURATION = 2
ys.Battle.BattleConfig.CAST_CAM_ZOOM_SIZE = 14
ys.Battle.BattleConfig.CAST_CAM_ZOOM_IN_DURATION = 0.1
ys.Battle.BattleConfig.CAST_CAM_ZOOM_IN_DURATION_SKILL = 0.04
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_DURATION_CANNON = 0.1
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_EXTRA_DELAY_CANNON = 0.04
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_DELAY_CANNON = 0
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_DURATION_AIR = 0.1
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_EXTRA_DELAY_AIR = 0.03
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_DELAY_AIR = 0.05
ys.Battle.BattleConfig.AIR_ASSIST_SPEED_RATE = 2.8
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_DURATION_SKILL = 0.04
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_EXTRA_DELAY_SKILL = 0
ys.Battle.BattleConfig.CAST_CAM_ZOOM_OUT_DELAY_SKILL = 0
ys.Battle.BattleConfig.CALIBRATE_ACCELERATION = 1.2
ys.Battle.BattleConfig.CAST_CAM_OVERLOOK_SIZE = 24
ys.Battle.BattleConfig.CAST_CAM_OVERLOOK_REVERT_DURATION = 1.5
ys.Battle.BattleConfig.CAM_RESET_DURATION = 0.7
ys.Battle.BattleConfig.SPEED_FACTOR_FOCUS_CHARACTER = "focusCharacter"
ys.Battle.BattleConfig.FOCUS_MAP_RATE = 0.1
ys.Battle.BattleConfig.MAIN_UNIT_POS = {
	[ys.Battle.BattleConfig.FRIENDLY_CODE] = {
		Vector3(-105, 0, 58),
		Vector3(-105, 0, 78),
		Vector3(-105, 0, 38)
	},
	[ys.Battle.BattleConfig.FOE_CODE] = {
		Vector3(15, 0, 58),
		Vector3(15, 0, 78),
		Vector3(15, 0, 38)
	}
}
ys.Battle.BattleConfig.SUB_UNIT_POS_Z = {
	58,
	78,
	38
}
ys.Battle.BattleConfig.SUB_UNIT_OFFSET_X = -5
ys.Battle.BattleConfig.SHIP_CLD_INTERVAL = 1
ys.Battle.BattleConfig.SHIP_CLD_BUFF = 8010
ys.Battle.BattleConfig.START_SPEED_CONST_A = 2.5
ys.Battle.BattleConfig.START_SPEED_CONST_B = 0.25
ys.Battle.BattleConfig.START_SPEED_CONST_C = 0.3
ys.Battle.BattleConfig.START_SPEED_CONST_D = 2.5
ys.Battle.BattleConfig.GRAVITY = -0.05
ys.Battle.BattleConfig.DUEL_MAIN_RAGE_BUFF = 6
ys.Battle.BattleConfig.DULE_BALANCE_BUFF = 19
ys.Battle.BattleConfig.SIMULATION_BALANCE_BUFF = 49
ys.Battle.BattleConfig.ARENA_LIST = {
	80000,
	80001,
	80002,
	80003
}
ys.Battle.BattleConfig.SIMULATION_FREE_BUFF = 41
ys.Battle.BattleConfig.SIMULATION_ADVANTAGE_BUFF = 42
ys.Battle.BattleConfig.SIMULATION_ADVANTAGE_CANCEL_LIST = {
	42,
	44,
	45
}
ys.Battle.BattleConfig.SIMULATION_DISADVANTAGE_BUFF = 43
ys.Battle.BattleConfig.SIMULATION_RIVAL_RAGE_TOTAL_COUNT = 30
ys.Battle.BattleConfig.CHALLENGE_INVINCIBLE_BUFF = 50
ys.Battle.BattleConfig.WARNING_HP_RATE = 0.7
ys.Battle.BattleConfig.WARNING_HP_RATE_MAIN = 0.3
ys.Battle.BattleConfig.SKILL_BUTTON_DEFAULT_PREFERENCE = {
	{
		scale = 1,
		x = 0.9275,
		y = 0.155
	},
	{
		scale = 1,
		x = 0.792,
		y = 0.155
	},
	{
		scale = 1,
		x = 0.6562,
		y = 0.155
	},
	{
		scale = 1,
		x = 0.525,
		y = 0.155
	}
}
ys.Battle.BattleConfig.JOY_STICK_DEFAULT_PREFERENCE = {
	scale = 1,
	x = 0.12,
	y = 0.183
}
ys.Battle.BattleConfig.AUTO_DEFAULT_PREFERENCE = {
	scale = 1,
	x = 0.105,
	y = 0.925
}
ys.Battle.BattleConfig.DOT_CONFIG = {
	{
		reduce = "igniteReduce",
		prolong = "igniteProlong",
		shorten = "igniteShorten",
		resist = "igniteResist",
		enhance = "igniteEnhance",
		hit = "ignite_accuracy"
	},
	{
		reduce = "floodingReduce",
		prolong = "floodingProlong",
		shorten = "floodingShorten",
		resist = "floodingResist",
		enhance = "floodingEnhance",
		hit = "flooding_accuracy"
	}
}
ys.Battle.BattleConfig.DOT_CONFIG_DEFAULT = {
	reduce = 0,
	prolong = 0,
	shorten = 0,
	resist = 0,
	enhance = 0,
	hit = 0
}
ys.Battle.BattleConfig.NATIONNALITY_DAMAGE_ENHANCE = {
	"damageRatioByNationality_1",
	"damageRatioByNationality_2",
	"damageRatioByNationality_3",
	"damageRatioByNationality_4",
	[99.0] = "damageRatioByNationality_99"
}
ys.Battle.BattleConfig.AMMO_DAMAGE_ENHANCE = {
	"damageRatioByAmmoType_1",
	"damageRatioByAmmoType_2",
	"damageRatioByAmmoType_3"
}
ys.Battle.BattleConfig.AMMO_DAMAGE_REDUCE = {
	"damageReduceFromAmmoType_1",
	"damageReduceFromAmmoType_2",
	"damageReduceFromAmmoType_3"
}
ys.Battle.BattleConfig.SHIP_TYPE_DAMAGE_ENHANCE = {
	[ShipType.QuZhu] = "damageRatioByShipType_1",
	[ShipType.QingXun] = "damageRatioByShipType_2",
	[ShipType.ZhongXun] = "damageRatioByShipType_3",
	[ShipType.ZhanXun] = "damageRatioByShipType_4",
	[ShipType.ZhanLie] = "damageRatioByShipType_5",
	[ShipType.QingHang] = "damageRatioByShipType_6",
	[ShipType.ZhengHang] = "damageRatioByShipType_7",
	[ShipType.QianTing] = "damageRatioByShipType_8",
	[ShipType.HangXun] = "damageRatioByShipType_9",
	[ShipType.HangZhan] = "damageRatioByShipType_10",
	[ShipType.LeiXun] = "damageRatioByShipType_11",
	[ShipType.WeiXiu] = "damageRatioByShipType_12",
	[ShipType.ZhongPao] = "damageRatioByShipType_13",
	[ShipType.YuLeiTing] = "damageRatioByShipType_14",
	[ShipType.JinBi] = "damageRatioByShipType_15",
	[ShipType.ZiBao] = "damageRatioByShipType_16",
	[ShipType.QianMu] = "damageRatioByShipType_17"
}
ys.Battle.BattleConfig.SHIP_TYPE_ACCURACY_ENHANCE = {
	[ShipType.QuZhu] = "accuracyToShipType_1",
	[ShipType.QingXun] = "accuracyToShipType_2",
	[ShipType.ZhongXun] = "accuracyToShipType_3",
	[ShipType.ZhanXun] = "accuracyToShipType_4",
	[ShipType.ZhanLie] = "accuracyToShipType_5",
	[ShipType.QingHang] = "accuracyToShipType_6",
	[ShipType.ZhengHang] = "accuracyToShipType_7",
	[ShipType.QianTing] = "accuracyToShipType_8",
	[ShipType.HangXun] = "accuracyToShipType_9",
	[ShipType.HangZhan] = "accuracyToShipType_10",
	[ShipType.LeiXun] = "accuracyToShipType_11",
	[ShipType.WeiXiu] = "accuracyToShipType_12",
	[ShipType.ZhongPao] = "accuracyToShipType_13",
	[ShipType.YuLeiTing] = "accuracyToShipType_14",
	[ShipType.JinBi] = "accuracyToShipType_15",
	[ShipType.ZiBao] = "accuracyToShipType_16",
	[ShipType.QianMu] = "accuracyToShipType_17"
}
ys.Battle.BattleConfig.CANNON_DAMAGE_ENHANCE_FROM_SHIP_TYPE = {
	[ShipType.QuZhu] = "cannonDamageRatioFromShipType_1",
	[ShipType.QingXun] = "cannonDamageRatioFromShipType_2",
	[ShipType.ZhongXun] = "cannonDamageRatioFromShipType_3",
	[ShipType.ZhanXun] = "cannonDamageRatioFromShipType_4",
	[ShipType.ZhanLie] = "cannonDamageRatioFromShipType_5",
	[ShipType.QingHang] = "cannonDamageRatioFromShipType_6",
	[ShipType.ZhengHang] = "cannonDamageRatioFromShipType_7",
	[ShipType.QianTing] = "cannonDamageRatioFromShipType_8",
	[ShipType.HangXun] = "cannonDamageRatioFromShipType_9",
	[ShipType.HangZhan] = "cannonDamageRatioFromShipType_10",
	[ShipType.LeiXun] = "cannonDamageRatioFromShipType_11",
	[ShipType.WeiXiu] = "cannonDamageRatioFromShipType_12",
	[ShipType.ZhongPao] = "cannonDamageRatioFromShipType_13",
	[ShipType.YuLeiTing] = "cannonDamageRatioFromShipType_14",
	[ShipType.JinBi] = "cannonDamageRatioFromShipType_15",
	[ShipType.ZiBao] = "cannonDamageRatioFromShipType_16",
	[ShipType.QianMu] = "cannonDamageRatioFromShipType_17"
}
ys.Battle.BattleConfig.TORPEDO_DAMAGE_ENHANCE_FROM_SHIP_TYPE = {
	[ShipType.QuZhu] = "torpedoDamageRatioFromShipType_1",
	[ShipType.QingXun] = "torpedoDamageRatioFromShipType_2",
	[ShipType.ZhongXun] = "torpedoDamageRatioFromShipType_3",
	[ShipType.ZhanXun] = "torpedoDamageRatioFromShipType_4",
	[ShipType.ZhanLie] = "torpedoDamageRatioFromShipType_5",
	[ShipType.QingHang] = "torpedoDamageRatioFromShipType_6",
	[ShipType.ZhengHang] = "torpedoDamageRatioFromShipType_7",
	[ShipType.QianTing] = "torpedoDamageRatioFromShipType_8",
	[ShipType.HangXun] = "torpedoDamageRatioFromShipType_9",
	[ShipType.HangZhan] = "torpedoDamageRatioFromShipType_10",
	[ShipType.LeiXun] = "torpedoDamageRatioFromShipType_11",
	[ShipType.WeiXiu] = "torpedoDamageRatioFromShipType_12",
	[ShipType.ZhongPao] = "torpedoDamageRatioFromShipType_13",
	[ShipType.YuLeiTing] = "torpedoDamageRatioFromShipType_14",
	[ShipType.JinBi] = "torpedoDamageRatioFromShipType_15",
	[ShipType.ZiBao] = "torpedoDamageRatioFromShipType_16",
	[ShipType.QianMu] = "torpedoDamageRatioFromShipType_17"
}
ys.Battle.BattleConfig.ANTI_AIR_DAMAGE_ENHANCE_FROM_SHIP_TYPE = {
	[ShipType.QuZhu] = "antiAirDamageRatioFromShipType_1",
	[ShipType.QingXun] = "antiAirDamageRatioFromShipType_2",
	[ShipType.ZhongXun] = "antiAirDamageRatioFromShipType_3",
	[ShipType.ZhanXun] = "antiAirDamageRatioFromShipType_4",
	[ShipType.ZhanLie] = "antiAirDamageRatioFromShipType_5",
	[ShipType.QingHang] = "antiAirDamageRatioFromShipType_6",
	[ShipType.ZhengHang] = "antiAirDamageRatioFromShipType_7",
	[ShipType.QianTing] = "antiAirDamageRatioFromShipType_8",
	[ShipType.HangXun] = "antiAirDamageRatioFromShipType_9",
	[ShipType.HangZhan] = "antiAirDamageRatioFromShipType_10",
	[ShipType.LeiXun] = "antiAirDamageRatioFromShipType_11",
	[ShipType.WeiXiu] = "antiAirDamageRatioFromShipType_12",
	[ShipType.ZhongPao] = "antiAirDamageRatioFromShipType_13",
	[ShipType.YuLeiTing] = "antiAirDamageRatioFromShipType_14",
	[ShipType.JinBi] = "antiAirDamageRatioFromShipType_15",
	[ShipType.ZiBao] = "antiAirDamageRatioFromShipType_16",
	[ShipType.QianMu] = "antiAirDamageRatioFromShipType_17"
}
ys.Battle.BattleConfig.AIR_DAMAGE_ENHANCE_FROM_SHIP_TYPE = {
	[ShipType.QuZhu] = "airDamageRatioFromShipType_1",
	[ShipType.QingXun] = "airDamageRatioFromShipType_2",
	[ShipType.ZhongXun] = "airDamageRatioFromShipType_3",
	[ShipType.ZhanXun] = "airDamageRatioFromShipType_4",
	[ShipType.ZhanLie] = "airDamageRatioFromShipType_5",
	[ShipType.QingHang] = "airDamageRatioFromShipType_6",
	[ShipType.ZhengHang] = "airDamageRatioFromShipType_7",
	[ShipType.QianTing] = "airDamageRatioFromShipType_8",
	[ShipType.HangXun] = "airDamageRatioFromShipType_9",
	[ShipType.HangZhan] = "airDamageRatioFromShipType_10",
	[ShipType.LeiXun] = "airDamageRatioFromShipType_11",
	[ShipType.WeiXiu] = "airDamageRatioFromShipType_12",
	[ShipType.ZhongPao] = "airDamageRatioFromShipType_13",
	[ShipType.YuLeiTing] = "airDamageRatioFromShipType_14",
	[ShipType.JinBi] = "airDamageRatioFromShipType_15",
	[ShipType.ZiBao] = "airDamageRatioFromShipType_16",
	[ShipType.QianMu] = "airDamageRatioFromShipType_17"
}
ys.Battle.BattleConfig.ANTI_SUB_DAMAGE_ENHANCE_FROM_SHIP_TYPE = {
	[ShipType.QuZhu] = "antiSubDamageRatioFromShipType_1",
	[ShipType.QingXun] = "antiSubDamageRatioFromShipType_2",
	[ShipType.ZhongXun] = "antiSubDamageRatioFromShipType_3",
	[ShipType.ZhanXun] = "antiSubDamageRatioFromShipType_4",
	[ShipType.ZhanLie] = "antiSubDamageRatioFromShipType_5",
	[ShipType.QingHang] = "antiSubDamageRatioFromShipType_6",
	[ShipType.ZhengHang] = "antiSubDamageRatioFromShipType_7",
	[ShipType.QianTing] = "antiSubDamageRatioFromShipType_8",
	[ShipType.HangXun] = "antiSubDamageRatioFromShipType_9",
	[ShipType.HangZhan] = "antiSubDamageRatioFromShipType_10",
	[ShipType.LeiXun] = "antiSubDamageRatioFromShipType_11",
	[ShipType.WeiXiu] = "antiSubDamageRatioFromShipType_12",
	[ShipType.ZhongPao] = "antiSubDamageRatioFromShipType_13",
	[ShipType.YuLeiTing] = "antiSubDamageRatioFromShipType_14",
	[ShipType.JinBi] = "antiSubDamageRatioFromShipType_15",
	[ShipType.ZiBao] = "antiSubDamageRatioFromShipType_16",
	[ShipType.QianMu] = "antiSubDamageRatioFromShipType_17"
}
ys.Battle.BattleConfig.OXY_RAID_BASE_LINE_PVE = -20
ys.Battle.BattleConfig.OXY_RAID_BASE_LINE_PVP = -20
ys.Battle.BattleConfig.SUB_DEFAULT_STAY_AI = 10006
ys.Battle.BattleConfig.SUB_DEFAULT_ENGAGE_AI = 90001
ys.Battle.BattleConfig.SUB_DEFAULT_RETREAT_AI = 90002
ys.Battle.BattleConfig.SONAR_DURATION_K = 0.1
ys.Battle.BattleConfig.SONAR_INTERVAL_K = 0.1
ys.Battle.BattleConfig.SUB_DIVE_IMMUNE_IGNITE_BUFF = 314
ys.Battle.BattleConfig.SUB_FLOAT_DISIMMUNE_IGNITE_BUFF = 315
ys.Battle.BattleConfig.PLAYER_SUB_BUBBLE_FX = "bubble"
ys.Battle.BattleConfig.PLAYER_SUB_BUBBLE_INIT = 200
ys.Battle.BattleConfig.PLAYER_SUB_BUBBLE_INTERVAL = 3
ys.Battle.BattleConfig.MONSTER_SUB_KAMIKAZE_DUAL_K = 50
ys.Battle.BattleConfig.MONSTER_SUB_KAMIKAZE_DUAL_P = 0.15
ys.Battle.BattleConfig.BATTLE_SHADER = {
	SEMI_TRANSPARENT = "assets/artresource/shader/unlit_colored_semitransparent.shader",
	GRID_TRANSPARENT = "assets/artresource/shader/Skeleton-Colored_Additive.shader"
}
ys.Battle.BattleConfig.BATTLE_DODGEM_STAGES = {
	1140101,
	1140102,
	1140103
}
ys.Battle.BattleConfig.BATTLE_DODGEM_PASS_SCORE = 10

return
