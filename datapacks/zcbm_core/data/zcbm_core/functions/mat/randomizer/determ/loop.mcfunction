#======================#
# made by zcmb command #
#======================#
#

scoreboard players operation *x zcbm_random *= *a zcbm_random
scoreboard players operation *x zcbm_random += *c zcbm_random
scoreboard players operation *x zcbm_random %= *m zcbm_random

scoreboard players remove *n zcbm_random 1
execute if score *n zcbm_random matches 1.. run function zcbm_core:mat/randomizer/determ/loop