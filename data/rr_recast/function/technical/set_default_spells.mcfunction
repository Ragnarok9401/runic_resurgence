# For All Spells:
#   - Name is used for text objects displayed to users
#   - Reference is used internally to check tags dynamically
#   - Windup determines how long it takes for a spell to fire after initializing the cast
#   - Cooldown determines how long it takes for spells to become available after a cast has completed
#   - Type determines the "Function Class" that the spell falls under, can be Combat, Utility, Misc, or None
#   - Subtype determines how a spell interacts with its target(s), and depends on the Type that the spell is
#       - Combat Types: Attack, Defense, Support
#       - Utility Types: World, Self
#       - Misc Types: Fun
#   - Delivery determines the way in which the spell is carried out (can be Projectile, Aura, or Self)
#   - Element determines the spell's "Elemental Class"
#   - Cost determines how much Mana the spell will require to cast
#   - Tier denotes the spell's Tier, which requires a Tablet of that Tier or higher to cast
#   - Minimum Cooldown and Minimum Windup both determine how much time is taken for each at minimum, even if stats on gear would lower these times further

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# For Projectile:
#   = Lifespan is how many ticks the projectile will travel before it expires [rr.spell.projectile.lifespan / rr.elemental.projectile.lifespan]
#   = Speed field denotes how fast the projectile travels in blocks per tick (multiply by 20 for blocks per second) [rr.projectile.speed]
#
#   = Acceleration field determines how the projectile changes speed as it travels. If present, requires:
#       - Change float, determines the amount that the speed changes over a set time
#       - Boundary Upper float, determines the upper bound that the projectile's speed can reach (can be negative)
#       - Boundary Lower float, determines the lower bound that the projectile's speed can reach (can be negative)
#
#   = Explosion field denotes if the projectile can hit multiple targets on expiration or collision, requires:
#       - Max Targets int, denotes number of targets the explosion can damage
#   = Explosion AOE denotes how far the explosion will hit entities from
#   = Trigger can be Any (block, entity, periodic, or expiration), Collision (only Block or Entity), Block, Entity, Timed (periodic, expiration), Periodic, Expiration, or None
#      (for persistent effects along a path)
#   = Entity Trigger Range denotes the radius for which the explosion will search for entities to trigger the explosion
#   = Block Trigger Range denotes the radius for which the explosion will search for blocks to trigger the explosion
#   = Base Damage is the damage, in half-hearts, that the spell will do
#   = Damage Type is the type of damage dealt by the spell, not necessarily always the same as the Spell's type
#
#   = Homing denotes whether the projectile will seek targets out
#   = Homing Radius denotes how close the projectile must be before it starts to home in (if 0, always homes to nearest valid target)
#   = Homing Type denotes the way in which the projectile homes (can be Until First Hit, Bounce, First Target Only, Always)
#       - Until First Hit will only allow the projectile to home in on any target until it hits its first target, after which it will no longer home in
#       - Bounce will cause the projectile to move toward valid targets, but will only change directions when hitting a target
#       - Always will simply allow the projectile to constantly change direction toward a valid target
#       - Timed will allow for periodic or temporary homing capabilities (can be Temporary or Periodic, needs a Homing Timer stat with it)
#
#   = Split field determines if/how the projectile will split, what projectile it splits into, how many of them and all other necessary stats [reference.projectile.split]
#   -   1) Projectiles list, denotes what projectile(s) spawn from each split, as well as their direction fired. [projectile.split.projectiles[]]
#   -       a) List contains a Projectile and all of its stats, as well as "Direction" and "Spread" fields that are relative to the base Projectile's direction.
#   -           - Direction is a list of 3 numbers (like: [0f, 0f, 0f]) that denotes how far left/right, down/up, and forward/backward the projectiles face from the base
#   -              projectile's velocity (each number will be used in a "facing ^x ^y ^z" command) [split.projectiles[{direction:[x,y,z]}] | x, y, z = float]
#   -           - Spread is a field that determines how projectiles will "spread out" from their base Direction, can be omitted for perfect accuracy
#   -               - If present, Spread requires Direction Offset Max, Direction Offset Min, Speed Offset Max and Speed Offset Min fields. These determine how far a projectile
#   -                  can travel from its set direction and speed. All Offsets are divided by 1000 for their true numbers (so 1000 would be 1.0)
#   -                  [split.projectiles[{spread:{dir_offset_min:w,dir_offset_max:x,speed_offset_min:y,speed_offset_min:z}}] | w, x, y, z = int]
#   -                   - Both Offset Max and Offset Min can be up to 1000 or down to -1000. If Max < Min, the Spread field is ignored
#   -
#   -       b) Each Projectile may also have a Copy Splits field, but BE CAREFUL WITH THIS ONE. This can/will easily crash the game if not careful. split.projectile
#   -          [{copy_splits:x}, x = int[0, 9]]
#   -           - Copy Splits can be set to 0 to cancel copying splits, or up to 9. Each subsequent Split will reduce this number by 1 until it reaches 0, where it will stop
#   -              copying splits. This means that projectiles can split recursively up to 9 times in total. Setting this number above 9 will still only allow 9 splits at max
#   -
#   -   2) Trigger denotes how/when the projectiles will split (Expiration = on expiration, Timed = on a timer, Hit = when piercing target (entity or block)
#   -      [projectile.split.trigger]
#   -       - Expiration makes it so that the split only occurs once the projectile expires, has no fields [split.trigger.expiration:{}]
#   -       - Timer Offset denotes how long it takes for the first split to occur, only valid if Timer trigger is present, CAN be higher than Timer for later start, CANNOT be
#   -          negative, 0 means it splits instantly on cast [split.trigger.timer:{time:x,timer_offset:y} | x, y = int]
#   -       - Hit makes the projectile split when damaging an entity or hitting a block, must also 
#   -
#   -   3) Max Splits denotes how many times the split payload can be created, always 1 for Expiration trigger [projectile.split.max_splits int]
#   -   4) Projectile Count denotes how many projectiles spawn, each will receive their own unique Spread.

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# For Aura:
#   - Radius is the radius which the spell takes place in
#
#   - Movement denotes if the spell is stationary on cast or if it moves in some way
#       - movement.stationary denotes if the spell does not move. If true, other data in Movement is ignored
#       - movement.follow_caster denotes if the spell will center itself on the caster at certain intervals
#       - movement.data denotes the way the aura moves, will only be checked if neither "movement.stationary" nor "movement.follow_caster" are present
#       - movement.data.type denotes how the aura will move, can be "Mortar", "Line", or "Summoner Direction"
#
#           - movement.data.type.mortar lobs the aura in front of the caster, think Wynncraft's Totem spell for the Shaman class. This data requires:
#               - Speed float, determines lobbed speed of the aura, determines both distance and max height
#               - Impact field, determines if some effect is carried out once the aura reaches the ground, like dealing damage
#               - Bounce field, determines if the aura will jump into the air again. Field requires:
#                   - Bounce Speed or Bounce Speed Percent float, determines how fast/far the aura will leap into the air
#                   - Bounce Amount int, determines the number of bounces carried out
#                   - Force Max Bounces bool, will cause the aura to bounce again even if it hits a wall
#               - Continuous bool, determines if the aura's default effect will carry out while not on the ground
#
#           -movement.data.type.line throws the aura in a straight line, think a normal projectile, but its primary function is continuous as it flies. Requires:
#               - Speed field
#
#   - Effects determines if any Potion Effects are applied to entities within the radius
#   - Lifespan determines how long the aura will last
#   - Health, if present, allows the aura to absorb damage through various means. The aura will expire early if its health is reduced to 0
#
#   - Display denotes how the aura will be shown, whether it be an Item with custom display, Particles, an Item Display or a combination of these
#       - display.border denotes if the aura will have a border at the edge of its Radius
#           - display.border.nodes denotes how many particles will be displayed on the border. Each node is evenly spaced, and is displayed by markers facing a node's direction
#           - display.border.distance_shown denotes how far from the border that the Border Particles will display

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Magic Bolt
data modify storage rr_recast:global spells.magic_bolt set value {name:"Magic Bolt",reference:magic_bolt,vector:{reference:magic_bolt,facing_x:0.0f,facing_y:0.0f,facing_z:0.0f,spawn_offset_x:0.0f,spawn_offset_y:0.0f,spawn_offset_z:0.0f,facing_offset_min:0,facing_offset_max:0,speed_offset_min:0,speed_offset_max:0},windup:60,cooldown:40,type:combat,subtype:attack,delivery:projectile,element:arcane,cost:15,id:92347,tier:1,projectile:{reference:magic_bolt,lifespan:50,explosion:true,projectile_id:0,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,split:{reference:magic_bolt,projectiles:[],trigger:{expiration:{}},max_splits:1,projectile_count:1},item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:purple_stained_glass",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},trail:"reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal @a[distance=..30,tag=!rr.spell.noparticles]",explosion_sound:"entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0",explosion_particle_1:"explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]",explosion_particle_2:"witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]"},minimum_cooldown:5,minimum_windup:5}

