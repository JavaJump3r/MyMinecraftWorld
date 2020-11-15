particle minecraft:splash ~ ~1 ~ 0.2 2 0.2 0 1000 force
particle minecraft:splash ~ ~ ~ 1 1 1 0 1000 force
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1.6
particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 2 force
effect give @e[distance=..5] minecraft:instant_damage 1 1 true
tag @s add zcbm_splash