#> pk_hopper_sorter:base/uninstall/remove_custom_block

# Remove block container and all id-matching components
setblock ~ ~ ~ air
setblock ~ ~1 ~ air
kill @e[type=#pk_hopper_sorter:custom_block/components,tag=pk.ho_so.hopper_sorter.component,distance=..10]

# Unload the targeted chunk
forceload remove ~ ~

# Remove the current entity
kill @s