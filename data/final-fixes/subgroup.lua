local data = _G.data
------------------------------------------------------------------------------------------------------
local function has_value(tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end
	return false
end
--===================================================================================================
local planes = {"gunship", "cargo-plane", "jet", "flying-fortress", "cargo-plane-green", "se-space-shuttle"}
--
for _, itm in pairs(data.raw["item-with-entity-data"]) do
	if has_value(planes, itm.name) then
		itm.subgroup = "airplanes"
	end
end
--
for _, rec in pairs(data.raw["recipe"]) do
	if has_value(planes, rec.name) then
		rec.subgroup = "airplanes"
	end
end
