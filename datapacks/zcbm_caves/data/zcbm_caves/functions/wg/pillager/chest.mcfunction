#======================#
# made by zcbm command #
#======================#
#

scoreboard players set *m zcbm_random 10
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 0..8 run setblock ~ ~ ~ air

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=east] run setblock ~ ~ ~ chest[facing=east]{LootTable:"minecraft:chests/pillager_outpost"}
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=west] run setblock ~ ~ ~ chest[facing=west]{LootTable:"minecraft:chests/pillager_outpost"}
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=south] run setblock ~ ~ ~ chest[facing=south]{LootTable:"minecraft:chests/pillager_outpost"}
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=north] run setblock ~ ~ ~ chest[facing=north]{LootTable:"minecraft:chests/pillager_outpost"}