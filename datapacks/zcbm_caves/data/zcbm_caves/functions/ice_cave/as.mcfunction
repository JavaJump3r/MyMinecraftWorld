#======================#
# made by zcbm command #
#======================#
#

scoreboard players set *m zcbm_random 100
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 50.. if entity @s[type=minecraft:zombie] run summon minecraft:stray ~ ~ ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}
execute if score *x zcbm_random matches 50.. if entity @s[type=minecraft:skeleton] run summon minecraft:stray ~ ~ ~

execute if score *x zcbm_random matches 0..49 if entity @s[type=minecraft:zombie] run summon minecraft:stray ~ ~ ~ {DeathLootTable:"zcbm_caves:mob/dead_miner_z",Tags:["zcbm_dead_miner"],HandItems:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_pick\",\"italic\":false}"}}},{}],HandDropChances:[0.25F,0.85F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_boots\",\"italic\":false}",color:2960936}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_legs\",\"italic\":false}",color:6118994}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_chest\",\"italic\":false}",color:9079930}}},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11002,Explosion:{Type:0}}}],ArmorDropChances:[0.05F,0.05F,0.05F,0.00F]}
execute if score *x zcbm_random matches 0..49 if entity @s[type=minecraft:skeleton] run summon minecraft:stray ~ ~ ~ {DeathLootTable:"zcbm_caves:mob/dead_miner_s",Tags:["zcbm_dead_miner"],HandItems:[{id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_pick\",\"italic\":false}"}}},{}],HandDropChances:[0.25F,0.85F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_boots\",\"italic\":false}",color:2960936}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_legs\",\"italic\":false}",color:6118994}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:"{\"translate\":\"mine_chest\",\"italic\":false}",color:9079930}}},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11002,Explosion:{Type:0}}}],ArmorDropChances:[0.05F,0.05F,0.05F,0.00F]}

tp @s ~ ~-500 ~
kill @s