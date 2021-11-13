local function has_value(tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end
--
local function tech_has_ingredient(tech, prerequisteName)
    for _, item in pairs(tech.unit.ingredients) do
        if item[1] == prerequisteName then
            return true
        end
    end
    return false
end
--
if mods["Krastorio2"] and not mods["Krastorio2Assets"] then
    local tech = data.raw["technology"]["se-space-shuttle"]
    --
    if not has_value(tech.prerequisites, "se-astronomic-science-pack-1") then
        table.insert(tech.prerequisites, "se-astronomic-science-pack-1")
    end
    --
    if not tech_has_ingredient(tech, "se-astronomic-science-pack-1") then
        table.insert(tech.unit.ingredients, {"se-astronomic-science-pack-1", 1})
    end
end
