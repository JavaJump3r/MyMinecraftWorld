#======================#
# made by zcbm command #
#======================#
#
scoreboard players add @s zcbm_caves 1

execute if score @s zcbm_caves matches 24.. run function zcbm_caves:tools/bomb/boom
particle minecraft:lava