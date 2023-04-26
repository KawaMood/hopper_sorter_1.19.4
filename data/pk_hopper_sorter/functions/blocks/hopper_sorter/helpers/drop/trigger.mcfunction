#> pk_hopper_sorter:blocks/hopper_sorter/helpers/drop/trigger

summon item ~ ~ ~ {Tags:["pk.temp.current.item"],Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Hopper Sorter","italic": false,"color": "yellow"}',Lore:['{"text":"Hopper Sorter","italic": false,"color": "gray"}']},HideFlags:1,pkCustomBlockPlacer:1b,pkHopperSorter:1b,SkullOwner:{Name:"%pk.custom_block.hopper_sorter",Id:[I;16,11,3,2],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzYxNDRmZDY3ODI5NzQyNjZlMGZkMTE0MjBmNjYzNTRkMDlhNGQ4NDNhNTcwNWRlNWQ5MmFlM2YwYjQ3ZDQyNCJ9fX0="}]}},RepairCost:0,CustomModelData:16110050}}}

execute as @e[type=item,tag=pk.temp.current.item,distance=..0.1] run function pk_hopper_sorter:blocks/hopper_sorter/helpers/drop/set_motion

tag @e[type=item,tag=pk.temp.current.item,distance=..0.1] remove pk.temp.current.item