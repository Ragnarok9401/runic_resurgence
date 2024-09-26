# Moderate Startup with 9 bursts of Firework blasts acting as separate "punches."

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicFlurrySpell] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicFlurrySpell
execute as @s[tag=RunicFlurrySpell,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicFlurrySpell] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Flurry","color":"gold","bold":true}
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run particle small_flame ~ ~1 ~ 1 1 1 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..20] ~ ~ ~ 1.75 0.25 0
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {Tags:["RunicFlurryStand","RunicFlurryMain","RunicStand"]}
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurryStand] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurryStand] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurryStand] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurryStand] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run tp @e[tag=RunicFlurryStand,tag=RunicFlurryMain,limit=1,sort=nearest] @s
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run tp @e[tag=RunicFlurryStand,tag=RunicFlurryMain,limit=1,sort=nearest] ~ ~1 ~
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicFlurryStand,tag=RunicFlurryMain,limit=1,sort=nearest] rr.system.Timer 0
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 90
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 90
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run tag @s add RunicFlurryImmunity
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicFlurrySpell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicFlurrySpell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicFlurrySpell
scoreboard players set @s[tag=!RunicFlurrySpell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0