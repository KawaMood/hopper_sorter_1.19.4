#> pk_hopper_sorter:blocks/hopper_sorter/environment/move/blocks_list/update_start

# Set data
data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.New set value []
data modify storage pk.common:data Temp.Array.Search set from storage pk.ho_so:data Blocks.HopperSorters

# Start to create new array
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_hopper_sorter:blocks/hopper_sorter/environment/move/blocks_list/update_recursive

# Update the blocks list from new array
data modify storage pk.ho_so:data Blocks.HopperSorters set from storage pk.common:data Temp.Array.New