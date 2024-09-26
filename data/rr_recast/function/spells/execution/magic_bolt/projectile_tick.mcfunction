# Tick up scoreboard for projectile
scoreboard players add @s rr.system.Timer 1

# Display particles at the projectile
$execute as @s[scores={rr.system.Timer=..$(lifespan)}] at @s run particle $(trail)

# Move projectile
$execute as @s[scores={rr.system.Timer=..$(lifespan)},tag=!rr.projectile.magic_bolt.split] at @s run tp @s ^ ^ ^$(speed)
$execute as @s[scores={rr.system.Timer=..$(lifespan)},tag=rr.projectile.magic_bolt.split] at @s run function rr_recast:spells/core/functions/tp_split with entity @n[type=marker,distance=..0.125,tag=rr.projectile.magic_bolt.split] data.projectile
execute as @s at @s on passengers if data entity @s data.projectile.acceleration if data entity @s data.projectile.speed_max if data entity @s data.projectile.speed_min run function rr_recast:spells/core/functions/apply_acceleration with entity @s data.projectile
execute as @s at @s on passengers if data entity @s data.projectile.speed_final if data entity @s data.projectile.acceleration if data entity @s data.projectile.speed_max if data entity @s data.projectile.speed_min run function rr_recast:spells/core/functions/apply_acceleration_final with entity @s data.projectile

execute as @s at @s positioned ^0.1 ^0.1 ^0.1 unless block ~ ~ ~ #rr_recast:spell_passable run tag @s add rr.projectile.magic_bolt.kill
execute as @s at @s positioned ^-0.1 ^0.1 ^0.1 unless block ~ ~ ~ #rr_recast:spell_passable run tag @s add rr.projectile.magic_bolt.kill
execute as @s at @s positioned ^0.1 ^0.1 ^-0.1 unless block ~ ~ ~ #rr_recast:spell_passable run tag @s add rr.projectile.magic_bolt.kill
execute as @s at @s positioned ^-0.1 ^0.1 ^-0.1 unless block ~ ~ ~ #rr_recast:spell_passable run tag @s add rr.projectile.magic_bolt.kill

$execute as @s[scores={rr.system.Timer=4..}] at @s if entity @n[type=!player,type=!#rr_recast:spell_ignore,tag=!rr.spell.ignored,distance=..$(entity_trigger_range)] run tag @s add rr.projectile.magic_bolt.kill
$execute as @s[scores={rr.system.Timer=4..}] at @s if entity @n[type=player,tag=!rr.spell.ignored,distance=..$(entity_trigger_range)] unless score @p[tag=!rr.spell.ignored,distance=..2] rr.system.playerUUID1 = @s rr.system.matchUUID1 run tag @s add rr.projectile.magic_bolt.kill
$execute as @s[scores={rr.system.Timer=4..}] at @s if entity @n[type=player,tag=!rr.spell.ignored,distance=..$(entity_trigger_range)] unless score @p[tag=!rr.spell.ignored,distance=..2] rr.system.playerUUID2 = @s rr.system.matchUUID2 run tag @s add rr.projectile.magic_bolt.kill
$execute as @s[scores={rr.system.Timer=4..}] at @s if entity @n[type=player,tag=!rr.spell.ignored,distance=..$(entity_trigger_range)] unless score @p[tag=!rr.spell.ignored,distance=..2] rr.system.playerUUID3 = @s rr.system.matchUUID3 run tag @s add rr.projectile.magic_bolt.kill
$execute as @s[scores={rr.system.Timer=4..}] at @s if entity @n[type=player,tag=!rr.spell.ignored,distance=..$(entity_trigger_range)] unless score @p[tag=!rr.spell.ignored,distance=..2] rr.system.playerUUID4 = @s rr.system.matchUUID4 run tag @s add rr.projectile.magic_bolt.kill

$tag @s[scores={rr.system.Timer=$(lifespan)..}] add rr.projectile.magic_bolt.kill


# execute as @s[tag=rr.projectile.magic_bolt.kill] on passengers if data entity @s data.projectile.split.trigger.expiration run function rr_recast:spells/core/functions/projectile/split_projectile/iterate_projectile_list with entity @s data.projectile.split

$execute as @s[tag=rr.projectile.magic_bolt.kill] at @s run particle $(explosion_particle_1)
$execute as @s[tag=rr.projectile.magic_bolt.kill] at @s run particle $(explosion_particle_2)
$execute as @s[tag=rr.projectile.magic_bolt.kill] at @s run playsound $(explosion_sound)
execute as @s[tag=rr.projectile.magic_bolt.kill] at @s run function rr_recast:spells/core/functions/apply_damage_from_player with entity @n[type=marker,tag=rr.projectile.magic_bolt,distance=..0.125] data.projectile

execute as @s[tag=rr.projectile.magic_bolt.kill] on passengers run kill @s
kill @s[tag=rr.projectile.magic_bolt.kill]