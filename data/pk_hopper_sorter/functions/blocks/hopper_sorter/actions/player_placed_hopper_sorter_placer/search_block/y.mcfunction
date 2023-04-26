#> pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/y
# Recursively search on the Y axis

scoreboard players set $z pk.temp 10
function pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/z
scoreboard players remove $y pk.temp 1
execute if score $found pk.temp matches 0 if score $y pk.temp matches 1.. positioned ~ ~1 ~ run function pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/y