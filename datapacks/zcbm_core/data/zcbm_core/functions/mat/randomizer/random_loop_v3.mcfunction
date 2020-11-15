#======================#
# made by zcmb command #
#======================#
#

scoreboard players operation *random zcbm_random *= 10 zcbm_CONST
scoreboard players operation *random zcbm_random += @e[type=area_effect_cloud,tag=zcbm_randomizer,limit=1,sort=random] zcbm_random

scoreboard players remove *num zcbm_random 1
execute if score *num zcbm_random matches 1.. run function zcbm_core:mat/randomizer/random_loop_v3