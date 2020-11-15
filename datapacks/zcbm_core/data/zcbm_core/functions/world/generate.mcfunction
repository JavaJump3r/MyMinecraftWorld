#======================#
# made by zcbm command #
#======================#
#
execute unless block ~ ~ ~ minecraft:barrier unless block ~ 127 ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:repeating_command_block[conditional=false,facing=up]{auto:1b,powered:0b,CustomName:'{"text":"@"}',Command:"function zcbm_core:world/generate_0",TrackOutput:0b}