#======================#
# made by zcbm command #
#======================#
#

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=south] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX: -1, posZ: 1,metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posY: -1, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_corridor", showboundingbox: 0b}

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=east] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX: 1, posZ: 1,metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "COUNTERCLOCKWISE_90", posY: -1, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_corridor", showboundingbox: 0b}

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=north] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX: -1, posZ: -17,metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posY: -1, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_corridor", showboundingbox: 0b}

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=west] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{posX: -1, posZ: -1,metadata: "", mirror: "NONE", ignoreEntities: 0b, seed: 0L, author: "Barnaul_mine", rotation: "CLOCKWISE_90", posY: -1, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "zcbm_caves:pillager_mine_corridor", showboundingbox: 0b}



setblock ~ ~1 ~ minecraft:redstone_block replace
fill ~ ~ ~ ~ ~1 ~ air replace


execute if block ~ ~ ~ minecraft:repeating_command_block[facing=east] run fill ~ ~ ~-2 ~17 ~7 ~2 gravel replace minecraft:lava
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=west] run fill ~ ~ ~-2 ~-17 ~7 ~2 gravel replace minecraft:lava

execute if block ~ ~ ~ minecraft:repeating_command_block[facing=north] run fill ~-2 ~ ~ ~2 ~7 ~-17 gravel replace minecraft:lava
execute if block ~ ~ ~ minecraft:repeating_command_block[facing=south] run fill ~-2 ~ ~ ~2 ~7 ~17 gravel replace minecraft:lava