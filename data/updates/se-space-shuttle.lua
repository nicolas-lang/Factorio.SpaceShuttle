local data = _G.data
local mods = _G.mods
--===================================================================================================
-- If we are using Aircrafts and SE give us space shuttles
--===================================================================================================
if mods["Aircraft"] then
	-----------------------------------------------------------------------------------------------------
	if mods["space-exploration"] then
		local entity = util.table.deepcopy(data.raw["car"]["cargo-plane"])
		entity["animation"]["filename"] = "__nco-SpaceShuttle__/graphics/se-space-shuttle_spritesheet_shadowless.png"
		entity.icon = "__nco-SpaceShuttle__/graphics/se-space-shuttle_icon.png"
		entity.name = "se-space-shuttle"
		entity.minable = {mining_time = 1, result = "se-space-shuttle"}
		local item = util.table.deepcopy(data.raw["item-with-entity-data"]["cargo-plane"])
		item.name = "se-space-shuttle"
		item.icon = "__nco-SpaceShuttle__/graphics/se-space-shuttle_icon.png"
		item.place_result = "se-space-shuttle"
		local recipe = util.table.deepcopy(data.raw["recipe"]["cargo-plane"])
		recipe.name = "se-space-shuttle"
		recipe.result = "se-space-shuttle"
		recipe.ingredients = {{"cargo-plane",1},{"se-lifesupport-equipment-1",5},{"se-heat-shielding",1000}}
		recipe.results = nil
		recipe.expensive = nil
		recipe.normal = nil
		recipe.subgroup = "airplanes"
		data:extend({entity})
		data:extend({item})
		data:extend({recipe})
		table.insert(data.raw["technology"]["cargo-planes"]["effects"], {type = "unlock-recipe",recipe = "se-space-shuttle"})
	end
	-----------------------------------------------------------------------------------------------------
end
