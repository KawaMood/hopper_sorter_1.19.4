#> pk_hopper_sorter:blocks/hopper_sorter/helpers/mode/default

# Set the changed score
scoreboard players set $changed pk.temp 1

# Update tags
tag @s add pk.mode.default
tag @s remove pk.mode.strict

# Update the chest marker
data modify entity @e[type=block_display,tag=pk.ho_so.hopper_sorter.chest_marker,tag=pk.temp.current.component,distance=..2,limit=1] block_state set value {Name:"minecraft:chest"}

# Animation
playsound block.end_portal_frame.fill block @a[distance=..30] ~ ~ ~ 1 1.4