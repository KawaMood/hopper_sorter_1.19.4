#> pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/start
# Start to search the block recursively in a 10x10x10 area around the player

scoreboard players set $x pk.temp 10
scoreboard players set $found pk.temp 0
execute align xyz positioned ~-5 ~-5 ~-5 run function pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/x