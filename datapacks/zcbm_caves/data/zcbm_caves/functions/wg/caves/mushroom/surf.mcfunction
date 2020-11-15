#======================#
# made by zcbm command #
#======================#
#
execute if entity @e[type=minecraft:area_effect_cloud,tag=zcbm_cave_mus_m,distance=..25] run function zcbm_caves:wg/caves/mushroom/direct
kill @e[type=minecraft:item,distance=..2]

scoreboard players set *m zcbm_random 1000
function zcbm_core:mat/randomizer/determ/random

#execute if block ~1 ~ ~ #zcbm_caves:mus_air if score *x zcbm_random matches 1..999 run setblock ~ ~ ~ cobweb


execute if block ~ ~-1 ~ #zcbm_caves:mus_air run setblock ~ ~ ~ brown_mushroom_block
execute if block ~ ~ ~1 #zcbm_caves:mus_air run setblock ~ ~ ~ brown_mushroom_block
execute if block ~ ~ ~-1 #zcbm_caves:mus_air run setblock ~ ~ ~ brown_mushroom_block
execute if block ~1 ~ ~ #zcbm_caves:mus_air run setblock ~ ~ ~ brown_mushroom_block
execute if block ~-1 ~ ~ #zcbm_caves:mus_air run setblock ~ ~ ~ brown_mushroom_block

execute if block ~ ~1 ~ #zcbm_caves:mus_air run setblock ~ ~ ~ mycelium

execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 0..99 run setblock ~ ~1 ~ brown_mushroom
execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 100..199 run setblock ~ ~1 ~ red_mushroom

execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 200..249 run setblock ~ ~1 ~ minecraft:player_head[rotation=0]{Owner:{Id:"604d3aed-debf-4522-823a-1af40fd07858",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNlMGEyMzBhY2Q2NDM2YWJjODZmMTNiZTcyZTliYTk0NTM3ZWU1NGYwMzI1YmI4NjI1NzdhMWUwNjJmMzcifX19"}]}}}

execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 250..299 run setblock ~ ~1 ~ minecraft:player_head[rotation=0]{Owner:{Id:"1dcc29ee-b306-43fb-af42-b82cdbd8a6ab",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZlMjU3OTlhMmYzOTFhMjM2YTc4MmM2MmU1NDhkZWM5ZmZmZjY4ZDU1NWM5YmExM2ViOTY1MmI3NTkyMjkzIn19fQ=="}]}}}


execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 300..301 run setblock ~ ~1 ~ minecraft:spawner{SpawnData:{Tags:["zcbm_caves"],id:"minecraft:zombie",CustomName:"{\"translate\":\"musroom_zombie\",\"italic\":false}",Team:"zcbm_cave_nn",DeathLootTable:"zcbm_caves:mob/mushroom_zombie",ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:10686994}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12850710}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12850710}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"93368024-3a7a-4644-aa79-3dcdebf41ea1",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmI1Mjg0MWYyZmQ1ODllMGJjODRjYmFiZjllMWMyN2NiNzBjYWM5OGY4ZDZiM2RkMDY1ZTU1YTRkY2I3MGQ3NyJ9fX0="}]}}}}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11006}},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11006}}],HandDropChances:[0.00F,0.00F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}]}}
execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 302..303 run setblock ~ ~1 ~ minecraft:spawner{SpawnData:{Tags:["zcbm_caves"],id:"minecraft:zombie",CustomName:"{\"translate\":\"musroom_zombie\",\"italic\":false}",Team:"zcbm_cave_nn",DeathLootTable:"zcbm_caves:mob/mushroom_zombie",ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7230267}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9727831}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9727831}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"7ec3ef62-e28c-4ee6-b0a9-4f518f01c039",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjZkNWZjNzAzMWFjYzk1YmVlYjUyODc1ZjE1NDA4ZTk3OWEwYTljMzkxYjZkYjdlY2VlN2U0MDAwNzJkZTVjNCJ9fX0="}]}}}}],ArmorDropChances:[0.00F,0.00F,0.00F,0.00F],HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11007}},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11007}}],HandDropChances:[0.00F,0.00F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:19999980,ShowParticles:0b}]}}

execute if block ~ ~1 ~ #zcbm_caves:creep_air if score *x zcbm_random matches 308..312 run setblock ~ ~1 ~ minecraft:player_head[rotation=0]{Owner:{Id:"7d1cc878-a943-4812-8e68-761fae25de8e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTUzZGQxMWE0NWM3ZTY3NzMxZWFlOWZmNmRkNThkMzA5MmY0N2VkMGJkYTcyYzc5OTE0MTlkMTNjMWE2NDQifX19"}]}}}


execute if block ~ ~ ~ repeating_command_block run setblock ~ ~ ~ dirt

scoreboard players add *chunks zcbm_logic 1
