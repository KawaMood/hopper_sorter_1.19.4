#> pk_hopper_sorter:base/uninstall/remove_common_features
# Remove all features common to each PK Datapacks
# /!\ Do not run this function manually!

# Uninstall packages
function pk_hopper_sorter:packages/air_toggling/uninstall
function pk_hopper_sorter:packages/player_id/uninstall
function pk_hopper_sorter:packages/dimension_marker/uninstall

# Remove pk.common.data storage data
data remove storage pk.common:data Datapacks
data remove storage pk.common:data Temp

# Remove scores
scoreboard objectives remove pk.value
scoreboard objectives remove pk.temp
scoreboard objectives remove pk.custom_block.component.id
scoreboard objectives remove pk.custom_block.interaction.id