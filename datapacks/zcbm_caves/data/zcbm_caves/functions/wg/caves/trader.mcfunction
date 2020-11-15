#======================#
# made by zcbm command #
#======================#
#

function zcbm_core:world/rot_prop

setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: -1, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:trader", showboundingbox: 0b} replace

execute if score *rot zcbm_logic matches 0 run data merge block ~ ~ ~ {rotation:"NONE", posX: -4, posZ: -4}
execute if score *rot zcbm_logic matches 1 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90", posX: 4, posZ: -4}
execute if score *rot zcbm_logic matches 2 run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180", posX: 4, posZ: 4}
execute if score *rot zcbm_logic matches 3 run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90", posX: -4, posZ: 4}

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:redstone_block
fill ~ ~ ~ ~ ~ ~ air replace minecraft:structure_block
