#======================#
# made by zcbm command #
#======================#
#
execute store result score *Y zcbm_caves run data get entity @s Pos[1]

scoreboard players set *m zcbm_random 1000
function zcbm_core:mat/randomizer/determ/random

execute if score *Y zcbm_caves matches ..19 if score *x zcbm_random matches 0..150 run function zcbm_caves:ambient/sounds/drip 
execute if score *Y zcbm_caves matches 20.. if score *x zcbm_random matches 0..500 run function zcbm_caves:ambient/sounds/drip 
execute if score *Y zcbm_caves matches 0..50 if score *x zcbm_random matches 501..510 run function zcbm_caves:ambient/sounds/gravel 
execute if score *Y zcbm_caves matches 0..50 if score *x zcbm_random matches 990..999 run function zcbm_caves:ambient/sounds/rare 