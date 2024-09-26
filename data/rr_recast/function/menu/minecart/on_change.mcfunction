# Future-proofing, specifies is a chest minecart
scoreboard players set $ui_type rr.ui 1

# Detect player putting items into UI
data modify storage rr.ui in set from storage rr.ui current
data remove storage rr.ui in[{components:{"minecraft:custom_data":{RunicMenuItem:{}}}}]
execute at @s if data storage rr.ui in[0] run return run function rr_recast:menu/gui/on_input

# Using insert trick to overwrite slots which have been changed
data modify storage rr.ui temp set from storage rr.ui previous
data modify storage rr.ui temp[].components."minecraft:custom_data" merge value {prev:1b}
data modify entity @s Items insert 0 from storage rr.ui temp[]
data remove storage rr.ui temp
data modify storage rr.ui temp append from entity @s Items[{components:{"minecraft:custom_data":{prev:1b}}}]
data remove storage rr.ui in
data modify storage rr.ui in append from storage rr.ui temp[{components:{"minecraft:custom_data":{RunicMenuItem:{}}}}]

# Bandage to prevent blank spots from clicking
execute if data storage rr.ui in[0].components."minecraft:custom_data".RunicMenuItem.empty run data remove storage rr.ui in[0]
execute at @s if data storage rr.ui in[0] unless data storage rr.ui in[1] run return run function rr_recast:menu/gui/on_click

# Update Current Page and History if nothing happened
function rr_recast:menu/gui/refresh