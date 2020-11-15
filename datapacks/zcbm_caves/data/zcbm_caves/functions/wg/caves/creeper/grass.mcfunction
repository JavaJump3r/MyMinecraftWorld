#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_crep_m,distance=..35] run function zcbm_caves:wg/caves/creeper/direct
kill @e[type=minecraft:item,distance=..2]

scoreboard players set *m zcbm_random 1000
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 0..485 run setblock ~ ~ ~ cave_air

execute if score *x zcbm_random matches 486..495 run setblock ~ ~ ~ minecraft:player_head[rotation=0]{Owner:{Id:"2a9d358d-2403-4115-95dc-20c6e50458cf",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzg2NjNhYjdiZTlkN2FjZjI5MjdhZjI2ZGRmZjAxYjYzOGUyNzE1YjI0OGU4MzA4NjQ5MDNiNmY1YmU5OGZiYSJ9fX0="}]}}} replace
execute if score *x zcbm_random matches 496..499 if block ~ ~1.1 ~ minecraft:cave_air run function zcbm_caves:wg/caves/creeper/point
execute if score *x zcbm_random matches 500..859 run setblock ~ ~ ~ grass
execute if score *x zcbm_random matches 860..900 run setblock ~ ~ ~ poppy
execute if score *x zcbm_random matches 901..929 run setblock ~ ~ ~ oxeye_daisy
execute if score *x zcbm_random matches 930..950 run setblock ~ ~ ~ dandelion
execute if score *x zcbm_random matches 951..995 run setblock ~ ~ ~ blue_orchid

execute if score *x zcbm_random matches 996 run setblock ~ ~ ~ chest[facing=north]{LootTable:"minecraft:chests/jungle_temple"}
execute if score *x zcbm_random matches 997 run setblock ~ ~ ~ chest[facing=south]{LootTable:"minecraft:chests/jungle_temple"}
execute if score *x zcbm_random matches 998 run setblock ~ ~ ~ chest[facing=east]{LootTable:"minecraft:chests/jungle_temple"}
execute if score *x zcbm_random matches 999 run setblock ~ ~ ~ chest[facing=west]{LootTable:"minecraft:chests/jungle_temple"}

setblock ~ ~-1 ~ grass_block


scoreboard players set *m zcbm_random 10
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 1..6 positioned ~ ~2 ~ if block ~ ~ ~ cave_air if block ~ ~1 ~ #zcbm_caves:creep run setblock ~ ~ ~ vine[east=true,north=true,south=true,up=true,west=true]
execute if score *x zcbm_random matches 1..6 positioned ~ ~3 ~ if block ~ ~ ~ cave_air if block ~ ~1 ~ #zcbm_caves:creep run setblock ~ ~ ~ vine[east=true,north=true,south=true,up=true,west=true]
execute if score *x zcbm_random matches 1..6 positioned ~ ~4 ~ if block ~ ~ ~ cave_air if block ~ ~1 ~ #zcbm_caves:creep run setblock ~ ~ ~ vine[east=true,north=true,south=true,up=true,west=true]
execute if score *x zcbm_random matches 1..6 positioned ~ ~5 ~ if block ~ ~ ~ cave_air if block ~ ~1 ~ #zcbm_caves:creep run setblock ~ ~ ~ vine[east=true,north=true,south=true,up=true,west=true]
execute if score *x zcbm_random matches 1..6 positioned ~ ~6 ~ if block ~ ~ ~ cave_air if block ~ ~1 ~ #zcbm_caves:creep run setblock ~ ~ ~ vine[east=true,north=true,south=true,up=true,west=true]


scoreboard players add *chunks zcbm_logic 1