execute store success score *null zcbm_logic run clear @s minecraft:firework_star{Tags:["zcbm_gui_b_null"]}
execute store success score *back zcbm_logic run clear @s minecraft:firework_star{Tags:["zcbm_gui_b_back"]}
execute store success score *home zcbm_logic run clear @s minecraft:firework_star{Tags:["zcbm_gui_b_home"]}
execute store success score *front zcbm_logic run clear @s minecraft:firework_star{Tags:["zcbm_gui_b_front"]}

execute store success score *yt zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_you"]}
execute store success score *dp zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_data"]}
execute store success score *md_tx zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_md_tx"]}
execute store success score *tx zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_tx"]}
execute store success score *tx2 zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_tx2"]}
execute store success score *zc zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_zc"]}
execute store success score *zcbm zcbm_logic run clear @s minecraft:player_head{Tags:["zcbm_gui_zcbm"]}

execute store success score *p_core zcbm_logic run clear @s minecraft:firework_star{Tags:["zcbm_gui_b_core"]}

execute store success score *p_steel zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_steel"]}
execute store success score *p_hsteel zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_hsteel"]}
execute store success score *p_chip1 zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_chip1"]}
execute store success score *p_chip2 zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_chip2"]}
execute store success score *p_chip3 zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_chip3"]}
execute store success score *p_wrench zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_wrench"]}
execute store success score *p_remote zcbm_logic run clear @s minecraft:firework_star{Tags:["gui_remote"]}

execute if score *home zcbm_logic matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1
execute if score *home zcbm_logic matches 1 run tag @e[limit=1,sort=nearest,tag=zcbm_workbench] add zcbm_page
execute if score *home zcbm_logic matches 1 run data modify entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.Page set value "main"
execute if score *home zcbm_logic matches 1 run data modify entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.PageN set value 1

execute if score *p_core zcbm_logic matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1
execute if score *p_core zcbm_logic matches 1 run tag @e[limit=1,sort=nearest,tag=zcbm_workbench] add zcbm_page
execute if score *p_core zcbm_logic matches 1 run data modify entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.Page set value "core"

execute if score *front zcbm_logic matches 1 run tag @e[limit=1,sort=nearest,tag=zcbm_workbench] add zcbm_page
execute if score *front zcbm_logic matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1
execute if score *front zcbm_logic matches 1 store result score *page_num zcbm_logic run data get entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.PageN
execute if score *front zcbm_logic matches 1 run scoreboard players add *page_num zcbm_logic 1 
execute if score *front zcbm_logic matches 1 if score *page_num zcbm_logic matches ..64 store result entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.PageN int 1 run scoreboard players get *page_num zcbm_logic

execute if score *back zcbm_logic matches 1 run tag @e[limit=1,sort=nearest,tag=zcbm_workbench] add zcbm_page
execute if score *back zcbm_logic matches 1 run playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1
execute if score *back zcbm_logic matches 1 store result score *page_num zcbm_logic run data get entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.PageN
execute if score *back zcbm_logic matches 1 run scoreboard players remove *page_num zcbm_logic 1 
execute if score *back zcbm_logic matches 1 if score *page_num zcbm_logic matches 1.. store result entity @e[limit=1,sort=nearest,tag=zcbm_workbench] ArmorItems[3].tag.zcbm.PageN int 1 run scoreboard players get *page_num zcbm_logic

execute if score *md_tx zcbm_logic matches 1 run tellraw @s {"translate":"models_texture_chat"}
execute if score *tx zcbm_logic matches 1 run tellraw @s {"translate":"texture_chat","clickEvent":{"action":"open_url","value":"https://vk.com/terrariasprites"}}
execute if score *tx2 zcbm_logic matches 1 run tellraw @s {"translate":"texture2_chat","clickEvent":{"action":"open_url","value":"https://vk.com/arenamortem"}}

execute if score *yt zcbm_logic matches 1 run tellraw @s {"translate":"youtube_chat","clickEvent":{"action":"open_url","value":"https://www.youtube.com/c/ZeroCaty"}}
execute if score *dp zcbm_logic matches 1 run tellraw @s {"translate":"datapacks_chat","clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/search?search=zcbm"}}

execute if score *zc zcbm_logic matches 1 run playsound minecraft:super_important.yare ambient @s ~ ~ ~ 1 1
execute if score *zcbm zcbm_logic matches 1 run playsound minecraft:super_important.ora ambient @s ~ ~ ~ 1 1

execute if score *p_steel zcbm_logic matches 1 run function zcbm_core:crafting/craft/steel
execute if score *p_hsteel zcbm_logic matches 1 run function zcbm_core:crafting/craft/hsteel
execute if score *p_chip1 zcbm_logic matches 1 run function zcbm_core:crafting/craft/chip1
execute if score *p_chip2 zcbm_logic matches 1 run function zcbm_core:crafting/craft/chip2
execute if score *p_chip3 zcbm_logic matches 1 run function zcbm_core:crafting/craft/chip3
execute if score *p_wrench zcbm_logic matches 1 run function zcbm_core:crafting/craft/wrench
execute if score *p_remote zcbm_logic matches 1 run function zcbm_core:crafting/craft/remote_control