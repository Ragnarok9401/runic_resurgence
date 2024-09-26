function rr_recast:menu/gui/compendium/home/mask
data modify storage rr.ui current set from storage rr.ui mask
execute on passengers run data modify entity @s data.page.mask set value "function rr_recast:menu/gui/compendium/home/mask"