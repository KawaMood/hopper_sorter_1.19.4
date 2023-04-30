#> pk_hopper_sorter:blocks/hopper_sorter/place/interaction_initialize

# Set component id score to link entities
scoreboard players operation @s pk.custom_block.component.id = $next pk.custom_block.component.id

# Set tags
tag @s add pk.custom_block
tag @s add pk.custom_block.component
tag @s add pk.ho_so
tag @s add pk.ho_so.hopper_sorter
tag @s add pk.ho_so.hopper_sorter.component
tag @s add pk.ho_so.hopper_sorter.interaction

# Set data
data merge entity @s {width:0.3f,height:0.3f}

# Set facing property
execute if score $facing pk.temp matches 0 run data modify entity @s Rotation[0] set value 180f
execute if score $facing pk.temp matches 2 run data modify entity @s Rotation[0] set value -90f
execute if score $facing pk.temp matches 3 run data modify entity @s Rotation[0] set value 90f