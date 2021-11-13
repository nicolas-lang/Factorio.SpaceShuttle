data:extend(
	{
		{
			type = "technology",
			name = "se-space-shuttle",
			mod = "nco-SpaceShuttle",
			icon = "__nco-SpaceShuttle__/graphics/se-space-shuttle-tech_icon.png",
			icon_size = 128,
			effects = {},
			prerequisites = {
				"cargo-planes",
				"se-astronomic-science-pack-1"
			},
			order = "a-e-d",
			unit = {
				count = 100,
				time = 60,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"se-rocket-science-pack", 1},
					{"se-astronomic-science-pack-1", 1}
				}
			}
		}
	}
)
