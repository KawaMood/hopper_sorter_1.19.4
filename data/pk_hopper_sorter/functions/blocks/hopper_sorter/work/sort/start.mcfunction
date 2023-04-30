#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/start

# Prepare data
# pk.common:data Temp.Sorter.Ids has been defined within the function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_start
data modify storage pk.common:data Temp.Search.Items set value []
data modify storage pk.common:data Temp.Search.Items set from block ~ ~1 ~ Items
data modify storage pk.common:data Temp.Matching.Items set value []
data modify storage pk.common:data Temp.Remaining.Items set value []
data modify storage pk.common:data Temp.Backup.Remaining.Items set value []

# Remove ignored data from the sorter items
function pk_hopper_sorter:blocks/hopper_sorter/work/sort/sorter_items_ignored_data

# Search the matching items
scoreboard players set $i pk.temp 0
execute store result score $i pk.temp run data get storage pk.common:data Temp.Search.Items
execute if entity @s[tag=pk.mode.default] if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/mode/default/matching_items_search_recursive
execute if entity @s[tag=pk.mode.strict] if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/mode/strict/matching_items_search_recursive

# If matching items have been found
scoreboard players set $i pk.temp 0
execute store result score $i pk.temp run data get storage pk.common:data Temp.Matching.Items
execute if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_found