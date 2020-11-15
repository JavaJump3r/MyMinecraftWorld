#======================#
# made by zcmb command #
#======================#
#  
scoreboard players set @s zcbm_M1 180000
scoreboard players operation @s zcbm_M1 -= @s zcbm_ANG
scoreboard players operation @s zcbm_M1 /= 100 zcbm_CONST
scoreboard players operation @s zcbm_M1 *= @s zcbm_ANG
scoreboard players operation @s zcbm_M1 *= 4 zcbm_CONST
scoreboard players set @s zcbm_M2 180000
scoreboard players set @s zcbm_M3 40500000
scoreboard players operation @s zcbm_M2 -= @s zcbm_ANG
scoreboard players operation @s zcbm_M2 /= 1000 zcbm_CONST
scoreboard players operation @s zcbm_M2 *= @s zcbm_ANG
scoreboard players operation @s zcbm_M3 -= @s zcbm_M2
scoreboard players operation @s zcbm_M3 /= 1000 zcbm_CONST
scoreboard players operation @s zcbm_M1 /= @s zcbm_M3