# Block Setup
execute as @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":12340,"minecraft:custom_data":{RunicCauldron:true}}}},tag=!RunicCauldronItem] at @s unless entity @e[type=item_display,limit=1,sort=nearest,distance=..9.5,tag=RunicCauldronDisplay] run tag @s add RunicCauldronCreate
execute as @e[type=item,distance=..10,tag=RunicCauldronCreate] at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:gold_nugget,count:1,components:{"minecraft:custom_model_data":12340,"minecraft:custom_data":{RunicCauldron:true,RunicCauldronInactive:true}}},item_display:"head",Tags:["RunicCauldronInactive","RunicCauldronDisplay","RunicCauldron","RunicCauldronSetup"],view_range:10}
execute as @e[type=item,distance=..10,tag=RunicCauldronCreate] at @s align xyz run setblock ~ ~ ~ barrier

# Rotate Block before making Interactions (interactions will be placed depending on rotation)
execute as @n[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s if entity @p[distance=..10,y_rotation=-45.0..44.999] run tp @s ~ ~ ~ ~180 ~
execute as @n[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s if entity @p[distance=..10,y_rotation=-135.0..-44.999] run tp @s ~ ~ ~ ~90 ~
execute as @n[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s if entity @p[distance=..10,y_rotation=45.0..134.999] run tp @s ~ ~ ~ ~270 ~

# Interaction Setup
execute as @e[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s run summon interaction ^ ^0.4375 ^-0.25 {width:0.25,height:0.125,Tags:["RunicCauldron","RunicCauldronSlot","RunicCauldronSlot1"]}
execute as @e[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s run summon interaction ^-0.25 ^0.4375 ^ {width:0.25,height:0.125,Tags:["RunicCauldron","RunicCauldronSlot","RunicCauldronSlot2"]}
execute as @e[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s run summon interaction ^ ^0.4375 ^ {width:0.25,height:0.125,Tags:["RunicCauldron","RunicCauldronSlot","RunicCauldronSlot3"]}
execute as @e[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s run summon interaction ^0.25 ^0.4375 ^ {width:0.25,height:0.125,Tags:["RunicCauldron","RunicCauldronSlot","RunicCauldronSlot4"]}
execute as @e[type=item_display,distance=..10,tag=RunicCauldron,tag=RunicCauldronSetup] at @s run summon interaction ^ ^0.4375 ^0.25 {width:0.25,height:0.125,Tags:["RunicCauldron","RunicCauldronSlot","RunicCauldronSlot5"]}

kill @e[type=item,distance=..10,tag=RunicCauldronCreate]
tag @e[tag=RunicCauldronSetup] remove RunicCauldronSetup