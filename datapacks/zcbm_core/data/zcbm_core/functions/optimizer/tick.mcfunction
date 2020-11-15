#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *optimizer_timer zcbm_logic 0
execute positioned ~ -63 ~ run function zcbm_core:weather
execute as @e[type=experience_orb] at @s run tp @s @p[gamemode=!spectator,gamemode=!creative]
execute as @e[type=item,tag=!zcbm_optimized] at @s run function zcbm_core:optimizer/item
