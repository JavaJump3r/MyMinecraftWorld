#======================#
# made by zcbm command #
#======================#
#

execute as @a[nbt={SelectedItem:{tag:{Tags:["zcbm_wrench"]}}}] at @s positioned ~ ~1.62 ~ positioned ^ ^ ^1 at @e[tag=zcbm_demontage,sort=nearest,limit=1,distance=..2] run particle minecraft:dust 0.5 0.5 0.5 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 5 force @s