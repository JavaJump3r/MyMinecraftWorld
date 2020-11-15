#======================#
# made by zcbm command #
#======================#
#
tp @s ~ ~1.25 ~
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get *cmd zcbm_logic
execute store result score *RY zcbm_logic run data get entity @s Rotation[0] 1
execute store result score *RX zcbm_logic run data get entity @s Rotation[1] 1
scoreboard players operation *RYs zcbm_logic = *RY zcbm_logic

scoreboard players operation *RX zcbm_logic -= *RXp zcbm_logic

scoreboard players operation *RY zcbm_logic -= *RYp zcbm_logic
scoreboard players operation *RYd zcbm_logic = *RY zcbm_logic

execute if score *RY zcbm_logic matches 180.. run scoreboard players remove *RY zcbm_logic 360
execute if score *RY zcbm_logic matches ..-180 run scoreboard players add *RY zcbm_logic 360

execute if score *RY zcbm_logic matches ..-30 run scoreboard players add *RYd zcbm_logic 30
execute if score *RY zcbm_logic matches 30.. run scoreboard players remove *RYd zcbm_logic 30
execute if score *RY zcbm_logic matches -30..30 run scoreboard players set *RYd zcbm_logic 0
scoreboard players operation *RYs zcbm_logic -= *RYd zcbm_logic
execute store result entity @s Rotation[0] float 1 run scoreboard players get *RYs zcbm_logic

tellraw @p {"score":{"name":"*RYs","objective":"zcbm_logic"}}
#tellraw @p [{"text":"Y "},{"score":{"name":"*RY","objective":"zcbm_logic"}}]
#tellraw @p [{"text":"X "},{"score":{"name":"*RX","objective":"zcbm_logic"}}]
#=======================
function #zcbm_core:listener_item_gui_as