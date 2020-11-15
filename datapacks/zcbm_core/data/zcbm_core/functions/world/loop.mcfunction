#======================#
# made by zcbm command #
#======================#
#
#execute if score *world_gen_timer zcbm_logic matches ..0 as @a at @s if entity @a[distance=0.001..32,tag=!zcbm_no_gen] run tag @s add zcbm_no_gen
execute if score *world_gen_timer zcbm_logic matches ..0 as @a at @s run function zcbm_core:world/offset
#execute if score *world_gen_timer zcbm_logic matches ..0 run tag @a remove zcbm_no_gen
scoreboard players remove *world_gen_timer zcbm_logic 1

#tellraw @a {"score":{"name":"*chunks","objective":"zcbm_logic"}}


bossbar set zcbm:genete max 1000
#execute if score *chunks zcbm_logic > *chunks_old zcbm_logic store result bossbar zcbm:genete max run scoreboard players get *chunks zcbm_logic
execute store result bossbar zcbm:genete value run scoreboard players get *chunks zcbm_logic
execute if score *chunks zcbm_logic matches 1.. run bossbar set zcbm:genete players @a
execute if score *chunks zcbm_logic matches ..0 run bossbar set zcbm:genete players

scoreboard players operation *chunks_old zcbm_logic = *chunks zcbm_logic
scoreboard players set *chunks zcbm_logic 0