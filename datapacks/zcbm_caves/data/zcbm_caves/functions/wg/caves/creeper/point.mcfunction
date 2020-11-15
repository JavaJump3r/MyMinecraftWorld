#======================#
# made by zcbm command #
#======================#
#
setblock ~ ~ ~ minecraft:redstone_torch

summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["zcbm_cave_crep_g"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:11011}}]}

#scoreboard players set *m zcbm_random 360
#function zcbm_core:mat/randomizer/determ/random
#execute store success entity @e[limit=1,sort=nearest,tag=zcbm_cave_crep_g,type=armor_stand] Rotation[0] float 1 run scoreboard players get *x zcbm_random