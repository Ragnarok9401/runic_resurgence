#
#   Functions to be Executed Every Tick
#
# Note: "#!" denotes a feature/mechanic that has been temporarily disabled until removed or fixed.

# Invisible Minecarts (thanks to Misode for code!)
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function rr_recast:technical/minecarts/invisible_minecarts

# Manage Sneaking so that certain features only activate as soon as you sneak, not after holding it.
tag @a[predicate=!rr_recast:player_checks/sneaking] remove ConsecSneaking
tag @a[predicate=!rr_recast:player_checks/sneaking] remove TaggedSneaking
tag @a[predicate=rr_recast:player_checks/sneaking,tag=TaggedSneaking,tag=!ConsecSneaking] add ConsecSneaking
tag @a[predicate=rr_recast:player_checks/sneaking,tag=!TaggedSneaking,tag=!ConsecSneaking] add TaggedSneaking


# UI functions to be run as all players
execute as @a run function rr_recast:menu/player/tick
execute as @e[type=chest_minecart,tag=RunicUI] run function rr_recast:menu/minecart/tick
# Remove UI element items from players (buttons, display items, etc.)
clear @a *[minecraft:custom_data~{RunicMenuItem:{}}]


# Remove Item Displays for Runic Ring if no Interaction is nearby
execute as @e[type=item_display,tag=RunicIndicator] at @s unless entity @n[type=interaction,distance=..0.1] run tag @s add killStand


# Tick up a timer that keeps track of how long a Runic Ring has been summoned, destroy after 8 seconds (160 ticks)
scoreboard players add @e[tag=RunicStand] rr.system.Timer 1
execute as @e[type=interaction,tag=RunicStandInteraction,scores={rr.system.Timer=160}] run tag @s add killStand


# Display Dust Particles at RunicLineParticle tagged Markers
#execute as @e[tag=RunicLineParticle,scores={rr.system.Timer=3..}] at @s run particle enchanted_hit ~ ~ ~ 0.04 0.04 0.04 0.01 1 force @a[tag=RunicTabHeld]
execute as @e[type=marker,tag=RunicLineParticle,tag=RunicLineParticle1,scores={rr.system.Timer=3..}] at @s run particle dust_color_transition{from_color:[0.475f, 0.161f, 0.475f], scale:0.7f, to_color:[1f, 1f, 1f]} ~ ~0.2 ~ 0.04 0.04 0.04 0.01 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicLineParticle,tag=RunicLineParticle2,scores={rr.system.Timer=3..}] at @s run particle dust_color_transition{from_color:[0.365f, 0.169f, 0.545f], scale:0.7f, to_color:[1f, 1f, 1f]} ~ ~0.2 ~ 0.04 0.04 0.04 0.01 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicLineParticle,tag=RunicLineParticle3,scores={rr.system.Timer=3..}] at @s run particle dust_color_transition{from_color:[0.298f, 0.137f, 0.741f], scale:0.7f, to_color:[1f, 1f, 1f]} ~ ~0.2 ~ 0.04 0.04 0.04 0.01 1 force @a[distance=..40]
execute as @e[type=marker,tag=RunicLineParticle,tag=RunicLineParticle4,scores={rr.system.Timer=3..}] at @s run particle dust_color_transition{from_color:[0.102f, 0.553f, 0.855f], scale:0.7f, to_color:[1f, 1f, 1f]} ~ ~0.2 ~ 0.04 0.04 0.04 0.01 1 force @a[distance=..40]


# Visual effect for when a Runic Ring is dispelled
execute as @e[type=interaction,tag=RunicStandInteraction,tag=killStand] at @s run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.06 4 normal @a[distance=..50]
execute as @e[type=interaction,tag=RunicStandInteraction,tag=killStand] at @s run playsound entity.vex.hurt player @a[distance=..18] ~ ~ ~ 0.3 0.8 0


