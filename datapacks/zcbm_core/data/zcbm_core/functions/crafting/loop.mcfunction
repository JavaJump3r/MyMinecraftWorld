
execute as @e[type=minecraft:item] run function zcbm_core:crafting/loop_item
#scoreboard players remove @a zcbm_table_tell 1
execute as @e[type=minecraft:armor_stand,tag=zcbm_kotl] at @s run function zcbm_core:crafting/kotl
scoreboard players set @a zcbm_use_caul 0

execute as @a at @s if entity @e[type=minecraft:armor_stand,tag=zcbm_workbench,distance=..5] run function #zcbm_core:crafting/gui_player
execute as @e[type=minecraft:armor_stand,tag=zcbm_workbench] at @s positioned ~ ~ ~ run function zcbm_core:crafting/table