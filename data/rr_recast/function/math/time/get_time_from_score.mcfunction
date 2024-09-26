$execute store result score @s rr.math.X run scoreboard players get @s $(score)
execute store result score @s rr.math.Minutes run execute store result score @s rr.math.Seconds run scoreboard players get @s rr.math.X
scoreboard players set @s rr.math.X 60
scoreboard players operation @s rr.math.Seconds %= @s rr.math.X
execute store result score @s rr.math.Hours run scoreboard players operation @s rr.math.Minutes /= @s rr.math.X
scoreboard players operation @s rr.math.Hours /= @s rr.math.X
scoreboard players operation @s rr.math.Minutes %= @s rr.math.X