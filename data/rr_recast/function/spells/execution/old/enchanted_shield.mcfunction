# Small Startup with a magical barrier that nullifies all arrows and damage, also making you slightly slower and regenerating some health

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicEnchShield] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicEnchShield
execute as @s[tag=RunicEnchShield,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicEnchShield] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Enchanted Shield","color":"aqua","bold":true}
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run particle block{block_state:"minecraft:iron_block"} ~ ~1 ~ 1 1 1 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.anvil.fall master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:["RunicEnchShield","EnchShieldParticle","RunicStand"]}
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run summon armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:["RunicEnchShield","EnchShieldParticle2","RunicStand"]}
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run tp @e[type=armor_stand,tag=RunicEnchShield,tag=EnchShieldParticle,limit=1,sort=nearest] ~ ~ ~ 0 -90
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run tp @e[type=armor_stand,tag=RunicEnchShield,tag=EnchShieldParticle2,limit=1,sort=nearest] ~ ~ ~ 180 -90
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run effect give @s resistance 8 10 false
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run effect give @s regeneration 8 0 false
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run effect give @s slowness 7 0 false
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.EnchantedShield 160
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.system.Timer 30
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run scoreboard players add @s rr.spell.MemTCD 30
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicEnchShield,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicEnchShield,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicEnchShield
scoreboard players set @s[tag=!RunicEnchShield,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0