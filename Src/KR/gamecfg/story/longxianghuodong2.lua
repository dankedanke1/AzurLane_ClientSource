return {
	fadeOut = 1.5,
	mode = 2,
	fadeType = 1,
	once = true,
	id = "LONGXIANGHUODONG2",
	fadein = 1.5,
	scripts = {
		{
			actor = 107031,
			nameColor = "#a9f548",
			side = 2,
			dir = 1,
			say = "바베큐는 조금 뒤로 미뤄야 겠네…적기 발견!",
			bgm = "level",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107061,
			nameColor = "#a9f548",
			side = 0,
			dir = -1,
			say = "괜찮아, 바베큐는 승리 기념으로 먹으면 돼. 방향은?",
			paintingFadeOut = {
				time = 0.5,
				side = 1
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107031,
			side = 1,
			nameColor = "#a9f548",
			dir = 1,
			say = "…북쪽이야!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107061,
			side = 0,
			nameColor = "#a9f548",
			dir = -1,
			say = "그러면……",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107031,
			side = 1,
			nameColor = "#a9f548",
			dir = 1,
			say = "잠깐 기다려……경항공모함 한 척뿐? 저건…류조?",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107031,
			side = 1,
			nameColor = "#a9f548",
			dir = 1,
			say = "방향은 맞아. 하지만 정보대로라면 쇼카쿠와 즈이카쿠도 있어야 하는데 말이지……",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107061,
			side = 0,
			nameColor = "#a9f548",
			dir = -1,
			say = "상황은 파악했다. 포틀랜드, 애틀란타와 미니애폴리스를 데리고 정찰해줄 수 있을까?",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 103061,
			side = 2,
			nameColor = "#a9f548",
			dir = 1,
			say = "인디는 왜 알류샨으로 간 거람……인디가 보고 싶어~ 후에에에~",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			},
			action = {
				{
					y = 0,
					type = "shake",
					delay = 0,
					dur = 0.4,
					x = 15,
					number = 2
				}
			}
		},
		{
			actor = 103061,
			side = 2,
			nameColor = "#a9f548",
			dir = 1,
			say = "아! 아, 알았어!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			},
			action = {
				{
					y = 30,
					type = "shake",
					delay = 0,
					dur = 0.15,
					x = 0,
					number = 2
				}
			}
		},
		{
			actor = 102061,
			side = 2,
			nameColor = "#a9f548",
			dir = 1,
			say = "응! 우리한테 맡겨!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 103131,
			side = 2,
			nameColor = "#a9f548",
			dir = 1,
			say = "오케이!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			side = 2,
			dir = -1,
			actor = 107061,
			nameColor = "#a9f548",
			say = "포틀랜드는 여전하구나……",
			flashout = {
				dur = 0.5,
				black = true,
				alpha = {
					0,
					1
				}
			},
			flashin = {
				delay = 0.5,
				dur = 0.5,
				black = true,
				alpha = {
					1,
					0
				}
			},
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107031,
			side = 2,
			nameColor = "#a9f548",
			dir = 1,
			say = "나쁠 거 없잖아? 나도 언니가 늘 저래 주면 기쁠지도! 장난을 못 치게 되는 건 조금 별로지만 말야!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107061,
			side = 2,
			nameColor = "#a9f548",
			dir = -1,
			say = "나는……저런 게 어떤 느낌인지 잘 상상이 안 가서.",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		},
		{
			actor = 107061,
			side = 2,
			nameColor = "#a9f548",
			dir = -1,
			say = "아무튼, 상대가 나타난 이상 요격할 수밖에 없지. 전투준비다!",
			typewriter = {
				speed = 0.05,
				speedUp = 0.01
			},
			painting = {
				alpha = 0.3,
				time = 1
			}
		}
	}
}
