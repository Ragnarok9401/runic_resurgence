# For reference:
# Whole spell: {name:"Magic Bolt",reference:magic_bolt,windup:60,cooldown:40,type:combat,subtype:attack,delivery:projectile,element:arcane,cost:15,id:92347,tier:1,projectile:{lifespan:50,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,split:{projectiles:[{direction:[0.0f,0.75f,1.0f],spread:{dir_offset_min:-50,dir_offset_max:50,speed_offset_min:-50,speed_offset_max:50},lifespan:50,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:-0.125f,speed_max:2.5f,speed_min:0.0f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,copy_splits:1}],trigger:{expiration:{}},max_splits:1,projectile_count:4}},minimum_cooldown:5,minimum_windup:5}

# Projectile: {lifespan:50,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,split:{projectiles:[{direction:[0.0f,0.75f,1.0f],spread:{dir_offset_min:-50,dir_offset_max:50,speed_offset_min:-50,speed_offset_max:50},lifespan:50,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:-0.125f,speed_max:2.5f,speed_min:0.0f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,copy_splits:1}],trigger:{expiration:{}},max_splits:1,projectile_count:4}}

# Split: {projectiles:[{direction:[0.0f,0.75f,1.0f],spread:{dir_offset_min:-50,dir_offset_max:50,speed_offset_min:-50,speed_offset_max:50},lifespan:50,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:-0.125f,speed_max:2.5f,speed_min:0.0f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,copy_splits:1}],trigger:{expiration:{}},max_splits:1,projectile_count:4}

# Summon the projectile marked in projectiles[num], where num is equal to the base projectile's split_num score (from iterate_projectile_list function)
$execute on passengers run data modify entity @s data.split set from entity @s data.projectile.split.projectiles[$(num)]
# Set the projectile_id field to num
$execute on passengers run data modify entity @s data.split.projectile_id set value $(num)

# Summon the projectile stored in data.split, function runs AS the Item Display, AT the Item Display
execute as @s at @s run function rr_recast:spells/core/functions/projectile/split_projectile/summon_splits with entity @n[type=marker,tag=rr.projectile,distance=..0.125] data.split
# Reset spell.split_num score for the Marker if it reaches 0 (i.e. all projectiles for projectiles[num] have been spawned)
execute on passengers if score @s rr.spell.split_num matches 0 run scoreboard players reset @s rr.spell.split_num

# Recursively call iterate_projectile_list with this Projectile's Marker to search the rest of the Projectiles list and summon the rest of the projectiles
execute on passengers at @s run function rr_recast:spells/core/functions/projectile/split_projectile/iterate_projectile_list with entity @s data.projectile.split