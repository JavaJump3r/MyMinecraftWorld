#======================#
# made by zcmb command #
#======================#
#  
scoreboard players set @s zcbm_M1 324000000
scoreboard players set @s zcbm_M2 40
scoreboard players operation @s zcbm_M2 *= @s zcbm_ANG
scoreboard players operation @s zcbm_M2 /= 1000 zcbm_CONST
scoreboard players operation @s zcbm_M2 *= @s zcbm_ANG
scoreboard players operation @s zcbm_M1 -= @s zcbm_M2
scoreboard players operation @s zcbm_M2 = @s zcbm_ANG
scoreboard players operation @s zcbm_M2 /= 1000 zcbm_CONST
scoreboard players operation @s zcbm_M2 *= @s zcbm_ANG
scoreboard players add @s zcbm_M2 32400000
scoreboard players operation @s zcbm_M2 /= 1000 zcbm_CONST
scoreboard players operation @s zcbm_M1 /= @s zcbm_M2