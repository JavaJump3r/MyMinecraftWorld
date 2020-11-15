#======================#
# made by zcbm command #
#======================#
#
#execute store result score *m_count zcbm_caves if entity @e[type=#zcbm_core:enemy,distance=..30]

#execute if score *m_count zcbm_caves < *max_mob zcbm_caves as @e[type=#zcbm_core:enemy,distance=..30] at @s if block ~ ~ ~ cave_air run data merge entity @s {PersistenceRequired:1b}
