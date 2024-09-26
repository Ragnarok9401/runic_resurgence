# Make copy of current stored items
data modify storage rr.ui current set from entity @s Items

# Obtain previous tick's items
execute on passengers run data modify storage rr.ui previous set from entity @s data.previous

# Save current tick's items over previous, if success then something has changed in the inventory
execute on passengers store result score $bool rr.ui run data modify entity @s data.previous set from storage rr.ui current

# When inventory has changed, run this function
execute if score $bool rr.ui matches 1 run function rr_recast:menu/minecart/on_change