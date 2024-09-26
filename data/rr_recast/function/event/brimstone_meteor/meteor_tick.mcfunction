# Move Brimstone Meteors down to the ground, and display its position in chat when it lands
execute as @s at @s unless block ~ ~ ~ air run tag @s add RunicBrimLanded
execute as @s[tag=!RunicBrimLanded] at @s run tp @s ~ ~-1 ~
execute as @s[tag=RunicBrimLanded] at @s store result score @s rr.math.X run data get entity @s Pos[0] 1.0
execute as @s[tag=RunicBrimLanded] at @s store result score @s rr.math.Y run data get entity @s Pos[1] 1.0
execute as @s[tag=RunicBrimLanded] at @s store result score @s rr.math.Z run data get entity @s Pos[2] 1.0
execute as @s[tag=RunicBrimLanded] at @s run tellraw @a [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"The meteor has landed! It will disappear in 10 minutes! Coordinates: ","color":"aqua","italic":false},{"text":"[","color":"blue"},{"text":"X=","color":"green"},{"score":{"objective":"rr.math.X","name":"@n[type=item_display,tag=RunicBrimMeteor]"},"color":"green"},{"text":", Y=","color":"green"},{"score":{"objective":"rr.math.Y","name":"@n[type=item_display,tag=RunicBrimMeteor]"},"color":"green"},{"text":", Z=","color":"green"},{"score":{"objective":"rr.math.Z","name":"@n[type=item_display,tag=RunicBrimMeteor]"},"color":"green"},{"text":"]","color":"blue"}]
execute as @s[tag=RunicBrimLanded] at @s run particle explosion_emitter ~ ~1 ~ 0 0 0 1 2 force @a[distance=..60]
execute as @s[tag=RunicBrimLanded] at @s run playsound entity.wither.spawn block @a[distance=..60] ~ ~1 ~ 0.75 0.7 0
execute as @s[tag=RunicBrimLanded] at @s run playsound block.trial_spawner.spawn_item block @a[distance=..60] ~ ~1 ~ 1 0.5 0
execute as @s[tag=RunicBrimLanded] at @s run playsound block.amethyst_block.break block @a[distance=..60] ~ ~1 ~ 1.3 0.5 0
execute as @s[tag=RunicBrimLanded] at @s run playsound item.mace.smash_ground_heavy block @a[distance=..60] ~ ~1 ~ 1.3 0.65 0
execute as @s[tag=RunicBrimLanded] at @s run summon interaction ~ ~1 ~ {width:3.8f,height:2f,response:1b,Tags:["RunicBrimMeteoriteHarvestable","RunicMeteorite"]}
execute as @s[tag=RunicBrimLanded] at @s run summon item_display ~ ~1 ~ {item_display:"fixed",Tags:["RunicBrimMeteorDisplay","RunicMeteorite"],brightness:{sky:15,block:6},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[3f,3f,3f]},item:{id:"minecraft:gold_nugget",count:1,components:{item_name:'{"text":"Brimstone Meteorite","color":"light_purple","italic":false}',lore:['{"text":"You shouldn\'t have this.","color":"light_purple","italic":false}'],custom_model_data:12343}}}
execute as @s[tag=RunicBrimLanded] at @s run kill @s