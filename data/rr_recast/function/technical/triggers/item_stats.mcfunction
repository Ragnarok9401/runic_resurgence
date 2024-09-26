scoreboard players reset @s rr.trigger.item_stats
scoreboard players enable @s rr.trigger.item_stats
scoreboard players reset @s rr.trigger.share_item_stats
scoreboard players enable @s rr.trigger.share_item_stats

execute unless data entity @s SelectedItem run return fail

execute as @s at @s run summon marker ~ ~ ~ {Tags:["rr.entity","rr.item_stats"]}

# General item stats
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.item_name set from entity @s SelectedItem.components."minecraft:item_name"
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.lore set from entity @s SelectedItem.components."minecraft:lore"
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.damage_resistant set from entity @s SelectedItem.components."minecraft:damage_resistant".types
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.modifiers set from entity @s SelectedItem.components."minecraft:attribute_modifiers"

# Tablet-specific stats


# Spell-specific changes
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.spell_boosts.spell_specific.magic_bolt.damage_boost set from entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.magic_bolt.damage_boost"
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.spell_boosts.spell_specific.magic_bolt.proj_speed_boost set from entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.magic_bolt.proj_speed_boost"
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.spell_boosts.spell_specific.magic_bolt.lifespan_boost set from entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.magic_bolt.lifespan_boost"
# Element-specific changes
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.spell_boosts.elemental.magic.damage_boost set from entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.magic_bolt.damage_boost"
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.spell_boosts.elemental.magic.proj_speed_boost set from entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.magic_bolt.proj_speed_boost"
execute as @s at @s run data modify entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item.spell_boosts.elemental.magic.lifespan_boost set from entity @s SelectedItem.components."minecraft:custom_data"."rr.spell.magic_bolt.lifespan_boost"

$execute as @s at @s run function rr_recast:technical/triggers/$(show_type)_item_stats with entity @n[type=marker,tag=rr.item_stats,distance=..0.125] data.item
#execute as @s at @s run kill @n[type=marker,tag=rr.item_stats,distance=..0.125]