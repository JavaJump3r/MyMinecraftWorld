#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *world_gen_timer zcbm_logic 10

execute store result score *of_x zcbm_logic run data get entity @s Pos[0] 1
execute store result score *of_z zcbm_logic run data get entity @s Pos[2] 1

scoreboard players operation *of_x_l zcbm_logic = *of_x zcbm_logic
scoreboard players operation *of_z_l zcbm_logic = *of_z zcbm_logic

scoreboard players operation *of_x_l zcbm_logic /= 16 zcbm_CONST
scoreboard players operation *of_x_l0 zcbm_logic = *of_x_l zcbm_logic
scoreboard players operation *of_z_l zcbm_logic /= 16 zcbm_CONST
scoreboard players operation *of_z_l0 zcbm_logic = *of_z_l zcbm_logic

scoreboard players operation *of_x zcbm_logic %= 16 zcbm_CONST
scoreboard players operation *of_z zcbm_logic %= 16 zcbm_CONST

execute align xyz run function zcbm_core:world/offset_x