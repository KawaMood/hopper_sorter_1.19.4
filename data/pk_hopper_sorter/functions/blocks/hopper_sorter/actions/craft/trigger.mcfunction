#> pk_hopper_sorter:blocks/hopper_sorter/actions/craft/trigger

# Remove advancement and recipe
advancement revoke @s only pk_hopper_sorter:interactions/crafted_hopper_sorter
recipe take @s pk_hopper_sorter:hopper_sorter

# Check if the player crafted a knowledge book
execute if entity @s[scores={pk.crafted.knowledge_book=1..}] store result score %crafted_amount pk.temp run clear @s knowledge_book
execute if score %crafted_amount pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/actions/craft/recursive_give