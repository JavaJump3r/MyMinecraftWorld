#======================#
# made by zcmb command #
#======================#
#
# Сама формула
scoreboard players set *M1 zcbm_logic 324000000
scoreboard players set *M2 zcbm_logic 40
scoreboard players operation *M2 zcbm_logic *= *ANG zcbm_logic
scoreboard players operation *M2 zcbm_logic /= 1000 zcbm_CONST
scoreboard players operation *M2 zcbm_logic *= *ANG zcbm_logic
scoreboard players operation *M1 zcbm_logic -= *M2 zcbm_logic
scoreboard players operation *M2 zcbm_logic = *ANG zcbm_logic
scoreboard players operation *M2 zcbm_logic /= 1000 zcbm_CONST
scoreboard players operation *M2 zcbm_logic *= *ANG zcbm_logic
scoreboard players add *M2 zcbm_logic 32400000
scoreboard players operation *M2 zcbm_logic /= 1000 zcbm_CONST
scoreboard players operation *M1 zcbm_logic /= *M2 zcbm_logic