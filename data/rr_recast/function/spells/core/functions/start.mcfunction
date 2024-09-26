# General Function for starting a spell
execute store result score @s rr.math.A run scoreboard players get @s rr.spell.Mana
$execute store result score @s rr.math.B run data get storage rr_recast:global spells.$(reference).cost
scoreboard players set @s rr.math.C 100

scoreboard players operation @s rr.math.B *= @s rr.math.C

$execute unless score @s rr.math.A >= @s rr.math.B run function rr_recast:spells/core/errors/not_enough_mana with storage rr_recast:global spells.$(reference)
execute unless score @s rr.math.A >= @s rr.math.B run return fail

execute if score @s rr.math.A >= @s rr.math.B run scoreboard players operation @s rr.spell.Mana -= @s rr.math.B

tag @s add rr.spell.casting
$tag @s add rr.spell.$(reference)

$execute store result score @s rr.spell.Windup run data get storage rr_recast:global spells.$(reference).windup 1
$execute store result score @s rr.spell.Cooldown run data get storage rr_recast:global spells.$(reference).cooldown 1

$execute as @s run function rr_recast:spells/core/functions/calculate_windup_and_cooldown with storage rr_recast:global spells.$(reference)

tag @s remove rr.spell.tablet_active
scoreboard players set @s rr.spell.SpellID 0
scoreboard players set @s rr.spell.TabletCD 0