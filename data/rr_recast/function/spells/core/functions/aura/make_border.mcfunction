$summon marker ~ ~ ~ {Tags:["rr.entity","rr.aura","rr.aura.$(reference)","rr.border","rr.border.$(reference)"]}
$execute as @e[type=marker,tag=rr.border.$(reference)] at @s run tp @s ~ ~ ~ ~$(angle) ~

$scoreboard players set @s rr.math.Y $(nodes)
scoreboard players add @s rr.math.X 1

execute if score @s rr.math.X > @s rr.math.Y run return 1
execute as @s at @s run function rr_recast:spells/core/functions/aura/make_border with entity @s data.aura.display.border