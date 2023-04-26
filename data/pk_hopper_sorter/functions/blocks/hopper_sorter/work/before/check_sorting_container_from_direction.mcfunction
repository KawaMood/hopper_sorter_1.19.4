#> pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_from_direction

# Attempt to append Items data from the dedicated container block's location
data modify storage pk.common:data Temp.Sorter.Items append from block ~ ~ ~ Items[]

# Check if the container is a double container
execute if block ~ ~ ~ #pk_hopper_sorter:chests unless block ~ ~ ~ #pk_hopper_sorter:chests[type=single] run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/switch_direction