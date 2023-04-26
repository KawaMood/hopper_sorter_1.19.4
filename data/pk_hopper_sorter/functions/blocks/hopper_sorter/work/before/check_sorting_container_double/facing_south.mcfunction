#> pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_double/facing_south

execute if block ~ ~ ~ #pk_hopper_sorter:chests[type=left] run data modify storage pk.common:data Temp.Sorter.Items append from block ~-1 ~ ~ Items[]
execute if block ~ ~ ~ #pk_hopper_sorter:chests[type=right] run data modify storage pk.common:data Temp.Sorter.Items append from block ~1 ~ ~ Items[]