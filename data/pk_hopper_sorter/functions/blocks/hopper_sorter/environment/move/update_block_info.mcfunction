#> pk_hopper_sorter:blocks/hopper_sorter/environment/move/update_block_info

# Store new controller pos
data remove storage pk.common:data Temp.Entity.Pos
execute store result storage pk.common:data Temp.Entity.Pos.x int 1 run data get entity @s Pos[0]
execute store result storage pk.common:data Temp.Entity.Pos.y int 1 run data get entity @s Pos[1]
execute store result storage pk.common:data Temp.Entity.Pos.z int 1 run data get entity @s Pos[2]

# Store new location to the controller data
data modify entity @s data.HopperSorter.x set from storage pk.common:data Temp.Entity.Pos.x
data modify entity @s data.HopperSorter.y set from storage pk.common:data Temp.Entity.Pos.y
data modify entity @s data.HopperSorter.z set from storage pk.common:data Temp.Entity.Pos.z

# Store new location in the blocks list
function pk_hopper_sorter:blocks/hopper_sorter/environment/move/blocks_list/update_start