# Projectile Speed
execute store result score @s rr.math.X run data get entity @s data.projectile.speed 2000
## Held Item Element Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(element).speed_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Offhand Item Element Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:-106b}].components."minecraft:custom_data"."rr.spell.$(element).speed_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Helmet Item Element Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:103b}].components."minecraft:custom_data"."rr.spell.$(element).speed_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Chestplate Item Element Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:102b}].components."minecraft:custom_data"."rr.spell.$(element).speed_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Leggings Item Element Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:101b}].components."minecraft:custom_data"."rr.spell.$(element).speed_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Boots Item Element Speed Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:100b}].components."minecraft:custom_data"."rr.spell.$(element).speed_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

scoreboard players set @s[scores={rr.math.X=..-1}] rr.math.X 0
execute store result entity @s data.projectile.speed float 0.0005 run scoreboard players get @s rr.math.X