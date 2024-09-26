# Moderate Startup. Detects if an item held in offhand can be "alchemized," and if so, place the number of those items in the player's inventory into a score. Clear those items,and give the "alchemized" version of them back.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicAlchemize] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicAlchemize
execute as @s[tag=RunicAlchemize,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicAlchemize] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Alchemize","color":"aqua","bold":true}
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s run particle explosion ~ ~0.1 ~ 0.5 0 0.5 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.bat.takeoff master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0

# Handle un-alchemizable items or no items held
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] unless predicate rr_recast:held_items/offhand/alchemizable run title @s actionbar {"text":"You cannot alchemize this!","color":"red","italic":false}
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s unless data entity @s Inventory[{Slot:-106b}] run title @s actionbar {"text":"You must hold an item in your Offhand to alchemize!","color":"red","italic":false}

# Handle general alchemizable items
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] if predicate rr_recast:held_items/offhand/alchemizable unless data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_nugget"}] run function rr_recast:technical/spell_extra/alchemize_item_count
# Handle Deep Dark Core
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_nugget"}] if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_nugget",tag:{custom_model_data=12346}}] run function rr_recast:technical/spell_extra/alchemize_item_count
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_nugget"}] unless data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_nugget",tag:{custom_model_data=12346}}] run title @s actionbar {"text":"You cannot alchemize this!","color":"red","italic":false}


execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 140
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 140
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicAlchemize,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicAlchemize,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicAlchemize
scoreboard players set @s[tag=!RunicAlchemize,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0