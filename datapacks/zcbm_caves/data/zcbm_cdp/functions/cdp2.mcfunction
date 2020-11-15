			#======================#
			# made by zcbm command #
			#======================#
			#

scoreboard players add *version_check zcbm_cdp 1
scoreboard players set 100 zcbm_cdp 100
execute if score *version_check zcbm_cdp matches 20.. run scoreboard players operation *ver_h zcbm_cdp = *zcbm_core_version_min zcbm_cdp
execute if score *version_check zcbm_cdp matches 20.. run scoreboard players operation *ver_h zcbm_cdp /= 100 zcbm_cdp
execute if score *version_check zcbm_cdp matches 20.. run scoreboard players operation *ver_l zcbm_cdp = *zcbm_core_version_min zcbm_cdp
execute if score *version_check zcbm_cdp matches 20.. run scoreboard players operation *ver_l zcbm_cdp %= 100 zcbm_cdp
execute if score *version_check zcbm_cdp matches 20.. run tellraw @a [{"translate":"You need to install zcbm Core version ","color":"red","bold":"true"},{"score":{"name":"*ver_h","objective":"zcbm_cdp"},"color":"red","bold":"true"},{"text":".","color":"red","bold":"true"},{"score":{"name":"*ver_l","objective":"zcbm_cdp"},"color":"red","bold":"true"},{"translate":" or higher!","color":"red","bold":"true"},{"text":"\n"},{"text":"Click here to download it.","color":"red","bold":"true","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/projects/zcbm-core/files"}}]
execute if score *version_check zcbm_cdp matches 20.. run tellraw @a [{"translate":"Вам нужно установить версию zcbm Core","color":"red","bold":"true"},{"score":{"name":"*ver_h","objective":"zcbm_cdp"},"color":"red","bold":"true"},{"text":".","color":"red","bold":"true"},{"score":{"name":"*ver_l","objective":"zcbm_cdp"},"color":"red","bold":"true"},{"translate":" или выше!","color":"red","bold":"true"},{"text":"\n"},{"text":"Нажмите здесь, чтобы загрузить его.","color":"red","bold":"true","underlined":true,"clickEvent":{"action":"open_url","value":"https://minecraft.curseforge.com/projects/zcbm-core/files"}}]
execute if score *version_check zcbm_cdp matches 20.. run scoreboard players set *version_check zcbm_cdp 0