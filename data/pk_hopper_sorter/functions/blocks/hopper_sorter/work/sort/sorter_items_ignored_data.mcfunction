#> pk_hopper_sorter:blocks/hopper_sorter/work/sort/sorter_items_ignored_data

data remove storage pk.common:data Temp.Sorter.Items[{}].Slot
execute if score $pk.ho_so.settings.mode.strict.ignore.damage pk.value matches 1 run data remove storage pk.common:data Temp.Sorter.Items[{}].Damage
execute if score $pk.ho_so.settings.mode.strict.ignore.display pk.value matches 1 run data remove storage pk.common:data Temp.Sorter.Items[{}].display
execute if score $pk.ho_so.settings.mode.strict.ignore.repaircost pk.value matches 1 run data remove storage pk.common:data Temp.Sorter.Items[{}].RepairCost
