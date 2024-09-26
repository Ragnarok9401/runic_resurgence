# Used for spells that cannot be cast due to the user not having the spell unlocked (notably for Special Tier Spells)

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicNotUnlocked] at @s run function rr_recast:spells/core/delay_too_high_tier
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..}] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 2
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0}] at @s run tag @s add RunicNotUnlocked
execute as @s[tag=RunicNotUnlocked,scores={rr.spell.SpellStore=1..}] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicSpellStartup,tag=RunicNotUnlocked] at @s run tag @s remove RunicSpellStartup


# Execution of the Spell
execute as @s[tag=RunicSpellStartup] at @s run title @s actionbar {"text":"Casting: ???","color":"white","bold":true}
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun] at @s run particle smoke ~ ~1 ~ 1 1 1 0.04 15 force @a[distance=..50]
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1.2 0.85 0
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun,tag=!RunicSilentSpells] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 0.8 1.25 0
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun] at @s run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"You do not know how to cast this spell yet!","color":"red"}]
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun] at @s run scoreboard players set @s rr.system.Timer 300
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.MemTCD 0
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicNotUnlocked,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicNotUnlocked,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicNotUnlocked
scoreboard players set @s[tag=!RunicNotUnlocked,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0