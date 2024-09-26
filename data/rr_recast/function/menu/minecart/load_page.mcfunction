# Update Page and History
data modify entity @s Items set from storage rr.ui current
data modify storage rr.ui current set from entity @s Items
execute on passengers run data modify entity @s data.previous set from storage rr.ui current