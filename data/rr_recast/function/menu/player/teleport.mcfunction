execute unless score @s rr.ui.id matches 0.. run function rr_recast:menu/player/open

scoreboard players operation $search rr.ui.id = @s rr.ui.id
execute at @s as @e[type=item_display,tag=RunicUI] if score @s rr.ui.id = $search rr.ui.id run tp @s ~ ~1.25 ~