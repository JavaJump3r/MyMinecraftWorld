#======================#
# made by zcbm command #
#======================#
#

fill ~-3 ~6 ~-3 ~3 ~ ~3 gravel replace #zcbm_core:combination/in_fluids
fill ~-5 ~6 ~-5 ~5 ~ ~5 gravel replace minecraft:lava
execute if block ~ ~4 ~ minecraft:air run setblock ~ ~1 ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posY: -1, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:vil_post_l2", showboundingbox: 0b,rotation:"NONE", posX: -2, posZ: -2} replace

execute unless block ~ ~4 ~ minecraft:air run setblock ~ ~1 ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE",  posY: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:vil_post_l", showboundingbox: 0b,rotation:"NONE", posX: -1, posZ: -1} replace

setblock ~ ~2 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~2 ~ minecraft:stripped_oak_log
