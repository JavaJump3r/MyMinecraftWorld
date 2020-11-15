#======================#
# made by zcbm command #
#======================#
#
scoreboard players set @s zcbm_leave 0

scoreboard players operation *dp_version_h zcbm_logic = *zcbm_core_version zcbm_setup
scoreboard players operation *dp_version_h zcbm_logic /= 100 zcbm_CONST
scoreboard players operation *dp_version_l zcbm_logic = *zcbm_core_version zcbm_setup
scoreboard players operation *dp_version_l zcbm_logic %= 100 zcbm_CONST

recipe give @a *

tellraw @s ["",{"text":"----[","color":"gold"},{"text":"zcbm CORE","bold":true,"color":"red"},{"text":"]----","color":"gold"},{"text":"\n\n"},{"text":"Version / Версия:","color":"gold"},{"text":" "},{"score":{"name":"*dp_version_h","objective":"zcbm_logic"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"*dp_version_l","objective":"zcbm_logic"},"color":"green"},{"text":"\n\n"},{"text":"List of datapacks / Список датапаков:","color":"gold"},{"text":"\n "}]
function #zcbm_core:tellraw

tellraw @s ["",{"text":"\n"},{"text":"Our links / Наши ссылки:","color":"gold"},{"text":"\n\n"},{"text":"YouTube","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/c/ZeroCaty"}},{"text":" ","bold":true},{"text":"/ "},{"text":"ВКонтакте","bold":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://vk.com/zerocaty_vk"}},{"text":" ","bold":true},{"text":"/ "},{"text":"Discord","bold":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://discordapp.com/invite/vbnbNZH"}},{"text":"\n\n"},{"text":"------------------","color":"gold"}]

