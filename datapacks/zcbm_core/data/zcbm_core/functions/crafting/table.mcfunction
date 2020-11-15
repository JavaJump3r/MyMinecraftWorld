
execute unless block ~ ~-1 ~ minecraft:barrel run function zcbm_core:crafting/table_destroy

#CRAFTING
#execute store success score @s zcbm_M0 run data get block ~ ~ ~ Items[0].Slot
#execute as @s[scores={zcbm_M0=1}] if entity @a[distance=..5] run function #zcbm_core:crafting_choose
execute positioned ~ ~-1 ~ run function zcbm_core:crafting/gui/loop


#STAFF

#tellraw @a[distance=..2,scores={zcbm_table_tell=..0}] {"text":"Посмотреть рецепты крафтов можно нажав по этой надписи.","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://vk.com/zerocaty_vk?w=page-169715262_55480710"}}
#scoreboard players set @a[distance=..2,scores={zcbm_table_tell=..0}] zcbm_table_tell 2400