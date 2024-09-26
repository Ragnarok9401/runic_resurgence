scoreboard objectives add rr.system.playerUUID1 dummy
scoreboard objectives add rr.system.playerUUID2 dummy
scoreboard objectives add rr.system.playerUUID3 dummy
scoreboard objectives add rr.system.playerUUID4 dummy

scoreboard objectives add rr.system.matchUUID1 dummy
scoreboard objectives add rr.system.matchUUID2 dummy
scoreboard objectives add rr.system.matchUUID3 dummy
scoreboard objectives add rr.system.matchUUID4 dummy

scoreboard objectives add rr.system.Timer dummy
scoreboard objectives add rr.system.Interacted dummy
scoreboard objectives add rr.system.AttributeA dummy

scoreboard objectives add rr.system.CraftCharge dummy
scoreboard objectives add rr.system.ActionbarChange dummy
scoreboard objectives add rr.system.UpdateNumber dummy

scoreboard objectives add rr.ui dummy
scoreboard objectives add rr.ui.id dummy

# Per-player Magic Threshold scoreboard to keep track of/modify how much time must elapse before specific spells may cast, default 1000.
# Changes with Enchantments, Tablet tiers, Spell powers, and many other things.
scoreboard objectives add rr.player.MagicThreshold dummy

scoreboard objectives add rr.stats.SpellsCast dummy

# Event Scoreboards
scoreboard objectives add rr.event.meteorite_damage dummy

# Spell System Scoreboards
scoreboard objectives add rr.spell.SpellID dummy
scoreboard objectives add rr.spell.SpellStore dummy
scoreboard objectives add rr.spell.SpellStart dummy
scoreboard objectives add rr.spell.TabletCD dummy

## Time system is half-replaced with a Mana system, whereby players must manage their current mana amount as well as keep track of spell timings
scoreboard objectives add rr.spell.Mana dummy
scoreboard objectives add rr.spell.ManaVisible dummy
scoreboard objectives add rr.spell.ManaMax dummy
scoreboard objectives add rr.spell.ManaPercent dummy
## Bonus Mana Max score modifies how much mana can be stored (compared to initial max of 100)
scoreboard objectives add rr.spell.ManaMaxBonus dummy
scoreboard objectives add rr.spell.ManaMaxBonusVisible dummy
## While ManaPercent will keep track of how much mana you have compared to the base maximum, ManaPercentBonus will keep track of total max mana including bonuses
scoreboard objectives add rr.spell.ManaPercentBonus dummy

## Windup and Cooldown control how fast a spell casts once activated and how soon you can cast again once a spell is complete
scoreboard objectives add rr.spell.Windup dummy
scoreboard objectives add rr.spell.Cooldown dummy
## Bonus Windup and Cooldown modify above scoreboards in positive or negative ways
## Positive Bonus means more time for both, negative Bonus means less time
scoreboard objectives add rr.spell.WindupBonus dummy
scoreboard objectives add rr.spell.CooldownBonus dummy

scoreboard objectives add rr.spell.split_num dummy
scoreboard objectives add rr.spell.split_max dummy
scoreboard objectives add rr.spell.split_copy dummy

## Bonus Dmg scores modify and improve damage dealt by spells of certain/all types (Main counts for all dmg types)
scoreboard objectives add rr.spell.DmgMainBonus dummy
scoreboard objectives add rr.spell.DmgMagicBonus dummy
scoreboard objectives add rr.spell.DmgAirBonus dummy
scoreboard objectives add rr.spell.DmgChaosBonus dummy
scoreboard objectives add rr.spell.DmgColdBonus dummy
scoreboard objectives add rr.spell.DmgEarthBonus dummy
scoreboard objectives add rr.spell.DmgForceBonus dummy
scoreboard objectives add rr.spell.DmgFireBonus dummy
scoreboard objectives add rr.spell.DmgLightningBonus dummy
scoreboard objectives add rr.spell.DmgPiercingBonus dummy


scoreboard objectives add rr.math.A dummy
scoreboard objectives add rr.math.B dummy
scoreboard objectives add rr.math.C dummy
scoreboard objectives add rr.math.X dummy
scoreboard objectives add rr.math.Y dummy
scoreboard objectives add rr.math.Z dummy
scoreboard objectives add rr.math.Tick dummy
scoreboard objectives add rr.math.ItemCount dummy
scoreboard objectives add rr.math.Seconds dummy
scoreboard objectives add rr.math.Minutes dummy
scoreboard objectives add rr.math.Hours dummy
scoreboard objectives add rr.math.index dummy


execute as @a unless score @s rr.system.ActionbarChange matches -2147483648..2147483647 run scoreboard players set @s rr.system.ActionbarChange 0

execute as @a unless score @s rr.spell.ManaMax matches -2147483648..2147483647 run scoreboard players set @s rr.spell.ManaMax 10000
execute as @a unless score @s rr.spell.ManaMaxBonus matches -2147483648..2147483647 run scoreboard players set @s rr.spell.ManaMaxBonus 10000
execute as @a unless score @s rr.spell.ManaPercent matches -2147483648..2147483647 run scoreboard players set @s rr.spell.ManaPercent 100
execute as @a unless score @s rr.spell.ManaPercentBonus matches -2147483648..2147483647 run scoreboard players set @s rr.spell.ManaPercentBonus 100
execute as @a unless score @s rr.spell.Mana matches -2147483648..2147483647 run scoreboard players set @s rr.spell.Mana 10000

# Triggers (create and enable here)
scoreboard objectives add rr.trigger.reloadPacks trigger
scoreboard players enable @a rr.trigger.reloadPacks
scoreboard objectives add rr.trigger.meteorEvent trigger
scoreboard players enable @a[tag=RunicAdmin] rr.trigger.meteorEvent
scoreboard objectives add rr.trigger.item_stats trigger
scoreboard players enable @a rr.trigger.item_stats
scoreboard objectives add rr.trigger.share_item_stats trigger
scoreboard players enable @a rr.trigger.share_item_stats
scoreboard objectives add rr.trigger.show_updates trigger
scoreboard players enable @a rr.trigger.show_updates

execute as @a at @s store result score @s rr.system.playerUUID1 run data get entity @s UUID[0]
execute as @a at @s store result score @s rr.system.playerUUID2 run data get entity @s UUID[1]
execute as @a at @s store result score @s rr.system.playerUUID3 run data get entity @s UUID[2]
execute as @a at @s store result score @s rr.system.playerUUID4 run data get entity @s UUID[3]

scoreboard players set $global rr.system.UpdateNumber 20

tag @a add RunicReloadReset
tag @a remove RunicReload

# tag @a[tag=!RunicMOTDOn,tag=!RunicMOTDOff] add RunicMOTDOn
# tag @a[tag=!RunicAEAGuideY,tag=!RunicAEAGuideN] add RunicAEAGuideY

schedule function rr_recast:technical/3t 3t replace
schedule function rr_recast:technical/1s 1s replace
schedule function rr_recast:technical/1d 1s append
schedule function rr_recast:technical/10t 10t replace

setblock 0 -64 0 yellow_shulker_box replace
setblock 0 -63 0 bedrock
forceload add 0 0

# Set default Spells and all necessary stats for them
function rr_recast:technical/set_default_spells

tellraw @a [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"Runic Resurgence has loaded successfully","color":"light_purple"}]