execute unless block ~ ~ ~ minecraft:cauldron run function zcbm_core:crafting/kotl_destroy

execute if block ~ ~ ~ minecraft:cauldron[level=0] if entity @s[tag=zcbm_kotl_1] run function #zcbm_core:kotl_take
execute if block ~ ~ ~ minecraft:cauldron[level=1] if entity @s[tag=zcbm_kotl_2] run function #zcbm_core:kotl_take
execute if block ~ ~ ~ minecraft:cauldron[level=2] if entity @s[tag=zcbm_kotl_3] run function #zcbm_core:kotl_take
#@p[scores={zcbm_use_caul=1..}]

execute if block ~ ~-1 ~ #zcbm_core:kotl_f run scoreboard players add @s zcbm_kotl_t 1
execute if entity @s[scores={zcbm_kotl_t=1201}] unless block ~ ~ ~ minecraft:cauldron[level=0] run playsound minecraft:block.lava.ambient block @a ~ ~ ~ 0.3 2
execute if entity @s[scores={zcbm_kotl_t=1200..}] unless block ~ ~ ~ minecraft:cauldron[level=0] run particle minecraft:rain ~ ~0.6 ~ 0.1 0 0.1 0.5 2
scoreboard players remove @s[scores={zcbm_kotl_t=1240..}] zcbm_kotl_t 40
execute if block ~ ~ ~ minecraft:cauldron[level=0] run scoreboard players set @s zcbm_potion_type 0
execute if block ~ ~-1 ~ minecraft:furnace[lit=true] run scoreboard players add @s zcbm_kotl_t 1
execute unless block ~ ~-1 ~ #zcbm_core:kotl_f unless block ~ ~-1 ~ minecraft:furnace[lit=true] run scoreboard players remove @s[scores={zcbm_kotl_t=1..}] zcbm_kotl_t 1

execute if entity @s[scores={zcbm_kotl_t=1200..}] if block ~ ~ ~ minecraft:cauldron[level=3] if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:glass_bottle"}}] run tag @s add zcbm_bad_tea
execute if entity @s[scores={zcbm_kotl_t=1200..}] if block ~ ~ ~ minecraft:cauldron[level=3] if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:glass_bottle"}}] run function #zcbm_core:kotl_craft
execute if entity @s[scores={zcbm_kotl_t=1200..}] if block ~ ~ ~ minecraft:cauldron[level=3] if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:glass_bottle"}}] run function zcbm_core:crafting/kotl_craft

execute if entity @s[scores={zcbm_kotl_t=0}] if block ~ ~ ~ minecraft:cauldron[level=3] if block ~ ~1 ~ minecraft:spruce_trapdoor[half=bottom,open=true] if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:glass_bottle"}}] run tag @s add zcbm_bad_tea
execute if entity @s[scores={zcbm_kotl_t=0}] if block ~ ~ ~ minecraft:cauldron[level=3] if block ~ ~1 ~ minecraft:spruce_trapdoor[half=bottom,open=true] if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:glass_bottle"}}] run function #zcbm_core:kotl_craft2
execute if entity @s[scores={zcbm_kotl_t=0}] if block ~ ~ ~ minecraft:cauldron[level=3] if block ~ ~1 ~ minecraft:spruce_trapdoor[half=bottom,open=true] if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:glass_bottle"}}] run function zcbm_core:crafting/kotl_craft


execute if block ~ ~ ~ minecraft:cauldron[level=3] run scoreboard players set @s[tag=zcbm_kotl_1,scores={zcbm_potion_type=0..}] zcbm_potion_type 0
execute if block ~ ~ ~ minecraft:cauldron[level=2] run scoreboard players set @s[tag=zcbm_kotl_1,scores={zcbm_potion_type=0..}] zcbm_potion_type 0
execute if block ~ ~ ~ minecraft:cauldron[level=3] run scoreboard players set @s[tag=zcbm_kotl_2,scores={zcbm_potion_type=0..}] zcbm_potion_type 0

execute if block ~ ~ ~ minecraft:cauldron[level=3] run tag @s add zcbm_kotl_3
execute unless block ~ ~ ~ minecraft:cauldron[level=3] run tag @s remove zcbm_kotl_3
execute if block ~ ~ ~ minecraft:cauldron[level=2] run tag @s add zcbm_kotl_2
execute unless block ~ ~ ~ minecraft:cauldron[level=2] run tag @s remove zcbm_kotl_2
execute if block ~ ~ ~ minecraft:cauldron[level=1] run tag @s add zcbm_kotl_1
execute unless block ~ ~ ~ minecraft:cauldron[level=1] run tag @s remove zcbm_kotl_1

function #zcbm_core:kotl_loop