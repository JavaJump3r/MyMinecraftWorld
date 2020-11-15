#======================#
# made by zcbm command #
#======================#
#
execute positioned ~16 ~ ~ unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:repeating_command_block[conditional=false,facing=up]{auto:1b,powered:0b,CustomName:'{"text":"@"}',Command:"execute unless score *chunks zcbm_logic matches 500.. run function zcbm_core:world/generate_0",TrackOutput:0b}

execute positioned ~-16 ~ ~ unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:repeating_command_block[conditional=false,facing=up]{auto:1b,powered:0b,CustomName:'{"text":"@"}',Command:"execute unless score *chunks zcbm_logic matches 500.. run function zcbm_core:world/generate_0",TrackOutput:0b}

execute positioned ~ ~ ~16 unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:repeating_command_block[conditional=false,facing=up]{auto:1b,powered:0b,CustomName:'{"text":"@"}',Command:"execute unless score *chunks zcbm_logic matches 500.. run function zcbm_core:world/generate_0",TrackOutput:0b}

execute positioned ~ ~ ~-16 unless block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ minecraft:repeating_command_block[conditional=false,facing=up]{auto:1b,powered:0b,CustomName:'{"text":"@"}',Command:"execute unless score *chunks zcbm_logic matches 500.. run function zcbm_core:world/generate_0",TrackOutput:0b}

execute if block ~ ~ ~16 #zcbm_core:adm_wg if block ~ ~ ~-16 #zcbm_core:adm_wg if block ~16 ~ ~ #zcbm_core:adm_wg if block ~-16 ~ ~ #zcbm_core:adm_wg run function zcbm_core:world/generate_f