#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *tick3 zcbm_caves 3

execute as @e[type=minecraft:spider,tag=zcbm_caves_strap] at @s run function zcbm_caves:spider/trap
execute as @e[type=minecraft:spider,tag=zcbm_caves_strap2] at @s run function zcbm_caves:spider/trap3

execute as @e[type=minecraft:item,tag=zcbm_web_item] at @s unless block ~ ~ ~ cobweb run data merge entity @s {NoGravity:0b}

execute as @e[type=minecraft:armor_stand,tag=zcbm_cave_bomb] at @s run function zcbm_caves:tools/bomb/as