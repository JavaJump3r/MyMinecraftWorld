#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_ice_m,distance=..55] run function zcbm_caves:wg/caves/ice/direct
kill @e[type=minecraft:item,distance=..2]

scoreboard players set *m zcbm_random 10000
function zcbm_core:mat/randomizer/determ/random

execute if block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 10 run setblock ~ ~1 ~ minecraft:player_head[rotation=0]{Owner:{Id:"1b5296e8-7f7c-4a2c-ab32-ccd2a1e9d98e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA1Njg4MjllMWMxZWQxZjhkYzIyYmEzODUxNzY1N2I1ZTMzYjEyZDkyNTFjNmQyZDRmODkzMDQ0MmMifX19"}]}}}
execute if block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 11 run setblock ~ ~1 ~ minecraft:player_head[rotation=4]{Owner:{Id:"1b5296e8-7f7c-4a2c-ab32-ccd2a1e9d98e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA1Njg4MjllMWMxZWQxZjhkYzIyYmEzODUxNzY1N2I1ZTMzYjEyZDkyNTFjNmQyZDRmODkzMDQ0MmMifX19"}]}}}
execute if block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 12 run setblock ~ ~1 ~ minecraft:player_head[rotation=8]{Owner:{Id:"1b5296e8-7f7c-4a2c-ab32-ccd2a1e9d98e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA1Njg4MjllMWMxZWQxZjhkYzIyYmEzODUxNzY1N2I1ZTMzYjEyZDkyNTFjNmQyZDRmODkzMDQ0MmMifX19"}]}}}
execute if block ~ ~1 ~ #zcbm_caves:ice_air if score *x zcbm_random matches 13 run setblock ~ ~1 ~ minecraft:player_head[rotation=12]{Owner:{Id:"1b5296e8-7f7c-4a2c-ab32-ccd2a1e9d98e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzA1Njg4MjllMWMxZWQxZjhkYzIyYmEzODUxNzY1N2I1ZTMzYjEyZDkyNTFjNmQyZDRmODkzMDQ0MmMifX19"}]}}}

setblock ~ ~ ~ packed_ice
execute if score *x zcbm_random matches 350..500 run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 snow_block replace packed_ice
execute if score *x zcbm_random matches 501..1100 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 blue_ice replace packed_ice

fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:obsidian replace minecraft:lava
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:packed_ice replace minecraft:water

scoreboard players add *chunks zcbm_logic 1
