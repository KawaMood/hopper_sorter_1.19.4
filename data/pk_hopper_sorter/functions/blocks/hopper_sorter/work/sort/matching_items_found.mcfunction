#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_found

# Set the input content from remaining items
data modify block ~ ~1 ~ Items set from storage pk.common:data Temp.Remaining.Items 

# Pass or drop them and set the input content from remaining items
execute if block ~ ~-1 ~ hopper run data modify block ~ ~-1 ~ TransferCooldown set value 1
execute if block ~ ~-1 ~ #pk_hopper_sorter:valid_to_pass_outputs run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_pass_recursive
execute unless block ~ ~-1 ~ #pk_hopper_sorter:valid_to_pass_outputs run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_drop_recursive