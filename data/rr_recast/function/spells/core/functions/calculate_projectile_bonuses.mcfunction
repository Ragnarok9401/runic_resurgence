$data modify entity @s data.projectile set value $(projectile)

# Damage Modification for Spell-Specific Tags
$execute as @p if predicate rr_recast:spell_modifications/spell-specific/$(reference)/damage/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/$(reference)/damage with storage rr_recast:global spells.$(reference)

# Damage Modification for Elemental Type Tags
$execute as @p if predicate rr_recast:spell_modifications/elemental/$(element)/damage/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/damage with storage rr_recast:global spells.$(reference)

# Projectile Speed Modification for Spell-Specific Tags
$execute as @p if predicate rr_recast:spell_modifications/spell-specific/$(reference)/proj_speed/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/$(reference)/proj_speed with storage rr_recast:global spells.$(reference)

# Projectile Speed Modification for Elemental Type Tags
$execute as @p if predicate rr_recast:spell_modifications/elemental/$(element)/proj_speed/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/proj_speed with storage rr_recast:global spells.$(reference)

# Projectile Lifespan Modification for Spell-Specific Tags
$execute as @p if predicate rr_recast:spell_modifications/spell-specific/$(reference)/lifespan/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/spell-specific/$(reference)/lifespan with storage rr_recast:global spells.$(reference)

# Projectile Lifespan Modification for Elemental Type Tags
$execute as @p if predicate rr_recast:spell_modifications/elemental/$(element)/lifespan/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/elemental/$(element)/lifespan with storage rr_recast:global spells.$(reference)

# Projectile Acceleration Modification
execute as @p if predicate rr_recast:spell_modifications/general/acceleration/any as @n[type=marker] run function rr_recast:spells/core/functions/boost_calculation/general/acceleration
