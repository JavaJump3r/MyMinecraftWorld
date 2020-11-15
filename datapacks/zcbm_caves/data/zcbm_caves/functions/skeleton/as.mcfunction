#======================#
# made by zcbm command #
#======================#
#
tag @s add zcbm_caves

scoreboard players set *m zcbm_random 100
function zcbm_core:mat/randomizer/determ/random

execute unless entity @a[distance=..16,gamemode=!spectator] if score *x zcbm_random matches 0..49 run data merge entity @s {DeathLootTable:"zcbm_caves:mob/dead_miner_s",Tags:["zcbm_dead_miner"],HandItems:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_pick\",\"italic\":false}"}}},{}],HandDropChances:[0.25F,0.85F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_boots\",\"italic\":false}",color:2960936}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_legs\",\"italic\":false}",color:6118994}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_chest\",\"italic\":false}",color:9079930}}},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11002,Explosion:{Type:0}}}],ArmorDropChances:[0.05F,0.05F,0.05F,0.00F]}

execute unless entity @a[distance=..16,gamemode=!spectator] if block ~ ~-1 ~ minecraft:packed_ice run function zcbm_caves:ice_cave/as