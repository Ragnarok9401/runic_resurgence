# Small Startup, causes everything in the user's range to become Spell Immune, reducing or entirely negating the effects of spells on them.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicIgnore] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicIgnore
execute as @s[tag=RunicIgnore,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicIgnore] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Ignore","color":"gold","bold":true}
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run particle end_rod ~ ~1 ~ 8 0 8 0.2 35 force @a[distance=..50]
execute as @s[tag=RunicIgnore,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.activate master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicIgnore,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run tag @e[distance=0.01..8,type=!#rr_recast:spell_ignore,type=!player] add SpellImmune
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run effect give @e[distance=0.01..20,type=!#rr_recast:spell_ignore,tag=SpellImmune] glowing 4 0 false
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 200
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 200
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicIgnore,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicIgnore,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicIgnore
scoreboard players set @s[tag=!RunicIgnore,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0