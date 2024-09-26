# Set default data to Aura in Marker
$data modify entity @s data.aura set value $(aura)

# Set Border Radius in separate function so Aura is set to marker's data
function rr_recast:spells/core/functions/aura/set_border_radius

# Border Creation and math
execute as @s at @s run function rr_recast:math/get_circle_angles with entity @s data.aura.display.border
scoreboard players set @s rr.math.X 1
execute as @s at @s run function rr_recast:spells/core/functions/aura/make_border with entity @s data.aura.display.border