#======================#
# made by zcbm command #
#======================#
#

scoreboard players remove @s zcbm_caves 1
execute if entity @a[gamemode=!spectator,distance=..25] run scoreboard players remove @s zcbm_caves 10
execute unless block ~ ~ ~ minecraft:redstone_torch run particle minecraft:block grass ~ ~ ~ 0.1 0.1 0.1 0.1 20 force
execute unless block ~ ~ ~ minecraft:redstone_torch run playsound minecraft:block.grass.break player @a
execute unless block ~ ~ ~ minecraft:redstone_torch run kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}},limit=1,sort=nearest]
execute unless block ~ ~ ~ minecraft:redstone_torch run loot spawn ~ ~ ~ loot minecraft:entities/creeper
execute unless block ~ ~ ~ minecraft:redstone_torch run kill @s

execute if score @s zcbm_caves matches ..0 run function zcbm_caves:wg/caves/creeper/grow3