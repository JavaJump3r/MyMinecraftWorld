#======================#
# made by zcbm command #
#======================#
#

execute if entity @e[distance=..10,nbt={ActiveEffects:[{Id:26b,Amplifier:0b,Duration:750}]},nbt=!{HurtTime:0s}] run function zcbm_core:listener/detonate
execute if entity @a[distance=..10,nbt={ActiveEffects:[{Id:26b,Amplifier:0b,Duration:749}]},nbt=!{HurtTime:0s}] run function zcbm_core:listener/detonate

execute at @e[distance=..5,type=minecraft:ender_dragon] positioned ~ ~0.1 ~ run function #zcbm_core:listener_in_ground
execute at @e[distance=..5,type=minecraft:wither] positioned ~ ~0.1 ~ run function #zcbm_core:listener_in_ground
