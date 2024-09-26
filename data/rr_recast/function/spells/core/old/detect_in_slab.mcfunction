execute if block ~ ~ ~ #minecraft:slabs[type=bottom] align xyz positioned ~ ~-0.5 ~ if entity @s[dx=0] at @s run tag @s add RunicInSlab
execute if block ~ ~ ~ #minecraft:slabs[type=top] align xyz positioned ~ ~0.5 ~ if entity @s[dx=0] at @s run tag @s add RunicInSlab
execute if block ~ ~ ~ #minecraft:slabs[type=double] run tag @s add RunicInSlab