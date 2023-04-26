#> pk_hopper_sorter:base/uninstall/after_1s

# Remove custom blocks when chunks are (normally) fully loaded
execute as @e[type=marker,tag=pk.ho_so.uninstall.forceload_chunk] at @s run function pk_hopper_sorter:base/uninstall/remove_custom_block

# Remove current data pack storage
data remove storage pk.ho_so:data Block
data remove storage pk.ho_so:data Blocks

# Remove current data pack scores

# Remove the current data pack from the installed PK data packs list
data remove storage pk.common:data Datapacks[{Name:"Hopper Sorters"}]

# Logs
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Uninstalled ","color": "red"},{"text": "PK Hopper Sorters","color": "aqua","bold": true},{"text": " successfully","color": "red"}]

# Remove common features if there is no PK data pack installed anymore
execute unless data storage pk.common:data Datapacks[{}] run function pk_hopper_sorter:base/uninstall/remove_common_features

# Remove installed version score
scoreboard players reset $pk.ho_so.version pk.value