execute as @n[type=item_display,distance=..12] store result score $value rr.math.X run random value 1..20
execute as @n[type=item_display,distance=..12] store result score $value rr.math.Y run random value 1..40
execute as @n[type=item_display,distance=..12] store result score $value rr.math.Z run random value 1..60

# Normal Form
execute unless score $value rr.math.X matches 20 unless score $value rr.math.Y matches 40 unless score $value rr.math.Z matches 60 positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] run item replace entity @s contents with music_disc_cat[custom_model_data=12289,item_name='[{"text":"Enriched Runic Tablet","color":"#D8BC39"}]',lore=['{"text":""}','{"color":"dark_aqua","italic":false,"text":"Traits:"}','[{"color":"dark_aqua","italic":false,"text":" • "},{"color":"aqua","italic":false,"text":"Tablet Tier:"},{"color":"dark_aqua","italic":false,"text":" 2"}]','[{"color":"dark_aqua","italic":false,"text":" • "},{"color":"aqua","text":"Fast Cast I:"},{"color":"dark_aqua","text":" All Spell"}]','{"color":"dark_aqua","italic":false,"text":"   Cooldowns are reduced"}','{"color":"dark_aqua","italic":false,"text":"   by 1 second"}','{"text":""}','[{"text":"Press [","color":"dark_gray","italic":false},{"keybind":"key.sneak","bold":false,"color":"gray","italic":false},{"text":"] to use","color":"dark_gray","italic":false,"bold":false}]'],custom_data={CustomDisc:1b,RunicTabletE:1b,RunicTabletTier:2,RunicNoSongDisc:1b,RunicTabletForm:1},max_stack_size=4,!minecraft:jukebox_playable]
# Shiny Form
execute if score $value rr.math.X matches 20 unless score $value rr.math.Y matches 40 unless score $value rr.math.Z matches 60 positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] run item replace entity @s contents with echo_shard[custom_model_data=12334,item_name='[{"text":"Enriched Runic Tablet","color":"#D8BC39"}]',lore=['[{"text":"Press [","color":"#B2971D","italic":false},{"keybind":"key.sneak","bold":true,"color":"yellow","italic":false},{"text":"] to summon","color":"#B2971D","italic":false,"bold":false}]','[{"text":"a ring of Runic Flames which can be right-clicked","color":"#B2971D","italic":false}]','[{"text":"in certain orders to cast Runic Spells","color":"#B2971D","italic":false}]','[{"text":""}]','[{"text":"Can cast Tier 2 Spells and below","color":"#D8BC39","italic":false}]','[{"text":"Reduces Spell Cooldowns by 1 second","color":"#D8BC39","italic":false}]'],custom_data={CustomEShard:1b,RunicTabletE:true,RunicTabletTier:2,RunicShowSpellList:true},max_stack_size=4]

execute positioned ~ ~0.4375 ~ as @e[type=item_display,distance=0.1..0.5,tag=!RunicTableItem5,tag=RunicTableItem] run kill @s

execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] at @s run particle soul_fire_flame ~ ~0.0625 ~ 0.0625 0.0625 0.0625 0.1 15 normal @a[distance=..40]
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] at @s run particle crit ~ ~0.0625 ~ 0.0625 0.0625 0.0625 0.125 15 normal @a[distance=..40]
execute positioned ~ ~0.4375 ~ as @n[type=item_display,distance=..0.1,tag=RunicTableItem5] run playsound item.trident.thunder block @a[distance=..20] ~ ~ ~ 0.75 1.2 0