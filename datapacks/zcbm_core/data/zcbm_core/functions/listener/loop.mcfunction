#======================#
# made by zcbm command #
#======================#
#
scoreboard players add *optimizer_timer zcbm_logic 1
execute if score *optimizer_timer zcbm_logic matches 20.. run function zcbm_core:optimizer/tick

execute as @a[scores={zcbm_usecoas=1..}] run function #zcbm_core:listener_use_coas
execute as @a[scores={zcbm_shift=1..}] run tag @s add zcbm_shift
execute as @a[scores={zcbm_shift=0},tag=zcbm_shift] run function #zcbm_core:listener_no_shift
execute as @a[scores={zcbm_shift=0}] run tag @s remove zcbm_shift
execute as @a[scores={zcbm_shift=1..}] run function #zcbm_core:listener_shift
execute as @a[scores={zcbm_crouch=1..}] run tag @s add zcbm_crouch
execute as @a[scores={zcbm_crouch=0}] run tag @s remove zcbm_crouch
execute as @a[scores={zcbm_crouch=1..}] run function zcbm_core:listener/crouch
execute as @a[scores={zcbm_usebow=1..}] run function #zcbm_core:listener_use_bow
execute as @a[scores={zcbm_use_crb=1..}] run function #zcbm_core:listener_use_crb
execute as @a[scores={zcbm_run=1..}] run tag @s add zcbm_run
execute as @a[scores={zcbm_run=0}] run tag @s remove zcbm_run
execute as @a[scores={zcbm_run=1..}] run function zcbm_core:listener/run
execute as @a[scores={zcbm_walk=1..}] run tag @s add zcbm_walk
execute as @a[scores={zcbm_walk=0}] run tag @s remove zcbm_walk
execute as @a[scores={zcbm_dam_d=1..}] run function zcbm_core:listener/dam_d
execute as @a[scores={zcbm_dam_t=1..}] run function zcbm_core:listener/dam_t
execute as @a[scores={zcbm_walk=1..}] run function zcbm_core:listener/walk
execute as @a[scores={zcbm_jump=1..}] run function zcbm_core:listener/jump
execute as @a[scores={zcbm_leave=1..}] run function #zcbm_core:listener_leave
execute as @a[scores={zcbm_death=1..}] run function #zcbm_core:listener_death
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Tags:["zcbm_item_gui"]}}]}] at @s run function zcbm_core:listener/listener_item_gui
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{Tags:["zcbm_item_gui"]}}]}] run function zcbm_core:gui/kill
execute as @a[nbt={selecteditem:{tag:{tags:["zcbm_selitem"]}}}] run function #zcbm_core:listener_selected_item
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function #zcbm_core:listener_in_ground

execute as @a[tag=!zcbm_guide_book] run function zcbm_core:book

execute as @a unless entity @s[scores={zcbm_ID=1..}] run function zcbm_core:id

kill @e[type=minecraft:item,nbt={Item:{Tags:["zcbm_kill_item"]}}]

execute as @e[type=minecraft:arrow,tag=zcbm_need_trig] at @s run function zcbm_core:listener/arrow

effect clear @a[nbt={ActiveEffects:[{Id:26b,Amplifier:0b,Duration:749}]},nbt=!{HurtTime:0s}] minecraft:luck
effect clear @e[nbt={ActiveEffects:[{Id:26b,Amplifier:0b,Duration:750}]},nbt=!{HurtTime:0s}] minecraft:luck


execute as @a if score *zcbm_core_instaled zcbm_setup matches 1 unless entity @s[scores={zcbm_leave=0}] run function zcbm_core:tellraw
execute as @a[scores={zcbm_hp=..0}] at @s run function #zcbm_core:respawn
tag @a[scores={zcbm_hp=..0}] add zcbm_dead
execute as @a[tag=zcbm_dead,scores={zcbm_hp=1..}] at @s run function #zcbm_core:respawn
tag @a[scores={zcbm_hp=1..}] remove zcbm_dead
scoreboard players remove @a zcbm_act_b_prio 50

##

#scoreboard objectives add stand deathCount
#execute if entity @a[name=ZeroCaty,scores={stand=1..}] run kill Barnaul_mine
#execute if entity @a[name=Barnaul_mine,scores={stand=1..}] run kill ZeroCaty
#scoreboard players set @a stand 0

#execute as Barnaul_mine at @s if entity @a[name=ZeroCaty,distance=3..] facing entity ZeroCaty eyes run tp Barnaul_mine ^ ^ ^0.2
#execute as Barnaul_mine at @s if entity @a[name=ZeroCaty,distance=4..] facing entity ZeroCaty eyes run tp Barnaul_mine ^ ^ ^0.8
#execute as Barnaul_mine at @s if entity @a[name=ZeroCaty,distance=10..] run tp Barnaul_mine ZeroCaty
#effect give Barnaul_mine minecraft:strength 1 10 true
#effect give Barnaul_mine minecraft:haste 1 5 true
#effect give Barnaul_mine minecraft:resistance 1 3 true
#effect give Barnaul_mine minecraft:speed 1 3 true