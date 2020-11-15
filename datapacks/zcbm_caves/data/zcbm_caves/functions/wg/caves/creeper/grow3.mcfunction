#======================#
# made by zcbm command #
#======================#
#

scoreboard players set *m zcbm_random 10
function zcbm_core:mat/randomizer/determ/rand
scoreboard players add *x zcbm_random 4

scoreboard players operation @s zcbm_caves = *x zcbm_random

execute store result score *cmd zcbm_logic run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players add *cmd zcbm_logic 1
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get *cmd zcbm_logic

execute if score *cmd zcbm_logic matches 11018.. run summon creeper
execute if score *cmd zcbm_logic matches 11018.. run particle minecraft:block grass ~ ~0.5 ~ 0.1 0.5 0.1 0.1 100 force
execute if score *cmd zcbm_logic matches 11018.. run playsound minecraft:block.grass.break hostile @a
execute if score *cmd zcbm_logic matches 11018.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 11011