# Execution of the Spell
scoreboard players remove @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=1..}] rr.spell.Cooldown 1
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=1..}] run return 1
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run function rr_recast:spells/core/display_spell_finished
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run tag @s remove rr.spell.paladin_pylon
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run tag @s remove rr.spell.casting
execute as @s[scores={rr.spell.Windup=..0,rr.spell.Cooldown=..0}] run return 0

execute as @s[scores={rr.spell.Windup=1}] at @s run playsound block.enchantment_table.use player @a[distance=..6,tag=!rr.spell.silenced] ~ ~1 ~ 0.75 1.5 0

$execute as @s[scores={rr.spell.Windup=1}] at @s run summon item ~ ~ ~ $(item)

execute as @s[scores={rr.spell.Windup=1}] at @s run scoreboard players operation @n[type=item,distance=..0.125,tag=rr.setup.paladin_pylon] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[scores={rr.spell.Windup=1}] at @s run scoreboard players operation @n[type=item,distance=..0.125,tag=rr.setup.paladin_pylon] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[scores={rr.spell.Windup=1}] at @s run scoreboard players operation @n[type=item,distance=..0.125,tag=rr.setup.paladin_pylon] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[scores={rr.spell.Windup=1}] at @s run scoreboard players operation @n[type=item,distance=..0.125,tag=rr.setup.paladin_pylon] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[scores={rr.spell.Windup=1}] at @s run execute as @n[type=marker,distance=..0.125,tag=rr.setup.paladin_pylon] run function rr_recast:spells/core/functions/aura/calculate_aura_bonuses with storage rr_recast:global spells.paladin_pylon
execute as @s[scores={rr.spell.Windup=1}] at @s run tag @e[tag=rr.setup.paladin_pylon,distance=..0.125] remove rr.setup.paladin_pylon

execute as @s[scores={rr.spell.Windup=10..}] at @s run playsound minecraft:block.amethyst_block.break player @a[distance=..6,tag=!rr.spell.silenced] ~ ~1 ~ 0.15 0.1 0
execute as @s[scores={rr.spell.Windup=10..}] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75 0
execute as @s[scores={rr.spell.Windup=5..}] at @s run particle portal ~ ~1 ~ 0 0 0 0.8 2 normal @a[distance=..18,tag=!rr.spell.noparticles]
scoreboard players remove @s[scores={rr.spell.Windup=1..}] rr.spell.Windup 1