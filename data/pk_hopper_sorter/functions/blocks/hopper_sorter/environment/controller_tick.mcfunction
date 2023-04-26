#> pk_hopper_sorter:blocks/hopper_sorter/environment/controller_tick

# If the block has been pushed by piston
scoreboard players remove @s[scores={pk.ho_so.move.timer=1..}] pk.ho_so.move.timer 1

# If the relative block has been broken or moved by piston
execute unless entity @s[scores={pk.ho_so.move.timer=1..}] unless block ~ ~ ~ chiseled_deepslate run function pk_hopper_sorter:blocks/hopper_sorter/environment/check_current_block