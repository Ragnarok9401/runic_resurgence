# Small Startup, causes everything in the user's range to lose Spell Immune if it was applied.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicTarget] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicTarget
execute as @s[tag=RunicTarget,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicTarget] at @s run tag @s remove RunicSpellStartup

# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Target","color":"gray","bold":true}
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run particle crit ~ ~1 ~ 8 0 8 0.2 35 force @a[distance=..50]
execute as @s[tag=RunicTarget,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicTarget,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run tag @e[distance=0.01..8,type=!#rr_recast:spell_ignore,tag=SpellImmune] remove SpellImmune
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run effect give @e[distance=0.01..20,type=!#rr_recast:spell_ignore,tag=SpellImmune] glowing 4 0 false
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 200
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 200
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicTarget,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicTarget,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicTarget
scoreboard players set @s[tag=!RunicTarget,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0