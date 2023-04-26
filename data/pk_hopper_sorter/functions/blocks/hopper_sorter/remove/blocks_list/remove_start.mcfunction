#> pk_hopper_sorter:blocks/hopper_sorter/remove/blocks_list/remove_start
# Remove the current Hopper Sorter from the pk.ho_so:data Blocks.HopperSorters storage

data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.Search set from storage pk.ho_so:data Blocks.HopperSorters
data modify storage pk.common:data Temp.Array.New set value []
function pk_hopper_sorter:blocks/hopper_sorter/remove/blocks_list/remove_recursive

data modify storage pk.ho_so:data Blocks.HopperSorters set from storage pk.common:data Temp.Array.New