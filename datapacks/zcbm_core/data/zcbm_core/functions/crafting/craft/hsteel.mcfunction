
function zcbm_core:crafting/count/steel

execute if score *count_h zcbm_logic matches ..3 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 4.. run function zcbm_core:crafting/count/lava_bucket

execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:firework_star{Tags:["zcbm_steel"]} 4
execute if score *count_h zcbm_logic matches 1.. run clear @s[gamemode=!creative] minecraft:lava_bucket 1

execute if entity @s[gamemode=creative] run scoreboard players set *count_h zcbm_logic 1488

execute if score *count_h zcbm_logic matches ..0 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0
execute if score *count_h zcbm_logic matches 1.. run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1

execute if score *count_h zcbm_logic matches 1.. run give @s minecraft:firework_star{CustomModelData:5002,Tags:["zcbm_unst","zcbm_hsteel"],display:{Name:"{\"translate\":\"hsteel\",\"color\":\"gold\",\"italic\":\"false\"}",Lore:["{\"translate\":\"f_o_c\",\"color\":\"gray\",\"italic\":\"false\"}"]}} 4
execute if score *count_h zcbm_logic matches 1.. run give @s[gamemode=!creative] minecraft:bucket
