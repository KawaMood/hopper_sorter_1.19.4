#> pk_hopper_sorter:blocks/hopper_sorter/remove/free_remaining_passed_items

# Remove tags
tag @s remove pk.ho_so
tag @s remove pk.ho_so.item
tag @s remove pk.ho_so.passed

# Change Age and Pickupdelay
data merge entity @s {Age:0s,PickupDelay:1s}

# Remove AEC
execute on vehicle run kill @s[tag=pk.ho_so.item_holder]