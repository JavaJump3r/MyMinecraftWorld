
summon minecraft:arrow ~ ~1.6 ~ {Tags:["zcbm_arr"]}

scoreboard players set zcbm_mem zcbm_M2 1000

function zcbm_core:vector/get_vec_rand

execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest] Motion[0] double 0.0005 run scoreboard players get @s zcbm_X
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest] Motion[1] double 0.0005 run scoreboard players get @s zcbm_Y
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest] Motion[2] double 0.0005 run scoreboard players get @s zcbm_Z
tag @e[limit=1,tag=zcbm_arr] remove zcbm_arr
