execute as @s at @s facing entity @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest,distance=..15] eyes unless entity @e[type=marker,tag=RunicSoulStand,distance=..1.75] run summon marker ~ ~1 ~ {Tags:["RunicSoulStandMax","RunicStand","RunicSoulStand","RunicSoulStandStart"],Invulnerable:true}
execute as @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest,distance=..15] run scoreboard players operation @e[tag=RunicSoulStandMax,limit=1,sort=nearest] rr.system.matchUUID1 = @s rr.system.playerUUID1
execute as @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest,distance=..15] run scoreboard players operation @e[tag=RunicSoulStandMax,limit=1,sort=nearest] rr.system.matchUUID2 = @s rr.system.playerUUID2
execute as @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest,distance=..15] run scoreboard players operation @e[tag=RunicSoulStandMax,limit=1,sort=nearest] rr.system.matchUUID3 = @s rr.system.playerUUID3
execute as @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest,distance=..15] run scoreboard players operation @e[tag=RunicSoulStandMax,limit=1,sort=nearest] rr.system.matchUUID4 = @s rr.system.playerUUID4
scoreboard players set @e[tag=RunicSoulStandMax,limit=1,sort=nearest] rr.system.Timer 0
damage @s 13 rr_recast:magic_chaos by @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest] from @e[tag=RunicSoulSteal,tag=RunicMaxSoul,limit=1,sort=nearest]
scoreboard players add @p[tag=RunicSoulSteal,tag=RunicMaxSoul] rr.stats.DmgChaos 13
effect give @s slowness 18 1 true
effect give @s blindness 18 1 true
effect give @s darkness 18 1 true