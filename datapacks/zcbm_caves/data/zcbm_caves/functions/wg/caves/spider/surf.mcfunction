#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_spi_m,distance=..25] run function zcbm_caves:wg/caves/spider/direct
kill @e[type=minecraft:item,distance=..2]

scoreboard players set *m zcbm_random 10000
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 1..99 run setblock ~ ~ ~ minecraft:player_head[rotation=0]{Owner:{Id:"8034c15f-ff94-4b01-ba2d-11f38ff93be1",Properties:{lol:sex,textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg2NzgyNTc2NGRlOThkYTFjMWVlZGM4ZjU3ZmFjMzcxY2JlZmM0MGIxNGJhNTM0YWVmMmM1MDI4YTYyODAifX19"}]}}} replace

execute if score *x zcbm_random matches 100..9975 run setblock ~ ~ ~ cobweb

execute if score *x zcbm_random matches 9976..9989 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:3,SpawnRange:10,Delay:200,MinSpawnDelay:100,MaxSpawnDelay:1000,MaxNearbyEntities:12,RequiredPlayerRange:50,SpawnData:{id:"minecraft:spider"}} replace

execute if score *x zcbm_random matches 9990..9999 run setblock ~ ~ ~ minecraft:spawner{SpawnCount:3,SpawnRange:10,Delay:200,MinSpawnDelay:100,MaxSpawnDelay:1000,MaxNearbyEntities:12,RequiredPlayerRange:50,SpawnData:{id:"minecraft:cave_spider"}} replace


scoreboard players add *chunks zcbm_logic 1