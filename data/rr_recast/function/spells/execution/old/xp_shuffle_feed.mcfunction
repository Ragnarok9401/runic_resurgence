# Moderate Startup, expends some of the user's Xp Levels to replenish some of the user's food level.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicXPFeed] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicXPFeed
execute as @s[tag=RunicXPFeed,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicXPFeed] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: XP Shuffle [ Feed ]","color":"green","bold":true}
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 0.1 30 force @a[distance=..50]
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s store result score @s rr.math.NumTrack1 run data get entity @s XpTotal
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s if score @s rr.math.NumTrack1 matches 30.. run tag @s add RunicHasFXP
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s if score @s rr.math.NumTrack1 matches 30.. run scoreboard players set @s rr.spell.XPFeed 101
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s if score @s rr.math.NumTrack1 matches ..29 run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You do not have enough experience to cast this spell!","color":"red"}]
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.system.Timer 40
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s run scoreboard players add @s rr.spell.MemTCD 40
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicXPFeed,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicXPFeed,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicXPFeed
scoreboard players set @s[tag=!RunicXPFeed,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0