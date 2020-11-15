#======================#
# made by zcbm command #
#======================#
#
scoreboard players set *armor zcbm_logic 0

execute if entity @s[type=!player] run function zcbm_core:armor/mob
execute if entity @s[type=player] run scoreboard players operation *armor zcbm_logic = @s zcbm_armor


scoreboard players set *arm_mp zcbm_logic 1000

scoreboard players operation *armor zcbm_logic *= 1000 zcbm_CONST
scoreboard players operation *dp5 zcbm_logic = *armor zcbm_logic
scoreboard players operation *dp5 zcbm_logic /= 5 zcbm_CONST

scoreboard players operation *d2 zcbm_logic = *a_damage zcbm_logic
scoreboard players operation *d2 zcbm_logic /= -2 zcbm_CONST
scoreboard players operation *d2 zcbm_logic += *armor zcbm_logic

scoreboard players operation *d2 zcbm_logic > *dp5 zcbm_logic

scoreboard players operation *d2 zcbm_logic < 20000 zcbm_CONST

scoreboard players operation *d2 zcbm_logic /= 20 zcbm_CONST

scoreboard players set *ef zcbm_logic 0
execute store result score *ef zcbm_logic run data get entity @s ActiveEffects[{Id:11b}].Amplifier 20
execute if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add *ef zcbm_logic 20

scoreboard players set *ef2 zcbm_logic 100
scoreboard players operation *ef zcbm_logic < *ef2 zcbm_logic
scoreboard players operation *ef2 zcbm_logic -= *ef zcbm_logic

scoreboard players operation *arm_mp zcbm_logic -= *d2 zcbm_logic
scoreboard players operation *arm_mp zcbm_logic *= *ef2 zcbm_logic
scoreboard players operation *arm_mp zcbm_logic /= 100 zcbm_CONST
scoreboard players operation *a_damage zcbm_logic *= *arm_mp zcbm_logic
scoreboard players operation *a_damage zcbm_logic /= 1000 zcbm_CONST

#tellraw @a {"score":{"name":"*a_damage","objective":"zcbm_logic"}}

