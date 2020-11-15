#======================#
# made by zcbm command #
#======================#
#

scoreboard players set *m zcbm_random 11
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 1..4 run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11001}}],ArmorDropChances:[0.85F,0.85F,0.85F,0.00F]}
execute if score *x zcbm_random matches 5..8 run summon minecraft:vindicator ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11001}}],ArmorDropChances:[0.85F,0.85F,0.85F,0.00F]}
execute if score *x zcbm_random matches 9 run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:crossbow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11001}}],ArmorDropChances:[0.85F,0.85F,0.85F,0.00F]}


setblock ~ ~ ~ air