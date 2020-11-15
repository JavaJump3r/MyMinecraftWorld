
function zcbm_core:crafting/count/chip1

execute if score *count_h zcbm_logic matches 1.. run function zcbm_core:crafting/count/redstone

execute if score *count_h zcbm_logic matches ..3 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 4.. run function zcbm_core:crafting/count/lapis_lazuli

execute if score *count_h zcbm_logic matches ..1 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 2.. run function zcbm_core:crafting/count/glowstone_dust

execute if score *count_h zcbm_logic matches ..1 run scoreboard players set *count_h zcbm_logic 0

execute if score *count_h zcbm_logic matches 2.. run clear @s[gamemode=!creative] minecraft:firework_star{Tags:["zcbm_chip1"]} 1
execute if score *count_h zcbm_logic matches 2.. run clear @s[gamemode=!creative] minecraft:redstone 4
execute if score *count_h zcbm_logic matches 2.. run clear @s[gamemode=!creative] minecraft:lapis_lazuli 2
execute if score *count_h zcbm_logic matches 2.. run clear @s[gamemode=!creative] minecraft:glowstone_dust 2

execute if entity @s[gamemode=creative] run scoreboard players set *count_h zcbm_logic 1488

execute if score *count_h zcbm_logic matches ..1 run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0
execute if score *count_h zcbm_logic matches 2.. run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1

execute if score *count_h zcbm_logic matches 2.. run give @s minecraft:firework_star{CustomModelData:5004,Tags:["zcbm_unst","zcbm_chip2"],display:{Name:"{\"translate\":\"chip2\",\"color\":\"white\",\"italic\":\"false\"}",Lore:["{\"translate\":\"f_o_c\",\"color\":\"gray\",\"italic\":\"false\"}"]}} 1