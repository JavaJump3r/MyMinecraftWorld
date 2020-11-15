scoreboard players operation *powered_x zcbm_logic *= *ln_in zcbm_logic
scoreboard players operation *powered_x zcbm_logic /= 1000 zcbm_CONST
scoreboard players operation *divider zcbm_logic *= -1 zcbm_CONST
execute if score *divider zcbm_logic matches ..0 run scoreboard players remove *divider zcbm_logic 1
execute if score *divider zcbm_logic matches 1.. run scoreboard players add *divider zcbm_logic 1

scoreboard players operation *ln_c zcbm_logic = *powered_x zcbm_logic
scoreboard players operation *ln_c zcbm_logic /= *divider zcbm_logic
scoreboard players operation *ln_out zcbm_logic += *ln_c zcbm_logic

scoreboard players remove *ln_n zcbm_logic 1
execute if score *ln_n zcbm_logic matches 1.. run function zcbm_core:mat/ln_1x/tailor