execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] run item replace entity @s contents with iron_nugget[item_name='"Hydro Charge"',custom_model_data=12340,custom_data={RunicHydroCharge:true},rarity=uncommon] 1
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] run playsound entity.player.splash block @a[distance=..20] ~ ~ ~ 0.67 1.5 0
execute positioned ~ ~0.4375 ~ as @e[type=item_display,distance=0.1..0.5,tag=!RunicTableItem5,tag=RunicTableItem] run kill @s