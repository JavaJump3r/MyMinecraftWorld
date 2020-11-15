#======================#
# made by zcbm command #
#======================#
#
tag @s add zcbm_caves

#scoreboard players set *m zcbm_random 100
#function zcbm_core:mat/randomizer/determ/random

#execute unless entity @a[distance=..16,gamemode=!spectator] if score *x zcbm_random matches 0..49 run function zcbm_caves:spider/roof
execute unless entity @a[distance=..16,gamemode=!spectator] run function zcbm_caves:spider/roof