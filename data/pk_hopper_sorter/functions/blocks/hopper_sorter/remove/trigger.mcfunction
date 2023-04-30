#> pk_hopper_sorter:blocks/hopper_sorter/remove/trigger
#@context as controller, at controller

# Set scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Check if there are remaining passed items on block and free them
execute align xyz positioned ~ ~-0.3 ~ as @e[type=item,tag=pk.ho_so.passed,dx=0] run function pk_hopper_sorter:blocks/hopper_sorter/remove/free_remaining_passed_items

# Drop item
function pk_hopper_sorter:blocks/hopper_sorter/helpers/drop/trigger

# Remove block
execute if block ~ ~ ~ chiseled_deepslate run setblock ~ ~ ~ air

# Remove from the block list
function pk_hopper_sorter:blocks/hopper_sorter/remove/blocks_list/remove_start

# Kill the matching components
kill @e[type=#pk_hopper_sorter:custom_block/components,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching,distance=..2]