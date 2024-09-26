title @a times 1.6s 1.6s 0.8s
title @a title {"text":"A Havenite Meteor falls!","color":"blue","italic":false,"font":"minecraft:alagard","bold":false}
execute as @a at @s run playsound entity.wither.death block @s ~ ~4 ~ 0.6 0.6 0
execute as @a at @s run playsound entity.lightning_bolt.thunder block @s ~ ~4 ~ 0.6 0.6 0

tellraw @a[dx=60,dz=60] [{"text":"[RR: ","color":"gray"},{"color":"#A341A3","text":"R"},{"color":"#945EAF","text":"e"},{"color":"#867ABC","text":"c"},{"color":"#7797C8","text":"a"},{"color":"#68B4D4","text":"s"},{"color":"#4BEDED","text":"t"},{"text":"] ","color":"gray"},{"text":"A meteor is falling near your location!","color":"blue"}]

execute at @s rotated as @s run summon item_display ~ ~400 ~ {Tags:["RunicHaveniteMeteor"],view_range:4.0f,shadow_radius:4.0f,item_display:"head",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3.5f,3.5f,3.5f]},item:{id:"minecraft:gold_nugget",count:1,components:{"minecraft:max_stack_size":1,"minecraft:item_name":'{"color":"blue","text":"Havenite Meteor"}',"minecraft:lore":['{"color":"dark_purple","italic":false,"text":"You shouldn\'t have this."}'],damage_resistant={types:"#minecraft:is_fire"},"minecraft:custom_model_data":12344,"minecraft:attribute_modifiers":[{id:"havenite_meteor_movement_reduction",type:"generic.movement_speed",amount:0.33,operation:"add_multiplied_total",slot:"any"},{id:"havenite_meteor_jump_reduction",type:"generic.jump_strength",amount:0.33,operation:"add_multiplied_total",slot:"any"}]}}}

spreadplayers ~ ~ 50 50 false @e[type=item_display,tag=RunicHaveniteMeteor,dx=1,dz=1]

execute as @e[type=item_display,limit=1,tag=RunicHaveniteMeteor,dx=30,dz=30] at @s run tp @s ~ 319.9 ~

# Make a rare chance for a better meteor to fall, which is surrounded by strong opponents to make resource extraction harder