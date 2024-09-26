# Used for spells that aren't yet implemented as a way to show that the combination was technically correct, but that it won't do anything

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicUnfinishedSpell] at @s run function rr_recast:spells/core/delay_unfinished
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 2
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicUnfinishedSpell
execute as @s[tag=RunicUnfinishedSpell,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicUnfinishedSpell] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: ???","color":"white","bold":true}
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun] at @s run particle smoke ~ ~1 ~ 1 1 1 0.04 15 force @a[distance=..50]
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.2 0.85 0
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 0.8 1.25 0
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun] at @s run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"This spell combination hasn't been finished! You will have to wait until later to find out what this will do...","color":"red"}]
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun] at @s run scoreboard players set @s rr.system.Timer 300
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.MemTCD 0
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicUnfinishedSpell,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicUnfinishedSpell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicUnfinishedSpell
scoreboard players set @s[tag=!RunicUnfinishedSpell,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0