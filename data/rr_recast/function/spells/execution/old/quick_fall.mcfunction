# Moderate Startup with an extreme reverse Levitation effect and Slow Falling, preventing any fall damage and removing the Levitation on reaching the ground

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicQuickFall] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicQuickFall
execute as @s[tag=RunicQuickFall,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicQuickFall] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Fall","color":"green","bold":true}
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run particle explosion ~ ~0.1 ~ 0.5 0 0.5 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run effect give @s levitation 1 180 true
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run effect give @s levitation 2 0 true
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run effect give @s slow_falling 6 0 true
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.FallTimer 30
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 60
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 60
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicQuickFall,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicQuickFall,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicQuickFall
scoreboard players set @s[tag=!RunicQuickFall,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0