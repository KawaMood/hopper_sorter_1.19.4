#> pk_hopper_sorter:blocks/hopper_sorter/work/before/mode/default/create_sorting_ids_list_recursive

data modify storage pk.common:data Temp.Sorter.Ids prepend from storage pk.common:data Temp.Search.Items[-1].id
data remove storage pk.common:data Temp.Search.Items[-1]
scoreboard players remove $i pk.temp 1
execute if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/before/mode/default/create_sorting_ids_list_recursive