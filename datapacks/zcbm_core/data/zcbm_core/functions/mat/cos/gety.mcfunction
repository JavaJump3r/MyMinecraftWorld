#======================#
# made by zcmb command #
#======================#
#  
scoreboard players operation @s zcbm_ANG = @s zcbm_YR
execute if score @s zcbm_YR > 180000 zcbm_CONST run scoreboard players remove @s zcbm_ANG 180000
execute if score @s zcbm_ANG <= 90000 zcbm_CONST run function zcbm_core:mat/cos/cos

execute if score @s zcbm_ANG > 90000 zcbm_CONST run tag @s add zcbm_90
execute if entity @s[tag=zcbm_90] run scoreboard players remove @s zcbm_ANG 90000
execute if entity @s[tag=zcbm_90] run function zcbm_core:mat/sin/sin



scoreboard players operation @s zcbm_COSy = @s zcbm_M1
execute if score @s zcbm_YR > 90000 zcbm_CONST if score @s zcbm_YR < 270000 zcbm_CONST run scoreboard players operation @s zcbm_COSy *= -1 zcbm_CONST

tag @s remove zcbm_90