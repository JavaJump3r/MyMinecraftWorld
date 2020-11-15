#======================#
# made by zcbm command #
#======================#
#
scoreboard objectives add zcbm_cdp dummy
scoreboard players set *zcbm_core_version_min zcbm_cdp 501
scoreboard players set *version zcbm_cdp 0
function zcbm_core:get_version
execute unless score *version zcbm_cdp >= *zcbm_core_version_min zcbm_cdp run function zcbm_cdp:cdp2