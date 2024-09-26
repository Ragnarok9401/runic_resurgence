# Moderate Startup with an aura which disorients, nauseates, and withers entities that are nearby

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicChaosBolt] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicChaosBolt
execute as @s[tag=RunicChaosBolt,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicChaosBolt] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Chaos Bolt","color":"light_purple","bold":true}
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run particle dragon_breath ~ ~1 ~ 1 1 1 0.2 40 force @a[distance=..50]
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run tag @s add RunicChaosCharging
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run summon interaction ~ ~1.25 ~ {width:0.45f,height:0.45f,Tags:["RunicChaosBoltI"]}
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s positioned ~ ~1.5 ~ run execute as @e[type=interaction,sort=nearest,limit=1] run scoreboard players operation @s rr.system.matchUUID1 = @e[distance=..0.001,limit=1,sort=nearest] rr.system.playerUUID1
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s positioned ~ ~1.5 ~ run execute as @e[type=interaction,sort=nearest,limit=1] run scoreboard players operation @s rr.system.matchUUID2 = @e[distance=..0.001,limit=1,sort=nearest] rr.system.playerUUID2
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s positioned ~ ~1.5 ~ run execute as @e[type=interaction,sort=nearest,limit=1] run scoreboard players operation @s rr.system.matchUUID3 = @e[distance=..0.001,limit=1,sort=nearest] rr.system.playerUUID3
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s positioned ~ ~1.5 ~ run execute as @e[type=interaction,sort=nearest,limit=1] run scoreboard players operation @s rr.system.matchUUID4 = @e[distance=..0.001,limit=1,sort=nearest] rr.system.playerUUID4
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 10
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 10
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicChaosBolt,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicChaosBolt,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicChaosBolt
scoreboard players set @s[tag=!RunicChaosBolt,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0