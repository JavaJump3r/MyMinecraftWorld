execute store result score *XR zcbm_logic run data get entity @s Rotation[1] 1000
execute store result score *YR zcbm_logic run data get entity @s Rotation[0] 1000
execute if score *YR zcbm_logic matches ..0 run scoreboard players add *YR zcbm_logic 360000
function zcbm_core:mat/cos_v2/getx
function zcbm_core:mat/cos_v2/gety
function zcbm_core:mat/sin_v2/getx
function zcbm_core:mat/sin_v2/gety

scoreboard players operation *X zcbm_logic = *COSX zcbm_logic
scoreboard players operation *X zcbm_logic *= *SINY zcbm_logic
scoreboard players operation *X zcbm_logic /= -10000 zcbm_CONST

scoreboard players operation *Z zcbm_logic = *COSX zcbm_logic
scoreboard players operation *Z zcbm_logic *= *COSY zcbm_logic
scoreboard players operation *Z zcbm_logic /= 10000 zcbm_CONST

scoreboard players operation *Y zcbm_logic = *SINX zcbm_logic
scoreboard players operation *Y zcbm_logic *= -1 zcbm_CONST
