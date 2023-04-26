#> pk_hopper_sorter:base/load
# Main load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Settings:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

# Common:
# - $logs.load | default: (undefined) | <=0 = mask load logs | (undefined) or >=1 = show load logs
# - $logs.tick | default: (undefined) | (undefined) or <=0 = mask tick logs | >=1 = show tick logs

# Concerning this datapack:
# - $logs.datapack.ho_so pk.value | default: (undefined) | (undefined) or <=0 = masks | >=1 = show Hopper Sorters logs

# Special tags:
# - pk.dev : Allow player to see data packs specific logs

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Locations:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Location -30000000 0 1611 | Used in any custom dimension by the dimension_marker helper (need to stay forceloaded)

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Storage:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define storage
# - pk.common.data | Used to store installed PK Datapacks names and version and for temp data manipulation
# - pk.ho_so:data Block | Used to store features of a specific custom block from this data pack
# - pk.ho_so:data Blocks | Used to store the list of the placed custom block from this data pack
#declare storage pk.common:data
#declare storage pk.ho_so:data

# Initialize PK data packs storage if needed
execute unless data storage pk.common:data Datapacks[{}] run data modify storage pk.common:data Datapacks set value []

# Add current data pack into the PK data packs storage if needed
execute unless data storage pk.common:data Datapacks[{Name:"Hopper Sorters"}] run data modify storage pk.common:data Datapacks append value {Name:"Hopper Sorters"}

# Initialize the storage used to store Hopper Sorters location
execute unless data storage pk.ho_so:data Blocks.HopperSorters[{}] run data modify storage pk.ho_so:data Blocks.HopperSorters set value []

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Scores:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Define objectives that are common to each PK data pack:
# - pk.temp only concerns temp values that can be cleared at any time without risks.
# - pk.value is used for fixed values and variable settings, and won't be cleared on uninstallation until there is no PK data pack anymore.
# - pk.version is used to store the version entities have been placed from or updated with
scoreboard objectives add pk.temp dummy
scoreboard objectives add pk.value dummy
scoreboard objectives add pk.version dummy
scoreboard objectives add pk.custom_block.component.id dummy
scoreboard objectives add pk.custom_block.interaction.id dummy
scoreboard objectives add pk.crafted.knowledge_book crafted:knowledge_book

# Define objective that are specific to the current data pack
scoreboard objectives add pk.ho_so.move.timer dummy

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Packages:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Dimension marker
function pk_hopper_sorter:packages/dimension_marker/load
# Player id
function pk_hopper_sorter:packages/player_id/load
# RNG
function pk_hopper_sorter:packages/random/load
# Air toggling
function pk_hopper_sorter:packages/air_toggling/load

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Updates:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $pk.ho_so.version pk.value matches 1 run function pk_hopper_sorter:base/update/start

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Logs:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute unless score $logs.load pk.value matches ..0 run tellraw @a [{"text": "Loaded ","color": "yellow"},{"text": "Hopper Sorters ","color": "aqua","bold": true},{"text": "(V.","color": "aqua"},{"nbt":"Datapacks[{Name:\"Hopper Sorters\"}].Version", "storage": "pk.common:data","color": "aqua"},{"text": ")","color": "aqua"},{"text": " successfully"}]