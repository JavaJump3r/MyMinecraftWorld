#======================#
# made by zcmb command #
#======================#
#

# По данной формуле получаем синус Y
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG zcbm_logic = *YR zcbm_logic
execute if score *YR zcbm_logic matches 180000.. run scoreboard players remove *ANG zcbm_logic 180000
execute if score *ANG zcbm_logic matches ..90000 run function zcbm_core:mat/cos_v2/cos

scoreboard players set *zcbm_core_90 zcbm_logic 0
execute if score *ANG zcbm_logic matches 90000.. run scoreboard players set *zcbm_core_90 zcbm_logic 1
execute if score *zcbm_core_90 zcbm_logic matches 1 run scoreboard players remove *ANG zcbm_logic 90000
execute if score *zcbm_core_90 zcbm_logic matches 1 run function zcbm_core:mat/sin_v2/sin



scoreboard players operation *COSY zcbm_logic = *M1 zcbm_logic
execute if score *YR zcbm_logic matches 90000.. if score *YR zcbm_logic matches ..270000 run scoreboard players operation *COSY zcbm_logic *= -1 zcbm_CONST
