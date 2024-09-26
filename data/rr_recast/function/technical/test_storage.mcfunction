

data modify storage rr_recast:temp test set value [{"text":"\"text\":\"hello\""},{"text":"\"text\":\"hi\""},{"text":"\"text\":\"hey\""}]

execute as @s run function rr_recast:technical/test_storage_macro with storage rr_recast:temp test[0]
execute as @s run function rr_recast:technical/test_storage_macro with storage rr_recast:temp test[1]
execute as @s run function rr_recast:technical/test_storage_macro with storage rr_recast:temp test[2]