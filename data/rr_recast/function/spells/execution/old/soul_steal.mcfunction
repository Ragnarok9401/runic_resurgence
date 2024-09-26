# Long Startup. Damages user some, then steals life from entities around user. A line of hearts flies toward user from entities hit, carrying buffs and healing.



# Keep in mind for adding more Soul Foci
# +40% Base Speed (should probably be max amount)
# /attribute @s minecraft:generic.movement_speed modifier add 78642-763557-7685-78325-10 soul_steal_speed_40 0.4 multiply_base



# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicSoulSteal] at @s run function rr_recast:spells/core/delay_long
tag @s add RunicSpellStarted

# Default Particles/Sounds
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.system.AttributeA=..79},tag=!RunicSilentSpells] at @s if score @s rr.spell.LifeForce < @s rr.system.AttributeA run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s if score @s rr.system.AttributeA matches 80.. run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75

# Netherite Apple Tier Health Particles/Sounds
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.LifeForce=20..,rr.system.AttributeA=..39}] at @s if predicate rr_recast:held_items/offhand/netherite_apple run particle heart ~ ~0.1 ~ 0.4 0 0.4 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.spell.LifeForce=20..39},tag=!RunicSilentSpells] at @s unless predicate rr_recast:held_items/offhand/netherite_apple run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.spell.LifeForce=20..,rr.system.AttributeA=..39},tag=!RunicSilentSpells] at @s if predicate rr_recast:held_items/offhand/netherite_apple run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.15 1.55

# Netherite Star Tier Health Particles/Sounds
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.LifeForce=40..,rr.system.AttributeA=40..59}] at @s if predicate rr_recast:held_items/offhand/netherite_star run particle heart ~ ~0.05 ~ 0.6 0 0.6 0.02 2 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.LifeForce=40..,rr.system.AttributeA=40..59}] at @s if predicate rr_recast:held_items/offhand/netherite_star run particle damage_indicator ~ ~1 ~ 0.6 0 0.6 0.01 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.spell.LifeForce=40..59},tag=!RunicSilentSpells] at @s unless predicate rr_recast:held_items/offhand/netherite_star run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.spell.LifeForce=40..,rr.system.AttributeA=..59},tag=!RunicSilentSpells] at @s if predicate rr_recast:held_items/offhand/netherite_star run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.15 1.45

# Infinity Star Tier Health Particles/Sounds
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.LifeForce=60..,rr.system.AttributeA=60..79}] at @s if predicate rr_recast:held_items/offhand/infinity_star run particle heart ~ ~0.025 ~ 0.8 0 0.8 0.02 3 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.LifeForce=60..,rr.system.AttributeA=60..79}] at @s if predicate rr_recast:held_items/offhand/infinity_star run particle damage_indicator ~ ~1 ~ 0.8 0 0.8 0.02 2 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.spell.LifeForce=60..},tag=!RunicSilentSpells] at @s unless predicate rr_recast:held_items/offhand/infinity_star run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..,rr.spell.LifeForce=60..,rr.system.AttributeA=..79},tag=!RunicSilentSpells] at @s if predicate rr_recast:held_items/offhand/infinity_star run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.15 1.25

execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicSoulSteal
execute as @s[tag=RunicSoulSteal,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicSoulSteal] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Soul Steal","color":"aqua","bold":true}
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=20..39,rr.system.AttributeA=..39}] at @s store result score @s rr.math.ItemCount run clear @s netherite_ingot[custom_model_data=12345] 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=40..59,rr.system.AttributeA=40..59}] at @s store result score @s rr.math.ItemCount run clear @s nether_star[custom_model_data=12345] 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=60..79,rr.system.AttributeA=60..79}] at @s store result score @s rr.math.ItemCount run clear @s nether_star[custom_model_data=12347] 0

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=60..79,rr.system.AttributeA=60..79}] at @s if predicate rr_recast:held_items/offhand/infinity_star if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s add RunicLifeSoulSteal
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=60..79,rr.system.AttributeA=60..79}] at @s unless predicate rr_recast:held_items/offhand/infinity_star if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicLifeSoulSteal
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=60..79,rr.system.AttributeA=60..79}] at @s if predicate rr_recast:held_items/offhand/infinity_star if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run clear @s nether_star[custom_model_data=12347] 1

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=40..59,rr.system.AttributeA=40..59}] at @s if predicate rr_recast:held_items/offhand/netherite_star if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s add RunicLifeSoulSteal
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=40..59,rr.system.AttributeA=40..59}] at @s unless predicate rr_recast:held_items/offhand/netherite_star if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicLifeSoulSteal
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=40..59,rr.system.AttributeA=40..59}] at @s if predicate rr_recast:held_items/offhand/netherite_star if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run clear @s nether_star[custom_model_data=12345] 1

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=20..39,rr.system.AttributeA=..39}] at @s if predicate rr_recast:held_items/offhand/netherite_apple if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s add RunicLifeSoulSteal
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=20..39,rr.system.AttributeA=..39}] at @s unless predicate rr_recast:held_items/offhand/netherite_apple if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicLifeSoulSteal
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.math.ItemCount=1..,rr.spell.LifeForce=20..39,rr.system.AttributeA=..39}] at @s if predicate rr_recast:held_items/offhand/netherite_apple if entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run clear @s netherite_ingot[custom_model_data=12345] 1

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=20..}] at @s run tag @s add RunicMaxSoul
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=10..19}] at @s run tag @s add RunicMidSoul
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=5..9}] at @s run tag @s add RunicLowSoul
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=..5}] at @s run tag @s add RunicMinSoul
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=78..79,rr.system.AttributeA=78..79}] at @s run damage @s 77 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=60..77,rr.system.AttributeA=60..77}] at @s run damage @s 50 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=40..59,rr.system.AttributeA=40..59}] at @s run damage @s 30 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=20..,rr.system.AttributeA=0..39}] at @s run damage @s 19 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=20..,rr.system.AttributeA=80..}] at @s run damage @s 19 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=10..19}] at @s run damage @s 9 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,scores={rr.spell.LifeForce=5..9}] at @s run damage @s 4 rr_recast:magic_generic by @s
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul] at @s run particle soul ~ ~1 ~ 12 1 12 0.2 80 force @a[distance=..50]
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul] at @s run particle enchanted_hit ~ ~1 ~ 12 1 12 0.2 80 force @a[distance=..50]
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul] at @s run particle soul ~ ~1 ~ 10 1 10 0.2 25 force @a[distance=..50]
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul] at @s run particle enchanted_hit ~ ~1 ~ 10 1 10 0.2 65 force @a[distance=..50]
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowSoul] at @s run particle enchanted_hit ~ ~1 ~ 8 1 8 0.2 40 force @a[distance=..50]
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMinSoul] at @s run particle enchanted_hit ~ ~1 ~ 6 1 6 0.2 30 force @a[distance=..50]
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul,tag=RunicLifeSoulSteal,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..30] ~ ~ ~ 1.65 0.65 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul,tag=RunicLifeSoulSteal,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..30] ~ ~ ~ 1.65 0.65 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..30] ~ ~ ~ 1.55 1.35 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.55 0.75 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..30] ~ ~ ~ 1.45 1.45 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.45 0.9 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..30] ~ ~ ~ 1.2 1.55 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.2 1.15 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMinSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.end_portal.spawn master @a[distance=..30] ~ ~ ~ 1.05 1.65 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMinSoul,tag=!RunicSilentSpells] at @s run playsound minecraft:block.ender_chest.open master @a[distance=..30] ~ ~ ~ 1.05 1.4 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.power_select master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul] at @s run scoreboard players remove @s rr.system.Timer 100
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul] at @s run scoreboard players add @s rr.spell.MemTCD 100
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul] at @s run scoreboard players remove @s rr.system.Timer 60
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul] at @s run scoreboard players add @s rr.spell.MemTCD 60
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowSoul] at @s run scoreboard players remove @s rr.system.Timer 30
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowSoul] at @s run scoreboard players add @s rr.spell.MemTCD 30

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul] at @s run execute as @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/soul_steal_markers/max_life_summon
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxSoul] at @s unless entity @e[distance=0.01..12,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicMaxSoul

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul] at @s run execute as @e[distance=0.01..10,tag=!SpellImmune,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/soul_steal_markers/mid_life_summon
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidSoul] at @s unless entity @e[distance=0.01..10,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicMidSoul

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowSoul] at @s run execute as @e[distance=0.01..8,tag=!SpellImmune,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/soul_steal_markers/low_life_summon
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowSoul] at @s unless entity @e[distance=0.01..8,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicLowSoul

execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMinSoul] at @s run execute as @e[distance=0.01..6,tag=!SpellImmune,type=!#rr_recast:spell_ignore] at @s run function rr_recast:spells/execution/soul_steal_markers/min_life_summon
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMinSoul] at @s unless entity @e[distance=0.01..6,tag=!SpellImmune,type=!#rr_recast:spell_ignore] run tag @s remove RunicMidSoul

#execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMaxLife] at @s run tag @s remove RunicMaxLife
#execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicMidLife] at @s run tag @s remove RunicMidLife
#execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun,tag=RunicLowLife] at @s run tag @s remove RunicLowLife
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicSoulSteal,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicSoulSteal,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicSoulSteal
scoreboard players set @s[tag=!RunicSoulSteal,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0