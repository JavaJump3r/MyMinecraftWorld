#======================#
# made by zcbm command #
#======================#
#

fill ~-6 ~-12 ~-6 ~6 ~ ~6 gravel replace minecraft:water
fill ~-8 ~-12 ~-8 ~8 ~ ~8 gravel replace minecraft:lava
scoreboard players set *type_seed zcbm_logic 0

setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: -12, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_top", showboundingbox: 0b} replace

execute if score *rot zcbm_logic matches 0 run data merge block ~ ~ ~ {rotation:"NONE", posX: -7, posZ: -7}

setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:redstone_block
fill ~ ~ ~ ~ ~ ~ air replace minecraft:structure_block


scoreboard players set *x zcbm_random -1
