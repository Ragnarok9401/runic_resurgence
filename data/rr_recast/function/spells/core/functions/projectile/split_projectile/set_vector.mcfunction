# Runs with:
# {facing_x:0.0f,facing_y:0.75f,facing_z:1.0f,spawn_offset_x:0.0f,spawn_offset_y:1.0f,spawn_offset_z:0.0f,facing_offset_min:-50,facing_offset_max:50,speed_offset_min:-50,speed_offset_max:50}

# Get Random Facing Offset for when teleported
$execute as @s store result score @s rr.math.A run random value $(facing_offset_min)..$(facing_offset_max)
$execute as @s store result score @s rr.math.B run random value $(facing_offset_min)..$(facing_offset_max)
$execute as @s store result score @s rr.math.C run random value $(facing_offset_min)..$(facing_offset_max)

execute store result score @s rr.math.X run data get entity @s data.projectile.vector.facing_x 1000
execute store result score @s rr.math.Y run data get entity @s data.projectile.vector.facing_y 1000
execute store result score @s rr.math.Z run data get entity @s data.projectile.vector.facing_z 1000

scoreboard players operation @s rr.math.X += @s rr.math.A
scoreboard players operation @s rr.math.Y += @s rr.math.B
scoreboard players operation @s rr.math.Z += @s rr.math.C

execute store result entity @s data.projectile.vector.facing_x_final float 0.001 run scoreboard players get @s rr.math.X
execute store result entity @s data.projectile.vector.facing_y_final float 0.001 run scoreboard players get @s rr.math.Y
execute store result entity @s data.projectile.vector.facing_z_final float 0.001 run scoreboard players get @s rr.math.Z

# Get Random Speed Offset for when flying
$execute as @s store result score @s rr.math.A run random value $(speed_offset_min)..$(speed_offset_max)

execute store result score @s rr.math.X run data get entity @s data.projectile.speed 2000

scoreboard players operation @s rr.math.X += @s rr.math.A

execute store result entity @s data.projectile.speed_final float 0.0005 run scoreboard players get @s rr.math.X

tag @s add rr.projectile.vector_set

# Finally, initiate teleport
$execute on vehicle at @s anchored eyes positioned ^ ^ ^ run teleport @s @n[type=item_display,tag=rr.projectile.$(reference),distance=..0.125]
execute as @s at @s run function rr_recast:spells/core/functions/projectile/split_projectile/tp_with_vector with entity @s data.projectile.vector