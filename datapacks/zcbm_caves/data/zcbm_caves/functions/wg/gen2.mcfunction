#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *red_sand zcbm_logic 0
scoreboard players set *sand zcbm_logic 0
scoreboard players set *snow zcbm_logic 0
scoreboard players set *height zcbm_logic 0
function zcbm_core:world/surf


scoreboard players operation *counter zcbm_logic = *height zcbm_logic
scoreboard players remove *counter zcbm_logic 16

scoreboard players set *cave zcbm_logic 0
function zcbm_caves:wg/test

scoreboard players set *height zcbm_logic 0
function zcbm_core:world/surf
execute positioned ~8 ~ ~8 run function zcbm_caves:wg/test2