local data = _G.data
local mods = _G.mods
------------------------------------------------------------------------------------------------------
local function has_value (tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end
	return false
end
--===================================================================================================
-- If we are using Aircrafts and SE give us space shuttles
--===================================================================================================
if mods["Aircraft"] then
	-----------------------------------------------------------------------------------------------------
	if mods["space-exploration"] then
		local entity = util.table.deepcopy(data.raw["car"]["cargo-plane"])
		entity["animation"]["filename"] = "__nco-SpaceShuttle__/graphics/se-space-shuttle_spritesheet_shadowless.png"
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
		recipe.expensive.result = "se-space-shuttle"
		recipe.expensive.ingredients = recipe.ingredients
		data:extend({entity})
		data:extend({item})
		data:extend({recipe})
		table.insert(data.raw["technology"]["cargo-planes"]["effects"], {type = "unlock-recipe",recipe = "se-space-shuttle"})
	end
	-----------------------------------------------------------------------------------------------------
	local planes = {"gunship","cargo-plane","jet","flying-fortress","cargo-plane-green","se-space-shuttle"}
	for _ ,rec in pairs(data.raw["recipe"]) do
		if has_value(planes, rec.name) then
			rec.subgroup = "airplanes"
		end
	end
end
