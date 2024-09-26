execute as @s run data modify storage target UUIDs[0] set from entity @s UUID[0]
execute as @s run data modify storage target UUIDs[1] set from entity @s UUID[1]
execute as @s run data modify storage target UUIDs[2] set from entity @s UUID[2]
execute as @s run data modify storage target UUIDs[3] set from entity @s UUID[3]
execute as @s at @s run function rr_recast:runic_table/interactions/pre_interact/pre_interact_slot_1 with storage target UUIDs