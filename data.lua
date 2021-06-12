local data = _G.data
------------------------------------------------------------------------------------------------------
if not data.raw["item-subgroup"]["airplanes"] then
	data:extend({
		{
			type = "item-subgroup",
			name = "airplanes",
			group = "logistics",
			order = "zz",
		},
	})
end