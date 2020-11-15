fill ~ ~ ~ ~ ~ ~ minecraft:air destroy

kill @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..2,sort=nearest,limit=1]
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b},PickupDelay:0s}
execute as @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..2,sort=nearest,limit=1] run data remove entity @s Item.tag
kill @s