# Paladin's Pylon (previously Enchanted Shield)
data modify storage rr_recast:global spells.paladin_pylon set value {name:"Paladin's Pylon",reference:paladin_pylon,windup:160,cooldown:200,type:combat,subtype:defense,delivery:aura,element:arcane,id:54286,tier:1,cost:60,minimum_cooldown:80,minimum_windup:40,aura:{raidus:4.0f,reference:paladin_pylon,movement:{stationary:{}},effects:[{id:"resistance",duration:2,amplifier:0,hide_particles:true}],lifespan:120,health:40.0f,display:{item:{Item:{id:"minecraft:music_disc_cat",model:"rr_recast:spell/paladin_pylon/shield_a",count:1},Tags:["rr.setup.paladin_pylon","rr.aura.paladin_pylon","rr.aura","rr.entity","rr.spell.ticking"],NoGravity:1b,Age:4000,PickupDelay:32767,Invulnerable:1b,Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.aura","rr.aura.paladin_pylon","rr.marker","rr.setup.paladin_pylon"]}]},reference:paladin_pylon,particle:{id:"minecraft:dust{\"scale\":1,\"color\":[0,1,1]}",amount:4,distance:[3.5f,0.0f,3.5f],offset:[0.0f,0.125f,0.0f],force:false,distance_shown:30.0f,speed:0.01f},border:{id:"minecraft:small_flame",amount:1,nodes:8,distance_x:0.0f,distance_y:0.0f,distance_z:0.0f,offset_x:0.0f,offset_y:0.125f,offset_z:0.0f,force:"force @a[distance=..$(radius)]",distance_shown:4.0f,speed:0.01f,reference:paladin_pylon}}}}

# data modify storage rr_recast:global spells.magic_bolt set value {name:"Magic Bolt",reference:magic_bolt,windup:60,cooldown:40,projectile_id:0,type:combat,subtype:attack,delivery:projectile,element:arcane,cost:15,id:92347,tier:1,projectile:{reference:magic_bolt,lifespan:25,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.35f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,split:{reference:magic_bolt,projectiles:[{reference:magic_bolt,vector:{reference:magic_bolt,facing_x:-1.0f,facing_y:0.0f,facing_z:0.0f,spawn_offset_x:0.0f,spawn_offset_y:0.0f,spawn_offset_z:0.0f,facing_offset_min:0,facing_offset_max:0,speed_offset_min:0,speed_offset_max:0},lifespan:40,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.2f,acceleration:0.0f,speed_max:2.5f,speed_min:0.0f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:purple_concrete",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},copy_splits:2,trail:"reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal @a[distance=..30,tag=!rr.spell.noparticles]",explosion_sound:"entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0",explosion_particle_1:"explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]",explosion_particle_2:"witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]"},{reference:magic_bolt,vector:{reference:magic_bolt,facing_x:1.0f,facing_y:0.0f,facing_z:0.0f,spawn_offset_x:0.0f,spawn_offset_y:0.0f,spawn_offset_z:0.0f,facing_offset_min:0,facing_offset_max:0,speed_offset_min:0,speed_offset_max:0},lifespan:40,explosion:true,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.2f,acceleration:0.0f,speed_max:2.5f,speed_min:0.0f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:blue_concrete",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},copy_splits:2,trail:"reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal @a[distance=..30,tag=!rr.spell.noparticles]",explosion_sound:"entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0",explosion_particle_1:"explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]",explosion_particle_2:"witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]"}],trigger:{expiration:{}},max_splits:1,projectile_count:1},item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:purple_stained_glass",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},trail:"reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal @a[distance=..30,tag=!rr.spell.noparticles]",explosion_sound:"entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0",explosion_particle_1:"explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]",explosion_particle_2:"witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]"},minimum_cooldown:5,minimum_windup:5}

# data modify storage rr_recast:global spells.magic_bolt set value {name:"Magic Bolt",reference:magic_bolt,windup:60,cooldown:40,type:combat,subtype:attack,delivery:projectile,element:arcane,cost:15,id:92347,tier:1,projectile:{reference:magic_bolt,lifespan:50,explosion:true,projectile_id:0,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,split:{reference:magic_bolt,projectiles:[{reference:magic_bolt,vector:{reference:magic_bolt,facing_x:0.0f,facing_y:0.0f,facing_z:0.0f,spawn_offset_x:0.0f,spawn_offset_y:0.0f,spawn_offset_z:0.0f,facing_offset_min:0,facing_offset_max:0,speed_offset_min:0,speed_offset_max:0},lifespan:50,explosion:true,projectile_id:0,trigger:any,entity_trigger_range:2.0f,block_trigger_range:0.0f,explosion_aoe:3.0f,speed:0.5f,acceleration:0.0f,speed_max:2.5f,speed_min:-2.5f,damage:3.5f,damage_type:'rr_recast:magic_generic',homing:false,split:{reference:magic_bolt,projectiles:[],trigger:{expiration:{}},max_splits:1,projectile_count:10},item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:purple_stained_glass",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},copy_splits:0,trail:"reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal @a[distance=..30,tag=!rr.spell.noparticles]",explosion_sound:"entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0",explosion_particle_1:"explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]",explosion_particle_2:"witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]"}],trigger:{expiration:{}},max_splits:1,projectile_count:1},item_display:{CustomName:'"Magic Bolt"',CustomNameVisible:false,teleport_duration:1,Tags:["rr.projectile.magic_bolt","rr.projectile","rr.entity","rr.setup.magic_bolt","rr.spell.ticking"],brightness:{sky:12,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},item_display:"head",item:{id:"minecraft:purple_stained_glass",count:1},Passengers:[{id:"minecraft:marker",Tags:["rr.entity","rr.projectile","rr.projectile.magic_bolt","rr.marker","rr.setup.magic_bolt"]}]},copy_splits:0,trail:"reverse_portal ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal @a[distance=..30,tag=!rr.spell.noparticles]",explosion_sound:"entity.lightning_bolt.impact player @a[distance=..30] ~ ~ ~ 0.6 1.33 0",explosion_particle_1:"explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]",explosion_particle_2:"witch ~ ~ ~ 1.5 1.5 1.5 0.08 20 normal @a[distance=..30,tag=!rr.spell.noparticles]"},minimum_cooldown:5,minimum_windup:5}
