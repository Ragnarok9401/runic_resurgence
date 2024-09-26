# Projectile Lifespan
execute store result score @s rr.math.X run data get entity @s data.projectile.lifespan 100
## Held Item Spell-Specific Lifespan Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p SelectedItem.components."minecraft:custom_data"."rr.spell.$(element).lifespan_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Offhand Item Spell-Specific Lifespan Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:-106b}].components."minecraft:custom_data"."rr.spell.$(element).lifespan_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Helmet Item Spell-Specific Lifespan Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:103b}].components."minecraft:custom_data"."rr.spell.$(element).lifespan_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Chestplate Item Spell-Specific Lifespan Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:102b}].components."minecraft:custom_data"."rr.spell.$(element).lifespan_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Leggings Item Spell-Specific Lifespan Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:101b}].components."minecraft:custom_data"."rr.spell.$(element).lifespan_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y
## Boots Item Spell-Specific Lifespan Boost
scoreboard players set @s rr.math.Y 0
$execute store result score @s rr.math.Y run data get entity @p Inventory[{Slot:100b}].components."minecraft:custom_data"."rr.spell.$(element).lifespan_boost" 100
scoreboard players operation @s rr.math.X += @s rr.math.Y

scoreboard players set @s[scores={rr.math.X=..-1}] rr.math.X 0
execute store result entity @s data.projectile.lifespan float 0.01 run scoreboard players get @s rr.math.X