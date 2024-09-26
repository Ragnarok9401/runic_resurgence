# List of stats to track for Mana Regen:
#   - rr.max_mana_boost (adds to Max Mana, doesn't boost regeneration rate)
#   - rr.mana_regen_boost (adds a flat boost to mana regeneration rate, calculated before Percent Regen)
#   - rr.mana_regen_percent (adds a percentage of mana regeneration, calculated before Flat Regeneration)
#   - rr.mana_regen_flat (adds a flat boost to mana regeneration rate, should be relatively small. Calculated after Percent Regen)

# List of effects to track for Mana Regen (usually tags):
#   - rr.mana_absorption (boosts mana regen by 50%, calculated after all of the above)
#   - rr.mana_sickness (reduces mana regeneration by half, calculated last)


scoreboard players add @s rr.spell.Mana 200


# Calculate current Mana against Max
scoreboard players operation @s rr.math.X = @s rr.spell.Mana
scoreboard players operation @s rr.math.Y = @s rr.spell.ManaMax
scoreboard players set @s rr.math.Z 100

# Multiply Current Mana by 100
scoreboard players operation @s rr.math.X *= @s rr.math.Z
# Divide Current Mana by ManaMax, store in Percent
execute store result score @s rr.spell.ManaPercent run scoreboard players operation @s rr.math.X /= @s rr.math.Y


# Calculate current Mana against MaxBonus, if it exceeds limit, set PercentBonus to 100, set Mana to ManaMaxBonus
execute if score @s rr.spell.Mana >= @s rr.spell.ManaMaxBonus run scoreboard players operation @s rr.spell.Mana = @s rr.spell.ManaMaxBonus
execute if score @s rr.spell.Mana >= @s rr.spell.ManaMaxBonus run scoreboard players set @s rr.spell.ManaPercentBonus 100

# Set Visible Mana Score (to be displayed to the player)
scoreboard players operation @s rr.math.X = @s rr.spell.Mana
scoreboard players operation @s rr.math.Y = @s rr.spell.ManaMaxBonus
scoreboard players set @s rr.math.Z 100
execute store result score @s rr.spell.ManaVisible run scoreboard players operation @s rr.math.X /= @s rr.math.Z
execute store result score @s rr.spell.ManaMaxBonusVisible run scoreboard players operation @s rr.math.Y /= @s rr.math.Z

# Display Mana to the player if holding a Runic Tablet or Tablet of Memory (denoted by rr.is_tablet tag)
execute as @s[tag=!rr.display_error,scores={rr.system.ActionbarChange=..0},predicate=rr_recast:held_items/mainhand/tablet/any_runic_tablet] run title @s actionbar [{"text":"Mana: [","color":"aqua","italic":false},{"score":{"name": "@s","objective": "rr.spell.ManaVisible"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name": "@s","objective": "rr.spell.ManaMaxBonusVisible"},"color":"aqua"},{"text":"]","color":"aqua"}]

# Return function to cancel further execution, returns 2 to keep track of if mana is full
execute if score @s rr.spell.Mana >= @s rr.spell.ManaMaxBonus run return 2

scoreboard players operation @s rr.math.X = @s rr.spell.Mana
scoreboard players operation @s rr.math.Y = @s rr.spell.ManaMaxBonus
scoreboard players set @s rr.math.Z 100

# Multiply Current Mana by 100
scoreboard players operation @s rr.math.X *= @s rr.math.Z
# Divide Current Mana by ManaMaxBonus, store in PercentBonus
execute store result score @s rr.spell.ManaPercentBonus run scoreboard players operation @s rr.math.X /= @s rr.math.Y