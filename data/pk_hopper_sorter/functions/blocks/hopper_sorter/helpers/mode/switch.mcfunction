#> pk_hopper_sorter:blocks/hopper_sorter/helpers/mode/switch
# @context controller at controller

# Set the changed score
scoreboard players set $changed pk.temp 0

# Switch mode
execute if entity @s[tag=pk.mode.default] run function pk_hopper_sorter:blocks/hopper_sorter/helpers/mode/strict
execute if score $changed pk.temp matches 0 if entity @s[tag=pk.mode.strict] run function pk_hopper_sorter:blocks/hopper_sorter/helpers/mode/default