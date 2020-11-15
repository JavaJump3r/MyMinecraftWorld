#======================#
# made by zcbm command #
#======================#
#
scoreboard objectives remove zcbm_leave
scoreboard objectives remove zcbm_setup
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 2000000
scoreboard objectives add zcbm_lsd dummy
scoreboard objectives add zcbm_kotl_t dummy
scoreboard objectives add zcbm_potion_type dummy
scoreboard objectives add zcbm_table_tell dummy
scoreboard objectives add zcbm_act_b_prio dummy
scoreboard objectives add zcbm_ID dummy
scoreboard objectives add zcbm_stat_sp dummy
scoreboard objectives add zcbm_stat_st dummy
scoreboard objectives add zcbm_stat_re dummy
scoreboard objectives add zcbm_stat_ju dummy
scoreboard objectives add zcbm_stat_di dummy
scoreboard objectives add zcbm_M0 dummy
scoreboard objectives add zcbm_M1 dummy
scoreboard objectives add zcbm_M2 dummy
scoreboard objectives add zcbm_M3 dummy
scoreboard objectives add zcbm_M4 dummy
scoreboard objectives add zcbm_M5 dummy
scoreboard objectives add zcbm_M6 dummy
scoreboard objectives add zcbm_X dummy
scoreboard objectives add zcbm_Y dummy
scoreboard objectives add zcbm_Z dummy
scoreboard objectives add zcbm_X2 dummy
scoreboard objectives add zcbm_Y2 dummy
scoreboard objectives add zcbm_Z2 dummy
scoreboard objectives add zcbm_CONST dummy
scoreboard objectives add zcbm_return dummy
scoreboard objectives add zcbm_COSx dummy
scoreboard objectives add zcbm_COS dummy
scoreboard objectives add zcbm_COSy dummy
scoreboard objectives add zcbm_SIN dummy
scoreboard objectives add zcbm_SINx dummy
scoreboard objectives add zcbm_SINy dummy
scoreboard objectives add zcbm_XR dummy
scoreboard objectives add zcbm_YR dummy
scoreboard objectives add zcbm_ANG dummy
scoreboard objectives add zcbm_ammo dummy
scoreboard objectives add zcbm_random dummy
scoreboard objectives add zcbm_timer0 dummy
scoreboard objectives add zcbm_timer1 dummy
scoreboard objectives add zcbm_timer2 dummy
scoreboard objectives add zcbm_timer3 dummy
scoreboard objectives add zcbm_timenofire dummy
scoreboard objectives add zcbm_logic dummy
scoreboard objectives add zcbm_setup dummy
scoreboard objectives add zcbm_armor armor
scoreboard objectives add zcbm_dam_d minecraft.custom:minecraft.damage_dealt
scoreboard objectives add zcbm_dam_t minecraft.custom:minecraft.damage_taken
scoreboard objectives add zcbm_use_caul minecraft.custom:minecraft.use_cauldron
scoreboard objectives add zcbm_death minecraft.custom:minecraft.deaths
scoreboard objectives add zcbm_leave minecraft.custom:minecraft.leave_game
scoreboard objectives add zcbm_usecoas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add zcbm_jump minecraft.custom:minecraft.jump
scoreboard objectives add zcbm_run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add zcbm_usebow minecraft.used:minecraft.bow
scoreboard objectives add zcbm_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add zcbm_ttv minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add zcbm_ely minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add zcbm_shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add zcbm_crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add zcbm_use_crb minecraft.used:minecraft.crossbow
scoreboard objectives add zcbm_hp health

bossbar add zcbm:genete {"translate":"generate"}

team add zcbm_no_col
team modify zcbm_no_col collisionRule never

scoreboard players set *zcbm_core_instaled zcbm_setup 1
scoreboard players set *zcbm_core_version zcbm_setup 502
scoreboard players set *zcbm_core_setup zcbm_setup 2

execute store result score *seed zcbm_setup run seed
#scoreboard players set @a[scores={zcbm_leave=0}] zcbm_leave 1
#function zcbm_core:mat/randomizer/create_randomizer
function #zcbm_core:setup
function zcbm_core:const

scoreboard players set *world_gen_timer zcbm_logic 20