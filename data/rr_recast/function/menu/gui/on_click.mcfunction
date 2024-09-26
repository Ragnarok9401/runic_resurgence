function rr_recast:menu/run_cmd with storage rr.ui in[0].components."minecraft:custom_data".RunicMenuItem

playsound item.book.page_turn player @p ~ ~ ~ 1 1 0

execute if score $ui_type rr.ui matches 1 run function rr_recast:menu/minecart/load_page