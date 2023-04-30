#> pk_hopper_sorter:blocks/hopper_sorter/place/controller_initialize

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Set tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.custom_block.controller
tag @s add pk.ho_so
tag @s add pk.ho_so.hopper_sorter
tag @s add pk.ho_so.hopper_sorter.component
tag @s add pk.ho_so.hopper_sorter.controller
tag @s add pk.mode.default
execute if score $facing pk.temp matches 0 run tag @s add pk.facing.north
execute if score $facing pk.temp matches 1 run tag @s add pk.facing.south
execute if score $facing pk.temp matches 2 run tag @s add pk.facing.east
execute if score $facing pk.temp matches 3 run tag @s add pk.facing.west

# Store information to the controller
data modify entity @s data.HopperSorter set from storage pk.common:data Temp.HopperSorter