advancement revoke @s only rr_adv:technical/interact


# If an Interaction's Interaction Timestamp score is above 0, then tag it with RunicNotHit
execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,distance=..12] at @s store result score @s rr.system.Interacted run data get entity @s interaction.timestamp 1
execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,scores={rr.system.Interacted=1..},tag=!RunicIsHit,distance=..12] at @s unless entity @s[scores={rr.spell.SpellID=12345..98765}] store success score @s rr.system.Interacted run tag @s add RunicIsHit


# Manage Tags on Interactions that are clicked IF they have not been clicked yet AND if there has been up to 5 interactions marked
#region
## may be unnecessary
## execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,scores={rr.system.Interacted=1}] run tag @s add RunicIsHit
execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand1,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins1mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand2,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins2mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand3,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins3mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand4,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins4mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand5,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins5mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand6,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins6mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand7,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins7mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand8,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins8mult10

execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,tag=RunicStand9,scores={rr.system.Interacted=1},distance=..12] at @s run execute as @a[distance=..10] if score @s rr.system.playerUUID1 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID1 if score @s rr.system.playerUUID2 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID2 if score @s rr.system.playerUUID3 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID3 if score @s rr.system.playerUUID4 = @e[distance=..10,type=interaction,limit=1,sort=nearest] rr.system.matchUUID4 unless score @s rr.spell.SpellID matches 12345..98765 unless score @s rr.spell.SpellStore matches 12345..98765 run function rr_recast:math/ins9mult10

## Tag each Interaction with a Sorting tag that will allow for a line to be drawn between interactions that are activated
execute as @e[tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,scores={rr.system.Interacted=1},tag=!RunicOrder1,tag=!RunicOrder2,tag=!RunicOrder3,tag=!RunicOrder4,tag=!RunicOrder5,distance=..12] at @s unless entity @e[tag=RunicStand,tag=RunicOrder1,distance=..4] run tag @s add RunicOrder1

execute as @e[tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,scores={rr.system.Interacted=1},tag=!RunicOrder1,tag=!RunicOrder2,tag=!RunicOrder3,tag=!RunicOrder4,tag=!RunicOrder5,distance=..12] at @s if entity @e[tag=RunicStand,tag=RunicOrder1,distance=..4] unless entity @e[tag=RunicStand,tag=RunicOrder2,distance=..4] run tag @s add RunicOrder2

execute as @e[tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,scores={rr.system.Interacted=1},tag=!RunicOrder1,tag=!RunicOrder2,tag=!RunicOrder3,tag=!RunicOrder4,tag=!RunicOrder5,distance=..12] at @s if entity @e[tag=RunicStand,tag=RunicOrder2,distance=..4] unless entity @e[tag=RunicStand,tag=RunicOrder3,distance=..4] run tag @s add RunicOrder3

execute as @e[tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,scores={rr.system.Interacted=1},tag=!RunicOrder1,tag=!RunicOrder2,tag=!RunicOrder3,tag=!RunicOrder4,tag=!RunicOrder5,distance=..12] at @s if entity @e[tag=RunicStand,tag=RunicOrder3,distance=..4] unless entity @e[tag=RunicStand,tag=RunicOrder4,distance=..4] run tag @s add RunicOrder4

execute as @e[tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit,scores={rr.system.Interacted=1},tag=!RunicOrder1,tag=!RunicOrder2,tag=!RunicOrder3,tag=!RunicOrder4,tag=!RunicOrder5,distance=..12] at @s if entity @e[tag=RunicStand,tag=RunicOrder4,distance=..4] unless entity @e[tag=RunicStand,tag=RunicOrder5,distance=..4] run tag @s add RunicOrder5


# Summon Markers that will draw a line between each Interaction that is hit in order
#region
execute as @e[type=interaction,tag=RunicStand,tag=RunicOrder1,distance=..12] at @s if score @e[type=interaction,tag=RunicStand,tag=RunicOrder2,distance=..5,limit=1,sort=nearest] rr.system.matchUUID1 = @s rr.system.matchUUID1 if score @e[type=interaction,tag=RunicStand,tag=RunicOrder2,distance=..5,limit=1,sort=nearest] rr.system.matchUUID2 = @s rr.system.matchUUID2 if score @e[type=interaction,tag=RunicStand,tag=RunicOrder2,distance=..5,limit=1,sort=nearest] rr.system.matchUUID3 = @s rr.system.matchUUID3 if score @e[type=interaction,tag=RunicStand,tag=RunicOrder2,distance=..5,limit=1,sort=nearest] rr.system.matchUUID4 = @s rr.system.matchUUID4 unless entity @e[type=marker,tag=RunicLineBase1,sort=nearest,limit=1,distance=..0.01] run summon marker ~ ~ ~ {Tags:["RunicLineBase1","RunicLineBase","RunicLineSetup","RunicLineWait1","RunicStand"]}

execute as @e[tag=RunicStand,tag=RunicOrder2,tag=RunicNotHit,tag=RunicIsHit,distance=..12] at @s unless entity @e[type=marker,tag=RunicLineBase2,sort=nearest,limit=1,distance=..0.01] run summon marker ~ ~ ~ {Tags:["RunicLineBase2","RunicLineBase","RunicLineSetup","RunicLineWait2","RunicStand"]}

execute as @e[tag=RunicStand,tag=RunicOrder3,tag=RunicNotHit,tag=RunicIsHit,distance=..12] at @s unless entity @e[type=marker,tag=RunicLineBase3,sort=nearest,limit=1,distance=..0.01] run summon marker ~ ~ ~ {Tags:["RunicLineBase3","RunicLineBase","RunicLineSetup","RunicLineWait3","RunicStand"]}

execute as @e[tag=RunicStand,tag=RunicOrder4,tag=RunicNotHit,tag=RunicIsHit,distance=..12] at @s unless entity @e[type=marker,tag=RunicLineBase4,sort=nearest,limit=1,distance=..0.01] run summon marker ~ ~ ~ {Tags:["RunicLineBase4","RunicLineBase","RunicLineSetup","RunicLineWait4","RunicStand"]}


## Run a function that updates Item Displays on the Runic Ring
execute as @e[type=interaction,distance=..12,tag=RunicStand,tag=RunicIsHit] at @s run function rr_recast:technical/update_item_displays

# Create and insert a Meteor Chunk into the Runic Table, add to its timer
execute if items entity @s weapon.mainhand gold_nugget[custom_model_data=12344,custom_data={RunicHavenMeteorChunk:true}] as @e[type=interaction,tag=RunicTableSlot10,distance=..12] at @s if data entity @s interaction run function rr_recast:runic_table/interactions/insert_fuel

# Run functions related to Spellcasting once the player clicks on an Interaction and has the proper Spell ID range
execute as @s[scores={rr.spell.SpellID=12345..98765}] at @s run function rr_recast:spells/core/spell_start


#endregion