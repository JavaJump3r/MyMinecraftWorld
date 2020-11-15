
execute align xyz run summon armor_stand ~0.5 ~0.0 ~0.5 {Small:1b,Pose:{Head:[0f,0f,0f]},HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:5150}},{}],NoGravity:1b,Invisible:1b,Marker:1b,Tags:["zcbm_kotl","zcbm_marker"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:block glass ~ ~1.5 ~ 0 0 0 0.1 10 force
kill @s