# Projectile Acceleration

# Get Base Projectile Stats
execute store result score @s rr.math.A run data get entity @s data.projectile.acceleration 10000
execute store result score @s rr.math.B run data get entity @s data.projectile.speed_min 2000
execute store result score @s rr.math.C run data get entity @s data.projectile.speed_max 2000

## Held Item Acceleration, Min Speed, Max Speed Boost
scoreboard players set @s rr.math.Y 0
execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.projectile.acceleration".change 10000
scoreboard players operation @s rr.math.A += @s rr.math.Y
execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.projectile.acceleration".add_minimum 100
scoreboard players operation @s rr.math.B += @s rr.math.Y
execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.projectile.acceleration".add_maximum 100
scoreboard players operation @s rr.math.C += @s rr.math.Y

# Apply found Acceleration, Min Speed, and Max Speed Boosts to projectile
execute store result entity @s data.projectile.acceleration float 0.0001 run scoreboard players get @s rr.math.A
execute store result entity @s data.projectile.speed_min float 0.0005 run scoreboard players get @s rr.math.B
execute store result entity @s data.projectile.speed_max float 0.0005 run scoreboard players get @s rr.math.C