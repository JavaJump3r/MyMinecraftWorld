#======================#
# made by zcbm command #
#======================#
#
execute unless entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_def_m,distance=..15] run summon minecraft:area_effect_cloud ~ ~-1 ~ {Tags:["zcbm_cave_def_m"],Duration:500}
execute positioned ~ ~-1 ~ run function zcbm_caves:wg/caves/def/cb