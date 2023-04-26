#> pk_hopper_sorter:base/update/start
# Update the current data pack if needed

# Set the data pack current version score
scoreboard players set $pk.ho_so.version pk.value 1
data modify storage pk.common:data Datapacks[{Name:"Hopper Sorters"}].Version set value "2.0.0"