#======================#
# made by zcmb command #
#======================#
#
# Сама формула
scoreboard players set *M1 zcbm_logic 180000
scoreboard players operation *M1 zcbm_logic -= *ANG zcbm_logic
scoreboard players operation *M1 zcbm_logic /= 100 zcbm_CONST
scoreboard players operation *M1 zcbm_logic *= *ANG zcbm_logic
scoreboard players operation *M1 zcbm_logic *= 4 zcbm_CONST
scoreboard players set *M2 zcbm_logic 180000
scoreboard players set *M3 zcbm_logic 40500000
scoreboard players operation *M2 zcbm_logic -= *ANG zcbm_logic
scoreboard players operation *M2 zcbm_logic /= 1000 zcbm_CONST
scoreboard players operation *M2 zcbm_logic *= *ANG zcbm_logic
scoreboard players operation *M3 zcbm_logic -= *M2 zcbm_logic
scoreboard players operation *M3 zcbm_logic /= 1000 zcbm_CONST
scoreboard players operation *M1 zcbm_logic /= *M3 zcbm_logic