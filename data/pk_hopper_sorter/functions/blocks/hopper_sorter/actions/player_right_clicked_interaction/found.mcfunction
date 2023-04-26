#> pk_hopper_sorter:blocks/hopper_sorter/actions/player_right_clicked_interaction/found

# Remove data
data remove entity @s interaction

# Retrieve the matching components
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id
tag @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching,distance=..2] add pk.temp.current.component

# Execute as controller
execute as @e[type=marker,tag=pk.ho_so.hopper_sorter.controller,tag=pk.temp.current.component,predicate=pk_hopper_sorter:scores/custom_block/component_id_matching,distance=..2] at @s run function pk_hopper_sorter:blocks/hopper_sorter/helpers/mode/switch

# Free components
tag @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.temp.current.component,distance=..2] remove pk.temp.current.component