## Make Markers with RunicLineSetup and RunicLineBaseX tags face Interactions with RunicOrderY tag, where Y = X + 1
execute as @e[type=marker,tag=RunicLineBase1,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[type=interaction,tag=RunicStand,tag=RunicOrder2,limit=1,sort=nearest,distance=..5]

execute as @e[type=marker,tag=RunicLineBase2,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[type=interaction,tag=RunicStand,tag=RunicOrder3,limit=1,sort=nearest,distance=..5]

execute as @e[type=marker,tag=RunicLineBase3,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[type=interaction,tag=RunicStand,tag=RunicOrder4,limit=1,sort=nearest,distance=..5]

execute as @e[type=marker,tag=RunicLineBase4,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[type=interaction,tag=RunicStand,tag=RunicOrder5,limit=1,sort=nearest,distance=..5]

## Make RunicLineBase Markers summon a RunicLineDraw Marker that moves to the next RunicLineBase Marker,
## leaving a few Markers in its path which draw the line
execute as @e[type=marker,tag=RunicLineBase1,tag=RunicLineWait1] at @s if entity @e[tag=RunicLineBase2,distance=..5] run summon marker ~ ~ ~ {Tags:["RunicLineDraw","RunicLine1","RunicLineSetup","RunicStand"]}
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine1,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[tag=RunicLineBase2,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine1] at @s run tp @s ^ ^ ^0.06
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine1,scores={rr.system.Timer=4}] at @s run summon marker ~ ~ ~ {Tags:["RunicLineParticle","RunicLineParticle1","RunicStand"]}

execute as @e[type=marker,tag=RunicLineBase2,tag=RunicLineWait2] at @s if entity @e[tag=RunicLineBase3,distance=..5] run summon marker ~ ~ ~ {Tags:["RunicLineDraw","RunicLine2","RunicLineSetup","RunicStand"]}
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine2,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[tag=RunicLineBase3,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine2] at @s run tp @s ^ ^ ^0.06
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine2,scores={rr.system.Timer=4}] at @s run summon marker ~ ~ ~ {Tags:["RunicLineParticle","RunicLineParticle2","RunicStand"]}

execute as @e[type=marker,tag=RunicLineBase3,tag=RunicLineWait3] at @s if entity @e[tag=RunicLineBase4,distance=..5] run summon marker ~ ~ ~ {Tags:["RunicLineDraw","RunicLine3","RunicLineSetup","RunicStand"]}
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine3,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[tag=RunicLineBase4,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine3] at @s run tp @s ^ ^ ^0.06
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine3,scores={rr.system.Timer=4}] at @s run summon marker ~ ~ ~ {Tags:["RunicLineParticle","RunicLineParticle3","RunicStand"]}

execute as @e[type=marker,tag=RunicLineBase4,tag=RunicLineWait4] at @s if entity @e[tag=RunicOrder5,distance=..5] run summon marker ~ ~ ~ {Tags:["RunicLineDraw","RunicLine4","RunicLineSetup","RunicStand"]}
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine4,tag=RunicLineSetup] at @s run tp @s ~ ~ ~ facing entity @e[tag=RunicOrder5,limit=1,sort=nearest,distance=..5]
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine4] at @s run tp @s ^ ^ ^0.06
execute as @e[type=marker,tag=RunicLineDraw,tag=RunicLine4,scores={rr.system.Timer=4}] at @s run summon marker ~ ~ ~ {Tags:["RunicLineParticle","RunicLineParticle4","RunicStand"]}


## Remove RunicNoHit and RunicLineSetup tags to keep the commands above from running multiple times for the same Interactions and Markers
execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit,tag=RunicIsHit] run tag @s remove RunicNotHit
execute as @e[type=marker,tag=RunicLineBase,tag=RunicLineSetup] run tag @s remove RunicLineSetup
execute as @e[type=marker,tag=RunicLineBase,tag=RunicLineWait1] at @s if entity @e[type=marker,tag=RunicLineDraw,tag=RunicLine1,distance=..0.11] run tag @s remove RunicLineWait1
execute as @e[type=marker,tag=RunicLineBase,tag=RunicLineWait2] at @s if entity @e[type=marker,tag=RunicLineDraw,tag=RunicLine2,distance=..0.11] run tag @s remove RunicLineWait2
execute as @e[type=marker,tag=RunicLineBase,tag=RunicLineWait3] at @s if entity @e[type=marker,tag=RunicLineDraw,tag=RunicLine3,distance=..0.11] run tag @s remove RunicLineWait3
execute as @e[type=marker,tag=RunicLineBase,tag=RunicLineWait4] at @s if entity @e[type=marker,tag=RunicLineDraw,tag=RunicLine4,distance=..0.11] run tag @s remove RunicLineWait4
#endregion


