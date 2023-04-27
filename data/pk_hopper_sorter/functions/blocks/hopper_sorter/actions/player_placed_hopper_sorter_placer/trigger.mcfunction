#> pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/trigger
# Player placed a {HopperSorter:1b} player head block
#@within advancement pk_hopper_sorter:interactions/placed_hopper_sorter_placer

# Revoke advancement
advancement revoke @s only pk_hopper_sorter:interactions/placed_hopper_sorter_placer

# Store item data the player used to place the Hopper Sorter
data remove storage pk.common:data Temp.Item
data modify storage pk.common:data Temp.Item set from entity @s SelectedItem

# Search the placed hopper sorter
tag @s add pk.temp.current
function pk_hopper_sorter:blocks/hopper_sorter/actions/player_placed_hopper_sorter_placer/search_block/start
tag @s remove pk.temp.current