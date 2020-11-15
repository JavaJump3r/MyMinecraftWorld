#======================#
# made by zcbm command #
#======================#
#
scoreboard players add *chunks zcbm_logic 100
execute store result score *of_x_l zcbm_logic run data get block ~ ~ ~ x 0.0625
execute store result score *of_z_l zcbm_logic run data get block ~ ~ ~ z 0.0625
execute unless block ~ ~ ~ minecraft:barrier run function zcbm_core:world/test
setblock ~ ~ ~ minecraft:barrier