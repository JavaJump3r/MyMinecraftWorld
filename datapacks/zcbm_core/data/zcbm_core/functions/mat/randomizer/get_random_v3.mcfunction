#======================#
# made by zcmb command #
#======================#
#
#scoreboard players set *random zcbm_random 0
#function zcbm_core:mat/randomizer/random_loop_v3

execute if score *num zcbm_random matches 5 run scoreboard players set *m zcbm_random 100000
execute if score *num zcbm_random matches 4 run scoreboard players set *m zcbm_random 10000
execute if score *num zcbm_random matches 3 run scoreboard players set *m zcbm_random 1000
execute if score *num zcbm_random matches 2 run scoreboard players set *m zcbm_random 100
execute if score *num zcbm_random matches 1 run scoreboard players set *m zcbm_random 10
execute if score *num zcbm_random matches 0 run scoreboard players set *m zcbm_random 1
function zcbm_core:mat/randomizer/determ/random
scoreboard players operation *random zcbm_random = *x zcbm_random