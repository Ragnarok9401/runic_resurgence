# Set tags
tag @e[type=item_display,limit=1,sort=nearest,tag=RunicTableDisplay,tag=!RunicTableActive,distance=..0.5] add RunicTableActive
tag @e[type=item_display,limit=1,sort=nearest,tag=RunicTableDisplay,tag=RunicTableActive,tag=RunicTableInactive,distance=..0.5] remove RunicTableInactive

# Effects on click
playsound block.respawn_anchor.charge block @a[distance=..20] ~ ~ ~ 0.6 1.5 0
playsound block.enchantment_table.use block @a[distance=..20] ~ ~ ~ 0.85 1.5 0
execute at @n[type=item_display,limit=1,sort=nearest,tag=RunicTableActive,distance=..0.5] run particle sonic_boom ^ ^ ^0.55 0 0 0 0 1 force @a[distance=..20]

# Change Item Display to show Active model
execute at @n[type=item_display,limit=1,sort=nearest,tag=RunicTableActive,distance=..0.5] run data modify entity @n[type=item_display,limit=1,sort=nearest,tag=RunicTableActive,distance=..0.01] item.components."minecraft:custom_model_data" set value 12341

# Add time to Table's Charge (2 minutes per Chunk)
scoreboard players add @n[type=item_display,limit=1,sort=nearest,tag=RunicTableActive,distance=..0.5] rr.system.CraftCharge 120

# Clear one Meteorite Chunk from player
execute on target run clear @s[gamemode=!creative] gold_nugget[custom_model_data=12344,custom_data={RunicHavenMeteorChunk:true}] 1

# Make new Interaction to reset interaction data
summon interaction ~ ~ ~ {width:0.5,height:0.5,Tags:["RunicTable","RunicTableSlot","RunicTableSlot10"]}
kill @s