#======================#
# made by zcbm command #
#======================#
			

execute at @e[distance=..10,nbt={ActiveEffects:[{Id:26b,Amplifier:0b,Duration:750}]},limit=1,sort=nearest] run function #zcbm_core:listener_in_ground
execute at @p[distance=..10,nbt={ActiveEffects:[{Id:26b,Amplifier:0b,Duration:749}]}] run function #zcbm_core:listener_in_ground

