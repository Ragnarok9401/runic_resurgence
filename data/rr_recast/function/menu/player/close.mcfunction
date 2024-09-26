# Find UI with matching Player Score
scoreboard players operation $search rr.ui.id = @s rr.ui.id

# Clear items from found UI Minecart Stack
execute as @e[type=chest_minecart,tag=RunicUI] if score @s rr.ui.id = $search rr.ui.id run data remove entity @s Items

# Kill UI
execute as @e[tag=RunicUI] if score @s rr.ui.id = $search rr.ui.id run kill @s

# Reset player's score
scoreboard players reset @s rr.ui.id