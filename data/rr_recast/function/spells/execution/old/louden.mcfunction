# Small Startup, causes everything in the user's range to become Silent.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicLouden] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,tag=!RunicSilentSpells,scores={rr.spell.SpellStart=10..}] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicLouden
execute as @s[tag=RunicLouden,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicLouden] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Louden","color":"#93C47D","bold":true}

execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^ ^ ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^ ^0.6 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.125 ^0.55 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.125 ^0.55 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.2 ^0.475 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.2 ^0.475 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.25 ^0.35 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.25 ^0.35 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.325 ^0.225 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.325 ^0.225 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.425 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.425 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.325 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.325 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.25 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.25 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.175 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.175 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^0.075 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^-0.075 ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s positioned ~ ~1.6 ~ run particle firework ^ ^0.15 ^3 0 0 0 0 1 force @a[distance=..30]

execute as @s[tag=RunicLouden,tag=RunicSpellRun,nbt={Inventory:[{Slot:-106b,id:"minecraft:iron_ingot"}]}] at @s run tag @s remove RunicSilentSpells
execute as @s[tag=RunicLouden,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:item.trident.return master @a[distance=..20] ~ ~ ~ 1.65 1.25 0
execute as @s[tag=RunicLouden,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run execute as @e[distance=0.01..8,type=!#rr_recast:spell_ignore,type=!player] run data merge entity @s {Silent:false}
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run effect give @e[distance=0.01..20,type=!#rr_recast:spell_ignore,nbt={Silent:true}] glowing 4 0 false
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 200
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 200
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicLouden,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicLouden,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicLouden
scoreboard players set @s[tag=!RunicLouden,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0