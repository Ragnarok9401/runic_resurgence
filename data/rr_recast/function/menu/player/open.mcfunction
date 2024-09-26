# Summon Item Display (instant teleportation), Chest Minecart (actual UI page), and Marker (data storage), refered to as "Minecart Stack"
summon item_display ~ ~1.25 ~ {view_range:0f,width:0f,height:0f,teleport_duration:0,Tags:["RunicUI","RunicUISetup"],Passengers:[{id:"minecraft:chest_minecart",DisplayState:{Name:"minecraft:air"},Invulnerable:1b,CustomDisplayTile:1b,Tags:["RunicUI","RunicUISetup","invisible_minecart"],CustomNameVisible:0b,Passengers:[{id:"minecraft:marker",Tags:["RunicUI","RunicUISetup"]}]}]}

# Assign rr.ui.id score that is unique to player and Minecart Stack
scoreboard players add $global rr.ui.id 1
scoreboard players operation @s rr.ui.id = $global rr.ui.id
scoreboard players operation @e[tag=RunicUISetup] rr.ui.id = $global rr.ui.id

# Open initial page
scoreboard players set $ui_type rr.ui 1
execute as @e[type=chest_minecart,tag=RunicUISetup] run function rr_recast:menu/gui/compendium/home/open
execute as @e[type=chest_minecart,tag=RunicUISetup] run function rr_recast:menu/minecart/load_page

tag @e remove RunicUISetup