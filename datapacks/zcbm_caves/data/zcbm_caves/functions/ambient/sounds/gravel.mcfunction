#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *m zcbm_random 20
function zcbm_core:mat/randomizer/determ/random

scoreboard players operation @s zcbm_caves = *x zcbm_random

playsound zcbm_caves:ambient.gravel ambient @s ~ ~ ~ 10 1
