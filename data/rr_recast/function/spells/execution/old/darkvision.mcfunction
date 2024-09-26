# Moderate Startup. The user is granted Night Vision for a short time.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicDarkvision] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicDarkvision
execute as @s[tag=RunicDarkvision,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicDarkvision] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Darkvision","color":"yellow","bold":true}
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,nbt={Inventory:[{Slot:-106b,id:"minecraft:golden_carrot"}]}] at @s run tag @s add RunicDVBoost
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=!RunicDVBoost] at @s run particle electric_spark ~ ~1 ~ 0.125 0.125 0.125 0.9 20 force @a[distance=..50]
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=RunicDVBoost] at @s run particle electric_spark ~ ~1 ~ 0.25 0.25 0.25 1 25 force @a[distance=..50]
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.sculk_catalyst.bloom master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=!RunicDVBoost] at @s run effect give @s night_vision 20 0 true
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=RunicDVBoost] at @s run effect give @s night_vision 80 0 true
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.system.Timer 10
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun] at @s run scoreboard players add @s rr.spell.MemTCD 10
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=RunicDVBoost] at @s run clear @s golden_carrot 1
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun,tag=RunicDVBoost] at @s run tag @s remove RunicDVBoost
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicDarkvision,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicDarkvision,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicDarkvision
scoreboard players set @s[tag=!RunicDarkvision,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0