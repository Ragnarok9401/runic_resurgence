advancement revoke @s only rr_adv:event/mine_brimstone

execute as @s at @s if items entity @s weapon.mainhand wooden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 1
execute as @s at @s if items entity @s weapon.mainhand stone_pickaxe run scoreboard players add @s rr.event.meteorite_damage 1
execute as @s at @s if items entity @s weapon.mainhand golden_pickaxe run scoreboard players add @s rr.event.meteorite_damage 1
execute as @s at @s if items entity @s weapon.mainhand iron_pickaxe run scoreboard players add @s rr.event.meteorite_damage 3
execute as @s at @s if items entity @s weapon.mainhand diamond_pickaxe run scoreboard players add @s rr.event.meteorite_damage 8
execute as @s at @s if items entity @s weapon.mainhand netherite_pickaxe run scoreboard players add @s rr.event.meteorite_damage 15

loot give @s[scores={rr.event.meteorite_damage=100..}] loot rr_recast:event/meteor/brimstone_meteor
execute as @s[scores={rr.event.meteorite_damage=100..}] at @s run playsound item.mace.smash_ground block @a[distance=..40] ~ ~ ~ 0.8 1.33 0
execute as @s[scores={rr.event.meteorite_damage=..100}] at @s run playsound block.amethyst_block.place block @a[distance=..40] ~ ~ ~ 1 0.75 0

scoreboard players remove @s[scores={rr.event.meteorite_damage=100..}] rr.event.meteorite_damage 100