#> pk_hopper_sorter:base/update/start
# Update the current data pack if needed

# Update depending on the current version 
# - Changes from V.2.0.1
execute if score $pk.ho_so.version pk.value matches ..2 run function pk_hopper_sorter:base/update/revisions/2

# Set the data pack current version score
scoreboard players set $pk.ho_so.version pk.value 1
data modify storage pk.common:data Datapacks[{Name:"Hopper Sorters"}].Version set value "2.0.0"