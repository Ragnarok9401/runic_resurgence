# Moderate Startup (if Return not set) or Very Long Startup (if Return is set). Allows the user to set a Return Point, and on a subsequent cast, the user returns to that point. Each time a Return Point is set, a Diamond must be consumed. The Return Point may be removed by casting Return with a Coal item in offhand slot.

# The only criteria for a Return Point is that it must be on a solid surface. This is to prevent it being created in the air. If the block that it is created on is removed, the Return Point is also removed and must be replaced to function.

# Startup, Tag Checking/Setting, Scoreboard Resets
execute as @s[tag=!RunicSpellStartup,tag=!RunicReturnCheck,tag=!RunicReturnSet,tag=!RunicReturnActive] at @s run function rr_recast:spells/core/delay_moderate
execute as @s[tag=!RunicSpellStartup,tag=!RunicReturnSpell,tag=RunicReturnSet,tag=!RunicReturnActive] at @s run function rr_recast:spells/core/delay_long_return
tag @s[tag=RunicCasting] add RunicSpellStarted

# If the user has moved a block in any direction, cancel the spell and display a message
execute store result score @s[tag=RunicReturning,tag=RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] rr.math.coord.X run data get entity @s Pos[0] 1
execute store result score @s[tag=RunicReturning,tag=RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] rr.math.coord.Y run data get entity @s Pos[1] 1
execute store result score @s[tag=RunicReturning,tag=RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] rr.math.coord.Z run data get entity @s Pos[2] 1
execute as @s[tag=RunicReturnNoMove,tag=RunicReturnSet,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] unless score @s rr.math.coord.X = @s rr.math.F run tag @s remove RunicReturnNoMove
execute as @s[tag=RunicReturnNoMove,tag=RunicReturnSet,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] unless score @s rr.math.coord.Y = @s rr.math.E run tag @s remove RunicReturnNoMove
execute as @s[tag=RunicReturnNoMove,tag=RunicReturnSet,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] unless score @s rr.math.coord.Z = @s rr.math.D run tag @s remove RunicReturnNoMove

execute as @s[tag=RunicReturning,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tellraw @s [{"text":"[Runic Resurgence] ","color":"white","italic":false},{"text":"Spell failed! While casting Return, you may not move if you are trying to teleport to your Return Point.","color":"red","italic":false}]
execute as @s[tag=RunicReturning,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run kill @e[type=marker,tag=RunicReturnParticle]

execute as @s[tag=RunicReturning,tag=RunicSpellStartup,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run scoreboard players add @s rr.system.Timer 40
execute as @s[tag=RunicReturning,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run scoreboard players remove @s rr.spell.MemTCD 40
execute as @s[tag=RunicReturning,tag=RunicReturnSet,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tag @s remove RunicCasting
execute as @s[tag=RunicReturning,tag=RunicReturnSet,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tag @s remove RunicSpellStarted
execute as @s[tag=RunicReturning,tag=RunicReturnSet,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tag @s remove RunicSpellRun
execute as @s[tag=RunicReturning,tag=RunicReturnSet,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tag @s remove RunicSpellStartup
execute as @s[tag=RunicReturning,tag=RunicReturnSet,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tag @s remove RunicReturning
execute as @s[tag=RunicReturning,tag=!RunicSpellRun,scores={rr.spell.SpellStart=0},tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run tag @s remove RunicReturnSpell
scoreboard players set @s[tag=!RunicReturnSpell,tag=!RunicSpellRun,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] rr.spell.SpellStore 0
scoreboard players set @s[tag=!RunicReturnSpell,tag=!RunicSpellRun,tag=!RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] rr.spell.SpellID 0


# Particles/sounds for when Return Point IS set
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.Return.ParticleTimer=..160},tag=RunicReturnSet] at @s run scoreboard players add @s rr.spell.Return.ParticleTimer 1
# function is for visuals and sounds
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..,rr.spell.Return.ParticleTimer=..160},tag=RunicReturnSet] at @s run function rr_recast:fun/return_effects

# Particles/sounds for when Return Point is NOT set
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=1..},tag=!RunicReturnSet] at @s run particle witch ~ ~1 ~ 0.25 0.25 0.25 0.02 1 force @a[distance=..50]
execute as @s[tag=RunicSpellStartup,scores={rr.spell.SpellStart=10..},tag=!RunicReturnSet,tag=!RunicSilentSpells] at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..40] ~ ~1 ~ 0.1 1.75

execute as @s[tag=RunicSpellStartup,tag=RunicReturnSet,tag=RunicReturnNoMove,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run title @s actionbar {"text":"Casting: Return [ Returning to Return Point ]","color":"aqua","bold":true}
execute as @s[tag=RunicSpellStartup,tag=!RunicReturnSet] at @s run title @s actionbar {"text":"Casting: Return [ Setting Return Point ]","color":"dark_aqua","bold":true}
execute as @s[tag=RunicSpellStartup,tag=RunicReturnSet,nbt={Inventory:[{Slot:-106b,id:"minecraft:coal"}]}] at @s run title @s actionbar {"text":"Casting: Return [ Removing Return Point ]","color":"dark_aqua","bold":true}

execute as @s[tag=RunicReturnSet,tag=RunicSpellRun,scores={rr.spell.SpellStart=0},tag=!RunicReturnActive] at @s run function rr_recast:spells/execution/return_types/return_teleport_or_remove
execute as @s[tag=!RunicReturnSet,tag=RunicSpellRun,scores={rr.spell.SpellStart=0},tag=!RunicReturnActive] at @s run function rr_recast:spells/execution/return_types/return_set_point
execute as @s at @s run tag @s remove RunicReturnActive