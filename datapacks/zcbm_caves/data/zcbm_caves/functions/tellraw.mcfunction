#======================#
# made by zcbm command #
#======================#
#


scoreboard players operation *dp_version_h zcbm_logic = *zcbm_caves_version zcbm_setup
scoreboard players operation *dp_version_h zcbm_logic /= 100 zcbm_CONST
scoreboard players operation *dp_version_l zcbm_logic = *zcbm_caves_version zcbm_setup
scoreboard players operation *dp_version_l zcbm_logic %= 100 zcbm_CONST

tellraw @s {"text":"-","color":"gold","extra":[{"text":"ZCBM Caves v","color":"green"},{"score":{"name":"*dp_version_h","objective":"zcbm_logic"},"color":"gold"},{"text":".","color":"gold"}, {"score":{"name":"*dp_version_l","objective":"zcbm_logic"},"color":"gold"}]}