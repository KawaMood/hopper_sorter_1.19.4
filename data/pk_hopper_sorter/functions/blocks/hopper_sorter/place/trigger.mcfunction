#> pk_hopper_sorter:blocks/hopper_sorter/place/trigger
# Place a hopper sorter and store its relative information in the blocks list

# Scores
# - Increment the component id score
scoreboard players add $next pk.custom_block.component.id 1
# - Check what direction the block is facing
function pk_hopper_sorter:blocks/hopper_sorter/place/score_set_facing_direction

# Prepare data of the hopper sorter and store the hopper sorter in the blocks list
function pk_hopper_sorter:blocks/hopper_sorter/place/blocks_list/store

# Set block
setblock ~ ~ ~ chiseled_deepslate

# Set controller
execute positioned ~0.5 ~0.5 ~0.5 summon marker run function pk_hopper_sorter:blocks/hopper_sorter/place/controller_initialize

# Set chest marker
execute if score $facing pk.temp matches 0 positioned ~0.5 ~0.5 ~-0.001 summon block_display run function pk_hopper_sorter:blocks/hopper_sorter/place/chest_marker_initialize
execute if score $facing pk.temp matches 1 positioned ~0.5 ~0.5 ~01.001 summon block_display run function pk_hopper_sorter:blocks/hopper_sorter/place/chest_marker_initialize
execute if score $facing pk.temp matches 2 positioned ~01.001 ~0.5 ~0.5 summon block_display run function pk_hopper_sorter:blocks/hopper_sorter/place/chest_marker_initialize
execute if score $facing pk.temp matches 3 positioned ~-0.001 ~0.5 ~0.5 summon block_display run function pk_hopper_sorter:blocks/hopper_sorter/place/chest_marker_initialize

# Set interaction
execute if score $facing pk.temp matches 0 positioned ~0.5 ~0.35 ~-0.001 summon interaction run function pk_hopper_sorter:blocks/hopper_sorter/place/interaction_initialize
execute if score $facing pk.temp matches 1 positioned ~0.5 ~0.35 ~01.001 summon interaction run function pk_hopper_sorter:blocks/hopper_sorter/place/interaction_initialize
execute if score $facing pk.temp matches 2 positioned ~01.001 ~0.35 ~0.5 summon interaction run function pk_hopper_sorter:blocks/hopper_sorter/place/interaction_initialize
execute if score $facing pk.temp matches 3 positioned ~-0.001 ~0.35 ~0.5 summon interaction run function pk_hopper_sorter:blocks/hopper_sorter/place/interaction_initialize

# Debug logs
execute if score $logs.datapack.ho_so pk.value matches 1 run tellraw @a[tag=pk.dev] [{"selector":"@a[tag=pk.temp.current.player,limit=1]","color": "gray"},{"text": " placed Hopper Sorter at ["},{"nbt":"Temp.HopperSorter.x","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.HopperSorter.y","storage":"pk.common:data"},{"text": ","},{"nbt":"Temp.HopperSorter.z","storage":"pk.common:data"},{"text": "]"}]