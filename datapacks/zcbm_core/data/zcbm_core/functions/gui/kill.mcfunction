#======================#
# made by zcbm command #
#======================#
#
tag @s remove zcbm_item_gui

scoreboard players operation *id zcbm_logic = @s zcbm_ID
execute as @e[type=minecraft:armor_stand,tag=zcbm_item_gui] if score @s zcbm_ID = *id zcbm_logic run kill @s