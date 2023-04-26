#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/mode/default/matching_items_search_recursive

# Keep only current item's id
data remove storage pk.common:data Temp.Item
data modify storage pk.common:data Temp.Item.id set from storage pk.common:data Temp.Search.Items[-1].id

# Check if the current item's id matches an item's id of the sorter ids list
data modify storage pk.common:data Temp.Compare set from storage pk.common:data Temp.Sorter.Ids
execute store result score $compare.length pk.temp run data get storage pk.common:data Temp.Compare
execute store result score $compare.result pk.temp run data modify storage pk.common:data Temp.Compare[] set from storage pk.common:data Temp.Item.id
# - If it is the case, add current item in the matching items storage
execute unless score $compare.result pk.temp = $compare.length pk.temp run data modify storage pk.common:data Temp.Matching.Items prepend from storage pk.common:data Temp.Search.Items[-1]
# - Otherwise, add current item in the remaining items storage
execute if score $compare.result pk.temp = $compare.length pk.temp run data modify storage pk.common:data Temp.Remaining.Items prepend from storage pk.common:data Temp.Search.Items[-1]

# Recursive call
data remove storage pk.common:data Temp.Search.Items[-1]
scoreboard players remove $i pk.temp 1
execute if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/mode/default/matching_items_search_recursive