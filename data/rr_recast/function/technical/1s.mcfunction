execute as @a at @s run kill @e[tag=RunicMeteorite,scores={rr.system.Timer=300..},distance=..64]

scoreboard players add @e[type=item_display,tag=RunicMeteorite,limit=1] rr.system.Timer 1
scoreboard players add @e[type=interaction,tag=RunicMeteorite,limit=1] rr.system.Timer 1

# All players regenerate mana
execute as @a at @s run function rr_recast:technical/mana/regenerate
scoreboard players remove @a[scores={rr.system.ActionbarChange=1..}] rr.system.ActionbarChange 1

# Make Runic Crafting Table
execute as @a at @s if entity @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":12342,"minecraft:custom_data":{RunicTable:true,RunicTableInactive:true}}}}] run function rr_recast:runic_table/make_runic_table
# Make Cooking Pot
execute as @a at @s if entity @e[type=item,distance=..10,nbt={OnGround:true,Item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:custom_model_data":12342,"minecraft:custom_data":{RunicCauldron:true}}}}] run function rr_recast:runic_cauldron/make_runic_cauldron

# Count down Runic Table's craft timer and reset its state once its timer is out
execute as @a at @s run kill @e[type=text_display,distance=..14,tag=RunicTableTextA]
execute as @e[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,scores={rr.system.CraftCharge=1..}] at @s run scoreboard players remove @s rr.system.CraftCharge 1
execute as @a at @s run execute as @n[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,scores={rr.system.CraftCharge=1..},distance=..10] at @s run function rr_recast:math/time/get_time_from_score {"score":"rr.system.CraftCharge"}
execute as @a at @s run execute as @n[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,scores={rr.system.CraftCharge=1..}] at @s run function rr_recast:runic_table/interface/display_charge_time
execute as @e[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,scores={rr.system.CraftCharge=..0}] at @s run particle enchanted_hit ^ ^0.5 ^ 0.33 0 0.33 0.125 15 force @a[distance=..20]
execute as @e[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,scores={rr.system.CraftCharge=..0}] at @s run playsound block.beacon.deactivate block @a[distance=..20] ~ ~ ~ 0.6 1.5 0
execute as @e[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,scores={rr.system.CraftCharge=..0}] at @s run tag @s remove RunicTableActive
execute as @e[type=item_display,tag=RunicTableDisplay,tag=!RunicTableActive,tag=!RunicTableInactive,scores={rr.system.CraftCharge=..0}] at @s run data modify entity @s item.components."minecraft:custom_model_data" set value 12342
execute as @e[type=item_display,tag=RunicTableDisplay,tag=!RunicTableActive,tag=!RunicTableInactive,scores={rr.system.CraftCharge=..0}] at @s run tag @s add RunicTableInactive


# ShowUpdates trigger
execute as @a[scores={rr.trigger.show_updates=1..}] at @s run scoreboard players set @s rr.system.UpdateNumber 0
execute as @a[scores={rr.trigger.show_updates=1..}] at @s run scoreboard players enable @s rr.trigger.show_updates
execute as @a[scores={rr.trigger.show_updates=1..}] at @s run scoreboard players reset @s rr.trigger.show_updates
execute as @a if score @s rr.system.UpdateNumber < $global rr.system.UpdateNumber run function rr_recast:technical/display_updates


# Showcase Item Stats to either triggerer or to all players
execute as @a[scores={rr.trigger.item_stats=1..}] at @s run function rr_recast:technical/triggers/item_stats {"show_type":display}
execute as @a[scores={rr.trigger.share_item_stats=1..}] at @s run function rr_recast:technical/triggers/item_stats {"show_type":showoff}


schedule function rr_recast:technical/1s 1s replace