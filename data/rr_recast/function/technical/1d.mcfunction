# Ensure that this function only runs as soon as the world changes to daytime
execute store result score $global rr.math.X run time query daytime
scoreboard players set $global rr.math.Y 24000
execute store result storage rr.global daytime int 1 run scoreboard players operation $global rr.math.Y -= $global rr.math.X

function rr_recast:technical/schedule_1d with storage minecraft:rr.global daytime
execute store result score $global rr.math.Z run data get storage minecraft:rr.global daytime
execute unless score $global rr.math.Z matches 24000 run return fail

# Commands below this line should run per day
tellraw @a {"text":"A new day","color":"white","italic":false}

execute in overworld as @r[limit=1,predicate=rr_recast:event/meteor/meteor_chance] at @s run function rr_recast:event/meteor/summon_meteor