#> pk_hopper_sorter:base/uninstall/start
# Uninstall the data pack and remove the common feature if there is no PK data pack installed anymore

# Remove all placed custom blocks
# Will need to be searched within all dimensions
data remove storage pk.common:data Temp.Array
data modify storage pk.common:data Temp.Array.Search set value []
# - Append Hopper Sorters
data modify storage pk.common:data Temp.Array.Search append from storage pk.ho_so:data Blocks.HopperSorters[]
# - Forceload chunks where custom blocks are, then wait 1 second for the chunk to be fully loaded
execute if data storage pk.common:data Temp.Array.Search[{}] run function pk_hopper_sorter:base/uninstall/forceload_custom_blocks_chunks

# 1 second after
schedule function pk_hopper_sorter:base/uninstall/after_1s 1s