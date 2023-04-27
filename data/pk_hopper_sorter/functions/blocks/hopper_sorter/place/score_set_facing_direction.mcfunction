#> pk_hopper_sorter:blocks/hopper_sorter/place/score_set_facing_direction
#@context current player at placed block

scoreboard players set $facing pk.temp 0

# Check what direction the current player is facing
# South (0)
execute if entity @s[y_rotation=-44.999999..44.999999] run scoreboard players set $facing pk.temp 0
# North (1)
execute if entity @s[y_rotation=135..224.999999] run scoreboard players set $facing pk.temp 1
# West (2)
execute if entity @s[y_rotation=45..134.999999] run scoreboard players set $facing pk.temp 2
# East (3)
execute if entity @s[y_rotation=-135..-45] run scoreboard players set $facing pk.temp 3