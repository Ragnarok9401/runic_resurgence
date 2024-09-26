# Long Startup with a large explosion sending things around the player flying away from them

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicBlastaway] at @s run function rr_recast:spells/core/delay_long
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.2
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicBlastaway
execute as @s[tag=RunicBlastaway,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicBlastaway] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Blastaway","color":"green","bold":true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,Small:true,NoGravity:true,NoAI:true,Tags:["RunicBlastMarker","RunicStand"]}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run execute as @e[distance=0.01..10,tag=SpellImmune,type=!#rr_recast:spell_ignore] at @s run summon armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,Small:true,NoGravity:true,NoAI:true,Tags:["RunicBlastMarker","RunicStand"]}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run tp @e[type=armor_stand,tag=RunicBlastMarker,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run execute as @e[distance=0.01..10,tag=SpellImmune,type=!#rr_recast:spell_ignore] at @s run tp @e[type=armor_stand,tag=RunicBlastMarker,limit=1,sort=nearest] ~ ~ ~ ~ ~
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.Blastaway 3
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run execute as @e[distance=0.01..10,tag=SpellImmune,type=!#rr_recast:spell_ignore] at @s run scoreboard players set @s rr.spell.Blastaway 3
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run effect give @e[distance=..10] resistance 1 10 false
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run execute as @e[distance=..10,type=item_frame] at @s run data merge entity @s {Invulnerable:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run execute as @e[distance=..10,type=glow_item_frame] at @s run data merge entity @s {Invulnerable:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run execute as @e[distance=..10,type=item] at @s run data merge entity @s {Invulnerable:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run gamerule sendCommandFeedback false
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run gamerule mobGriefing false
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon minecraft:creeper ~ ~1.2987500035762566286126 ~ {Fuse:0,ignited:true,ExplosionRadius:3,Invulnerable:true,Silent:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon minecraft:creeper ~ ~1.2987500035762566286126 ~ {Fuse:0,ignited:true,ExplosionRadius:3,Invulnerable:true,Silent:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon minecraft:creeper ~ ~1.2987500035762566286126 ~ {Fuse:0,ignited:true,ExplosionRadius:3,Invulnerable:true,Silent:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon minecraft:creeper ~ ~1.2987500035762566286126 ~ {Fuse:0,ignited:true,ExplosionRadius:3,Invulnerable:true,Silent:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon minecraft:creeper ~ ~1.2987500035762566286126 ~ {Fuse:0,ignited:true,ExplosionRadius:3,Invulnerable:true,Silent:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run summon minecraft:creeper ~ ~1.2987500035762566286126 ~ {Fuse:0,ignited:true,ExplosionRadius:3,Invulnerable:true,Silent:true}
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.bat.takeoff master @a[distance=..20] ~ ~ ~ 1.35 0.6666 0
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run effect give @s slow_falling 1 1 false
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run effect give @e[distance=0.01..10,tag=SpellImmune] slow_falling 1 1 false
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 80
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 80
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicBlastaway,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicBlastaway,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicBlastaway
scoreboard players set @s[tag=!RunicBlastaway,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0