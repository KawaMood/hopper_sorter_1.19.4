#> pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/switch_direction

execute if block ~ ~ ~ #pk_hopper_sorter:chests[facing=east] run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/facing_east
execute if block ~ ~ ~ #pk_hopper_sorter:chests[facing=west] run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/facing_west
execute if block ~ ~ ~ #pk_hopper_sorter:chests[facing=north] run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/facing_north
execute if block ~ ~ ~ #pk_hopper_sorter:chests[facing=south] run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/facing_south