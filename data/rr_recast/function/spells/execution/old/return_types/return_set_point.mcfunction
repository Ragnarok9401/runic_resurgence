# Runic Return Check - tag for making a new Return Point
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0},tag=!RunicReturnSet] at @s run tag @s add RunicReturnCheck
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=0},tag=!RunicReturnSet] at @s run tag @s add RunicReturnActive
execute as @s[tag=RunicReturnCheck] at @s run tag @s remove RunicSpellStartup

# Remove the RunicReturnNoMove tag
tag @s remove RunicReturnNoMove

# Execution of the Spell - Setting a new Return Point
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet] at @s store result score @s rr.math.NumTrack1 run clear @s diamond 0

# If user does NOT have a diamond
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet] at @s unless score @s rr.math.NumTrack1 matches 1.. run title @s actionbar [{"text":"You do not have the components necessary to create a Return Point. Needed: ","color":"red","italic":false},{"text":"1 Diamond.","color":"aqua"}]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet] at @s unless score @s rr.math.NumTrack1 matches 1.. run particle smoke ~ ~1 ~ 0.5 1 0.5 0.02 20 force @a[distance=..40]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,tag=!RunicSilentSpells] at @s unless score @s rr.math.NumTrack1 matches 1.. run playsound minecraft:block.glass.break player @a[distance=..40] ~ ~ ~ 0.8 0.75 0
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet] unless score @s rr.math.NumTrack1 matches 1.. at @s run tag @s remove RunicCasting
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet] unless score @s rr.math.NumTrack1 matches 1.. at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicReturnCheck,tag=!RunicSpellRun,tag=!RunicReturnSet] unless score @s rr.math.NumTrack1 matches 1.. at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicReturnCheck,tag=!RunicRetunSet,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s unless score @s rr.math.NumTrack1 matches 1.. run tag @s remove RunicReturnCheck
execute as @a at @s unless score @s rr.math.NumTrack1 matches 1.. run scoreboard players set @s[tag=!RunicReturnCheck,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0

# If user DOES have a diamond
# If there IS another Return Point within 2 blocks (block summon, display error)
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s if entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run tellraw @s {"text":"Another player's Return Point is too close to this location Must be 2 blocks away or more from another player's Return Point.","color":"red","italic":false}

# If the Return Point IS being set on an invalid location


# If there is no other Return Point within 2 blocks
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run clear @s diamond 1
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] store result score @s rr.math.coord.X run data get entity @s Pos[0]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] store result score @s rr.math.coord.Y run data get entity @s Pos[1]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] store result score @s rr.math.coord.Z run data get entity @s Pos[2]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run particle totem_of_undying ~ ~1 ~ 0.6 1 0.6 0.05 30 force @a[distance=..40]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2,tag=!RunicSilentSpells] run playsound minecraft:block.end_portal_frame.fill player @a[distance=..40] ~ ~ ~ 1.0 0.8 0
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2,tag=!RunicSilentSpells] run playsound minecraft:block.respawn_anchor.charge player @a[distance=..40] ~ ~ ~ 1 1.2 0
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run tellraw @s [{"text":"[Runic Resurgence] ","color":"gray","italic":false},{"text":"You now have a Return Point set at ","color":"light_purple"},{"text":"[","color":"aqua"},{"score":{"name":"@s","objective":"rr.math.coord.X"},"color":"aqua"},{"text":", ","color":"aqua"},{"score":{"name":"@s","objective":"rr.math.coord.Y"},"color":"aqua"},{"text":", ","color":"aqua"},{"score":{"name":"@s","objective":"rr.math.coord.Z"},"color":"aqua"},{"text":"] ","color":"aqua"},{"text":"and may return to that point using the Return Spell again. You may also remove this point by casting Return with a single Coal item in your offhand slot.","color":"light_purple"}]
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run summon marker ~ ~ ~ {Tags:["RunicReturnPoint","RunicReturnAlign"]}
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run scoreboard players operation @e[type=marker,tag=RunicReturnAlign] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run scoreboard players operation @e[type=marker,tag=RunicReturnAlign] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run scoreboard players operation @e[type=marker,tag=RunicReturnAlign] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run scoreboard players operation @e[type=marker,tag=RunicReturnAlign] rr.system.matchUUID4 = @s rr.system.playerUUID4
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run summon item_frame ~ ~ ~ {Facing:1b,Invisible:true,Invulnerable:true,Tags:["RunicReturnAlign"]}
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run execute as @e[type=item_frame,limit=1,sort=nearest,tag=RunicReturnAlign] at @s run tp @e[type=marker,tag=RunicReturnAlign,limit=1,sort=nearest] ~ ~ ~
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run execute as @e[type=marker,limit=1,sort=nearest,tag=RunicReturnPoint] at @s run forceload add ~ ~ ~ ~
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=!RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run tag @s add RunicReturnSet
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=RunicReturnSet] at @s run scoreboard players add @s rr.system.Timer 60
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=RunicReturnSet] at @s run scoreboard players remove @s rr.spell.MemTCD 60
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=RunicReturnSet,scores={rr.math.NumTrack1=1..}] at @s unless entity @e[type=marker,tag=RunicReturnPoint,tag=!RunicReturnAlign,distance=..2] run execute as @e[type=item_frame,limit=1,sort=nearest,tag=RunicReturnAlign] at @s run tag @e[type=marker,tag=RunicReturnAlign,limit=1,sort=nearest] remove RunicReturnAlign
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun,tag=RunicReturnSet,scores={rr.math.NumTrack1=1..}] run execute as @e[type=item_frame,limit=1,sort=nearest,tag=RunicReturnAlign] at @s run kill @s
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun] at @s run scoreboard players set @s rr.spell.SpellStore 0
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicReturnCheck,tag=RunicSpellRun] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicReturnCheck,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] at @s run tag @s remove RunicReturnCheck
scoreboard players set @s[tag=!RunicReturnCheck,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0}] rr.spell.SpellID 0