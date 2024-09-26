# Moderate Startup, causes everything in the user's range to become invisible, some things permanently until Cleanse is used on them

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicInvisify] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicInvisify
execute as @s[tag=RunicInvisify,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicInvisify] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Invisify","color":"dark_gray","bold":true}
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 0.2 4 force @a[distance=..50]
execute as @s[tag=RunicInvisify,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.fire.extinguish master @a[distance=..20] ~ ~ ~ 1.35 1.3333 0
execute as @s[tag=RunicInvisify,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run effect give @e[distance=..12,tag=!SpellImmune] invisibility 14 0 true
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run execute as @e[type=#rr_recast:invisify_permanent,distance=..12] at @s run data merge entity @s {Invisible:true}
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.system.Timer 45
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run scoreboard players add @s rr.spell.MemTCD 45
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicInvisify,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicInvisify,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicInvisify
scoreboard players set @s[tag=!RunicInvisify,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0