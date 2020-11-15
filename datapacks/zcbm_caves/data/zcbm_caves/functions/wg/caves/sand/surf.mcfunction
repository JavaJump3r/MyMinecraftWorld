#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_san_m,distance=..55] run function zcbm_caves:wg/caves/sand/direct
kill @e[type=minecraft:item,distance=..2]

scoreboard players set *m zcbm_random 10
function zcbm_core:mat/randomizer/determ/random

#execute if block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 10 run

execute unless block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 0..4 run setblock ~ ~ ~ sandstone
execute unless block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 5..9 run setblock ~ ~ ~ smooth_sandstone
execute if block ~ ~1 ~ #zcbm_caves:ice_air run setblock ~ ~ ~ sand


scoreboard players add *chunks zcbm_logic 1
