# Runs with:
# {reference:magic_bolt,vector:{facing_x:0.0f,facing_y:0.75f,facing_z:1.0f,spawn_offset_x:0.0f,spawn_offset_y:1.0f,spawn_offset_z:0.0f,facing_offset_min:-50,facing_offset_max:50,speed_offset_min:-50,speed_offset_max:50},lifespan:50,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:purple_stained_glass",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},copy_splits:1}


# Set initial split_num score if needed, set split_copy score to number of splits that will happen for this projectile
execute on passengers unless score @s rr.spell.split_num matches 0.. store result score @s rr.spell.split_num run data get entity @s data.projectile.split.projectile_count
$execute on passengers run scoreboard players set @s rr.spell.split_copy $(copy_splits)
$scoreboard players set @s rr.spell.split_copy $(copy_splits)

# Summon Item Display/Marker Stack, set initial tags
$summon item_display ~ ~ ~ $(item_display)
$execute as @e[tag=rr.projectile.$(reference),tag=!rr.projectile.$(reference).split,tag=!rr.setup.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] at @s run tag @s add rr.setup.$(reference).split

$execute as @s at @s run function rr_recast:spells/core/functions/projectile/split_projectile/set_projectile_data with entity @n[type=marker,tag=rr.setup.$(reference).split] data.split

$execute as @s[scores={rr.spell.split_copy=1..}] at @s run function rr_recast:spells/core/functions/projectile/split_projectile/summon_splits with entity @n[type=marker,tag=rr.projectile.$(reference),tag=!rr.setup.$(reference).split] data.split