local data = _G.data
------------------------------------------------------------------------------------------------------
local entity = util.table.deepcopy(data.raw["car"]["cargo-plane"])
entity["animation"]["layers"] = {
	{
		filename = "__nco-SpaceShuttle__/graphics/se-space-shuttle_spritesheet.png",
		priority = "high",
		width = 224,
		height = 224,
		frame_count = 1,
		direction_count = 36,
		line_length = 6,
		shift = {0, 0},
		max_advance = 1,
		hr_version = {
			filename = "__nco-SpaceShuttle__/graphics/hr-se-space-shuttle_spritesheet.png",
			priority = "high",
			width = 448,
			height = 448,
			scale = 0.5,
			frame_count = 1,
			direction_count = 36,
			line_length = 6,
			shift = {0, 0},
			max_advance = 1,
		}
	}
}
entity.icon = "__nco-SpaceShuttle__/graphics/se-space-shuttle_icon.png"
entity.icon_size = 64
entity.name = "se-space-shuttle"
entity.minable = {mining_time = 1, result = "se-space-shuttle"}
entity.burner.smoke = {}
--
local item = util.table.deepcopy(data.raw["item-with-entity-data"]["cargo-plane"])
item.name = "se-space-shuttle"
item.icon = "__nco-SpaceShuttle__/graphics/se-space-shuttle_icon.png"
item.icon_size = 64
item.place_result = "se-space-shuttle"
--
local recipe = util.table.deepcopy(data.raw["recipe"]["cargo-plane"])
recipe.name = "se-space-shuttle"
recipe.result = "se-space-shuttle"
recipe.ingredients = {
	{"cargo-plane", 1},
	{"se-lifesupport-equipment-1", 5},
	{"se-heat-shielding", 1000}
}
recipe.results = nil
recipe.expensive = nil
recipe.normal = nil
recipe.subgroup = "airplanes"
------------------------------------------------------------------------------------------------------
data:extend({entity})
data:extend({item})
data:extend({recipe})
table.insert(
	data.raw["technology"]["se-space-shuttle"]["effects"],
	{type = "unlock-recipe", recipe = "se-space-shuttle"}
)
