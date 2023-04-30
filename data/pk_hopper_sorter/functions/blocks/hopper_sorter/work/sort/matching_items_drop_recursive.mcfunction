#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_drop_recursive

# Summon item
execute align xyz run summon item ~0.5 ~-0.3 ~0.5 {Tags:["pk.temp.current.item","pk.ho_so","pk.ho_so.item","pk.ho_so.passed"],PickupDelay:1s,Item:{id:"minecraft:stick",Count:1b}}

# Prepare the item entity
data modify entity @e[type=item,tag=pk.temp.current.item,distance=..2,limit=1] Item set from storage pk.common:data Temp.Matching.Items[-1]
tag @e[type=item,tag=pk.temp.current.item,distance=..2,limit=1] remove pk.temp.current.item

# Animations
execute if score $i pk.temp matches 1 align xyz run playsound block.dispenser.dispense block @a[distance=..50] ~0.5 ~-1 ~0.5 1 1
execute if score $i pk.temp matches 1 align xyz run particle smoke ~0.5 ~-0.1 ~0.5 0.1 0.1 0.1 0 5

# Recursive call
data remove storage pk.common:data Temp.Matching.Items[-1]
scoreboard players remove $i pk.temp 1
execute if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_drop_recursive