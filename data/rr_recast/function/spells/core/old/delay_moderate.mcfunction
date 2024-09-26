# Moderate Delay on Spell Startup that gives 2.5 seconds to aim the spell sent, or to simply prevent instantaneous execution
scoreboard players add @s rr.stats.SpellsCast 1
scoreboard players set @s rr.spell.SpellStart 50
scoreboard players add @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_enriched] rr.system.Timer 20
scoreboard players remove @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_enriched] rr.spell.MemTCD 20
scoreboard players add @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_soul] rr.system.Timer 40
scoreboard players remove @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_soul] rr.spell.MemTCD 40
scoreboard players add @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_master] rr.system.Timer 80
scoreboard players remove @s[predicate=rr_recast:held_items/mainhand/tablet/runic_tablet_master] rr.spell.MemTCD 80
scoreboard players add @s[tag=RunicMem2Held] rr.system.Timer 20
scoreboard players remove @s[tag=RunicMem2Held] rr.spell.MemTCD 20
scoreboard players add @s[tag=RunicMem3Held] rr.system.Timer 40
scoreboard players remove @s[tag=RunicMem3Held] rr.spell.MemTCD 40
scoreboard players add @s[tag=RunicMem4Held] rr.system.Timer 80
scoreboard players remove @s[tag=RunicMem4Held] rr.spell.MemTCD 80
tag @s add RunicSpellStartup