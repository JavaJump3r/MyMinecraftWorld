
summon minecraft:arrow ~ ~1.5 ~ {tags:["zcbm_arr","zcbm_particle","zcbm_partarrow"],damage:0.0}

function zcbm_core:vector/get_vec

execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest] motion[0] double 0.001 run scoreboard players get @s zcbm_X
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest] motion[1] double 0.001 run scoreboard players get @s zcbm_Y
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest] motion[2] double 0.001 run scoreboard players get @s zcbm_Z
tag @e[limit=1,tag=zcbm_arr,sort=nearest] remove zcbm_arr
