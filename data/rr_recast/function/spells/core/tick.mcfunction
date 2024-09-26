# Magic Bolt, return 92347
execute as @s[tag=rr.spell.magic_bolt] at @s run function rr_recast:spells/execution/magic_bolt/tick with storage rr_recast:global spells.magic_bolt.projectile
execute as @s[tag=rr.spell.magic_bolt] at @s run return 92347

# Magic Bolt II, return 192347
execute as @s[tag=rr.spell.magic_bolt_2] at @s run function rr_recast:spells/execution/magic_bolt_2/tick
execute as @s[tag=rr.spell.magic_bolt_2] at @s run return 192347

# Paladin's Pylon, return 54286
execute as @s[tag=rr.spell.paladin_pylon] at @s run function rr_recast:spells/execution/paladin_pylon/tick with storage rr_recast:global spells.paladin_pylon.aura.display
execute as @s[tag=rr.spell.paladin_pylon] at @s run return 54286

tag @s remove rr.spell.casting
return 0