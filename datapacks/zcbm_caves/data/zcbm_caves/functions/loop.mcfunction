#======================#
# made by zcbm command #
#======================#
#

scoreboard players remove *tick10 zcbm_caves 1
execute if score *tick10 zcbm_caves matches ..0 run function zcbm_caves:tick10

scoreboard players remove *tick3 zcbm_caves 1
execute if score *tick3 zcbm_caves matches ..0 run function zcbm_caves:tick3

execute as @e[type=item,nbt={Item:{id:"minecraft:player_head"}}] at @s run function zcbm_caves:heads/as

execute as @a at @s if block ~ ~ ~ cave_air if block ~ ~1 ~ cave_air run function zcbm_caves:in_cave/loop
execute as @a at @s if block ~ ~ ~ cave_air unless block ~ ~1 ~ cave_air run function zcbm_caves:in_cave/loop
execute as @a at @s unless block ~ ~ ~ cave_air if block ~ ~1 ~ cave_air run function zcbm_caves:in_cave/loop

execute as @a[scores={zcbm_cave_bomb=1..}] at @s run function zcbm_caves:tools/snow

execute as @a[gamemode=!spectator] at @s positioned ~ ~-0.1 ~ if block ~ ~ ~ minecraft:player_head run function zcbm_caves:heads/player