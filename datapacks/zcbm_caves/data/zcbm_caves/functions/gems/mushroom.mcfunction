#======================#
# made by zcbm command #
#======================#
#
playsound minecraft:entity.slime.death ambient @a ~ ~ ~ 1 2
particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 100 force
effect give @a[distance=..3] minecraft:blindness 3
effect give @a[distance=..3] minecraft:nausea 10
kill @s