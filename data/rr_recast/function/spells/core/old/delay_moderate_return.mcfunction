# Long Delay on Spell Startup for Return Spell specifically. Causes an 8 second delay between when first cast and when the spell executes.
scoreboard players add @s rr.stats.SpellsCast 1
scoreboard players set @s rr.spell.SpellStart 50
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
tag @s add RunicReturnNoMove
tag @s add RunicReturning
tag @s add RunicSpellStartup