#======================#
# made by zcbm command #
#======================#

execute positioned ~ ~1 ~ if block ~ ~ ~ #zcbm_core:air run function zcbm_caves:spider/trap2
execute unless data entity @s {HurtTime:0s} run function zcbm_caves:spider/trap2
execute positioned ~ ~-4 ~ if entity @a[distance=..10,gamemode=!spectator] run function zcbm_caves:spider/trap2
