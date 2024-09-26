# Block Setup
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":12342,"minecraft:custom_data":{RunicTable:true,RunicTableInactive:true}}}},tag=!RunicTableItem] at @s unless entity @e[type=item_display,limit=1,sort=nearest,distance=..9.5,tag=RunicTableDisplay] run tag @s add RunicTableCreate
execute as @e[type=item,distance=..10,tag=RunicTableCreate] at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:gold_nugget,count:1,components:{"minecraft:custom_model_data":12342,"minecraft:custom_data":{RunicTable:true,RunicTableInactive:true}}},item_display:"head",Tags:["RunicTableInactive","RunicTableDisplay","RunicTable","RunicTableSetup"],view_range:10}
execute as @e[type=item,distance=..10,tag=RunicTableCreate] at @s align xyz run setblock ~ ~ ~ barrier

# Rotate Block before making Interactions (interactions will be placed depending on rotation)
execute as @n[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s if entity @p[distance=..10,y_rotation=-45.0..44.999] run tp @s ~ ~ ~ ~180 ~
execute as @n[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s if entity @p[distance=..10,y_rotation=-135.0..-44.999] run tp @s ~ ~ ~ ~90 ~
execute as @n[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s if entity @p[distance=..10,y_rotation=45.0..134.999] run tp @s ~ ~ ~ ~270 ~

# Interaction Setup
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^-0.25 ^0.4375 ^-0.25 {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot1"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^ ^0.4375 ^-0.25 {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot2"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^0.25 ^0.4375 ^-0.25 {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot3"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^-0.25 ^0.4375 ^ {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot4"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^ ^0.4375 ^ {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot5"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^0.25 ^0.4375 ^ {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot6"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^-0.25 ^0.4375 ^0.25 {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot7"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^ ^0.4375 ^0.25 {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot8"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^0.25 ^0.4375 ^0.25 {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot9"]}
execute as @e[type=item_display,distance=..10,tag=RunicTable,tag=RunicTableSetup] at @s run summon interaction ^ ^-0.3125 ^0.3125 {width:0.5,height:0.5,Tags:["RunicTable","RunicTableSlot","RunicTableSlot10"]}

kill @e[type=item,distance=..10,tag=RunicTableCreate]
tag @e[tag=RunicTableSetup] remove RunicTableSetup