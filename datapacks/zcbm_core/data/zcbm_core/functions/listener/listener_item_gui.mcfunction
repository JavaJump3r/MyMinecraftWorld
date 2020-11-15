#======================#
# made by zcbm command #
#======================#
#
execute unless entity @s[tag=zcbm_item_gui] run summon armor_stand ~ ~1.25 ~ {DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:101}}],Tags:["zcbm_item_gui","zcbm_marker"],Marker:1b,NoGravity:1b,Invisible:1b,Small:1b,Rotation:[0.0f,0.0f],Pose:{Head:[22.50f,0.0f,0.0f]}}
execute positioned ~ ~1.25 ~ unless entity @s[tag=zcbm_item_gui] run scoreboard players operation @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=zcbm_item_gui] zcbm_ID = @s zcbm_ID
execute positioned ~ ~1.25 ~ unless entity @s[tag=zcbm_item_gui] run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=zcbm_item_gui] ~ ~ ~ ~0.1 0
tag @s add zcbm_item_gui

execute store result score *RYp zcbm_logic run data get entity @s Rotation[0] 1
execute store result score *RXp zcbm_logic run data get entity @s Rotation[1] 1
execute if score *RYp zcbm_logic matches ..0 run scoreboard players add *RYp zcbm_logic 360
execute if score *RYp zcbm_logic matches 180.. run scoreboard players remove *RYp zcbm_logic 360

scoreboard players operation *id zcbm_logic = @s zcbm_ID
#===================================
function #zcbm_core:listener_item_gui
execute as @e[type=minecraft:armor_stand,tag=zcbm_item_gui] if score @s zcbm_ID = *id zcbm_logic run function zcbm_core:gui/as