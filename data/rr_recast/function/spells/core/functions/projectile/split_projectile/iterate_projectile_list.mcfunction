# Iterate through up to 10 projectiles total, max Index value should be 10 (returns early if 10)
scoreboard players add @s[scores={rr.math.index=..9}] rr.math.index 1

# Set initial score for index
execute as @s unless score @s rr.math.index matches 0.. at @s run scoreboard players set @s rr.math.index 0

# Get count of projectiles from Split
execute store result score @s rr.spell.split_max run execute if data entity @s data.projectile.split.projectiles[]

# Store Index value at data.projectile.split.num
execute store result entity @s data.projectile.split.num int 1 run scoreboard players get @s rr.math.index

# Run Main function as Item Display using Marker's data (so that the function can use data.projectile.split.num)
$execute as @s unless score @s rr.math.index >= @s rr.spell.split_max unless score @s rr.math.index matches 9.. on vehicle run function rr_recast:spells/core/functions/projectile/split_projectile/select_projectile with entity @n[type=marker,tag=rr.projectile.$(reference)] data.projectile.split
execute as @s unless score @s rr.math.index >= @s rr.spell.split_max unless score @s rr.math.index matches 9.. run return 0

# If index matches split_max, return function to prevent further execution, return 1 to keep track of list being fully checked
execute if score @s rr.math.index >= @s rr.spell.split_max run return 1
# If more than 10 projectiles exist within the Projectiles list, return 2 to keep track of list being too long
execute if score @s rr.math.index matches 9.. run return 2

# Return -1 in case something went wrong
return -1