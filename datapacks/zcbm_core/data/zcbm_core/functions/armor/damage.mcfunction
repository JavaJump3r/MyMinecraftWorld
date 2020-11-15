#======================#
# made by zcbm command #
#======================#
#
execute unless data entity @s Inventory[{Slot:103b}] run tag @s add zcbm.damaged.h

execute store result score *atrib zcbm_logic run data get entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{Name:"generic.maxHealth",Operation:0}].Amount
execute unless data entity @s Inventory[{Slot:103b}] run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{Tags:["zcbm_kill_item"],CustomModelData:101,AttributeModifiers:[],Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1

data modify entity @s Inventory[{Slot:103b}].tag.AttributeModifiers prepend value {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:1,UUIDMost:2,Slot:"head"}

tag @s add zcbm.damaged

scoreboard players set *setHealth zcbm_logic 20
scoreboard players operation *setHealth zcbm_logic -= @s zcbm_hp
scoreboard players operation *setHealth zcbm_logic += *atrib zcbm_logic
scoreboard players operation *setHealth zcbm_logic += *takeDamage zcbm_logic
#execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{Name:"generic.maxHealth"}].Amount double -1 if entity @s
#tellraw @a {"score":{"name":"*setHealth","objective":"zcbm_logic"}}
execute store result entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{Name:"generic.maxHealth"}].Amount double -1 run scoreboard players get *setHealth zcbm_logic