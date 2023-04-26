#> pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/found
# Block has been found

scoreboard players set $found pk.temp 1

# Store the block data
data modify storage pk.common:data Temp.Block set from block ~ ~ ~

# Place
function pk_hopper_sorter:blocks/hopper_sorter/place/trigger