#======================#
# made by zcbm command #
#======================#
#

execute if block ~4 ~ ~ minecraft:cave_air positioned ~ ~ ~ run function zcbm_caves:wg/caves3
execute if block ~-4 ~ ~ minecraft:cave_air positioned ~ ~ ~ run function zcbm_caves:wg/caves3
execute if block ~ ~ ~4 minecraft:cave_air positioned ~ ~ ~ run function zcbm_caves:wg/caves3
execute if block ~ ~ ~-4 minecraft:cave_air positioned ~ ~ ~ run function zcbm_caves:wg/caves3
scoreboard players remove *counter zcbm_logic 1
execute unless block ~ ~ ~ minecraft:cave_air if score *counter zcbm_logic matches 1.. positioned ~ ~1 ~ run function zcbm_caves:wg/test
execute if block ~ ~ ~ minecraft:cave_air positioned ~ ~ ~ run function zcbm_caves:wg/caves