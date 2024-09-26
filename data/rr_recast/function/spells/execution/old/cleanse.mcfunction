# Long Startup, cleanses the user of a few negative status effects, heals the user a bit, and removes Invisibility from Item Frames and Armor Stands

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicCleanse] at @s run function rr_recast:spells/core/delay_long
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicCleanse
execute as @s[tag=RunicCleanse,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicCleanse] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Cleanse","color":"blue","bold":true}
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run particle wax_off ~ ~1 ~ 3 1 3 0.4 15 force @a[distance=..50]
execute as @s[tag=RunicCleanse,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.allay.item_given master @a[distance=..20] ~ ~ ~ 1.2 1.2 0
execute as @s[tag=RunicCleanse,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:item.bucket.fill master @a[distance=..20] ~ ~ ~ 0.85 1.2 0
execute as @s[tag=RunicCleanse,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run effect clear @s poison
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run effect clear @s mining_fatigue
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run effect clear @s slowness
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run effect clear @s blindness
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run effect give @s instant_health 1 0 true
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run execute as @e[type=#rr_recast:invisify_permanent,distance=..8,tag=!RunicStand,tag=!RunicFrame] at @s run data merge entity @s {Invisible:false}
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run execute as @e[type=item,tag=RunicFGItem,distance=..8] at @s run particle explosion ~ ~0.05 ~ 0 0 0 1 1 force @a[distance=..50]
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run execute as @e[type=item,tag=RunicFGItem,distance=..8] at @s run playsound entity.item.pickup player @a[distance=..50] ~ ~ ~ 1 0.8 0
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run kill @e[type=item,tag=RunicFGItem,distance=..8]
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run kill @e[type=marker,tag=RunicFGItem,distance=..8]
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 20
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 20
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicCleanse,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicCleanse,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicCleanse
scoreboard players set @s[tag=!RunicCleanse,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0