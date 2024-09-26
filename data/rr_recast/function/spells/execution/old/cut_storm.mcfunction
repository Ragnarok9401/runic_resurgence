# Long Startup with a large area of damaging wind slices around where the spell is started

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicCutStorm] at @s run function rr_recast:spells/core/delay_long
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicCutStorm
execute as @s[tag=RunicCutStorm,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicCutStorm] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Storm of Cuts","color":"white","bold":true}
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run particle end_rod ~ ~1 ~ 1 1 1 0.2 30 force @a[distance=..50]
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 1.35 0.8 0
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run summon armor_stand ~ ~ ~ {NoAI:true,Marker:true,Invisible:true,Invulnerable:true,Small:true,Tags:["RunicStormStand","RunicStormMain","RunicStormSetup","RunicStand"]}
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicStormStand,limit=1,sort=nearest] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicStormStand,limit=1,sort=nearest] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicStormStand,limit=1,sort=nearest] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicStormStand,limit=1,sort=nearest] rr.system.matchUUID4 = @s rr.system.playerUUID4
tag @e[tag=RunicCutStorm,tag=RunicStormSetup] remove RunicStormSetup
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicStormStand,tag=RunicStormMain,limit=1,sort=nearest] rr.system.Timer 0
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 25
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 25
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicCutStorm,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicCutStorm,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicCutStorm
scoreboard players set @s[tag=!RunicCutStorm,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0