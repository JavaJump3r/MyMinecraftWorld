#======================#
# made by zcbm command #
#======================#
#

scoreboard players set *n zcbm_random 9 
scoreboard players operation *c zcbm_random = *of_x_l zcbm_logic
scoreboard players operation *a zcbm_random = *of_z_l zcbm_logic

scoreboard players operation *m zcbm_random = *h_max zcbm_logic
scoreboard players operation *m zcbm_random -= *h_min zcbm_logic

scoreboard players operation *x zcbm_random = *seed zcbm_setup


execute if score *c zcbm_random matches ..-1 run scoreboard players remove *c zcbm_random 499
execute if score *c zcbm_random matches ..-1 run scoreboard players operation *c zcbm_random *= -1 zcbm_CONST

execute if score *a zcbm_random matches ..-1 run scoreboard players remove *a zcbm_random 499
execute if score *a zcbm_random matches ..-1 run scoreboard players operation *a zcbm_random *= -1 zcbm_CONST

scoreboard players add *c zcbm_random 50
scoreboard players add *a zcbm_random 50

function zcbm_core:mat/randomizer/determ/loop
scoreboard players operation *height zcbm_logic = *x zcbm_random
scoreboard players operation *height zcbm_logic += *h_min zcbm_logic
scoreboard players set *count zcbm_logic 0

#tellraw @a {"score":{"name":"*height","objective":"zcbm_logic"}}
