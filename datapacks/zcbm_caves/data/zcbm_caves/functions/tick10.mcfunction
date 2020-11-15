#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *tick10 zcbm_caves 10

execute as @e[type=minecraft:spider,tag=!zcbm_caves] at @s if block ~ ~ ~ cave_air run function zcbm_caves:spider/as
execute positioned ~ 1000 ~ as @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_web,sort=nearest] at @s unless entity @e[type=minecraft:spider,tag=zcbm_caves_strap2,distance=..2] run function zcbm_caves:spider/web

execute as @e[type=minecraft:skeleton,tag=!zcbm_caves] at @s if block ~ ~ ~ cave_air run function zcbm_caves:skeleton/as
execute as @e[type=minecraft:zombie,tag=!zcbm_caves] at @s if block ~ ~ ~ cave_air run function zcbm_caves:zombie/as
execute as @e[type=minecraft:armor_stand,tag=zcbm_cave_crep_g] at @s run function zcbm_caves:wg/caves/creeper/grow2

execute as @a at @s if block ~ ~ ~ cave_air run function zcbm_caves:mobs/count