kill @s[nbt={Item:{tag:{Tags:["zcbm_item_kill"]}}}]
execute as @s[nbt={Item:{id:"minecraft:barrel",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:crafting_table positioned ~ ~-1 ~ unless entity @e[tag=zcbm_workbench,distance=..10] positioned ~ ~2 ~ run function zcbm_core:crafting/table_create
execute as @s[nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:barrel positioned ~ ~-1 ~ unless entity @e[tag=zcbm_workbench,distance=..10] positioned ~ ~2 ~ run function zcbm_core:crafting/table_create

execute as @s[nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:barrel positioned ~ ~-1 ~ if entity @e[tag=zcbm_workbench,distance=..10] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"translate\":\"benchmany\"}"}
execute as @s[nbt={Item:{id:"minecraft:barrel",Count:1b}}] at @s if block ~ ~-1 ~ minecraft:crafting_table positioned ~ ~-1 ~ if entity @e[tag=zcbm_workbench,distance=..10] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"translate\":\"benchmany\"}"}

execute as @s[nbt={Item:{id:"minecraft:glass_bottle",Count:1b}}] at @s if block ~ ~ ~ minecraft:cauldron[level=0] unless entity @e[tag=zcbm_kotl,distance=..1] run function zcbm_core:crafting/kotl_create
