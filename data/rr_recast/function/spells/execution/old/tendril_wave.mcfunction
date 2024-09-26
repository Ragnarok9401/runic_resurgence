# Moderate Startup with a large ring of Sculk Tendrils stabbing at targets. The ring moves in toward the user

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicTendrilWave] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicTendrilWave
execute as @s[tag=RunicTendrilWave,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicTendrilWave] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Tendril Wave","color":"#5387D6","bold":true}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run particle sculk_charge_pop ~ ~1 ~ 1 1 1 0.2 30 force @a[distance=..50]
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.warden.emerge player @a[distance=..40] ~ ~ ~ 0.75 0.85 0
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW1","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW2","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW3","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW4","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW5","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW6","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW7","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW8","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW9","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW10","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW11","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTWSetup","RunicTW","RunicTendrilW12","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW13","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW14","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW15","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW16","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW17","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW18","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW19","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW20","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW21","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW22","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW23","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicTW2","RunicTWSetup","RunicTW","RunicTendrilW24","RunicStand"]}
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicTW,tag=RunicTWSetup,limit=24,sort=nearest,distance=..0.1] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicTW,tag=RunicTWSetup,limit=24,sort=nearest,distance=..0.1] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicTW,tag=RunicTWSetup,limit=24,sort=nearest,distance=..0.1] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicTW,tag=RunicTWSetup,limit=24,sort=nearest,distance=..0.1] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicTWSetup,limit=24,sort=nearest,distance=..0.1] rr.math.ItemCount 0
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicTWSetup,tag=RunicTW2,limit=12,sort=nearest,distance=..0.1] rr.math.ItemCount -5
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW1] ~ ~ ~ ~ 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW2] ~ ~ ~ ~30 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW3] ~ ~ ~ ~60 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW4] ~ ~ ~ ~90 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW5] ~ ~ ~ ~120 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW6] ~ ~ ~ ~150 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW7] ~ ~ ~ ~180 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW8] ~ ~ ~ ~210 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW9] ~ ~ ~ ~240 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW10] ~ ~ ~ ~270 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW11] ~ ~ ~ ~300 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW12] ~ ~ ~ ~330 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW13] ~ ~ ~ ~15 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW14] ~ ~ ~ ~45 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW15] ~ ~ ~ ~75 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW16] ~ ~ ~ ~105 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW17] ~ ~ ~ ~135 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW18] ~ ~ ~ ~165 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW19] ~ ~ ~ ~195 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW20] ~ ~ ~ ~225 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW21] ~ ~ ~ ~255 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW22] ~ ~ ~ ~285 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW23] ~ ~ ~ ~315 0
execute as @s at @s run tp @e[type=marker,limit=1,sort=nearest,distance=..0.1,tag=RunicTendrilW24] ~ ~ ~ ~345 0
tag @e[tag=RunicTWSetup,tag=RunicTW] remove RunicTWSetup
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 50
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 50
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicTendrilWave,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicTendrilWave,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicTendrilWave
scoreboard players set @s[tag=!RunicTendrilWave,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0