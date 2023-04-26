#> pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_start
# Check if the Hopper Sorter adjacent sorting container exists and have items

# Reset data
data remove storage pk.common:data Temp.Sorter
data modify storage pk.common:data Temp.Sorter.Items set value []
data modify storage pk.common:data Temp.Sorter.Ids set value []

# Try to store items from the dedicated container block's location
execute if entity @s[tag=pk.facing.west] positioned ~-1 ~ ~ run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_from_direction
execute if entity @s[tag=pk.facing.east] positioned ~01 ~ ~ run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_from_direction
execute if entity @s[tag=pk.facing.north] positioned ~ ~ ~-1 run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_from_direction
execute if entity @s[tag=pk.facing.south] positioned ~ ~ ~01 run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_from_direction

# If mode is default: Create sorting Ids list
execute if entity @s[tag=pk.mode.default] run function pk_hopper_sorter:blocks/hopper_sorter/work/before/mode/default/create_sorting_ids_list_start

# If items have been found
execute if data storage pk.common:data Temp.Sorter.Items[{}] run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/start