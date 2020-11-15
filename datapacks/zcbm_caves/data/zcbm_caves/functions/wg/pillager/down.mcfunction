#======================#
# made by zcbm command #
#======================#
#

fill ~-6 ~-12 ~-6 ~6 ~ ~6 gravel replace minecraft:water
fill ~-8 ~-12 ~-8 ~8 ~ ~8 gravel replace minecraft:lava
function zcbm_core:world/rot_prop
scoreboard players set *types zcbm_logic 4
scoreboard players add *type_seed zcbm_logic 1
function zcbm_core:world/type_prop

execute store result score *Y zcbm_logic run data get block ~ ~ ~ y

execute if score *Y zcbm_logic matches ..20 run scoreboard players set *type zcbm_logic -1

execute if score *type zcbm_logic matches 0 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 0, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_1", showboundingbox: 0b} replace
execute if score *type zcbm_logic matches 1 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 0, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_2", showboundingbox: 0b} replace
execute if score *type zcbm_logic matches 2 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 0, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_3", showboundingbox: 0b} replace
execute if score *type zcbm_logic matches 3 run setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 0, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_4", showboundingbox: 0b} replace

data merge block ~ ~ ~ {rotation:"NONE", posX: -5, posZ: -5, posY: -8}

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~1 ~ stripped_dark_oak_log replace

