#======================#
# made by zcbm command #
#======================#
#
scoreboard players remove *height zcbm_logic 1

execute if score *height zcbm_logic matches 0 run function zcbm_caves:wg/pillager/fin
execute if score *height zcbm_logic matches 1.. positioned ~ ~1 ~ run function zcbm_caves:wg/pillager/h