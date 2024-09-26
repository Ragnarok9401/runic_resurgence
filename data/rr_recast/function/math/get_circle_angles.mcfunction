scoreboard players set $global rr.math.A 360000
$scoreboard players set $global rr.math.B $(nodes)

scoreboard players operation $global rr.math.A /= $global rr.math.B

execute store result entity @s data.aura.display.border.angle float 0.001 run scoreboard players get $global rr.math.A