#======================#
# made by zcbm command #
#======================#
#

scoreboard players set *m zcbm_random 4
function zcbm_core:mat/randomizer/determ/random

execute if score *x zcbm_random matches 1..2 run summon minecraft:pillager ~ ~ ~ {PersistenceRequired:1b,HandItems:[{id:"minecraft:crossbow",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11001}}],ArmorDropChances:[0.85F,0.85F,0.85F,0.00F]}

setblock ~ ~ ~ air