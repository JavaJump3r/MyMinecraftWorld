#======================#
# made by zcmb command #
#======================#
#  
scoreboard players operation @s zcbm_ANG = @s zcbm_YR
execute if score @s zcbm_ANG > 180000 zcbm_CONST run scoreboard players remove @s zcbm_ANG 180000
function zcbm_core:mat/sin/sin
execute if score @s zcbm_YR > 180000 zcbm_CONST run scoreboard players operation @s zcbm_M1 *= -1 zcbm_CONST
scoreboard players operation @s zcbm_SINy = @s zcbm_M1