local settings = {}
local map_selector =  {
	type = "string-setting",
	name = "comfyfactorio-map-selection",
	setting_type = "runtime-global",
	default_value = 'no map',
	allowed_values = {'no map'},
	order = "aa"
}

local maps = require('maps')
for map in pairs(maps) do
	table.insert(map_selector.allowed_values, map)
end
table.insert(settings, map_selector)
data:extend(settings)