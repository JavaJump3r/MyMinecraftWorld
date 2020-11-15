#======================#
# made by zcbm command #
#======================#
#
execute store result score *mine zcbm_caves run locate Mineshaft

#execute if score *mine zcbm_caves matches ..8 if score *x zcbm_random matches 0..2500 run function zcbm_caves:wg/pillager/h
execute if score *mine zcbm_caves matches ..8 if score *x zcbm_random matches 2501..9999 run function zcbm_caves:wg/caves/miners

execute if score *x zcbm_random matches 1001..1500 run function zcbm_caves:wg/caves/dio
execute if score *x zcbm_random matches 1900..2000 run function zcbm_caves:wg/caves/red
execute if score *x zcbm_random matches 2001..3000 run function zcbm_caves:wg/caves/spider
execute if score *x zcbm_random matches 4001..4100 run function zcbm_caves:wg/caves/trader
execute if score *x zcbm_random matches 5001..6000 run function zcbm_caves:wg/caves/set
execute if score *x zcbm_random matches 6001..9999 if block ~ ~-1 ~ #zcbm_core:base_id/stone run setblock ~ ~ ~ minecraft:player_head[rotation=0]{Owner:{Id:"8034c15f-ff94-4b01-ba2d-11f38ff93be1",Properties:{lol:sex,textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg2NzgyNTc2NGRlOThkYTFjMWVlZGM4ZjU3ZmFjMzcxY2JlZmM0MGIxNGJhNTM0YWVmMmM1MDI4YTYyODAifX19"}]}}} replace

execute if score *snow zcbm_logic matches 0 if score *red_sand zcbm_logic matches 0 if score *sand zcbm_logic matches 0 positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ #zcbm_caves:spi if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/creeper
execute if score *snow zcbm_logic matches 0 if score *sand zcbm_logic matches 1 if block ~ ~-1 ~ #zcbm_caves:ice if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/sand
execute if score *snow zcbm_logic matches 0 if score *red_sand zcbm_logic matches 1 if block ~ ~-1 ~ #zcbm_caves:ice if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/red_sand
execute if score *snow zcbm_logic matches 1 if block ~ ~-1 ~ #zcbm_caves:ice if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/ice

scoreboard players set *cave zcbm_logic 1