
function zcbm_core:crafting/count/iron_ingot

execute if score *count_h zcbm_logic matches ..1 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 2.. run function zcbm_core:crafting/count/coal

execute if score *count_h zcbm_logic matches ..1 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 2.. run clear @s[gamemode=!creative] minecraft:iron_ingot 2
execute if score *count_h zcbm_logic matches 2.. run clear @s[gamemode=!creative] #minecraft:coals 2

execute if entity @s[gamemode=creative] run scoreboard players set *count_h zcbm_logic 1488

execute if score *count_h zcbm_logic matches ..0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0
execute if score *count_h zcbm_logic matches 2.. run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1

execute if score *count_h zcbm_logic matches 2.. run give @s minecraft:firework_star{CustomModelData:5001,Tags:["zcbm_unst","zcbm_steel"],display:{Name:"{\"translate\":\"steel\",\"color\":\"aqua\",\"italic\":\"false\"}",Lore:["{\"translate\":\"f_o_c\",\"color\":\"gray\",\"italic\":\"false\"}"]}}
