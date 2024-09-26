data modify storage rr.ui mask set from storage rr.ui current
execute on passengers run function rr_recast:menu/gui/get_mask with entity @s data.page
data modify storage rr.ui current set from storage rr.ui mask

execute if score $ui_type rr.ui matches 1 run function rr_recast:menu/minecart/load_page