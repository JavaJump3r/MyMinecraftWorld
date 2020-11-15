#======================#
# made by zcbm command #
#======================#
#
scoreboard players set @s zcbm_cave_bomb 0
execute if entity @s[nbt={SelectedItem:{tag:{Tags:["zcbm_cave_bomb"]}}}] positioned ~ ~1.4 ~ run function zcbm_caves:tools/bomb