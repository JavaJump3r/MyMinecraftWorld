#======================#
# made by zcbm command #
#======================#
#
execute if block ~ ~ ~ minecraft:sand run scoreboard players set *sand zcbm_logic 1
execute if block ~ ~1 ~ minecraft:water run scoreboard players set *sand zcbm_logic 0

execute if block ~ ~ ~ minecraft:red_sand run scoreboard players set *red_sand zcbm_logic 1
execute if block ~ ~ ~ #zcbm_core:base_id/terracotta run scoreboard players set *red_sand zcbm_logic 1

execute if block ~ ~ ~ minecraft:snow run scoreboard players set *snow zcbm_logic 1
execute if block ~1 ~ ~ minecraft:snow run scoreboard players set *snow zcbm_logic 1
execute if block ~-1 ~ ~ minecraft:snow run scoreboard players set *snow zcbm_logic 1
scoreboard players add *height zcbm_logic 1
execute if score *height zcbm_logic matches ..254 positioned ~ ~1 ~ unless block ~ ~ ~ #zcbm_core:wg run function zcbm_core:world/surf 
execute if score *height zcbm_logic matches ..254 positioned ~ ~1 ~ if block ~ ~ ~ #zcbm_core:wg unless block ~ ~10 ~ #zcbm_core:wg run function zcbm_core:world/surf 
