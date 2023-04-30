#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/mode/strict/matching_items_ignored_data

data remove storage pk.common:data Temp.Item.Slot
execute if score $pk.ho_so.settings.mode.strict.ignore.damage pk.value matches 1 run data remove storage pk.common:data Temp.Item.Damage
execute if score $pk.ho_so.settings.mode.strict.ignore.display pk.value matches 1 run data remove storage pk.common:data Temp.Item.display
execute if score $pk.ho_so.settings.mode.strict.ignore.repaircost pk.value matches 1 run data remove storage pk.common:data Temp.Item.RepairCost