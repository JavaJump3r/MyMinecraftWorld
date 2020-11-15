#======================#
# made by zcbm command #
#======================#
#
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
data remove entity @s Item.tag
data merge entity @s {Item:{id:"minecraft:firework_star",tag:{CustomModelData:11004,display:{Name:'{"translate":"gem","italic":false}'}}}}