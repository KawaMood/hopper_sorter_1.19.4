#> pk_hopper_sorter:blocks/hopper_sorter/environment/move/pulled_by_piston

# Switch direction
execute if block ~-1 ~ ~ moving_piston{extending:0b} as @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..2,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching] at @s run tp @s ~-1 ~ ~
execute if block ~01 ~ ~ moving_piston{extending:0b} as @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..2,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching] at @s run tp @s ~01 ~ ~
execute if block ~ ~ ~-1 moving_piston{extending:0b} as @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..2,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching] at @s run tp @s ~ ~ ~-1
execute if block ~ ~ ~01 moving_piston{extending:0b} as @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..2,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching] at @s run tp @s ~ ~ ~01
execute if block ~ ~-1 ~ moving_piston{extending:0b} as @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..2,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching] at @s run tp @s ~ ~-1 ~
execute if block ~ ~01 ~ moving_piston{extending:0b} as @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..2,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching] at @s run tp @s ~ ~01 ~

# Set scores
scoreboard players set @s pk.ho_so.move.timer 3
scoreboard players set $move pk.temp 1

# Update block info
function pk_hopper_sorter:blocks/hopper_sorter/environment/move/update_block_info