#> pk_hopper_sorter:blocks/hopper_sorter/place/blocks_list/store
# Store the HopperSorter info from the controller

# Clear storage
data remove storage pk.common:data Temp.HopperSorter

# Set version
execute store result storage pk.common:data Temp.HopperSorter.Version int 1 run scoreboard players get $pk.ho_so.version pk.value

# Set component score id
execute store result storage pk.common:data Temp.HopperSorter.id int 1 run scoreboard players get $next pk.custom_block.component.id

# Set facing
execute store result storage pk.common:data Temp.HopperSorter.Facing byte 1 run scoreboard players get $facing pk.temp

# Set owner data
data modify storage pk.common:data Temp.HopperSorter.Owner.UUID set from entity @a[tag=pk.temp.current.player,distance=..10,limit=1] UUID
execute store result storage pk.common:data Temp.HopperSorter.Owner.id int 1 run scoreboard players get @a[tag=pk.temp.current.player,distance=..10,limit=1] pk.player.id

# Set coordinates
data modify storage pk.common:data Temp.HopperSorter.x set from storage pk.common:data Temp.Block.x
data modify storage pk.common:data Temp.HopperSorter.y set from storage pk.common:data Temp.Block.y
data modify storage pk.common:data Temp.HopperSorter.z set from storage pk.common:data Temp.Block.z

# Set dimension
function pk_hopper_sorter:blocks/hopper_sorter/place/blocks_list/set_dimension_id

# Store current block's info into the list
data modify storage pk.ho_so:data Blocks.HopperSorters append from storage pk.common:data Temp.HopperSorter