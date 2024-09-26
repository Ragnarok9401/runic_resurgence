# Tick up scoreboard for aura
scoreboard players add @s rr.system.Timer 1

# Display particles at the aura
$execute as @s[scores={rr.system.Timer=..$(lifespan)}] at @s run particle reverse_portal ~ ~ ~ 0.1 0.1 0.1 0.01 2 normal @a[distance=..30,tag=!rr.spell.noparticles]

# Display border particles
$execute as @s[scores={rr.system.Timer=..$(lifespan)}] at @s run execute as @e[type=marker,limit=..16,distance=..0.125,tag=rr.border.$(reference)] at @s run function rr_recast:spells/core/functions/aura/border_particles with entity @s data.aura.display.border

$tag @s[scores={rr.system.Timer=$(lifespan)..}] add rr.aura.paladin_pylon.kill

execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run particle witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run playsound entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0
execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run function rr_recast:spells/core/functions/apply_damage_from_player with entity @n[type=marker,tag=rr.projectile.magic_bolt,distance=..0.125] data.projectile

execute as @s[tag=rr.aura.paladin_pylon.kill] on passengers run kill @s
$execute as @s[tag=rr.aura.paladin_pylon.kill] at @s run kill @e[type=marker,tag=rr.border.$(reference),distance=..0.125]
kill @s[tag=rr.aura.paladin_pylon.kill]