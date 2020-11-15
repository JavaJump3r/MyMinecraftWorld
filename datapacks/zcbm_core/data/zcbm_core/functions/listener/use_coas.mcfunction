#======================#
# made by zcbm command #
#======================#
#

execute at @s[nbt={SelectedItem:{tag:{Tags:["lol"]}}}] run function zcbm_core:vector/summon_arrow_rand

execute at @s[nbt={SelectedItem:{tag:{Tags:["zcbm_wrench"]}}}] run function zcbm_core:tools/wrench

#===================================
scoreboard players remove @s zcbm_usecoas 1