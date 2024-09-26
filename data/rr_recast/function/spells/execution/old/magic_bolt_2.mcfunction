# Magic Bolt II has practically no cooldown, smaller startup, and larger radius when applying damage

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicMagicBolt2] at @s run function rr_recast:spells/core/delay_small
tag @s add RunicSpellStarted
tag @s add RunicSpellStarted2
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.6
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicMagicBolt2
execute as @s[tag=RunicMagicBolt2,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicMagicBolt2] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Magic Bolt II","color":"dark_purple","bold":true}
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run particle block{block_state:"minecraft:amethyst_block"} ~ ~1 ~ 1 1 1 0.2 25 force @a[distance=..50]
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.amethyst_block.break master @a[distance=..20] ~ ~ ~ 1.35 1.3 0
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.6 0
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run summon item_display ~ ~ ~ {item_display:"head",item:{id:"minecraft:purple_concrete",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},Tags:["RunicBoltStand","RunicBoltMain","RunicBolt2Stand","RunicBolt2Main","RunicStand"]}
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicBoltMain,limit=1,sort=nearest] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicBoltMain,limit=1,sort=nearest] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicBoltMain,limit=1,sort=nearest] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players operation @e[tag=RunicStand,tag=RunicBoltMain,limit=1,sort=nearest] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run tp @e[tag=RunicBoltStand,tag=RunicBoltMain,limit=1,sort=nearest] @s
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run tp @e[tag=RunicBoltStand,tag=RunicBoltMain,limit=1,sort=nearest] ~ ~1.5 ~
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players set @e[tag=RunicBoltStand,tag=RunicBoltMain,limit=1,sort=nearest] rr.system.Timer 0
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 180
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 180
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted2
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicMagicBolt2,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicMagicBolt2,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicMagicBolt2
scoreboard players set @s[tag=!RunicMagicBolt2,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0