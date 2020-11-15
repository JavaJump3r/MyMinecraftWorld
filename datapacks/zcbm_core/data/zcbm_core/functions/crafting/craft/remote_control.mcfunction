
function zcbm_core:crafting/count/iron_ingot

execute if score *count_h zcbm_logic matches 1.. run function zcbm_core:crafting/count/redstone

execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:iron_ingot 1
execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:redstone 1

execute if entity @s[gamemode=creative] run scoreboard players set *count_h zcbm_logic 1488

execute if score *count_h zcbm_logic matches ..0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0
execute if score *count_h zcbm_logic matches 1.. run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1

execute if score *count_h zcbm_logic matches 1.. run give @s minecraft:firework_star{CustomModelData:5012,Tags:["zcbm_unst","zcbm_remote"],display:{Name:"{\"translate\":\"remote_control\",\"color\":\"white\",\"italic\":\"false\"}",Lore:["{\"translate\":\"remote_control_desc\",\"color\":\"gray\",\"italic\":\"false\"}"]}}