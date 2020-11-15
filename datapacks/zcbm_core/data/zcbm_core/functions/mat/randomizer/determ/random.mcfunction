#======================#
# made by zcmb command #
#======================#
#
# n - к-во шагов
# m - макс.
# a - парам.
# c - парам.
# x - вых.
scoreboard players add *i zcbm_random 1
scoreboard players set *n zcbm_random 5
scoreboard players operation *m zcbm_random *= 10 zcbm_CONST
scoreboard players operation *a zcbm_random = *i zcbm_random
scoreboard players operation *x zcbm_random = *seed zcbm_setup
execute if score *x zcbm_random matches ..-1 run scoreboard players operation *x zcbm_random *= -1 zcbm_CONST
execute store result score *c zcbm_random run time query gametime
function zcbm_core:mat/randomizer/determ/loop
scoreboard players operation *x zcbm_random /= 10 zcbm_CONST