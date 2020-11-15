#======================#
# made by zcmb command #
#======================#
#
			
# По данной формуле получаем синус Y
# sin(x) = (4* x(180 - x))/(40500 - x(180 - x))
# cos(x) = 32400 - 4*x^(2))/(32400 + x^(2))
scoreboard players operation *ANG zcbm_logic = *YR zcbm_logic
execute if score *ANG zcbm_logic matches 180000.. run scoreboard players remove *ANG zcbm_logic 180000
function zcbm_core:mat/sin_v2/sin
execute if score *YR zcbm_logic matches 180000.. run scoreboard players operation *M1 zcbm_logic *= -1 zcbm_CONST
scoreboard players operation *SINY zcbm_logic = *M1 zcbm_logic