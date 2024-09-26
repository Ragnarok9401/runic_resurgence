# Long Startup with a burst of life energy emanating from the user, releasing some health for large damage

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicLifeForce] at @s run function rr_recast:spells/core/delay_long_2
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicLifeForce
execute as @s[tag=RunicLifeForce,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicLifeForce] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Life Force","color":"red","bold":true}
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=80..}] at @s run tag @s add RunicMaxLifeD
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=60..79}] at @s run tag @s add RunicMaxLifeC
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=40..59}] at @s run tag @s add RunicMaxLifeB
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=20..39}] at @s run tag @s add RunicMaxLifeA
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=10..19}] at @s run tag @s add RunicMidLife
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=5..9}] at @s run tag @s add RunicLowLife
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=80..}] at @s run damage @s 76 rr_recast:magic_generic by @s
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=60..79}] at @s run damage @s 54 rr_recast:magic_generic by @s
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=40..59}] at @s run damage @s 35 rr_recast:magic_generic by @s
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=20..39}] at @s run damage @s 16 rr_recast:magic_generic by @s
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=10..19}] at @s run damage @s 7 rr_recast:magic_generic by @s
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,scores={rr.spell.LifeForce=5..9}] at @s run damage @s 3 rr_recast:magic_generic by @s
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] at @s run particle damage_indicator ~ ~1 ~ 10.25 1 10.25 0.2 80 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] at @s run particle damage_indicator ~ ~1 ~ 9.5 1 9.5 0.2 70 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] at @s run particle damage_indicator ~ ~1 ~ 8.75 1 8.75 0.2 60 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] at @s run particle damage_indicator ~ ~1 ~ 8 1 8 0.2 50 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] at @s run particle damage_indicator ~ ~1 ~ 7.25 1 7.25 0.2 45 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicLowLife] at @s run particle damage_indicator ~ ~1 ~ 6.5 1 6.5 0.2 40 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife] at @s run particle damage_indicator ~ ~1 ~ 5.75 1 5.75 0.2 35 force @a[distance=..50]
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] at @s run execute as @e[distance=0.01..10.25,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run damage @s 79 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] at @s run execute as @e[distance=0.01..10.25,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] rr.stats.DmgMagic 79
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] at @s run execute as @e[distance=0.01..9.5,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run damage @s 59 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] at @s run execute as @e[distance=0.01..9.5,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] rr.stats.DmgMagic 59
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] at @s run execute as @e[distance=0.01..8.75,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run damage @s 39 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] at @s run execute as @e[distance=0.01..8.75,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] rr.stats.DmgMagic 39
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] at @s run execute as @e[distance=0.01..8,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run damage @s 19 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] at @s run execute as @e[distance=0.01..8,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] rr.stats.DmgMagic 19
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] at @s run execute as @e[distance=0.01..7.5,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run damage @s 12 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] at @s run execute as @e[distance=0.01..7.5,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] rr.stats.DmgMagic 12
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicLowLife] at @s run execute as @e[distance=0.01..7,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run damage @s 8 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicLowLife] at @s run execute as @e[distance=0.01..7,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicLowLife] rr.stats.DmgMagic 8
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife] at @s run execute as @e[distance=0.01..6.5,tag=!SpellImmune] run damage @s 5 rr_recast:magic_generic by @p from @p
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife] at @s run execute as @e[distance=0.01..6.5,tag=!SpellImmune] run scoreboard players add @p[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife] rr.stats.DmgMagic 5
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.75 0.45 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.allay.hurt master @a[distance=..30] ~ ~ ~ 1.85 0.45 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.7 0.45 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.7 0.55 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.allay.hurt master @a[distance=..30] ~ ~ ~ 1.75 0.55 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.65 0.55 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.65 0.65 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.allay.hurt master @a[distance=..30] ~ ~ ~ 1.65 0.65 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.6 0.65 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.55 0.75 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.allay.hurt master @a[distance=..30] ~ ~ ~ 1.55 0.75 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.55 0.75 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.45 0.9 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.45 0.9 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicLowLife,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.2 1.15 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.2 1.15 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife,tag=!RunicSilentSpells] at @s run playsound minecraft:block.chain.place master @a[distance=..30] ~ ~ ~ 1.05 1.4 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.05 1.4 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.power_select master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] at @s run scoreboard players remove @s rr.system.Timer 60
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] at @s run scoreboard players add @s rr.spell.MemTCD 60
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] at @s run scoreboard players remove @s rr.system.Timer 50
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] at @s run scoreboard players add @s rr.spell.MemTCD 50
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] at @s run scoreboard players remove @s rr.system.Timer 40
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] at @s run scoreboard players add @s rr.spell.MemTCD 40
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] at @s run scoreboard players remove @s rr.system.Timer 30
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] at @s run scoreboard players add @s rr.spell.MemTCD 30
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] at @s run scoreboard players remove @s rr.system.Timer 20
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] at @s run scoreboard players add @s rr.spell.MemTCD 20
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife] at @s run scoreboard players add @s rr.system.Timer 60
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=!RunicMaxLifeD,tag=!RunicMaxLifeC,tag=!RunicMaxLifeB,tag=!RunicMaxLifeA,tag=!RunicMidLife,tag=!RunicLowLife] at @s run scoreboard players remove @s rr.spell.MemTCD 60
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeD] at @s run tag @s remove RunicMaxLifeD
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeC] at @s run tag @s remove RunicMaxLifeC
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeB] at @s run tag @s remove RunicMaxLifeB
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMaxLifeA] at @s run tag @s remove RunicMaxLifeA
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicMidLife] at @s run tag @s remove RunicMidLife
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun,tag=RunicLowLife] at @s run tag @s remove RunicLowLife
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicLifeForce,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicLifeForce,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicLifeForce
scoreboard players set @s[tag=!RunicLifeForce,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0