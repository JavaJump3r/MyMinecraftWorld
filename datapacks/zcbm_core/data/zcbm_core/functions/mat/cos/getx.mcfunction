#======================#
# made by zcmb command #
#======================#
# 
scoreboard players operation @s zcbm_ANG = @s zcbm_XR
execute if score @s zcbm_ANG < 0 zcbm_CONST run scoreboard players operation @s zcbm_ANG *= -1 zcbm_CONST
function zcbm_core:mat/cos/cos
scoreboard players operation @s zcbm_COSx = @s zcbm_M1