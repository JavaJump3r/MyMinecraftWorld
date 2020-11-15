#======================#
# made by zcbm command #
#======================#
#
tag @s add zcbm_optimized
execute unless entity @a[distance=..10,gamemode=!spectator] run data modify entity @s Age set value 5000
execute if data entity @s {Item:{id:"minecraft:dirt"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
execute if data entity @s {Item:{id:"minecraft:cobblestone"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
execute if data entity @s {Item:{id:"minecraft:gravel"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
execute if data entity @s {Item:{id:"minecraft:granite"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
execute if data entity @s {Item:{id:"minecraft:andesite"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
execute if data entity @s {Item:{id:"minecraft:diorite"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
execute if data entity @s {Item:{id:"minecraft:sand"}} unless entity @a[distance=..20,gamemode=!spectator] run kill @s
