#======================#
# made by zcbm command #
#======================#

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:150,Tags:["zcbm_cave_web"]}
tag @s[nbt=!{ActiveEffects:[{Id:28b}]}] remove zcbm_caves_strap2
setblock ~ ~ ~ minecraft:cobweb keep