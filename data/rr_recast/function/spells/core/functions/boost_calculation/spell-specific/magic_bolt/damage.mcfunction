# Projectile Damage
execute store result score @s rr.math.X run data get entity @s data.projectile.damage 100
## Held Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(reference).damage_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Offhand Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:-106b}].components."minecraft:custom_data"."rr.spell.$(reference).damage_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Helmet Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:103b}].components."minecraft:custom_data"."rr.spell.$(reference).damage_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Chestplate Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:102b}].components."minecraft:custom_data"."rr.spell.$(reference).damage_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Leggings Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:101b}].components."minecraft:custom_data"."rr.spell.$(reference).damage_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Boots Item Spell-Specific Damage Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:100b}].components."minecraft:custom_data"."rr.spell.$(reference).damage_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

scoreboard players set @s[scores={rr.math.X=..-1}] rr.math.X 0
execute store result entity @s data.projectile.damage float 0.01 run scoreboard players get @s rr.math.X