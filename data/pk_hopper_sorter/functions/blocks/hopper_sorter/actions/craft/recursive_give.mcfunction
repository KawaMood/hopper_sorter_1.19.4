#> pk_hopper_sorter:blocks/hopper_sorter/actions/craft/recursive_give

function pk_hopper_sorter:blocks/hopper_sorter/helpers/give
scoreboard players remove %crafted_amount pk.temp 1
execute if score %crafted_amount pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/actions/craft/recursive_give