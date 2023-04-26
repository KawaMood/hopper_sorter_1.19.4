#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_pass_recursive

# Summon the item holder
execute align xyz run summon area_effect_cloud ~0.5 ~-0.1 ~0.5 {Duration:1,Age:-1,WaitTime:-1,Tags:["pk.ho_so","pk.ho_so.hopper_sorter","pk.ho_so.hopper_sorter.item_holder"],Passengers:[{id:"minecraft:item",Tags:["pk.temp.current.item"],PickupDelay:1,Item:{id:"minecraft:stick",Count:1b}}]}

# Prepare the item entity
data modify entity @e[type=item,tag=pk.temp.current.item,distance=..2,limit=1] Item set from storage pk.common:data Temp.Matching.Items[-1]
tag @e[type=item,tag=pk.temp.current.item,distance=..2,limit=1] remove pk.temp.current.item

# Recursive call
data remove storage pk.common:data Temp.Matching.Items[-1]
scoreboard players remove $i pk.temp 1
execute if score $i pk.temp matches 1.. run function pk_hopper_sorter:blocks/hopper_sorter/work/sort/matching_items_pass_recursive