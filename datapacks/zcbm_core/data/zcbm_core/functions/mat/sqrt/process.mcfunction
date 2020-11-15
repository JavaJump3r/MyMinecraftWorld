#======================#
# made by zcmb command #
#======================#
# 
scoreboard players operation *xn0 zcbm_logic = *xn zcbm_logic
scoreboard players operation *a2 zcbm_logic = *a zcbm_logic
scoreboard players operation *a2 zcbm_logic /= *xn zcbm_logic
scoreboard players operation *xn zcbm_logic += *a2 zcbm_logic
scoreboard players operation *xn zcbm_logic /= 2 zcbm_CONST

scoreboard players add *t zcbm_logic 1
execute unless score *xn zcbm_logic = *xn0 zcbm_logic if score *t zcbm_logic matches ..15 run function zcbm_core:mat/sqrt/process

