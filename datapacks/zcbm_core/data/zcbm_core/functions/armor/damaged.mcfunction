#======================#
# made by zcbm command #
#======================#
#



data remove entity @s[tag=!zcbm.damaged.h] Inventory[{Slot:103b}].tag.AttributeModifiers[0]
replaceitem entity @s[tag=zcbm.damaged.h] armor.head minecraft:air
effect give @s minecraft:instant_health
scoreboard players set @s zcbm_guns_pd 0



tag @s remove zcbm.damaged
tag @s remove zcbm.damaged.h