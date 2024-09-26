# Long+ Startup, clears out all blocks of similar types starting from the one the user looks at, if it is a block under the Chain Mine Targets tag

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicChainMine] at @s run function rr_recast:spells/core/delay_long_2
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicChainMine
execute as @s[tag=RunicChainMine,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicChainMine] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Chain Mine","color":"gold","bold":true}
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run particle wax_off ~ ~1 ~ 3 1 3 0.4 15 force @a[distance=..50]
execute as @s[tag=RunicChainMine,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.allay.item_given master @a[distance=..20] ~ ~ ~ 1.2 1.2 0
execute as @s[tag=RunicChainMine,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:item.armor.equip_elytra master @a[distance=..20] ~ ~ ~ 0.85 1.2 0
execute as @s[tag=RunicChainMine,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run summon armor_stand ~ ~ ~ {Tags:["RunicChainStand","RunicStand","RunicChainMain"],ShowArms:true,Invulnerable:true,Invisible:true,Marker:true,NoGravity:true,NoAI:true}
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run tp @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..10,sort=nearest] ~ ~ ~ ~ ~
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..0.2,sort=nearest,limit=1] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..0.2,sort=nearest,limit=1] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..0.2,sort=nearest,limit=1] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players operation @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..0.2,sort=nearest,limit=1] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run data modify entity @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..0.2,sort=nearest,limit=1] HandItems[0] set from entity @s SelectedItem
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players set @e[type=armor_stand,tag=RunicChainStand,tag=RunicChainMain,distance=..10,sort=nearest] rr.spell.ChainMine 0
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 100
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 100
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicChainMine,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicChainMine,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicChainMine
scoreboard players set @s[tag=!RunicChainMine,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0