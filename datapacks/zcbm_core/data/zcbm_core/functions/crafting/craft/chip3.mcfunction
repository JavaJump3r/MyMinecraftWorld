
function zcbm_core:crafting/count/chip2

execute if score *count_h zcbm_logic matches 1.. run function zcbm_core:crafting/count/redstone

execute if score *count_h zcbm_logic matches ..7 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 8.. run function zcbm_core:crafting/count/ender_eye

execute if score *count_h zcbm_logic matches ..1 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 2.. run function zcbm_core:crafting/count/diamond

execute if score *count_h zcbm_logic matches 1.. run function zcbm_core:crafting/count/emerald

execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:firework_star{Tags:["zcbm_chip2"]} 1
execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:redstone 8
execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:ender_eye 2
execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:diamond 1
execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:emerald 1

execute if entity @s[gamemode=creative] run scoreboard players set *count_h zcbm_logic 1488

execute if score *count_h zcbm_logic matches ..0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0
execute if score *count_h zcbm_logic matches 1.. run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1

execute if score *count_h zcbm_logic matches 1.. run give @s minecraft:firework_star{CustomModelData:5005,Tags:["zcbm_unst","zcbm_chip3"],display:{Name:"{\"translate\":\"chip3\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"translate\":\"f_o_c\",\"color\":\"gray\",\"italic\":\"false\"}"]}} 1