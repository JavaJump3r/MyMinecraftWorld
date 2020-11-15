execute store result score @s zcbm_XR run data get entity @s Rotation[1] 1000
execute store result score @s zcbm_YR run data get entity @s Rotation[0] 1000
execute if score @s zcbm_YR < 0 zcbm_CONST run scoreboard players add @s zcbm_YR 360000
function zcbm_core:mat/cos/getx
function zcbm_core:mat/cos/gety
function zcbm_core:mat/sin/getx
function zcbm_core:mat/sin/gety

scoreboard players operation @s zcbm_X = @s zcbm_COSx
scoreboard players operation @s zcbm_X *= @s zcbm_SINy
scoreboard players operation @s zcbm_X /= -10000 zcbm_CONST

scoreboard players operation @s zcbm_Z = @s zcbm_COSx
scoreboard players operation @s zcbm_Z *= @s zcbm_COSy
scoreboard players operation @s zcbm_Z /= 10000 zcbm_CONST

scoreboard players operation @s zcbm_Y = @s zcbm_SINx
scoreboard players operation @s zcbm_Y *= -1 zcbm_CONST
