#======================#
# made by zcbm command #
#======================#

data merge entity @s {NoGravity:0b,Team:"",CustomName:"",PersistenceRequired:0b}
tag @s remove zcbm_caves_strap
tag @s add zcbm_caves_strap2
effect give @s minecraft:slow_falling 2 0 true
execute at @s run loot spawn ~ ~0.5 ~ loot zcbm_caves:mob/spider
execute at @s run data merge entity @e[type=minecraft:item,limit=1,sort=nearest] {NoGravity:1b,Motion:[0.0,0.0,0.0],Tags:["zcbm_web_item"]}


