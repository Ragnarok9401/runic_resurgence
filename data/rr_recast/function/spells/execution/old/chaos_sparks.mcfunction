# Moderate Startup with an aura which disorients, nauseates, and withers entities that are nearby

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicChaosSparks] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicChaosSparks
execute as @s[tag=RunicChaosSparks,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicChaosSparks] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Sparks of Chaos","color":"dark_green","bold":true}
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run particle happy_villager ~ ~1 ~ 1 1 1 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.ChaosSparks 160
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 10
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 10
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicChaosSparks,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicChaosSparks,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicChaosSparks
scoreboard players set @s[tag=!RunicChaosSparks,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0