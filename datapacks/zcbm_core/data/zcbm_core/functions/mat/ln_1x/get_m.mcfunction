
scoreboard players operation *ln_c zcbm_logic = *ln_in zcbm_logic
scoreboard players remove *ln_c zcbm_logic 1000
scoreboard players operation *ln_in zcbm_logic *= 1000 zcbm_CONST
scoreboard players operation *ln_in zcbm_logic /= *ln_c zcbm_logic

scoreboard players set *powered_x zcbm_logic 1000000
scoreboard players operation *powered_x zcbm_logic /= *ln_in zcbm_logic
scoreboard players set *ln_out zcbm_logic 0
scoreboard players set *ln_n zcbm_logic 16
scoreboard players set *divider zcbm_logic 1

function zcbm_core:mat/ln_1x/m
