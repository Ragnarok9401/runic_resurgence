$execute as @e[type=marker,distance=..0.125,tag=rr.setup.$(reference).split,tag=!rr.projectile.$(reference).split] at @s run data modify entity @s data.projectile set from entity @n[type=marker,tag=!rr.setup.$(reference).split,tag=rr.projectile.$(reference),distance=..0.125] data.split


$execute if score @s rr.spell.split_copy matches 1.. run execute as @e[type=marker,distance=..0.125,tag=rr.setup.$(reference).split] at @s run data modify entity @s data.projectile set from entity @n[type=marker,tag=!rr.setup.$(reference).split] data.projectile

$execute if score @s rr.spell.split_copy matches 1.. run execute as @e[type=marker,distance=..0.125,tag=rr.setup.$(reference).split,tag=!rr.projectile.$(reference).split] at @s store result entity @s data.projectile.split.projectiles[$(projectile_id)].copy_splits int 0.9999 run scoreboard players get @n[type=marker,tag=!rr.setup.$(reference).split,tag=rr.projectile.$(reference)] rr.spell.split_copy

tellraw @p {"score":{"name":"@s","objective":"rr.spell.split_copy"}}

$tag @s add rr.projectile.$(reference).split.set

$execute as @s at @s if entity @s[scores={rr.spell.split_copy=..0}] run kill @e[tag=rr.projectile.$(reference),distance=..0.125]