#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *m zcbm_random 100
function zcbm_core:mat/randomizer/determ/random

scoreboard players operation @s zcbm_caves = *x zcbm_random

playsound zcbm_caves:ambient.drip ambient @s ~ ~ ~ 10 1
