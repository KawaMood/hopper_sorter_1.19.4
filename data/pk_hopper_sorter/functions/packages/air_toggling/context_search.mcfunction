#> pk_hopper_sorter:packages/air_toggling/context_search
# Using a scheduled function avoid to uncessary tick entities
# It is not important if the entity that is supposed to be air toggled become unloaded, since the process is only used to force client render update

execute as @e[type=#pk_hopper_sorter:air_toggling,tag=pk.ho_so.air_toggling] run function pk_hopper_sorter:packages/air_toggling/context_trigger