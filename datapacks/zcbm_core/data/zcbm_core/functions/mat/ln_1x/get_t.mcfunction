scoreboard players remove *ln_in zcbm_logic 1000
scoreboard players operation *powered_x zcbm_logic = *ln_in zcbm_logic
scoreboard players operation *ln_out zcbm_logic = *ln_in zcbm_logic
scoreboard players set *ln_n zcbm_logic 16
scoreboard players set *divider zcbm_logic 1

function zcbm_core:mat/ln_1x/tailor