# Runic Tablets CD Tracking
scoreboard players remove @a[scores={rr.spell.TabletCD=1..}] rr.spell.TabletCD 1
scoreboard players set @a[tag=rr.spell.tablet_active,scores={rr.spell.TabletCD=..0}] rr.spell.SpellID 0
title @a[tag=rr.spell.tablet_active,scores={rr.spell.TabletCD=..0}] actionbar {"text":"Your Runic Energy is restored!","color":"aqua","italic":false}
execute as @a[tag=rr.spell.tablet_active,scores={rr.spell.TabletCD=..0}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.125
execute as @a[tag=rr.spell.tablet_active,scores={rr.spell.TabletCD=..0}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1.05 1.5
execute as @a[tag=rr.spell.tablet_active,scores={rr.spell.TabletCD=..0}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1.1 1.875
tag @a[tag=rr.spell.tablet_active,scores={rr.spell.TabletCD=..0}] remove rr.spell.tablet_active


# Reset rr.system.Timer to 0 for all RunicLineDraw Markers with a score of 5 or above
execute as @e[type=marker,tag=RunicLineParticle,scores={rr.system.Timer=3..}] at @s run scoreboard players set @s rr.system.Timer 0
execute as @e[type=marker,tag=RunicLineDraw,scores={rr.system.Timer=4..}] at @s run scoreboard players set @s rr.system.Timer 0

# Display a Red Target Particle at all Runic Ring Interactions, forced for all players within 40 blocks of them
execute as @e[type=interaction,tag=MusicStand,tag=MusicNotHit] at @s run particle flame ~ ~0.175 ~ 0.01 0.01 0.01 0.001 1 force @a[distance=..40]
execute as @e[type=interaction,tag=RunicStand,tag=RunicNotHit] at @s at @n[type=item_display,distance=..0.1] run particle small_flame ^ ^0.175 ^-0.175 0.1 0.1 0.1 0 1 force @a[distance=..40]
execute as @e[type=interaction,tag=RunicStand,tag=RunicIsHit] at @s at @n[type=item_display,distance=..0.1] run particle soul_fire_flame ^ ^0.175 ^-0.175 0.015 0.015 0.015 0.008 1 force @a[distance=..40]


# Run Ticking Spell Commands if any player has the rr.spell.casting tag
execute as @a[tag=rr.spell.casting] at @s run function rr_recast:spells/core/tick


# Execute spell tick commands at entities that have the rr.spell.ticking tag
execute as @e[tag=rr.spell.ticking] at @s run function rr_recast:spells/core/functions/tick_main


# Tick Havenite Meteors in overworld (that's the only place they spawn)
execute in overworld as @n[type=item_display,tag=RunicHaveniteMeteor,tag=!RunicMeteorLanded] at @s run function rr_recast:event/meteor/meteor_tick


# Kill all Interactions that don't have any players within 10 blocks of them or if there are no players nearby that are holding the Runic Tablet.
execute as @e[tag=RunicStand,type=interaction,tag=!MusicStand] at @s unless entity @p[distance=..10,predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet] run kill @s


# Kill all Interactions that have been summoned for more than 10 seconds or if nearby players don't have a TabletActive tag
execute as @e[tag=RunicStand,scores={rr.system.Timer=..160},type=interaction,tag=!MusicStand] at @s unless entity @p[tag=rr.spell.tablet_active,distance=..6] run kill @s


# Kill all RunicLineBase, RunicLineDraw and RunicLineParticle Markers if their respective Interactions are not nearby for cleanup
execute as @e[type=marker,tag=RunicLineBase] at @s unless entity @n[type=interaction,tag=RunicStand,distance=..0.75] run kill @s
execute as @e[type=marker,tag=RunicLineDraw] at @s unless entity @n[type=interaction,tag=RunicStand,distance=..0.75] run kill @s
execute as @e[type=marker,tag=RunicLineParticle] at @s unless entity @n[type=interaction,tag=RunicStand,distance=..0.75] run kill @s


# Make RunicLineDraw Markers be killed when they reach the next RunicLineBase Marker when drawing lines
execute as @e[type=interaction,tag=RunicOrder2] at @s run kill @e[tag=RunicLine1,distance=..0.1,limit=1,sort=nearest,scores={rr.system.Timer=..200}]
execute as @e[type=interaction,tag=RunicOrder3] at @s run kill @e[tag=RunicLine2,distance=..0.1,limit=1,sort=nearest,scores={rr.system.Timer=..200}]
execute as @e[type=interaction,tag=RunicOrder4] at @s run kill @e[tag=RunicLine3,distance=..0.1,limit=1,sort=nearest,scores={rr.system.Timer=..200}]
execute as @e[type=interaction,tag=RunicOrder5] at @s run kill @e[tag=RunicLine4,distance=..0.1,limit=1,sort=nearest,scores={rr.system.Timer=..200}]


# Kill anything marked with killStand tag
execute as @e[tag=killStand] run kill @s