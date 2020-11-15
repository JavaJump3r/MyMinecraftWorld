#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_dio_m,distance=..55] run function zcbm_caves:wg/caves/dio/direct
kill @e[type=minecraft:item,distance=..2]

scoreboard players set *m zcbm_random 1000
function zcbm_core:mat/randomizer/determ/random

setblock ~ ~ ~ diorite

execute if score *x zcbm_random matches 100..500 if block ~ ~1 ~ water run setblock ~ ~ ~ water
execute if score *x zcbm_random matches 100..500 unless block ~1 ~ ~ lava unless block ~-1 ~ ~ lava unless block ~ ~ ~1 lava unless block ~ ~ ~-1 lava if block ~ ~1 ~ cave_air run setblock ~ ~ ~ diorite_slab

execute if score *x zcbm_random matches 100..500 unless block ~1 ~ ~ lava unless block ~-1 ~ ~ lava unless block ~ ~ ~1 lava unless block ~ ~ ~-1 lava if block ~ ~1 ~ cave_air run fill ~-1 ~ ~-1 ~1 ~ ~1 diorite replace #zcbm_caves:dio

execute if score *x zcbm_random matches 600..605 if block ~ ~1 ~ cave_air run setblock ~ ~1 ~ minecraft:spawner{SpawnData:{Tags:["zcbm_caves"],id:"minecraft:zombie",CustomName:"{\"translate\":\"diorite_zombie\",\"italic\":false}",Team:"zcbm_cave_nn",DeathLootTable:"zcbm_caves:mob/diorite_zombie",HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11019}},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11019}}],HandDropChances:[0.0F,0.0F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"b5929fcf-c955-4052-9535-83df5e3a8cb8",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNmYTUyNjVhMzM2YWJkZTMwMWE5ZDU5YWY0NzgzZTgyYTEwZGFkMDgxNzcxNmVhZDI5NjJhYjdjNmQzZGZmIn19fQ=="}]}}}}]}}

execute if score *x zcbm_random matches 700..705 if block ~ ~1 ~ cave_air run setblock ~ ~1 ~ minecraft:chest

execute if score *x zcbm_random matches 0..50 if block ~ ~1 ~ cave_air run setblock ~ ~1 ~ diorite_wall
execute if score *x zcbm_random matches 0..50 if block ~ ~-1 ~ cave_air run setblock ~ ~-1 ~ diorite_wall

scoreboard players add *chunks zcbm_logic 1
