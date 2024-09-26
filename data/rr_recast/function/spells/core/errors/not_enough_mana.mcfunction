$title @s actionbar [{"text":"Not enough mana! [","color":"red","italic":false},{"score":{"name":"@s","objective":"rr.spell.ManaVisible"},"color":"red"},{"text":"/$(cost)]","color":"red"}]

scoreboard players set @s rr.system.ActionbarChange 2

tag @s remove rr.spell.tablet_active
scoreboard players set @s rr.spell.SpellID 0
scoreboard players set @s rr.spell.TabletCD 0