# Display blue fire particles as soon as the player sneaks while holding a Tablet
particle soul_fire_flame ~ ~0.25 ~ 0.2 0.2 0.2 0.03 8 force @a[distance=..50]
playsound minecraft:block.trial_spawner.ominous_activate player @a[distance=..30] ~ ~1 ~ 0.95 1.4 0.35
playsound minecraft:item.trident.thunder player @a[distance=..30] ~ ~1 ~ 0.25 2 0


# Create a marker at the player's position that keeps track of the summoner's horizontal rotation
execute as @s at @s rotated as @s summon marker run tp @s ~ ~ ~ ~ 0
# Add tags so the Marker can be identified
data merge entity @e[distance=..0.1,type=marker,limit=1,sort=nearest,tag=!RunicRotationMarker] {Tags:["RunicRotationMarker","RunicTabMarker"]}

# Summon Interactions in front of the Marker with ID Tags
#region
## Int 1
execute as @s unless entity @e[type=interaction,tag=RunicStand1,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand1,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 2
execute as @s unless entity @e[type=interaction,tag=RunicStand2,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand2,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 3
execute as @s unless entity @e[type=interaction,tag=RunicStand3,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand3,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 4
execute as @s unless entity @e[type=interaction,tag=RunicStand4,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand4,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 5
execute as @s unless entity @e[type=interaction,tag=RunicStand5,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand5,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 6
execute as @s unless entity @e[type=interaction,tag=RunicStand6,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand6,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 7
execute as @s unless entity @e[type=interaction,tag=RunicStand7,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand7,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 8
execute as @s unless entity @e[type=interaction,tag=RunicStand8,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand8,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

## Int 9
execute as @s unless entity @e[type=interaction,tag=RunicStand9,limit=1,sort=nearest,distance=..0.8] run summon interaction ~ ~ ~ {width:0.35f,height:0.35f,Tags:[RunicStand9,RunicStandSetup,RunicStand,RunicNotHit,RunicStandInteraction]}

#endregion


# For each Interaction summoned by the Runic Tablet, set UUID scores to the player's UUID which summoned it, and teleport it to its set position.
#region
## Set UUIDs
execute as @e[distance=..0.08,type=interaction,tag=RunicStandSetup] at @s run scoreboard players operation @s rr.system.matchUUID1 = @p[distance=..0.08,predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet] rr.system.playerUUID1
execute as @e[distance=..0.08,type=interaction,tag=RunicStandSetup] at @s run scoreboard players operation @s rr.system.matchUUID2 = @p[distance=..0.08,predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet] rr.system.playerUUID2
execute as @e[distance=..0.08,type=interaction,tag=RunicStandSetup] at @s run scoreboard players operation @s rr.system.matchUUID3 = @p[distance=..0.08,predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet] rr.system.playerUUID3
execute as @e[distance=..0.08,type=interaction,tag=RunicStandSetup] at @s run scoreboard players operation @s rr.system.matchUUID4 = @p[distance=..0.08,predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet] rr.system.playerUUID4

## Teleporting - Horizontally Omnidirectional!
##region
### Int 1
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand1,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^ ^2.65 ^2

### Int 2
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand2,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^-0.937 ^2.262 ^2

### Int 3
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand3,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^-1.325 ^1.325 ^2

### Int 4
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand4,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^-0.937 ^0.388 ^2

### Int 5
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand5,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^ ^ ^2

### Int 6
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand6,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^0.937 ^0.388 ^2

### Int 7
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand7,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^1.325 ^1.325 ^2

### Int 8
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand8,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^0.937 ^2.262 ^2

### Int 9
execute as @e[distance=..0.08,limit=1,sort=nearest,type=interaction,tag=RunicStandSetup,tag=RunicStand9,tag=RunicStandInteraction] at @s run execute at @e[type=marker,tag=RunicRotationMarker,limit=1,sort=nearest,distance=..0.1] run tp @s ^ ^1.325 ^2

##endregion
#endregion

# Make Interactions summon Item Displays which will detail numbered positions and in what order they are activated in
# Indicator 1
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand1,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[1.15f,1.15f,1.15f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 1"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12356,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand1,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator1,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 2
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand2,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.05f,0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 2"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12357,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand2,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator2,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 3
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand3,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1.15f,1.15f,1.15f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 3"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12358,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand3,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator3,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 4
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand4,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator4"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 4"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12359,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand4,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator4,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 5
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand5,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator5"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.05f,0f],scale:[1.15f,1.15f,1.15f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 5"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12360,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand5,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator5,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 6
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand6,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator6"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 6"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12361,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand6,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator6,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 7
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand7,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator7"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[1.15f,1.15f,1.15f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 7"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12362,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand7,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator7,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 8
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand8,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator8"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 8"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12363,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand8,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator8,distance=..0.1] ~ ~ ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes

# Indicator 9
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand9,limit=1,sort=nearest,distance=..4] at @s rotated as @s run summon item_display ~ ~ ~ {item_display:"fixed",Tags:["RunicIndicator","RunicIndicator9"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.15f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'"Unselected Runic Indicator 9"',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant:{types:"#minecraft:is_fire"},"minecraft:custom_model_data":12364,"minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.125}}}}
execute as @e[type=interaction,tag=RunicStandSetup,tag=RunicStand9,limit=1,sort=nearest,distance=..4] at @s rotated as @s run tp @n[type=item_display,tag=RunicIndicator9,distance=..0.1] ~ ~-0 ~ facing entity @p[tag=!ConsecSneaking,tag=TaggedSneaking] eyes


# Kill RunicRotationMarker/RunicTabMarker markers after Interactions have been teleported
kill @e[type=marker,tag=RunicRotationMarker,tag=RunicTabMarker,limit=1,sort=nearest,distance=..0.1]


# Add a rr.spell.tablet_active tag to players who use the Tablet and remove the RunicStandSetup tag from interactions
tag @s add rr.spell.tablet_active
tag @e[tag=RunicStandSetup] remove RunicStandSetup