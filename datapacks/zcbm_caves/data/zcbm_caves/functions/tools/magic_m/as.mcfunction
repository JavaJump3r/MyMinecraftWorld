#======================#
# made by zcbm command #
#======================#


execute store result entity @s Pos[0] double 1 run scoreboard players get *SpawnX zcbm_logic
execute store result entity @s Pos[1] double 1 run scoreboard players get *SpawnY zcbm_logic
execute store result entity @s Pos[2] double 1 run scoreboard players get *SpawnZ zcbm_logic

execute positioned as @s run tp @a[tag=zcbm.caves.tpm] ~ ~ ~

kill @s
