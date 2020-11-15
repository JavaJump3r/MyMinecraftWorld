#======================#
# made by zcbm command #
#======================#
#
# мин. высота
scoreboard players set *h_min zcbm_logic 10
# макс. высота
scoreboard players set *h_max zcbm_logic 60

function zcbm_core:world/gen_prop 

#для поверхности
#function zcbm_core:world/surf 

setblock ~ 1 ~ minecraft:structure_block[mode=load]{metadata: "", mirror: "NONE", ignoreEntities: 1b, seed: 0L, author: "Barnaul_mine", rotation: "NONE", posX: 0, posY: 1, posZ: 0, mode: "LOAD", integrity: 1.0f, showair: 0b, name: "minecraft:pinus", showboundingbox: 0b} replace
execute store result block ~ 1 ~ posY int 1 run scoreboard players get *height zcbm_logic
setblock ~ 0 ~ minecraft:redstone_block
setblock ~ 1 ~ minecraft:bedrock
