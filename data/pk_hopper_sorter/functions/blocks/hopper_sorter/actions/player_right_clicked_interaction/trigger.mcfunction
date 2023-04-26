#> pk_hopper_sorter:blocks/hopper_sorter/actions/player_right_clicked_interaction/trigger

# Revoke advancement
advancement revoke @s only pk_hopper_sorter:interactions/right_clicked_hopper_sorter_interaction

# Tag the current player
tag @s add pk.temp.current.player

# Search the interaction entity
execute as @e[type=interaction,tag=pk.ho_so.hopper_sorter.interaction,distance=..16] at @s if data entity @s interaction.player run function pk_hopper_sorter:blocks/hopper_sorter/actions/player_right_clicked_interaction/found

# Free the current entities
tag @s remove pk.temp.current.player