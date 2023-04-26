#> pk_hopper_sorter:blocks/hopper_sorter/work/before/mode/default/create_sorting_ids_list_start

data modify storage pk.common:data Temp.Search.Items set value []
data modify storage pk.common:data Temp.Search.Items append from storage pk.common:data Temp.Sorter.Items[]
scoreboard players set $i pk.temp 0
execute store result score $i pk.temp run data get storage pk.common:data Temp.Search.Items
execute if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/before/mode/default/create_sorting_ids_list_recursive