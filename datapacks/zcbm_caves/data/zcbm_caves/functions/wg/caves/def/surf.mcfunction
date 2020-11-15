#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_def_m,distance=..55] run function zcbm_caves:wg/caves/def/direct


scoreboard players set *m zcbm_random 700
function zcbm_core:mat/randomizer/determ/random

#execute if block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 10 run

execute if score *x zcbm_random matches 0..99 run setblock ~ ~ ~ mossy_cobblestone
execute if score *x zcbm_random matches 300..549 run setblock ~ ~ ~ cobblestone
execute if score *x zcbm_random matches 550..552 run setblock ~ ~ ~ infested_cobblestone

execute unless block ~1 ~ ~ lava unless block ~-1 ~ ~ lava unless block ~ ~ ~1 lava unless block ~ ~ ~-1 lava if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 99..299 run setblock ~ ~ ~ cobblestone_slab
execute unless block ~1 ~ ~ lava unless block ~-1 ~ ~ lava unless block ~ ~ ~1 lava unless block ~ ~ ~-1 lava if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 99..299 run fill ~-1 ~ ~-1 ~1 ~ ~1 cobblestone replace stone

execute unless block ~1 ~ ~ lava unless block ~-1 ~ ~ lava unless block ~ ~ ~1 lava unless block ~ ~ ~-1 lava if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 600..699 run setblock ~ ~ ~ mossy_cobblestone_slab
execute unless block ~1 ~ ~ lava unless block ~-1 ~ ~ lava unless block ~ ~ ~1 lava unless block ~ ~ ~-1 lava if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 600..699 run fill ~-1 ~ ~-1 ~1 ~ ~1 cobblestone replace stone


scoreboard players add *chunks zcbm_logic 1
