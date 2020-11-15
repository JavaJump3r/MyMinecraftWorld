#======================#
# made by zcbm command #
#======================#
#

function zcbm_core:world/rot_prop
scoreboard players set *types zcbm_logic 2
scoreboard players set *type_seed zcbm_logic 0
function zcbm_core:world/type_prop

execute if score *type zcbm_logic matches 0 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 0, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:cave_5", showboundingbox: 0b} replace
execute if score *type zcbm_logic matches 1 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 0, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:cave_4", showboundingbox: 0b} replace

execute if score *rot zcbm_logic matches 0 run data merge block ~ ~ ~ {rotation:"NONE", posX: -4, posZ: -4}
execute if score *rot zcbm_logic matches 1 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90", posX: 4, posZ: -4}
execute if score *rot zcbm_logic matches 2 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180", posX: 4, posZ: 4}
execute if score *rot zcbm_logic matches 3 run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90", posX: -4, posZ: 4}

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:redstone_block
fill ~ ~ ~ ~ ~ ~ air replace minecraft:structure_block

execute if score *rot zcbm_logic matches 0 run setblock ~3 ~7 ~ chest{LootTable:"minecraft:chests/woodland_mansion"} replace
execute if score *rot zcbm_logic matches 1 run setblock ~ ~7 ~3 chest{LootTable:"minecraft:chests/shipwreck_treasure"} replace
execute if score *rot zcbm_logic matches 2 run setblock ~-3 ~7 ~ chest{LootTable:"minecraft:chests/simple_dungeon"} replace
execute if score *rot zcbm_logic matches 3 run setblock ~ ~7 ~-3 chest{LootTable:"minecraft:chests/end_city_treasure"} replace