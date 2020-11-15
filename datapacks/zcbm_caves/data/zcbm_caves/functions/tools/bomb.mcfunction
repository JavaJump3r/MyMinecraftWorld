#======================#
# made by zcbm command #
#======================#
#
kill @e[type=minecraft:snowball,limit=1,sort=nearest]

summon armor_stand ~ ~ ~ {Tags:["zcbm_cave_bomb","zcbm_arr"],Small:1b,ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:11001}}],Invisible:1b,Invulnerable:1b}
scoreboard players set *spread zcbm_logic 1000
function zcbm_core:vector_v2/get_vec_rand
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest,type=armor_stand] Motion[0] double 0.00015 run scoreboard players get *X zcbm_logic
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest,type=armor_stand] Motion[1] double 0.00015 run scoreboard players get *Y zcbm_logic
execute store result entity @e[limit=1,tag=zcbm_arr,sort=nearest,type=armor_stand] Motion[2] double 0.00015 run scoreboard players get *Z zcbm_logic

tag @e[limit=1,tag=zcbm_arr,sort=nearest,type=armor_stand] remove zcbm_arr