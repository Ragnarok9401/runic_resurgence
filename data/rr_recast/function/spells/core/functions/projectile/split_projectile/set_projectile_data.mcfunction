# Set UUID Matches
$execute as @e[tag=rr.projectile.$(reference),tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] run scoreboard players operation @s rr.system.matchUUID1 = @n[type=item_display,tag=rr.projectile.$(reference),tag=!rr.setup.$(reference).split] rr.system.matchUUID1
$execute as @e[tag=rr.projectile.$(reference),tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] run scoreboard players operation @s rr.system.matchUUID2 = @n[type=item_display,tag=rr.projectile.$(reference),tag=!rr.setup.$(reference).split] rr.system.matchUUID2
$execute as @e[tag=rr.projectile.$(reference),tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] run scoreboard players operation @s rr.system.matchUUID3 = @n[type=item_display,tag=rr.projectile.$(reference),tag=!rr.setup.$(reference).split] rr.system.matchUUID3
$execute as @e[tag=rr.projectile.$(reference),tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] run scoreboard players operation @s rr.system.matchUUID4 = @n[type=item_display,tag=rr.projectile.$(reference),tag=!rr.setup.$(reference).split] rr.system.matchUUID4

$execute on passengers at @s run function rr_recast:spells/core/functions/projectile/split_projectile/set_recursion with entity @n[type=marker,tag=!rr.setup.$(reference).split,distance=..0.125] data.split

$execute as @n[type=marker,tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference).split] at @s run data modify entity @s data.projectile.vector set from entity @n[type=marker,distance=..0.125,tag=!rr.setup.$(reference).split] data.split.vector
$execute as @e[type=marker,tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference).split,distance=..0.125,tag=!rr.projectile.vector_set] at @s run function rr_recast:spells/core/functions/projectile/split_projectile/set_vector with entity @s data.projectile.vector

# execute on passengers if entity @s[tag=rr.split.end] run data remove entity @s data.projectile.split
# execute on passengers if entity @s[tag=rr.split.end] run data remove entity @s data.split

$execute as @e[tag=rr.projectile.$(reference),tag=!rr.projectile.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] run tag @s add rr.projectile.$(reference).split
$execute as @e[tag=rr.projectile.$(reference),tag=rr.projectile.$(reference).split,tag=rr.setup.$(reference),distance=..0.125] run tag @s remove rr.setup.$(reference).split

scoreboard players remove @s rr.spell.split_copy 1

execute on passengers run scoreboard players remove @s rr.spell.split_num 1
execute on passengers if score @s rr.spell.split_num matches 0 run return 1