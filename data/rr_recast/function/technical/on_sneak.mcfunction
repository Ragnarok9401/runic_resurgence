advancement revoke @s only rr_adv:technical/sneaking

execute as @s[tag=ConsecSneaking] run return fail

scoreboard players add @s[tag=!rr.spell.tablet_active,predicate=rr_recast:held_items/mainhand/tablet/runic_tablet] rr.spell.TabletCD 200
scoreboard players add @s[tag=!rr.spell.tablet_active,predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_enriched] rr.spell.TabletCD 180
scoreboard players add @s[tag=!rr.spell.tablet_active,predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_soul] rr.spell.TabletCD 160
scoreboard players add @s[tag=!rr.spell.tablet_active,predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_master] rr.spell.TabletCD 120


# Carry out the functions which create the Runic Ring for manual spellcasting
# Will only run IF:
#   Player is holding a Runic Tablet, has just begun Sneaking, and isn't already marked as casting a spell
execute as @a[predicate=rr_recast:player_checks/sneaking,predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet,tag=!rr.spell.casting,tag=!rr.spell.tablet_active,tag=!ConsecSneaking,tag=TaggedSneaking] at @s run function rr_recast:spells/runic_ring/create_runic_ring