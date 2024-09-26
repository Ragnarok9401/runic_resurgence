advancement revoke @s only rr_adv:runic_table/interact_slot_6

# Catch no items held
execute as @s[predicate=!rr_recast:held_items/mainhand/holding_single_item] at @n[type=interaction,distance=..12,tag=RunicTableSlot6] unless entity @n[type=item_display,tag=RunicTableItem6,distance=..0.01] unless items entity @s weapon.mainhand * run return fail


# Play sounds if switching/removing items (sound for inserting new item is played later in file)
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=!RunicTableItem6Unset] run playsound block.vault.insert_item block @a[distance=..20] ~ ~ ~ 0.4 1.5 0
execute as @s[predicate=!rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..12,tag=RunicTableSlot6] if entity @n[type=item_display,tag=RunicTableItem6,tag=!RunicTableItem6Unset,distance=..0.01] unless items entity @s weapon.mainhand * run playsound block.vault.insert_item_fail block @a[distance=..20] ~ ~ ~ 0.4 1.5 0


# If there is an item display already here, give the Item Display's item back to the player and allow the new item to be placed in
execute as @s[] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=!RunicTableItem6Unset] positioned ~ ~-0.4 ~ at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:ghast_tear",count:1,components:{custom_model_data:12344}},Tags:["RunicTableItemRemoved","RunicTableItemCheck"],PickupDelay:0}
execute as @s[] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=!RunicTableItem6Unset] as @n[type=item,distance=..10,tag=RunicTableItemRemoved,tag=RunicTableItemCheck] run data modify entity @s Item set from entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6] item
execute as @s[] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=!RunicTableItem6Unset] run kill @n[type=item_display,distance=..0.01,tag=RunicTableItem6]


# If there is no item display here, make a new one
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction unless entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=!RunicTableItem6Unset] run summon item_display ~ ~ ~ {billboard:"vertical",item_display:"ground",Tags:["RunicTable","RunicTableItem6","RunicTableItem","RunicTableItem6Unset"],transformation:{left_rotation:[0f,180f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=RunicTableItem6Unset] run data modify entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6] item set from entity @s SelectedItem
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=RunicTableItem6Unset] run item modify entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6] contents rr_recast:count/set_count_to_1
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=RunicTableItem6Unset] unless entity @n[type=item,distance=..10,tag=RunicTableItemCheck] run playsound block.vault.open_shutter block @a[distance=..20] ~ ~ ~ 0.35 1.8 0
execute as @s[predicate=rr_recast:held_items/mainhand/not_empty] at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=RunicTableItem6Unset] run item modify entity @s weapon.mainhand rr_recast:count/reduce_count_by_1


# Remove RunicTableItem6Unset tag
execute as @s at @n[type=interaction,distance=..10,tag=RunicTableSlot6] if data entity @n[type=interaction,distance=..0.01,tag=RunicTableSlot6] interaction if entity @n[type=item_display,distance=..0.01,tag=RunicTableItem6] run tag @n[type=item_display,distance=..0.01,tag=RunicTableItem6,tag=RunicTableItem6Unset] remove RunicTableItem6Unset


# Remove RunicTableItemCheck tag
execute as @s at @s run tag @e[type=item,distance=..10,tag=RunicTableItemCheck] remove RunicTableItemCheck


# Reset Interaction to default state without Interaction data
execute as @s[] as @e[type=interaction,distance=..12,tag=RunicTableSlot6] at @s if data entity @s interaction run summon interaction ~ ~ ~ {width:0.25,height:0.125,Tags:["RunicTable","RunicTableSlot","RunicTableSlot6"]}
execute as @s[] as @e[type=interaction,distance=..12,tag=RunicTableSlot6] at @s if data entity @s interaction run kill @s


# Finally, check recipes
execute as @n[type=item_display,tag=RunicTableDisplay,tag=RunicTableActive,distance=..12] at @s run function rr_recast:runic_table/crafting/check_recipe