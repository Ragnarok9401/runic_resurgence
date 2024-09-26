# Moderate Startup, consumes 8 Redstone Dust from caster and grants enhanced Speed and Haste.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicMagnetize] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=49}] at @s run clear @s redstone 8
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicMagnetize
execute as @s[tag=RunicMagnetize,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicMagnetize] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Magnetize","color":"red","bold":true}
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run particle portal ~ ~1 ~ 0.7 0.7 0.7 0.8 35 force @a[distance=..50]
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.power_select master @a[distance=..20] ~ ~ ~ 0.85 1.3333 0
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run tp @e[type=item,distance=..12] ~ ~ ~
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 85
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 85
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicMagnetize,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicMagnetize,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicMagnetize
scoreboard players set @s[tag=!RunicMagnetize,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0