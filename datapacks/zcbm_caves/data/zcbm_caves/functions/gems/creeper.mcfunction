#======================#
# made by zcbm command #
#======================#
#
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1.8
particle minecraft:explosion ~ ~ ~ 0 0 0 0 2
effect give @e[distance=..2] minecraft:wither 1 1 true
kill @s