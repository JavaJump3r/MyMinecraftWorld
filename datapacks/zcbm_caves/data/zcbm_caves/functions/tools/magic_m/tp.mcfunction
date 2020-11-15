#======================#
# made by zcbm command #
#======================#
#

execute store result score *SpawnX zcbm_logic run data get entity @s SpawnX 1
execute store result score *SpawnY zcbm_logic run data get entity @s SpawnY 1
execute store result score *SpawnZ zcbm_logic run data get entity @s SpawnZ 1

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["zcbm_mir_stand"]}
tag @s add zcbm.caves.tpm
execute as @e[type=minecraft:area_effect_cloud,tag=zcbm_mir_stand,limit=1,sort=nearest] run function zcbm_caves:tools/magic_m/as
tag @s remove zcbm.caves.tpm