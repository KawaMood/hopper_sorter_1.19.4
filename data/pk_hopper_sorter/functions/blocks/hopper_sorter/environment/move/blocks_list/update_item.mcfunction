#> pk_hopper_sorter:blocks/hopper_sorter/environment/move/blocks_list/update_item

data modify storage pk.common:data Temp.Array.Search[-1].x set from storage pk.common:data Temp.Entity.Pos.x
data modify storage pk.common:data Temp.Array.Search[-1].y set from storage pk.common:data Temp.Entity.Pos.y
data modify storage pk.common:data Temp.Array.Search[-1].z set from storage pk.common:data Temp.Entity.Pos.z