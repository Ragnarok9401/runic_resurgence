# Small Startup, creates a "ghost" item on the ground that copies the stats of the user's offhand item.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicFoolsGold] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicFoolsGold
execute as @s[tag=RunicFoolsGold,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicFoolsGold] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Fools' Gold","color":"#3C8915","bold":true}
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s run particle end_rod ~ ~1 ~ 8 0 8 0.2 35 force @a[distance=..50]
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s if data entity @s Inventory[{Slot:-106b}] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 1.35 1.6666 0
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s if data entity @s Inventory[{Slot:-106b}] run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run summon item ~ ~ ~ {Age:-32768,Invulnerable:true,PickupDelay:32767,Tags:["RunicFGItem","RunicFGUnset"],Item:{count:1,id:"minecraft:stone_button"}}
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run summon marker ~ ~ ~ {Tags:["RunicFGMark","RunicFGUnset"]}
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run data modify entity @e[type=item,tag=RunicFGUnset,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}]
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=item,limit=1,sort=nearest,tag=RunicFGUnset] at @s store result score @s rr.system.playerUUID1 run data get entity @s UUID[0]
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=item,limit=1,sort=nearest,tag=RunicFGUnset] at @s store result score @s rr.system.playerUUID2 run data get entity @s UUID[1]
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=item,limit=1,sort=nearest,tag=RunicFGUnset] at @s store result score @s rr.system.playerUUID3 run data get entity @s UUID[2]
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=item,limit=1,sort=nearest,tag=RunicFGUnset] at @s store result score @s rr.system.playerUUID4 run data get entity @s UUID[3]

execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=marker,limit=1,sort=nearest,tag=RunicFGUnset] at @s run scoreboard players operation @s rr.system.matchUUID1 = @e[type=item,limit=1,sort=nearest,distance=..20,tag=RunicFGUnset] rr.system.playerUUID1
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=marker,limit=1,sort=nearest,tag=RunicFGUnset] at @s run scoreboard players operation @s rr.system.matchUUID2 = @e[type=item,limit=1,sort=nearest,distance=..20,tag=RunicFGUnset] rr.system.playerUUID2
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=marker,limit=1,sort=nearest,tag=RunicFGUnset] at @s run scoreboard players operation @s rr.system.matchUUID3 = @e[type=item,limit=1,sort=nearest,distance=..20,tag=RunicFGUnset] rr.system.playerUUID3
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run execute as @e[type=marker,limit=1,sort=nearest,tag=RunicFGUnset] at @s run scoreboard players operation @s rr.system.matchUUID4 = @e[type=item,limit=1,sort=nearest,distance=..20,tag=RunicFGUnset] rr.system.playerUUID4
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run tag @e[tag=RunicFGUnset,limit=2,sort=nearest] remove RunicFGUnset
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s if data entity @s Inventory[{Slot:-106b}] run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"Your item has been placed! To remove it, use the Cleanse spell near it.","color":"light_purple","italic":false}]

execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s unless data entity @s Inventory[{Slot:-106b}] run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.2 0.85 0
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s unless data entity @s Inventory[{Slot:-106b}] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 0.8 1.25 0
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s unless data entity @s Inventory[{Slot:-106b}] run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You must hold an item in your offhand to use this spell.","color":"red","italic":false}]

execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 150
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 150
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicFoolsGold,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicFoolsGold,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicFoolsGold
scoreboard players set @s[tag=!RunicFoolsGold,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0