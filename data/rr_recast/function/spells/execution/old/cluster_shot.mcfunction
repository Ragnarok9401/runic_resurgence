# Moderate Startup with 12 bullets firing out from the player in rapid succession

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicFrostCluster] at @s run function rr_recast:spells/core/delay_moderate
tag @s add RunicSpellStarted
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicFrostCluster
execute as @s[tag=RunicFrostCluster,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicFrostCluster] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: Frost Cluster","color":"aqua","bold":true}
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run particle soul_fire_flame ~ ~1 ~ 1 1 1 0.2 15 force @a[distance=..50]
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..20] ~ ~ ~ 1.75 0.25 0
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 1 1.75 0
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.ClusterTimer 60
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run scoreboard players add @s rr.system.Timer 20
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run scoreboard players remove @s rr.spell.MemTCD 20
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run tag @s add RunicFC
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicFrostCluster,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicFrostCluster,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicFrostCluster
scoreboard players set @s[tag=!RunicFrostCluster,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0