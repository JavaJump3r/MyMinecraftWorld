#======================#
# made by zcbm command #
#======================#
#
execute store result score *armor zcbm_logic run data get entity @s Attributes[{Name:generic.armor}].Base 1

execute if data entity @s ArmorItems[{id:"minecraft:leather_helmet"}] run scoreboard players add *armor zcbm_logic 1
execute if data entity @s ArmorItems[{id:"minecraft:leather_chestplate"}] run scoreboard players add *armor zcbm_logic 3
execute if data entity @s ArmorItems[{id:"minecraft:leather_leggings"}] run scoreboard players add *armor zcbm_logic 2
execute if data entity @s ArmorItems[{id:"minecraft:leather_boots"}] run scoreboard players add *armor zcbm_logic 1

execute if data entity @s ArmorItems[{id:"minecraft:chainmail_helmet"}] run scoreboard players add *armor zcbm_logic 2
execute if data entity @s ArmorItems[{id:"minecraft:chainmail_chestplate"}] run scoreboard players add *armor zcbm_logic 5
execute if data entity @s ArmorItems[{id:"minecraft:chainmail_leggings"}] run scoreboard players add *armor zcbm_logic 3
execute if data entity @s ArmorItems[{id:"minecraft:chainmail_boots"}] run scoreboard players add *armor zcbm_logic 1

execute if data entity @s ArmorItems[{id:"minecraft:iron_helmet"}] run scoreboard players add *armor zcbm_logic 2
execute if data entity @s ArmorItems[{id:"minecraft:iron_chestplate"}] run scoreboard players add *armor zcbm_logic 5
execute if data entity @s ArmorItems[{id:"minecraft:iron_leggings"}] run scoreboard players add *armor zcbm_logic 4
execute if data entity @s ArmorItems[{id:"minecraft:iron_boots"}] run scoreboard players add *armor zcbm_logic 1

execute if data entity @s ArmorItems[{id:"minecraft:diamond_helmet"}] run scoreboard players add *armor zcbm_logic 2
execute if data entity @s ArmorItems[{id:"minecraft:diamond_chestplate"}] run scoreboard players add *armor zcbm_logic 6
execute if data entity @s ArmorItems[{id:"minecraft:diamond_leggings"}] run scoreboard players add *armor zcbm_logic 5
execute if data entity @s ArmorItems[{id:"minecraft:diamond_boots"}] run scoreboard players add *armor zcbm_logic 2

execute if data entity @s ArmorItems[{id:"minecraft:golden_helmet"}] run scoreboard players add *armor zcbm_logic 3
execute if data entity @s ArmorItems[{id:"minecraft:golden_chestplate"}] run scoreboard players add *armor zcbm_logic 8
execute if data entity @s ArmorItems[{id:"minecraft:golden_leggings"}] run scoreboard players add *armor zcbm_logic 6
execute if data entity @s ArmorItems[{id:"minecraft:golden_boots"}] run scoreboard players add *armor zcbm_logic 3
