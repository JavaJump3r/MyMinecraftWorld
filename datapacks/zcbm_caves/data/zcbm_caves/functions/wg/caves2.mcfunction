#======================#
# made by zcbm command #
#======================#
#
execute if score *snow zcbm_logic matches 0 if score *red_sand zcbm_logic matches 0 if score *sand zcbm_logic matches 0 if block ~ ~-1 ~ #zcbm_caves:spi if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/mushroom
execute if score *snow zcbm_logic matches 1 if block ~ ~-1 ~ #zcbm_caves:ice if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/ice
execute if score *x zcbm_random matches 100..5000 if score *snow zcbm_logic matches 0 if score *sand zcbm_logic matches 1 if block ~ ~-1 ~ #zcbm_caves:ice if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/sand

execute if score *red_sand zcbm_logic matches 1 if score *x zcbm_random matches 100..5000 if score *snow zcbm_logic matches 0 if score *sand zcbm_logic matches 0 if block ~ ~-1 ~ #zcbm_caves:ice if block ~ ~ ~ cave_air run function zcbm_caves:wg/caves/red_sand
