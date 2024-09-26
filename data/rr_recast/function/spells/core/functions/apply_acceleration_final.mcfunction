# Apply an Acceleration to the projectile's Speed
execute store result score @s rr.math.X run data get entity @s data.projectile.speed_min 10000
execute store result score @s rr.math.Y run data get entity @s data.projectile.speed_max 10000

execute unless score @s rr.math.X <= @s rr.math.Y run return fail

execute store result score @s rr.math.B run data get entity @s data.projectile.acceleration 10000
execute store result score @s rr.math.A run data get entity @s data.projectile.speed_final 10000

scoreboard players operation @s rr.math.A += @s rr.math.B

execute if score @s rr.math.A < @s rr.math.X run scoreboard players operation @s rr.math.A = @s rr.math.X
execute if score @s rr.math.A > @s rr.math.Y run scoreboard players operation @s rr.math.A = @s rr.math.Y
execute store result entity @s data.projectile.speed_final float 0.0001 run scoreboard players get @s rr.math.A