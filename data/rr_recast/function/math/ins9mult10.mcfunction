scoreboard players set @s[scores={rr.spell.SpellID=1..}] rr.math.X 10
execute as @s[scores={rr.spell.SpellID=1..}] at @s unless score @s rr.spell.SpellID matches 12345..98765 run scoreboard players operation @s rr.spell.SpellID *= @s rr.math.X
execute as @s at @s run playsound minecraft:block.note_block.pling player @a[distance=..15] ~ ~ ~ 0.7 1.50625 0
scoreboard players add @s rr.spell.SpellID 9