# Moderate Startup with 9 bursts of Firework blasts acting as separate "punches." Upgrade makes it so that the final burst also applies a fire effect and reduces the overall cooldown by 1 second.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicFlurry2Spell] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
tag @s add RunicSpellStarted2
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.65
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicFlurry2Spell
execute as @s[tag=RunicFlurry2Spell,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicFlurry2Spell] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Flurry II","color":"gold","bold":true}
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run particle small_flame ~ ~1 ~ 1 1 1 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..20] ~ ~ ~ 1.75 0.25 0
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.65 0
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run summon marker ~ ~ ~ {NoAI:true,Marker:true,Invisible:true,Invulnerable:true,Small:true,Tags:["RunicFlurryMain","RunicFlurryStand","RunicFlurry2Stand","RunicFlurry2Main","RunicStand"]}
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurry2Stand] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurry2Stand] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurry2Stand] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=marker,tag=RunicStand,tag=RunicFlurry2Stand] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tp @e[tag=RunicFlurry2Stand,tag=RunicFlurryMain,limit=1,sort=nearest] @s
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tp @e[tag=RunicFlurry2Stand,tag=RunicFlurryMain,limit=1,sort=nearest] ~ ~1 ~
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicFlurry2Stand,tag=RunicFlurryMain,limit=1,sort=nearest] rr.system.Timer 0
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 110
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 110
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tag @s add RunicFlurryImmunity
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted2
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicFlurry2Spell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicFlurry2Spell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicFlurry2Spell
scoreboard players set @s[tag=!RunicFlurry2Spell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0