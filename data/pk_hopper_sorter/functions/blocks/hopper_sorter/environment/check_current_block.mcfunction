#> pk_hopper_sorter:blocks/hopper_sorter/environment/check_current_block

# Reset the checking score
scoreboard players set $move pk.temp 0

# Check if pushed by piston
execute if block ~ ~ ~ moving_piston{extending:1b} run function pk_hopper_sorter:blocks/hopper_sorter/environment/move/pushed_by_piston

# Otherwise, check if pulled by sticky piston
execute if score $move pk.temp matches 0 if predicate pk_hopper_sorter:location/pulling_piston/adjacent run function pk_hopper_sorter:blocks/hopper_sorter/environment/move/pulled_by_piston

# Otherwise, break the block
execute if score $move pk.temp matches 0 run function pk_hopper_sorter:blocks/hopper_sorter/remove/trigger