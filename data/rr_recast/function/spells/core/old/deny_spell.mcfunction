title @s actionbar {"text":"A Discombobulator prevents your spell from executing!","color":"red","bold":true}
scoreboard players set @s rr.spell.SpellID 0
scoreboard players set @s rr.spell.MemStore 0
scoreboard players set @s rr.spell.SpellStart 20
tag @s remove RunicCasting
tag @s remove RunicSpellRun