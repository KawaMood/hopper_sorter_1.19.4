#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/scheduled_verify_item_holders

# Kill item holders that don't have item passenger anymore
kill @e[type=area_effect_cloud,tag=pk.ho_so.item_holder,predicate=!pk_hopper_sorter:passengers/item]

# Check if there is at least one item holder remaining, if it is the case, schedule the function for the next tick
execute if entity @e[type=area_effect_cloud,tag=pk.ho_so.item_holder,limit=1] run schedule function pk_hopper_sorter:blocks/hopper_sorter/work/sort/scheduled_verify_item_holders 1t replace