# Moderate Startup with a single bolt that jumps between nearby enemies

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicRicochet] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicRicochet
execute as @s[tag=RunicRicochet,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicRicochet] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Ricochet Bolt","color":"dark_purple","bold":true}
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run particle block{block_state:"minecraft:amethyst_block"} ~ ~1 ~ 1 1 1 0.4 15 force @a[distance=..50]
execute as @s[tag=RunicRicochet,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.amethyst_block.break master @a[distance=..20] ~ ~ ~ 1.35 1.2 0
execute as @s[tag=RunicRicochet,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run summon item_display ~ ~ ~ {Invulnerable:true,view_range:8.0f,interpolation_start:-1,interpolation_duration:1,item_display:"head",Tags:["RunicRicBolt","RunicRicMain","RunicStand","RunicRicExplode"],item:{id:"minecraft:purple_terracotta",count:1},transformation:{scale:[0.1f,0.1f,0.1f],translation:[0f,1f,0f]}}
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run data merge entity @e[type=item_display,limit=1,sort=nearest] {interpolation_start:0,interpolation_duration:0,item_display:"head",transformation:{scale:[0.25f,0.25f,0.25f],translation:[0f,1f,0f]}}
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run execute as @e[type=!#rr_recast:spell_ignore,distance=..200] store result score @s rr.system.playerUUID1 run data get entity @s UUID[0]
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicRicMain,limit=1,sort=nearest] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicRicMain,limit=1,sort=nearest] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicRicMain,limit=1,sort=nearest] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicRicMain,limit=1,sort=nearest] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run tp @e[tag=RunicRicBolt,tag=RunicRicMain,limit=1,sort=nearest] @s
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run tp @e[tag=RunicRicBolt,tag=RunicRicMain,limit=1,sort=nearest] ~ ~0.5 ~
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicRicBolt,tag=RunicRicMain,limit=1,sort=nearest] rr.system.Timer 0
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 20
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 20
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicRicochet,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicRicochet,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicRicochet
scoreboard players set @s[tag=!RunicRicochet,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0