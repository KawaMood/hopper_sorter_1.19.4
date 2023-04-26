#> pk_hopper_sorter:blocks/hopper_sorter/main/controller_tick

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Set tag
tag @s add pk.temp.current.controller

# Check environment
function pk_hopper_sorter:blocks/hopper_sorter/environment/controller_tick

# Work if an enabled valid input contains items above it
execute unless block ~ ~1 ~ hopper[enabled=false] if block ~ ~1 ~ #pk_hopper_sorter:valid_inputs{Items:[{}]} if block ~ ~-1 ~ #pk_hopper_sorter:valid_outputs run function pk_hopper_sorter:blocks/hopper_sorter/work/before/check_sorting_container_start

# Remove tag
tag @s remove pk.temp.current.controller