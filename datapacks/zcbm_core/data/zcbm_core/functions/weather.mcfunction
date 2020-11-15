#======================#
# made by zcbm command #
#======================#
#
loot spawn ~ ~ ~ loot zcbm_core:weather
execute store result score *weather zcbm_logic run data get entity @e[type=minecraft:item,limit=1,sort=nearest] Item.Count 1
kill @e[type=minecraft:item,limit=1,sort=nearest]
