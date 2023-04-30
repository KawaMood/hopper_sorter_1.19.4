#> pk_hopper_sorter:base/update/revisions/2

# Remove pk.version objective (now in blocks list)
scoreboard objectives remove pk.version

# Change custom blocks version data to Version (since nothing changed since last version, just update it to shorten the process)
data remove storage pk.racks:data Blocks.HopperSorters[{}].version
data modify storage pk.racks:data Blocks.HopperSorters[{}].Version set value 2