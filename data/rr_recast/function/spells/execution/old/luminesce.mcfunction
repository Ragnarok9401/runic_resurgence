# Moderate Startup with a large explosion sending the player flying upwards, followed by a slow descent

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicLeapSpell] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicLeapSpell
execute as @s[tag=RunicLeapSpell,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicLeapSpell] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Leap","color":"gray","bold":true}
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run particle explosion ~ ~0.1 ~ 0.5 0 0.5 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.bat.takeoff master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run effect give @s levitation 1 14 false
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run effect give @s slow_falling 5 1 false
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.Leap 30
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 50
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 50
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicLeapSpell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicLeapSpell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicLeapSpell
scoreboard players set @s[tag=!RunicLeapSpell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0