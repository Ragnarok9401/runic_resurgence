# If holding correct item, open GUI
execute as @s at @s if items entity @s weapon.mainhand *[minecraft:custom_data~{RunicShowCompendium:1b}] run function rr_recast:menu/player/teleport
# If not, close GUI
execute as @s at @s unless items entity @s weapon.mainhand *[minecraft:custom_data~{RunicShowCompendium:1b}] if score @s rr.ui.id matches 0.. run function rr_recast:menu/player/close