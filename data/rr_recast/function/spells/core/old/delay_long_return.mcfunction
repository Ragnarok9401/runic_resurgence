# Long Delay on Spell Startup for Return Spell specifically. Causes an 8 second delay between when first cast and when the spell executes.
scoreboard players add @s rr.stats.SpellsCast 1
scoreboard players set @s rr.spell.SpellStart 160
scoreboard players add @s[tag=RunicTab2Held] rr.system.Timer 20
scoreboard players remove @s[tag=RunicTab2Held] rr.spell.MemTCD 20
scoreboard players add @s[tag=RunicTab3Held] rr.system.Timer 40
scoreboard players remove @s[tag=RunicTab3Held] rr.spell.MemTCD 40
scoreboard players add @s[tag=RunicTab4Held] rr.system.Timer 80
scoreboard players remove @s[tag=RunicTab4Held] rr.spell.MemTCD 80
scoreboard players add @s[tag=RunicMem2Held] rr.system.Timer 20
scoreboard players remove @s[tag=RunicMem2Held] rr.spell.MemTCD 20
scoreboard players add @s[tag=RunicMem3Held] rr.system.Timer 40
scoreboard players remove @s[tag=RunicMem3Held] rr.spell.MemTCD 40
scoreboard players add @s[tag=RunicMem4Held] rr.system.Timer 80
scoreboard players remove @s[tag=RunicMem4Held] rr.spell.MemTCD 80
scoreboard players set @s rr.spell.Return.ParticleTimer 0
execute as @s[tag=!RunicSilentSpells] at @s run playsound minecraft:block.portal.travel player @a[distance=..40] ~ ~ ~ 0.2 0.9 0
execute store result score @s rr.math.coord.X run data get entity @s Pos[0] 1
execute store result score @s rr.math.coord.Y run data get entity @s Pos[1] 1
execute store result score @s rr.math.coord.Z run data get entity @s Pos[2] 1
execute store result score @s rr.math.F run data get entity @s Pos[0] 1
execute store result score @s rr.math.E run data get entity @s Pos[1] 1
execute store result score @s rr.math.D run data get entity @s Pos[2] 1
tag @s add RunicReturnNoMove
tag @s add RunicReturning
tag @s add RunicSpellStartup