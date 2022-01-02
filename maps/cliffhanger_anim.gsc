// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID43266()
{
    _ID15518();
    _ID31296();
    _ID43312();
    _ID27230();
    _ID40317();
    _ID43383();
    _ID10730();
    _ID47212();
    thread _ID53378();
}

_ID47212()
{
    level._ID53525["planting_c4"]["origin"] = ( -5621, -28756, 896 );
    level._ID53525["planting_c4"]["angles"] = ( 0, 0, 0 );
    var_0 = getent( "acs_node", "targetname" );
    level._ID53525["pickup_acs"]["origin"] = var_0.origin;
    level._ID53525["pickup_acs"]["angles"] = var_0.angles;
}

_ID53378()
{
    waitframe;
    _ID42259::_ID2075( "worldbody", "enter_climb_from_ledge_right", "scn_cliff_plr_initial_pic" );
    _ID42259::_ID2058( "worldbody", "start_scene_mix", maps\cliffhanger_aud::_ID43584, "enter_climb_from_ledge_right" );
    _ID42259::_ID2058( "worldbody", "stop_scene_mix", maps\cliffhanger_aud::_ID46952, "enter_climb_from_ledge_right" );
    _ID42259::_ID2056( "worldbody", "enter_climb_from_stand_start_left", "swing", "icepick_swing" );
    _ID42259::_ID2056( "worldbody", "enter_climb_from_stand_start_right", "swing", "icepick_swing" );

    for ( var_0 = 1; var_0 < 10; var_0++ )
    {
        _ID42259::_ID2075( "worldbody", "iceaxeclimbing_right_" + var_0, "icepick_swing" );
        _ID42259::_ID2075( "worldbody", "iceaxeclimbing_left_" + var_0, "icepick_swing" );
    }

    _ID42259::_ID2075( "worldbody", "iceaxeclimbing_right_10", "icepick_swing" );
    _ID42259::_ID2075( "worldbody", "iceaxeclimbing_left_10", "icepick_swing" );
    _ID42259::_ID2075( "price", "hangar_waiting", "scn_cliff_soap_open_door_01" );
    _ID42259::_ID2075( "price", "hunted_open_barndoor", "scn_cliff_soap_open_door_02" );
    _ID42259::_ID2075( "acs_module", "pickup_acs", "scn_disconnect_acs" );
    _ID42259::_ID2075( "price", "ledge_climb", "scn_cliff_soap_separation_climb" );
    _ID42259::_ID2075( "worldbody", "double_takedown", "scn_cliffhanger_dual_takedown" );
    _ID42259::_ID2075( "worldbody", "throatstab", "scn_relaxed_guard_chair_death" );
    _ID42259::_ID2075( "worldbody", "planting_c4", "scn_cliffhanger_plant_c4" );
    _ID42259::_ID2075( "price", "icepick_fight", "scn_cliffhanger_price_icepick_fight" );
    _ID42259::_ID2075( "worldbody", "mounting_snowmobile_left", "scn_cliff_plr_snowmobile_geton" );
    _ID42259::_ID2075( "worldbody", "mounting_snowmobile_right", "scn_cliff_plr_snowmobile_geton" );
    _ID42259::_ID2075( "snowmobile_player", "cliffhanger_ending", "scn_cliff_plr_snowmobile_ending" );
}
#using_animtree("generic_human");

_ID43383()
{
    level._ID30895["price_a"]["climbing_test_scene"] = %cliff_hero1_pose_a;
    level._ID30895["cake_a"]["climbing_test_scene"] = %cliff_hero2_pose_a;
    level._ID30895["price_b"]["climbing_test_scene"] = %cliff_hero1_pose_b;
    level._ID30895["cake_b"]["climbing_test_scene"] = %cliff_hero2_pose_b;
    level._ID30895["price_c"]["climbing_test_scene"] = %cliff_hero1_pose_c;
    level._ID30895["cake_c"]["climbing_test_scene"] = %cliff_hero2_pose_c;
    level._ID30895["price_d"]["climbing_test_scene"] = %cliff_hero1_pose_d;
    level._ID30895["cake_d"]["climbing_test_scene"] = %cliff_hero2_pose_d;
    level._ID30895["price_jump"]["climbing_test_jump1"] = %cliff_hero1_pose_jump1;
    level._ID30895["price_jump"]["climbing_test_jump2"] = %cliff_hero1_pose_jump2;
    level._ID30895["price_jump"]["climbing_test_jump3"] = %cliff_hero1_pose_jump3;
    level._ID30895["price_jump"]["climbing_test_jump4"] = %cliff_hero1_pose_jump4;
    level._ID30895["price_jump"]["climbing_test_jump5"] = %cliff_hero1_pose_jump5;
    level._ID30895["price_jump"]["climbing_test_jump6"] = %cliff_hero1_pose_jump6;
}

_ID15518()
{
    level._ID30895["price"]["hunted_open_barndoor_stop"] = %hunted_open_barndoor_idle;
    level._ID30895["price"]["hunted_open_barndoor_idle"][0] = %hunted_open_barndoor_idle;
    level._ID30895["price"]["evac"] = %blackout_bh_evac_1;
    level._ID30895["generic"]["cliffdeath_1"] = %death_run_onfront;
    level._ID30895["generic"]["cliffdeath_2"] = %death_run_onleft;
    level._ID30895["generic"]["cliffdeath_3"] = %death_run_forward_crumple;
    level._ID30895["generic"]["cliffdeath_4"] = %run_death_roll;
    level._ID30895["price"]["casual_crouch_exit"] = %h2_casual_crouch_exit;
    level._ID30895["price"]["casual_crouch_exit_clifftop"] = %crouchwalk_2_crouch_start_8;
    level._ID30895["price"]["hill_slide"] = %h2_cliffhanger_price_hill_slide;
    level._ID30895["price"]["crash_rescue"] = %cliffhanger_crash_rescue_price;
    level._ID30895["generic"]["balcony_death"] = %death_explosion_run_f_v2;
    level._ID30895["price"]["soap_separation"] = %h2_cliffhanger_soap_separation_crouch2ledge;
    level._ID30895["price"]["soap_separation_run"] = %h2_cliffhanger_soap_separation_run2ledge;
    _ID42259::_ID2058( "price", "price_land", ::_ID48705 );
    _ID42259::_ID2058( "price", "price_land_settle", ::_ID54501 );
    _ID42259::_ID2058( "price", "price_slide_start", ::_ID44893, undefined, [ "J_Ankle_LE" ] );
    _ID42259::_ID2058( "price", "price_slide_end", ::_ID49745 );
    _ID42304::_ID19911();
    level._ID30895["generic"]["lean_balcony"][0] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["lean_balcony"][1] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["lean_balcony"][2] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["lean_balcony"][3] = %killhouse_gaz_idleb;
    level._ID30895["generic"]["lean_balcony"][4] = %killhouse_gaz_talk_side;
    level._ID30895["generic"]["lean_react"] = %exposed_idle_reactb;
    level._ID30895["generic"]["sit_idle"][0] = %breach_chair_idle_v2;
    level._ID30895["generic"]["sit_react"] = %breach_chair_reaction_v2;
    level._ID30895["generic"]["party1"][0] = %coup_guard1_idle;
    level._ID30895["generic"]["party1"][1] = %coup_guard1_jeer;
    level._ID30895["generic"]["party1_react"] = %breach_chair_reaction_v2;
    level._ID30895["generic"]["party2"][0] = %coup_guard2_idle;
    level._ID30895["generic"]["party2"][1] = %coup_guard2_jeera;
    level._ID30895["generic"]["party2"][2] = %coup_guard2_jeerb;
    level._ID30895["generic"]["party2"][3] = %coup_guard2_jeerc;
    level._ID30895["generic"]["party2_react"] = %breach_chair_reaction_v2;
    level._ID30895["generic"]["alert2look_cornerR"] = %corner_standr_alert_2_look;
    level._ID30895["generic"]["look_idle_cornerR"][0] = %corner_standr_look_idle;
    level._ID30895["generic"]["look2alert_cornerR"] = %corner_standr_look_2_alert;
    level._ID30895["generic"]["look_up_stand"] = %coverstand_look_moveup;
    level._ID30895["generic"]["look_idle_stand"][0] = %coverstand_look_idle;
    level._ID30895["generic"]["look_down_stand"] = %coverstand_look_movedown;
    level._ID30895["generic"]["alert2look_cornerL"] = %corner_standl_alert_2_look;
    level._ID30895["generic"]["look_idle_cornerL"][0] = %corner_standl_look_idle;
    level._ID30895["generic"]["look2alert_cornerL"] = %corner_standl_look_2_alert;
    level._ID30895["generic"]["run_2_crouch_F"] = %run_2_crouch_f;
    level._ID30895["generic"]["run_2_crouch_90R"] = %run_2_crouch_90r;
    level._ID30895["generic"]["crouch_aim_arrive"] = %exposed_crouch_aim_5;
    level._ID30895["generic"]["crouch_aim"][0] = %exposed_crouch_aim_5;
    level._ID30895["generic"]["crouch_2run_L"] = %crouch_2run_l;
    level._ID30895["generic"]["exposed_crouch_flinchR"] = %exposed_crouch_pain_right_arm;
    level._ID30895["price"]["ledge_climb"] = %h2_cliffhanger_soap_separation_ledgeclimb;
    level._ID30895["generic"]["c4plant"] = %cliffhanger_c4_setup;
    level._ID30895["price"]["icepick_fight"] = %h2_cliffhanger_icepick_fight_price;
    _ID42259::_ID2057( "price", "attach pick", "weapon_ice_picker", "TAG_INHAND", "icepick_fight" );
    _ID42259::_ID2059( "price", "drop pick", "weapon_ice_picker", "TAG_INHAND", "icepick_fight" );
    level._ID30895["driver"]["icepick_deathA"] = %cliffhanger_icepick_fight_driver_deatha;
    level._ID30895["driver"]["icepick_deathB"] = %cliffhanger_icepick_fight_driver_deathb;
    level._ID30895["driver"]["icepick_fight"] = %cliffhanger_icepick_fight_driver;
    _ID42259::_ID2058( "driver", "deathA", ::_ID51246, "icepick_fight" );
    _ID42259::_ID2058( "driver", "deathB", ::_ID52550, "icepick_fight" );
    level._ID30895["passenger"]["icepick_fight"] = %h2_cliffhanger_icepick_fight_passenger;
    _ID42259::_ID2058( "passenger", "dropgun", ::_ID2290, "icepick_fight" );
    level._ID30895["generic"]["snowmobile_driver_climb_out"] = %pickup_passenger_climb_out;
    level._ID30895["generic"]["snowmobile_passenger_climb_out"] = %pickup_driver_climb_out;
    level._ID30895["generic"]["prone_death_quickdeath"] = %prone_death_quickdeath;
    level._ID30895["generic"]["death_shotgun_back_v2"] = %death_shotgun_back_v1;
    level._ID30895["price"]["hangar_waiting_loop"][0] = %h2_cliffhanger_hangar_entrance_loop;
    level._ID30895["price"]["hangar_waiting"] = %h2_cliffhanger_hangar_entrance_soap_part01;
    _ID42259::_ID2062( "price", "dialog", "hangar_waiting", "cliff_pri_scenicroute" );
    _ID42259::_ID2062( "price", "dialog", "hangar_waiting", "cliff_pri_letsgo" );
    level._ID30895["price"]["hunted_open_barndoor"] = %h2_cliffhanger_hangar_entrance_soap_part02;
    level._ID30895["price"]["run_to_snowmobile"] = %h2_cliffhanger_snowmobile_soap;
    level._ID30895["generic"]["throatstab"] = %h2_cliffhanger_throatstab_npc;
    level._ID30895["leftguy"]["double_takedown"] = %h2_cliffhanger_dualtakedown_sequence_soldierleft;
    level._ID30902["leftguy"]["double_takedown"] = 1;
    level._ID30895["rightguy"]["double_takedown"] = %h2_cliffhanger_dualtakedown_sequence_soldierright;
    level._ID30895["price"]["locker_brawl"] = %h2_cliffhanger_lockerroom_fight_price;
    _ID42259::_ID2058( "price", "locker slam", ::_ID54351, "locker_brawl" );
    _ID42259::_ID2057( "price", "knife attach", "weapon_parabolic_knife", "TAG_INHAND", "locker_brawl" );
    _ID42259::_ID2059( "price", "knife detach", "weapon_parabolic_knife", "TAG_INHAND", "locker_brawl" );
    level._ID30895["defender"]["locker_brawl"] = %h2_cliffhanger_lockerroom_fight_guard;
    _ID42259::_ID2058( "defender", "ignoreall", ::_ID46921, "locker_brawl" );
    _ID42259::_ID2058( "defender", "dropgun", ::_ID2290, "locker_brawl" );
    level._ID30895["generic"]["crouch_walk_start_1"] = %launchfacility_b_ventwalk_v1_start;
    level._ID30895["generic"]["crouch_walk_stop_1"] = %launchfacility_b_ventwalk_v1_stop;
    level._ID30895["generic"]["crouch_walk_stop_1_idle"][0] = %launchfacility_b_ventwalk_stop_idle;
    level._ID30895["generic"]["crouch_walk_1"] = %launchfacility_b_ventwalk_v1_cycle;
    level._ID30895["generic"]["crouch_walk_1_twitch"] = %launchfacility_b_ventwalk_v1_twitch;
    level._ID30895["generic"]["crouch_walk_start_2"] = %launchfacility_b_ventwalk_v2_start;
    level._ID30895["generic"]["crouch_walk_stop_2"] = %launchfacility_b_ventwalk_v2_stop;
    level._ID30895["generic"]["crouch_walk_stop_2_idle"][0] = %launchfacility_b_ventwalk_v2_stopidle;
    level._ID30895["generic"]["crouch_walk_2"] = %launchfacility_b_ventwalk_v2_cyclea;
    level._ID30895["generic"]["crouch_walk_2_twitch1"] = %launchfacility_b_ventwalk_v2_twitcha;
    level._ID30895["generic"]["crouch_walk_2_twitch2"] = %launchfacility_b_ventwalk_v2_twitchb;
    level._ID30895["welder_wing"]["welding"][0] = %h2_cliffhanger_welder_wing_idle;
    level._ID30895["welder_engine"]["welding"][0] = %h2_cliffhanger_welder_engine_idle;
    level._ID30895["welder_wing"]["death_back"] = %h2_cliffhanger_welder_wing_idle_death_back;
    level._ID30895["welder_engine"]["death_back"] = %h2_cliffhanger_welder_engine_idle_death_back;
    level._ID30895["price"]["capture_idle"][0] = %h2_cliffhanger_capture_price_idle;
    level._ID30895["price"]["capture_pullout"] = %h2_cliffhanger_capture_price_pullout;
    level._ID30895["price"]["capture_death"] = %h2_cliffhanger_capture_price_death;
    level._ID30895["price"]["capture_intro"] = %h2_cliffhanger_capture_price_start;
    level._ID30895["guard1"]["runin_in"] = %h2_cliffhanger_capture_guard01_in;
    level._ID30895["guard2"]["runin_in"] = %h2_cliffhanger_capture_guard02_in;
    level._ID30895["guard3"]["runin_in"] = %h2_cliffhanger_capture_guard03_in;
    level._ID30895["guard4"]["runin_in"] = %h2_cliffhanger_capture_guard04_in;
    level._ID30895["guard5"]["runin_in"] = %h2_cliffhanger_capture_guard05_in;
    level._ID30895["guard6"]["runin_in"] = %h2_cliffhanger_capture_guard06_in;
    level._ID30895["petrov"]["runin_in"] = %h2_cliffhanger_capture_petrov_in;
    _ID42259::_ID2058( "petrov", "dialog_price", maps\cliffhanger_aud::_ID51792, "runin_in" );
    _ID42259::_ID2062( "petrov", "dialog", "runin_in", "cliff_pet_thisispetrov" );
    _ID42259::_ID2057( "petrov", "attach_megaphone", "h2_ch_megaphone_rig", "TAG_INHAND", "runin_in" );
    level._ID30895["guard1"]["runin_optional"] = %h2_cliffhanger_capture_guard01_opt_loop;
    level._ID30895["guard2"]["runin_optional"] = %h2_cliffhanger_capture_guard02_opt_loop;
    level._ID30895["guard3"]["runin_optional"] = %h2_cliffhanger_capture_guard03_opt_loop;
    level._ID30895["guard4"]["runin_optional"] = %h2_cliffhanger_capture_guard04_opt_loop;
    level._ID30895["guard5"]["runin_optional"] = %h2_cliffhanger_capture_guard05_opt_loop;
    level._ID30895["guard6"]["runin_optional"] = %h2_cliffhanger_capture_guard06_opt_loop;
    level._ID30895["petrov"]["runin_optional"] = %h2_cliffhanger_capture_petrov_opt_loop;
    level._ID30895["guard1"]["runin_comply"] = %h2_cliffhanger_capture_guard01_comply;
    level._ID30895["guard2"]["runin_comply"] = %h2_cliffhanger_capture_guard02_comply;
    level._ID30895["guard3"]["runin_comply"] = %h2_cliffhanger_capture_guard03_comply;
    level._ID30895["guard4"]["runin_comply"] = %h2_cliffhanger_capture_guard04_comply;
    level._ID30895["guard5"]["runin_comply"] = %h2_cliffhanger_capture_guard05_comply;
    level._ID30895["guard6"]["runin_comply"] = %h2_cliffhanger_capture_guard06_comply;
    level._ID30895["petrov"]["runin_comply"] = %h2_cliffhanger_capture_petrov_comply;
    _ID42259::_ID2062( "petrov", "dialog", "runin_comply", "cliff_pet_fiveseconds" );
    level._ID30895["guard1"]["runin_comply_wait"] = %h2_cliffhanger_capture_guard01_comply_wait;
    level._ID30895["guard2"]["runin_comply_wait"] = %h2_cliffhanger_capture_guard02_comply_wait;
    level._ID30895["guard3"]["runin_comply_wait"] = %h2_cliffhanger_capture_guard03_comply_wait;
    level._ID30895["guard4"]["runin_comply_wait"] = %h2_cliffhanger_capture_guard04_comply_wait;
    level._ID30895["guard5"]["runin_comply_wait"] = %h2_cliffhanger_capture_guard05_comply_wait;
    level._ID30895["guard6"]["runin_comply_wait"] = %h2_cliffhanger_capture_guard06_comply_wait;
    level._ID30895["petrov"]["runin_comply_wait"] = %h2_cliffhanger_capture_petrov_comply_wait;
    level._ID30895["guard1"]["runin_out"] = %h2_cliffhanger_capture_guard01_countdown;
    level._ID30895["guard2"]["runin_out"] = %h2_cliffhanger_capture_guard02_countdown;
    level._ID30895["guard3"]["runin_out"] = %h2_cliffhanger_capture_guard03_countdown;
    level._ID30895["guard4"]["runin_out"] = %h2_cliffhanger_capture_guard04_countdown;
    level._ID30895["guard5"]["runin_out"] = %h2_cliffhanger_capture_guard05_countdown;
    level._ID30895["guard6"]["runin_out"] = %h2_cliffhanger_capture_guard06_countdown;
    level._ID30895["petrov"]["runin_out"] = %h2_cliffhanger_capture_petrov_countdown;
    _ID42259::_ID2062( "petrov", "dialog", "runin_out", "cliff_pet_countfive" );
    _ID42259::_ID2062( "petrov", "dialog", "runin_out", "cliff_pet_countfour" );
    _ID42259::_ID2062( "petrov", "dialog", "runin_out", "cliff_pet_countthree" );
    _ID42259::_ID2062( "petrov", "dialog", "runin_out", "cliff_pet_counttwo" );
    _ID42259::_ID2062( "petrov", "dialog", "runin_out", "cliff_pet_countone" );
    _ID42259::_ID2063( "petrov", "detach_megaphone", "drop_megaphone", "runin_out" );
    level._ID30895["petrov"]["react"] = %h2_cliffhanger_capture_petrov_react;
    level._ID30895["guard1"]["react"] = %h2_cliffhanger_capture_guard01_react;
    level._ID30895["guard2"]["react"] = %h2_cliffhanger_capture_guard02_react;
    level._ID30895["guard3"]["react"] = %h2_cliffhanger_capture_guard03_react;
    level._ID30895["guard4"]["react"] = %h2_cliffhanger_capture_guard04_react;
    level._ID30895["guard5"]["react"] = %h2_cliffhanger_capture_guard05_react;
    level._ID30895["guard6"]["react"] = %h2_cliffhanger_capture_guard06_react;
    _ID42259::_ID2063( "petrov", "detach_megaphone", "drop_megaphone", "react" );
    level._ID30895["price"]["enter"] = %h2_cliffhanger_hangar_enter;
    _ID42259::_ID2062( "price", "dialog", "enter", "cliff_pri_goupstairs" );
    level._ID30895["price"]["satellite_idle"][0] = %h2_cliffhanger_hangar_cycle;
    level._ID30895["price"]["satellite_idle_breaker"] = %h2_cliffhanger_hangar_cycle_breaker;
    _ID42259::_ID2062( "price", "dialog", "satellite_idle_breaker", "cliff_pri_downloadfiles" );
    level._ID30895["generic"]["capture_shoutingA"] = %cqb_stand_shout_a;
    level._ID30895["generic"]["capture_shoutingB"] = %cqb_stand_shout_b;
    level._ID30895["generic"]["explosion_reactA"] = %cqb_stand_react_a;
    level._ID30895["generic"]["explosion_reactB"] = %cqb_stand_react_b;
    level._ID30895["generic"]["explosion_reactC"] = %cqb_stand_react_c;
    level._ID30895["generic"]["explosion_reactD"] = %cqb_stand_react_d;
    level._ID30895["generic"]["explosion_reactE"] = %cqb_stand_react_e;
    level._ID30895["generic"]["_stealth_patrol_search_a"] = %h2_coldpatrol_gunup_idle_a;
    level._ID30895["generic"]["_stealth_patrol_search_b"] = %h2_coldpatrol_gunup_idle_b;
    level._ID30895["generic"]["patrol_cold_huddle"][0] = %patrolwalk_cold_huddle_idle;
    level._ID30895["generic"]["patrol_cold_huddle"][1] = %patrolwalk_cold_huddle_twitch;
    level._ID30895["generic"]["patrol_cold_huddle_pause"][0] = %h2_coldpatrol_huddle_idle_a;
    level._ID30895["generic"]["patrol_cold_huddle_pause"][1] = %h2_coldpatrol_huddle_idle_b;
    level._ID30895["generic"]["patrol_cold_huddle_stop"] = %patrolwalk_cold_huddle_walk2stand;
    level._ID30895["generic"]["patrol_cold_huddle_start"] = %patrolwalk_cold_huddle_stand2walk;
    level._ID30895["generic"]["patrol_cold_huddle_turn180"][0] = %h2_coldpatrol_huddle_turn_180l;
    level._ID30895["generic"]["patrol_cold_huddle_turn180"][1] = %h2_coldpatrol_huddle_turn_180r;
    level._ID30895["generic"]["patrol_cold_crossed"][0] = %patrolwalk_cold_crossed_idle;
    level._ID30895["generic"]["patrol_cold_crossed"][1] = %patrolwalk_cold_crossed_twitch;
    level._ID30895["generic"]["patrol_cold_crossed_pause"][0] = %h2_coldpatrol_crossed_idle_a;
    level._ID30895["generic"]["patrol_cold_crossed_pause"][1] = %h2_coldpatrol_crossed_idle_b;
    level._ID30895["generic"]["patrol_cold_crossed_stop"] = %patrolwalk_cold_crossed_walk2stand;
    level._ID30895["generic"]["patrol_cold_crossed_start"] = %patrolwalk_cold_crossed_stand2walk;
    level._ID30895["generic"]["patrol_cold_crossed_turn180"][0] = %h2_coldpatrol_crossed_turn_180l;
    level._ID30895["generic"]["patrol_cold_crossed_turn180"][1] = %h2_coldpatrol_crossed_turn_180r;
    var_0 = [];
    var_0[0] = 8;
    var_0[1] = 2;
    level._ID30895["generic"]["patrol_twitch_weights"] = _ID42237::_ID15649( var_0 );
    level._ID30895["generic"]["patrol_cold_gunup_search"] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["patrol_cold_gunup"][0] = %patrolwalk_cold_gunup_idle;
    level._ID30895["generic"]["patrol_cold_gunup"][1] = %patrolwalk_cold_gunup_twitcha;
    level._ID30895["generic"]["patrol_cold_gunup"][2] = %patrolwalk_cold_gunup_twitchb;
    var_0 = [];
    var_0[0] = 4;
    var_0[1] = 3;
    var_0[2] = 3;
    level._ID30895["generic"]["patrol_gunup_twitch_weights"] = _ID42237::_ID15649( var_0 );
    level._ID30895["generic"]["truckride_climbin"] = %traverse_stepup_52;
    level._ID30895["generic"]["cliffhanger_ending_soldier_1"] = %h2_cliffhanger_ending_soldier01;
    level._ID30895["generic"]["cliffhanger_ending_soldier_2"] = %h2_cliffhanger_ending_soldier02;
    level._ID30895["generic"]["cliffhanger_ending_soldier_3"] = %h2_cliffhanger_ending_soldier03;
    level._ID30895["generic"]["cliffhanger_ending_soldier_4"] = %h2_cliffhanger_ending_soldier04;
    level._ID30895["price"]["cliffhanger_ending"] = %h2_cliffhanger_ending_soap;
    level._ID30895["generic"]["sleep_idle"][0] = %h2_cliffhanger_guard_sleeping_idle;
    level._ID30895["generic"]["sleep_react"] = %h2_cliffhanger_guard_sleeping_react;
    level._ID30895["generic"]["sleep_react_back"] = %h2_cliffhanger_guard_sleeping_react_back;
    cold_patrol_turn_animations_init();
}

cold_patrol_turn_animations_init()
{
    level._ID30895["generic"]["patrol_turn_l45_rfoot_huddle"] = %h2_coldpatrol_huddle_turn_left_45r;
    level._ID30895["generic"]["patrol_turn_l45_lfoot_huddle"] = %h2_coldpatrol_huddle_turn_left_45l;
    level._ID30895["generic"]["patrol_turn_l90_rfoot_huddle"] = %h2_coldpatrol_huddle_turn_left_90r;
    level._ID30895["generic"]["patrol_turn_l90_lfoot_huddle"] = %h2_coldpatrol_huddle_turn_left_90l;
    level._ID30895["generic"]["patrol_turn_l135_rfoot_huddle"] = %h2_coldpatrol_huddle_turn_left_135r;
    level._ID30895["generic"]["patrol_turn_l135_lfoot_huddle"] = %h2_coldpatrol_huddle_turn_left_135l;
    level._ID30895["generic"]["patrol_turn_r45_rfoot_huddle"] = %h2_coldpatrol_huddle_turn_right_45r;
    level._ID30895["generic"]["patrol_turn_r45_lfoot_huddle"] = %h2_coldpatrol_huddle_turn_right_45l;
    level._ID30895["generic"]["patrol_turn_r90_rfoot_huddle"] = %h2_coldpatrol_huddle_turn_right_90r;
    level._ID30895["generic"]["patrol_turn_r90_lfoot_huddle"] = %h2_coldpatrol_huddle_turn_right_90l;
    level._ID30895["generic"]["patrol_turn_r135_rfoot_huddle"] = %h2_coldpatrol_huddle_turn_right_135r;
    level._ID30895["generic"]["patrol_turn_r135_lfoot_huddle"] = %h2_coldpatrol_huddle_turn_right_135l;
    level._ID30895["generic"]["patrol_walk_in_lfoot_huddle"] = %h2_coldpatrol_huddle_start_left;
    level._ID30895["generic"]["patrol_walk_out_lfoot_huddle"] = %h2_coldpatrol_huddle_stop_left;
    level._ID30895["generic"]["patrol_walk_in_rfoot_huddle"] = %h2_coldpatrol_huddle_start_right;
    level._ID30895["generic"]["patrol_walk_out_rfoot_huddle"] = %h2_coldpatrol_huddle_stop_right;
    level._ID30895["generic"]["patrol_turn_l45_rfoot_crossed"] = %h2_coldpatrol_crossed_turn_left_45r;
    level._ID30895["generic"]["patrol_turn_l45_lfoot_crossed"] = %h2_coldpatrol_crossed_turn_left_45l;
    level._ID30895["generic"]["patrol_turn_l90_rfoot_crossed"] = %h2_coldpatrol_crossed_turn_left_90r;
    level._ID30895["generic"]["patrol_turn_l90_lfoot_crossed"] = %h2_coldpatrol_crossed_turn_left_90l;
    level._ID30895["generic"]["patrol_turn_l135_rfoot_crossed"] = %h2_coldpatrol_crossed_turn_left_135r;
    level._ID30895["generic"]["patrol_turn_l135_lfoot_crossed"] = %h2_coldpatrol_crossed_turn_left_135l;
    level._ID30895["generic"]["patrol_turn_r45_rfoot_crossed"] = %h2_coldpatrol_crossed_turn_right_45r;
    level._ID30895["generic"]["patrol_turn_r45_lfoot_crossed"] = %h2_coldpatrol_crossed_turn_right_45l;
    level._ID30895["generic"]["patrol_turn_r90_rfoot_crossed"] = %h2_coldpatrol_crossed_turn_right_90r;
    level._ID30895["generic"]["patrol_turn_r90_lfoot_crossed"] = %h2_coldpatrol_crossed_turn_right_90l;
    level._ID30895["generic"]["patrol_turn_r135_rfoot_crossed"] = %h2_coldpatrol_crossed_turn_right_135r;
    level._ID30895["generic"]["patrol_turn_r135_lfoot_crossed"] = %h2_coldpatrol_crossed_turn_right_135l;
    level._ID30895["generic"]["patrol_walk_in_lfoot_crossed"] = %h2_coldpatrol_crossed_start_left;
    level._ID30895["generic"]["patrol_walk_out_lfoot_crossed"] = %h2_coldpatrol_crossed_stop_left;
    level._ID30895["generic"]["patrol_walk_in_rfoot_crossed"] = %h2_coldpatrol_crossed_start_right;
    level._ID30895["generic"]["patrol_walk_out_rfoot_crossed"] = %h2_coldpatrol_crossed_stop_right;
    level._ID30895["generic"]["patrol_turn_l45_rfoot_gunup"] = %h2_coldpatrol_gunup_turn_left_45r;
    level._ID30895["generic"]["patrol_turn_l45_lfoot_gunup"] = %h2_coldpatrol_gunup_turn_left_45l;
    level._ID30895["generic"]["patrol_turn_l90_rfoot_gunup"] = %h2_coldpatrol_gunup_turn_left_90r;
    level._ID30895["generic"]["patrol_turn_l90_lfoot_gunup"] = %h2_coldpatrol_gunup_turn_left_90l;
    level._ID30895["generic"]["patrol_turn_l135_rfoot_gunup"] = %h2_coldpatrol_gunup_turn_left_135r;
    level._ID30895["generic"]["patrol_turn_l135_lfoot_gunup"] = %h2_coldpatrol_gunup_turn_left_135l;
    level._ID30895["generic"]["patrol_turn_r45_rfoot_gunup"] = %h2_coldpatrol_gunup_turn_right_45r;
    level._ID30895["generic"]["patrol_turn_r45_lfoot_gunup"] = %h2_coldpatrol_gunup_turn_right_45l;
    level._ID30895["generic"]["patrol_turn_r90_rfoot_gunup"] = %h2_coldpatrol_gunup_turn_right_90r;
    level._ID30895["generic"]["patrol_turn_r90_lfoot_gunup"] = %h2_coldpatrol_gunup_turn_right_90l;
    level._ID30895["generic"]["patrol_turn_r135_rfoot_gunup"] = %h2_coldpatrol_gunup_turn_right_135r;
    level._ID30895["generic"]["patrol_turn_r135_lfoot_gunup"] = %h2_coldpatrol_gunup_turn_right_135l;
    level._ID30895["generic"]["patrol_walk_in_lfoot_gunup"] = %h2_coldpatrol_gunup_star_tleft;
    level._ID30895["generic"]["patrol_walk_out_lfoot_gunup"] = %h2_coldpatrol_gunup_stop_left;
    level._ID30895["generic"]["patrol_walk_in_rfoot_gunup"] = %h2_coldpatrol_gunup_start_right;
    level._ID30895["generic"]["patrol_walk_out_rfoot_gunup"] = %h2_coldpatrol_gunup_stop_right;
}

_ID51246( var_0 )
{
    var_0 _ID42407::_ID32265( "icepick_deathA" );
}

_ID52550( var_0 )
{
    var_0 _ID42407::_ID32265( "icepick_deathB" );
}

_ID48705( var_0 )
{
    var_1 = var_0 gettagorigin( "J_Ankle_RI" );
    var_1 = physicstrace( var_1 + ( 0, 0, 64 ), var_1 + ( 0, 0, -64 ) );
    playfx( level._ID1426["price_landing"], var_1 );
}

_ID54501( var_0 )
{
    var_1 = var_0 gettagorigin( "J_Ankle_LE" );
    var_1 = physicstrace( var_1 + ( 0, 0, 64 ), var_1 + ( 0, 0, -64 ) );
    playfx( level._ID1426["price_landing"], var_1 );
}

_ID44893( var_0, var_1 )
{
    var_0 endon( "death" );
    var_2 = var_1[0];
    var_0 endon( "stop_slide_fx" );

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( "price_sliding" ), var_0, var_2 );
        wait 0.1;
    }
}

_ID49745( var_0 )
{
    var_0 notify( "stop_slide_fx" );
}
#using_animtree("script_model");

_ID31296()
{
    level._ID30900["photocopier"] = #animtree;
    level._ID30895["photocopier"]["photocopier_copying"] = %h2_com_photocopier_animated;
    level._ID30900["door"] = #animtree;
    level._ID30895["door"]["open_door_anim"] = %h2_cliffhanger_hangar_entrance_door;
    level._ID30900["satellite"] = #animtree;
    level._ID30895["satellite"]["price_enter"] = %h2_cliffhanger_hangar_enter_satellite;
    level._ID30895["satellite"]["satellite_loop"][0] = %h2_cliffhanger_hangar_satellite_loop;
    level._ID30900["flag_triangle"] = #animtree;
    level._ID30895["flag_triangle"]["wind_animation"] = %cliffhanger_triangle_flag_high_wind;
    level._ID30904["flag_triangle"] = "com_triangle_flag";
    level._ID30895["flag_triangle"]["wind_animation_fast"] = %h2_triangle_flag_heavy_wind_loop;
    level._ID30895["flag_triangle"]["wind_animation_fast_looped"][0] = %h2_triangle_flag_heavy_wind_loop;
    level._ID30895["flag_triangle"]["wind_animation_slow"] = %h2_triangle_flag_low_wind_loop;
    level._ID30895["flag_triangle"]["wind_animation_slow_looped"][0] = %h2_triangle_flag_low_wind_loop;
    level._ID30895["flag_triangle"]["wind_animation_slow_to_fast"] = %h2_triangle_flag_in;
    level._ID30895["flag_triangle"]["wind_animation_fast_to_slow"] = %h2_triangle_flag_out;
    level._ID30900["locker_1"] = #animtree;
    level._ID30895["locker_1"]["locker_brawl"] = %h2_cliffhanger_lockerroom_fight_locker_1;
    level._ID30904["locker_1"] = "com_locker_open";
    level._ID30900["locker_2"] = #animtree;
    level._ID30895["locker_2"]["locker_brawl"] = %h2_cliffhanger_lockerroom_fight_locker_2;
    level._ID30904["locker_2"] = "com_locker_open";
    level._ID30900["fallingtree"] = #animtree;
    level._ID30895["fallingtree"]["destroyed_fallen_tree_cliffhanger01"] = %h2_foliage_cliffhanger_snow_tall_broken_fall;
    level._ID30895["drill"]["enter"] = %cliffhanger_hangar_drill;
    level._ID30904["drill"] = "weapon_power_drill";
    level._ID30900["drill"] = #animtree;
    level._ID30900["acs_wires"] = #animtree;
    level._ID30904["acs_wires"] = "h2_ACS_wires";
    level._ID30895["acs_wires"]["pickup_acs"] = %h2_cliffhanger_hangar_acs_wires;
    level._ID30900["acs_module"] = #animtree;
    level._ID30904["acs_module"] = "h2_acs_module";
    level._ID30895["acs_module"]["pickup_acs"] = %h2_cliffhanger_hangar_acs_module;
    level._ID30900["chair"] = #animtree;
    level._ID30904["chair"] = "com_folding_chair";
    level._ID30895["chair"]["throatstab"] = %h2_cliffhanger_throatstab_chair;
    level._ID30902["chair"]["throatstab"] = 0;
    level._ID30895["chair"]["sleep_react"] = %h2_cliffhanger_guard_sleeping_chair_react;
    level._ID30895["chair"]["sleep_react_back"] = %h2_cliffhanger_guard_sleeping_chair_react;
    level._ID30895["chair"]["pain_or_death_react"] = %h2_cliffhanger_guard_sleeping_chair_react;
    level._ID30895["chair_ak"]["pain_or_death_react"] = %h2_sitting_guard_loadak_death_chair;
    _ID42259::_ID2058( "chair_ak", "remove_clip", maps\cliffhanger_code::_ID49051, "pain_or_death_react" );
    level._ID30900["cable"] = #animtree;
    level._ID30895["cable"]["lab_tank_assembly_cable_slow"][0] = %h2_lab_tank_assembly_cable_slow;
    level._ID30895["cable"]["lab_tank_assembly_cable_fast"][0] = %h2_lab_tank_assembly_cable_fast;
    level._ID30900["pan_metal"] = #animtree;
    level._ID30895["pan_metal"]["idle"][0] = %h2_com_pan_metal_animated;
    level._ID30900["pan_copper"] = #animtree;
    level._ID30895["pan_copper"]["idle"][0] = %h2_com_pan_copper_animated;
}

_ID54351( var_0 )
{
    var_1 = getentarray( "locker_dyn_explosion_org", "targetname" );

    foreach ( var_3 in var_1 )
        physicsexplosionsphere( var_3.origin, 100, 80, 0.3 );
}
#using_animtree("animated_props");

_ID43312()
{
    level._ID30900["flag_windsock"] = #animtree;
    level._ID30904["flag_windsock"] = "accessories_windsock_animated";
    level._ID30895["flag_windsock"]["wind_animation_fast"] = %h2_accessories_windsock_animated_fast;
    level._ID30895["flag_windsock"]["wind_animation_fast_looped"][0] = %h2_accessories_windsock_animated_fast;
    level._ID30895["flag_windsock"]["wind_animation_slow"] = %h2_accessories_windsock_animated_slow;
    level._ID30895["flag_windsock"]["wind_animation_slow_looped"][0] = %h2_accessories_windsock_animated_slow;
    level._ID30895["flag_windsock"]["wind_animation_slow_to_fast"] = %h2_accessories_windsock_animated_fast;
    level._ID30895["flag_windsock"]["wind_animation_fast_to_slow"] = %h2_accessories_windsock_animated_slow;
    level._ID30900["roofvent_snow"] = #animtree;
    level._ID30904["roofvent_snow"] = "com_roofvent1_snow_animated";
    level._ID30895["roofvent_snow"]["wind_animation_fast"] = %h2_com_roofvent1_snow_idle_spinning;
    level._ID30895["roofvent_snow"]["wind_animation_fast_looped"][0] = %h2_com_roofvent1_snow_idle_spinning;
    level._ID30895["roofvent_snow"]["wind_animation_slow"] = %h2_com_roofvent1_snow_stopandspin;
    level._ID30895["roofvent_snow"]["wind_animation_slow_looped"][0] = %h2_com_roofvent1_snow_stopandspin;
    level._ID30895["roofvent_snow"]["wind_animation_slow_to_fast"] = %h2_com_roofvent1_snow_idle_spinning;
    level._ID30895["roofvent_snow"]["wind_animation_fast_to_slow"] = %h2_com_roofvent1_snow_stopandspin;
    level._ID30900["campfire_equipment"] = #animtree;
    level._ID30904["campfire_equipment"] = "ch_campfire_equipment_animated";
    level._ID30895["campfire_equipment"]["wind_animation_fast"] = %h2_ch_campfire_equipment_intense_wind;
    level._ID30895["campfire_equipment"]["wind_animation_fast_looped"][0] = %h2_ch_campfire_equipment_intense_wind;
    level._ID30895["campfire_equipment"]["wind_animation_slow"] = %h2_ch_campfire_equipment_medium_wind;
    level._ID30895["campfire_equipment"]["wind_animation_slow_looped"][0] = %h2_ch_campfire_equipment_medium_wind;
    level._ID30895["campfire_equipment"]["wind_animation_slow_to_fast"] = %h2_ch_campfire_equipment_intense_wind;
    level._ID30895["campfire_equipment"]["wind_animation_fast_to_slow"] = %h2_ch_campfire_equipment_medium_wind;
    level._ID30900["tracker_flag"] = #animtree;
    level._ID30904["tracker_flag"] = "h2_ch_tracker_flag_animated";
    level._ID30895["tracker_flag"]["wind_animation_fast"] = %h2_ch_tracker_flag_medium_wind;
    level._ID30895["tracker_flag"]["wind_animation_fast_looped"][0] = %h2_ch_tracker_flag_medium_wind;
    level._ID30895["tracker_flag"]["wind_animation_slow"] = %h2_ch_tracker_flag_medium_wind;
    level._ID30895["tracker_flag"]["wind_animation_slow_looped"][0] = %h2_ch_tracker_flag_medium_wind;
    level._ID30895["tracker_flag"]["wind_animation_slow_to_fast"] = %h2_ch_tracker_flag_medium_wind;
    level._ID30895["tracker_flag"]["wind_animation_fast_to_slow"] = %h2_ch_tracker_flag_medium_wind;
    level._ID30900["lamps_wires_01"] = #animtree;
    level._ID30904["lamps_wires_01"] = "h2_ch_lamps_wires_01_animated";
    level._ID30895["lamps_wires_01"]["wind_animation_fast"] = %h2_ch_lamps_wires_tempest_01;
    level._ID30895["lamps_wires_01"]["wind_animation_fast_looped"][0] = %h2_ch_lamps_wires_tempest_01;
    level._ID30895["lamps_wires_01"]["wind_animation_slow"] = %h2_ch_lamps_wires_windy_01;
    level._ID30895["lamps_wires_01"]["wind_animation_slow_looped"][0] = %h2_ch_lamps_wires_windy_01;
    level._ID30895["lamps_wires_01"]["wind_animation_slow_to_fast"] = %h2_ch_lamps_wires_tempest_01;
    level._ID30895["lamps_wires_01"]["wind_animation_fast_to_slow"] = %h2_ch_lamps_wires_windy_01;
    level._ID30900["lamps_wires_02"] = #animtree;
    level._ID30904["lamps_wires_02"] = "h2_ch_lamps_wires_02_animated";
    level._ID30895["lamps_wires_02"]["wind_animation_fast"] = %h2_ch_lamps_wires_tempest_02;
    level._ID30895["lamps_wires_02"]["wind_animation_fast_looped"][0] = %h2_ch_lamps_wires_tempest_02;
    level._ID30895["lamps_wires_02"]["wind_animation_slow"] = %h2_ch_lamps_wires_windy_02;
    level._ID30895["lamps_wires_02"]["wind_animation_slow_looped"][0] = %h2_ch_lamps_wires_windy_02;
    level._ID30895["lamps_wires_02"]["wind_animation_slow_to_fast"] = %h2_ch_lamps_wires_tempest_02;
    level._ID30895["lamps_wires_02"]["wind_animation_fast_to_slow"] = %h2_ch_lamps_wires_windy_02;
    level._ID30900["tent_rope_01"] = #animtree;
    level._ID30904["tent_rope_01"] = "h2_ch_military_tent_rope01_animated";
    level._ID30895["tent_rope_01"]["wind_animation_fast"] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_01"]["wind_animation_fast_looped"][0] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_01"]["wind_animation_slow"] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_01"]["wind_animation_slow_looped"][0] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_01"]["wind_animation_slow_to_fast"] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_01"]["wind_animation_fast_to_slow"] = %h2_ch_military_tent_ropes_shake;
    level._ID30900["tent_rope_02"] = #animtree;
    level._ID30904["tent_rope_02"] = "h2_ch_military_tent_rope02_animated";
    level._ID30895["tent_rope_02"]["wind_animation_fast"] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_02"]["wind_animation_fast_looped"][0] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_02"]["wind_animation_slow"] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_02"]["wind_animation_slow_looped"][0] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_02"]["wind_animation_slow_to_fast"] = %h2_ch_military_tent_ropes_shake;
    level._ID30895["tent_rope_02"]["wind_animation_fast_to_slow"] = %h2_ch_military_tent_ropes_shake;
}
#using_animtree("player");

_ID27230()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewhands_player_arctic_wind";
    level._ID30895["player_rig"]["player_evac"] = %blackout_bh_evac_player;
    level._ID30895["player_rig"]["goggles_puton"] = %h2_vm_snowgoggle_puton;
    level._ID30895["player_rig"]["goggles_takeoff"] = %h2_vm_snowgoggle_takeoff;
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_arctic";
    level._ID30895["worldbody"]["slide_in"] = %h2_cliffhanger_slide_in;
    level._ID30895["worldbody"]["slide_loop"][0] = %h2_cliffhanger_slide_idle;
    level._ID30895["worldbody"]["slide_out"] = %h2_cliffhanger_slide_out;
    level._ID30895["worldbody"]["slide_back_loop"][0] = %h2_cliffhanger_slide_back;
    level._ID30895["worldbody"]["slide_back_in"] = %h2_cliffhanger_slide_back_in;
    level._ID30895["worldbody"]["slide_back_out"] = %h2_cliffhanger_slide_back_out;
    level._ID30895["worldbody"]["slide_ar"] = %h2_cliffhanger_slide_turnl;
    level._ID30895["worldbody"]["slide_al"] = %h2_cliffhanger_slide_turnr;
    _ID42259::_ID2058( "worldbody", "slide_fx_start", ::_ID44893, "slide_in", [ "tag_origin" ] );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_ID49745, "slide_out" );
    _ID42259::_ID2058( "worldbody", "slide_fx_end", ::_ID49745, "slide_back_out" );
    level._ID30895["worldbody"]["bigjump_left_01"] = %h2_playerview_icepicker_bigjump_left_01;
    level._ID30895["worldbody"]["bigjump_left_01_idle"] = %h2_playerview_icepicker_bigjump_left_01_idle;
    level._ID30895["worldbody"]["bigjump_right_01"] = %h2_playerview_icepicker_bigjump_right_01;
    level._ID30895["worldbody"]["bigjump_right_01_idle"] = %h2_playerview_icepicker_bigjump_right_01_idle;
    level._ID30895["worldbody"]["bigjump_left_02"] = %h2_playerview_icepicker_bigjump_left_02;
    level._ID30895["worldbody"]["bigjump_left_02_idle"] = %h2_playerview_icepicker_bigjump_left_02_idle;
    level._ID30895["worldbody"]["bigjump_right_02"] = %h2_playerview_icepicker_bigjump_right_02;
    level._ID30895["worldbody"]["bigjump_right_02_idle"] = %h2_playerview_icepicker_bigjump_right_02_idle;
    level._ID30895["worldbody"]["bigjump_left_03"] = %h2_playerview_icepicker_bigjump_left_03;
    level._ID30895["worldbody"]["bigjump_left_03_idle"] = %h2_playerview_icepicker_bigjump_left_03_idle;
    level._ID30895["worldbody"]["bigjump_right_03"] = %h2_playerview_icepicker_bigjump_right_03;
    level._ID30895["worldbody"]["bigjump_ending"] = %h2_playerview_icepicker_bigjump_ending;
    level._ID30895["worldbody"]["enter_climb_from_ledge_right"] = %h2_cliffhanger_iceaxeclimbing_getready_2_climb_right;
    level._ID30895["worldbody"]["enter_climb_from_ledge_left"] = %h2_cliffhanger_iceaxeclimbing_getready_2_climb_left;
    level._ID30895["worldbody"]["enter_climb_from_ledge_right_idle"] = %h2_cliffhanger_iceaxeclimbing_getready_2_climb_idle_right;
    level._ID30895["worldbody"]["enter_climb_from_ledge_right_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_getready_2_climb_right_inv;
    level._ID30895["worldbody"]["enter_climb_from_ledge_left_idle"] = %h2_cliffhanger_iceaxeclimbing_getready_2_climb_idle_left;
    level._ID30895["worldbody"]["enter_climb_from_ledge_left_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_alternate_right_left_r;
    level._ID30895["worldbody"]["enter_climb_from_stand_start_left"] = %h2_cliffhanger_iceaxeclimbing_alternate_start_left;
    level._ID30895["worldbody"]["enter_climb_from_stand_start_left_idle"] = %h2_cliffhanger_iceaxeclimbing_alternate_start_left_idle;
    level._ID30895["worldbody"]["enter_climb_from_stand_start_left_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_alternate_start_left_r;
    level._ID30895["worldbody"]["enter_climb_from_stand_start_left_right"] = %h2_cliffhanger_iceaxeclimbing_alternate_start_left_right;
    level._ID30895["worldbody"]["enter_climb_from_stand_start_right"] = %h2_cliffhanger_iceaxeclimbing_alternate_start_right;
    level._ID30895["worldbody"]["iceaxeclimbing_right_1"] = %h2_cliffhanger_iceaxeclimbing_right_1;
    level._ID30895["worldbody"]["iceaxeclimbing_right_1_idle"] = %h2_cliffhanger_iceaxeclimbing_right_1_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_1_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_right_1_fall;
    level._ID30895["worldbody"]["iceaxeclimbing_left_1"] = %h2_cliffhanger_iceaxeclimbing_left_1;
    level._ID30895["worldbody"]["iceaxeclimbing_left_1_idle"] = %h2_cliffhanger_iceaxeclimbing_left_1_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_1_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_left_1_fall;
    level._ID30895["worldbody"]["iceaxeclimbing_right_2"] = %h2_cliffhanger_iceaxeclimbing_right_2;
    level._ID30895["worldbody"]["iceaxeclimbing_right_2_idle"] = %h2_cliffhanger_iceaxeclimbing_right_2_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_2_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_right_2_fall;
    level._ID30895["worldbody"]["iceaxeclimbing_left_2"] = %h2_cliffhanger_iceaxeclimbing_left_2;
    level._ID30895["worldbody"]["iceaxeclimbing_left_2_idle"] = %h2_cliffhanger_iceaxeclimbing_left_2_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_2_idle_fall"] = %h2_cliffhanger_iceaxeclimbing_left_2_fall;
    level._ID30895["worldbody"]["iceaxeclimbing_right_3"] = %h2_cliffhanger_iceaxeclimbing_right_3;
    level._ID30895["worldbody"]["iceaxeclimbing_right_3_idle"] = %h2_cliffhanger_iceaxeclimbing_right_3_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_3"] = %h2_cliffhanger_iceaxeclimbing_left_3;
    level._ID30895["worldbody"]["iceaxeclimbing_left_3_idle"] = %h2_cliffhanger_iceaxeclimbing_left_3_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_4"] = %h2_cliffhanger_iceaxeclimbing_right_4;
    level._ID30895["worldbody"]["iceaxeclimbing_right_4_idle"] = %h2_cliffhanger_iceaxeclimbing_right_4_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_4"] = %h2_cliffhanger_iceaxeclimbing_left_4;
    level._ID30895["worldbody"]["iceaxeclimbing_left_4_idle"] = %h2_cliffhanger_iceaxeclimbing_left_4_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_5"] = %h2_cliffhanger_iceaxeclimbing_right_5;
    level._ID30895["worldbody"]["iceaxeclimbing_right_5_idle"] = %h2_cliffhanger_iceaxeclimbing_right_5_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_5"] = %h2_cliffhanger_iceaxeclimbing_left_5;
    level._ID30895["worldbody"]["iceaxeclimbing_left_5_idle"] = %h2_cliffhanger_iceaxeclimbing_left_5_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_6"] = %h2_cliffhanger_iceaxeclimbing_right_6;
    level._ID30895["worldbody"]["iceaxeclimbing_right_6_idle"] = %h2_cliffhanger_iceaxeclimbing_right_6_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_6"] = %h2_cliffhanger_iceaxeclimbing_left_6;
    level._ID30895["worldbody"]["iceaxeclimbing_left_6_idle"] = %h2_cliffhanger_iceaxeclimbing_left_6_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_7"] = %h2_cliffhanger_iceaxeclimbing_right_7;
    level._ID30895["worldbody"]["iceaxeclimbing_right_7_idle"] = %h2_cliffhanger_iceaxeclimbing_right_7_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_7"] = %h2_cliffhanger_iceaxeclimbing_left_7;
    level._ID30895["worldbody"]["iceaxeclimbing_left_7_idle"] = %h2_cliffhanger_iceaxeclimbing_left_7_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_8"] = %h2_cliffhanger_iceaxeclimbing_right_8;
    level._ID30895["worldbody"]["iceaxeclimbing_right_8_idle"] = %h2_cliffhanger_iceaxeclimbing_right_8_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_8"] = %h2_cliffhanger_iceaxeclimbing_left_8;
    level._ID30895["worldbody"]["iceaxeclimbing_left_8_idle"] = %h2_cliffhanger_iceaxeclimbing_left_8_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_9"] = %h2_cliffhanger_iceaxeclimbing_right_9;
    level._ID30895["worldbody"]["iceaxeclimbing_right_9_idle"] = %h2_cliffhanger_iceaxeclimbing_right_9_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_left_9"] = %h2_cliffhanger_iceaxeclimbing_left_9;
    level._ID30895["worldbody"]["iceaxeclimbing_left_9_idle"] = %h2_cliffhanger_iceaxeclimbing_left_9_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_right_10"] = %h2_cliffhanger_iceaxeclimbing_right_10;
    level._ID30895["worldbody"]["iceaxeclimbing_right_10_idle"] = %h2_cliffhanger_iceaxeclimbing_right_10_idle;
    level._ID30895["worldbody"]["iceaxeclimbing_snowreaction_right"] = %h2_cliffhanger_iceaxeclimbing_snowreaction_l;
    level._ID30895["worldbody"]["iceaxeclimbing_snowreaction_left"] = %h2_cliffhanger_iceaxeclimbing_snowreaction_r;
    level._ID30902["worldbody"]["bigjump_left_01"] = 0;
    level._ID30902["worldbody"]["bigjump_left_01_idle"] = 0;
    level._ID30902["worldbody"]["bigjump_right_01"] = 0;
    level._ID30902["worldbody"]["bigjump_right_01_idle"] = 0;
    level._ID30902["worldbody"]["bigjump_left_02"] = 0;
    level._ID30902["worldbody"]["bigjump_left_02_idle"] = 0;
    level._ID30902["worldbody"]["bigjump_right_02"] = 0;
    level._ID30902["worldbody"]["bigjump_right_02_idle"] = 0;
    level._ID30902["worldbody"]["bigjump_left_03"] = 0;
    level._ID30902["worldbody"]["bigjump_left_03_idle"] = 0;
    level._ID30902["worldbody"]["bigjump_right_03"] = 0;
    level._ID30902["worldbody"]["bigjump_ending"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_ledge_right"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_ledge_left"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_ledge_right_idle"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_ledge_right_idle_fall"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_ledge_left_idle"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_ledge_left_idle_fall"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_stand_start_left"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_stand_start_left_idle"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_stand_start_left_idle_fall"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_stand_start_left_right"] = 0;
    level._ID30902["worldbody"]["enter_climb_from_stand_start_right"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_1"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_1_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_1_idle_fall"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_1"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_1_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_1_idle_fall"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_2"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_2_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_2_idle_fall"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_2"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_2_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_2_idle_fall"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_3"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_3_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_3"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_3_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_4"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_4_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_4"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_4_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_5"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_5_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_5"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_5_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_6"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_6_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_6"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_6_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_7"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_7_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_7"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_7_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_8"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_8_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_8"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_8_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_9"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_9_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_9"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_left_9_idle"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_10"] = 0;
    level._ID30902["worldbody"]["iceaxeclimbing_right_10_idle"] = 0;
    level._ID30895["worldbody"]["idle_additive"] = %climb_additive_idle;
    level._ID30895["worldbody"]["climb_idle_left"] = %h2_cliffhanger_iceaxeclimbing_left_idle;
    level._ID30895["worldbody"]["climb_idle_left_twitch"][0] = %h2_cliffhanger_iceaxeclimbing_left_idle_twitch_01;
    level._ID30895["worldbody"]["climb_idle_left_twitch"][1] = %h2_cliffhanger_iceaxeclimbing_left_idle_twitch_02;
    level._ID30895["worldbody"]["climb_idle_right"] = %h2_cliffhanger_iceaxeclimbing_right_idle;
    level._ID30895["worldbody"]["climb_idle_right_twitch"][0] = %h2_cliffhanger_iceaxeclimbing_right_idle_twitch_01;
    level._ID30895["worldbody"]["climb_idle_right_twitch"][1] = %h2_cliffhanger_iceaxeclimbing_right_idle_twitch_02;
    level._ID30895["worldbody"]["double_takedown"] = %h2_cliffhanger_dualtakedown_sequence_player;
    level._ID30895["worldbody"]["throatstab"] = %h2_cliffhanger_throatstab_player;
    level._ID30895["worldbody"]["planting_c4"] = %h2_cliffhanger_base_c4_player;
    _ID42259::_ID2057( "worldbody", "c4_attach", "weapon_c4", "tag_weapon", "planting_c4" );
    _ID42259::_ID2058( "worldbody", "c4_detach", ::_ID48187, "planting_c4" );
    _ID42259::_ID2063( "worldbody", "c4_detach", "c4_placed", "planting_c4" );
    level._ID30895["worldbody"]["mounting_snowmobile_left"] = %h2_cliffhanger_snowmobile_player_in_left;
    level._ID30895["worldbody"]["mounting_snowmobile_right"] = %h2_cliffhanger_snowmobile_player_in_right;
    _ID42259::_ID2058( "worldbody", "goggles_puton", ::_ID48833 );
    level._ID30895["worldbody"]["pickup_acs"] = %h2_cliffhanger_hangar_acs_player;
    _ID42259::_ID2063( "worldbody", "acs_attach", "acs_picked_up", "pickup_acs" );
}
#using_animtree("vehicles");

_ID40317()
{
    level._ID30900["mig"] = #animtree;
    level._ID30895["mig"]["mig_landing1"] = %h2_cliffhanger_mig_landing;
    level._ID30895["mig"]["mig_landing2"] = %cliffhanger_mig_landing_2;
    level._ID30904["mig"] = "vehicle_mig29";
    level._ID30900["snowmobile"] = #animtree;
    level._ID30895["snowmobile"]["icepick_fight"] = %h2_cliffhanger_icepick_fight_snowmobile;
    level._ID30904["snowmobile"] = "vehicle_snowmobile_alt";
    level._ID30900["heli"] = #animtree;
    level._ID30895["heli"]["avalanche_heli_wipeout"] = %cliffhanger_crash_mi28_crash;
    _ID42259::_ID2058( "mig", "touchdown_fx", ::_ID53484 );
    _ID42259::_ID2058( "snowmobile", "snowmobile_skidout", ::_ID48794 );
    _ID42259::_ID2058( "snowmobile", "snowmobile_stop_skidout", ::_ID45751 );
    level._ID30895["snowmobile"]["root"] = %root;
    level._ID30895["snowmobile"]["cliffhanger_ending"] = %h2_cliffhanger_ending_snowmobile_soap;
    level._ID30904["snowmobile_player"] = "vehicle_snowmobile_player";
    level._ID30900["snowmobile_player"] = #animtree;
    level._ID30895["snowmobile_player"]["cliffhanger_ending"] = %h2_cliffhanger_ending_snowmobile_player;
    level._ID30902["snowmobile_player"]["cliffhanger_ending"] = 0;
}

_ID48794( var_0 )
{
    level endon( "stop_skidout_fx" );

    for (;;)
    {
        playfxontag( _ID42237::_ID16299( "tread_snow_snowmobile_skidout" ), var_0, "tag_deathfx" );
        wait 0.03;
    }
}

_ID45751( var_0 )
{
    level notify( "stop_skidout_fx" );
}

_ID53484( var_0 )
{
    playfxontag( _ID42237::_ID16299( "mig_landing_trail_snow" ), var_0, "origin_animate_jnt" );
}

_ID43098( var_0 )
{
    var_1 = var_0 gettagorigin( "TAG_INHAND" );
    var_2 = var_0 gettagangles( "TAG_INHAND" );
    var_3 = spawn( "script_model", var_1 );
    var_3 setmodel( "weapon_c4" );
    var_3.angles = var_2;
    var_3 thread _ID43691::_ID27192();
}

_ID46816( var_0 )
{
    _ID42237::_ID14402( "locker_room_noturningback" );
}

_ID46921( var_0 )
{
    var_0.allowdeath = 0;
    _ID42237::_ID14402( "locker_brawl_becomes_uninteruptable" );
}

_ID2290( var_0 )
{
    if ( !isalive( var_0 ) )
        return;

    var_0.allowdeath = 1;
    var_0._ID7._ID24881 = 1;
    var_0 _ID42407::_ID32226( 0 );
    _ID45456::_ID54623( var_0 );
    var_0 kill();
}
#using_animtree("generic_human");

_ID10730()
{
    level._ID30909["price"]["cliff_pri_noidea"] = "cliff_pri_noidea";
    level._ID30909["price"]["cliff_pri_killfirm"] = "cliff_pri_killfirm";
    level._ID30909["price"]["follow_me"] = "cliff_pri_followmeletsgo";
    level._ID30909["price"]["cliff_pri_killfirm_plyr"] = "cliff_pri_killfirm_plyr";
    level._ID30909["price"]["cliff_pri_melee_plyr"] = "cliff_pri_melee_plyr";
    level._ID30909["price"]["cliff_pri_checksensor"] = "cliff_pri_checksensor";
    level._ID30901["price"]["cliff_pri_checksensor"] = %h2_cliffhanger_cliff_mound_climb_soap_sensor_facial;
    level._ID30909["price"]["cliff_pri_seeme"] = "cliff_pri_seeme";
    level._ID30901["price"]["cliff_pri_seeme"] = %h2_cliffhanger_cliff_mound_climb_soap_youshouldbe_facial;
    level._ID30909["price"]["cliff_pri_bluedot"] = "cliff_pri_bluedot";
    level._ID30901["price"]["cliff_pri_bluedot"] = %h2_cliffhanger_cliff_mound_climb_soap_thatbluedot_facial;
    level._ID30909["price"]["cliff_pri_whitedots"] = "cliff_pri_whitedots";
    level._ID30901["price"]["cliff_pri_whitedots"] = %h2_cliffhanger_cliff_mound_climb_soap_unrecognized_facial;
    level._ID30909["price"]["cliff_pri_youtakeleft"] = "cliff_pri_youtakeleft";
    level._ID30909["price"]["cliff_pri_onthree"] = "cliff_pri_onthree";
    level._ID30909["price"]["cliff_pri_sameplan"] = "cliff_pri_sameplan";
    level._ID30909["price"]["cliff_pri_tappedcomms"] = "cliff_pri_tappedcomms";
    level._ID30909["price"]["cliff_pri_pvtnatalya"] = "cliff_pri_pvtnatalya";
    level._ID30909["price"]["cliff_pri_femcombatants"] = "cliff_pri_femcombatants";
    level._ID30909["price"]["cliff_pri_stormsbrewing"] = "cliff_pri_stormsbrewing";
    level._ID30909["price"]["cliff_pri_tangoleft"] = "cliff_pri_tangoleft";
    level._ID30909["price"]["cliff_pri_targetleft"] = "cliff_pri_targetleft";
    level._ID30909["price"]["cliff_pri_hostileright"] = "cliff_pri_hostileright";
    level._ID30909["price"]["cliff_pri_targetright"] = "cliff_pri_targetright";
    level._ID30909["price"]["cliff_pri_tangosix"] = "cliff_pri_tangosix";
    level._ID30909["price"]["cliff_pri_targetbehindyou"] = "cliff_pri_targetbehindyou";
    level._ID30909["price"]["cliff_pri_holdup"] = "cliff_pri_holdup";
    level._ID30909["price"]["cliff_pri_activityonrunway"] = "cliff_pri_activityonrunway";
    level._ID30909["price"]["cliff_pri_footmobiles"] = "cliff_pri_footmobiles";
    level._ID30909["price"]["cliff_pri_avoidarea"] = "cliff_pri_avoidarea";
    level._ID30909["price"]["cliff_pri_radiotraffic"] = "cliff_pri_radiotraffic";
    level._ID30909["price"]["cliff_pri_infarhangar"] = "cliff_pri_infarhangar";
    level._ID30909["price"]["cliff_pri_oscarmike"] = "cliff_pri_oscarmike";
    level._ID30909["price"]["cliff_pri_foundabody"] = "cliff_pri_foundabody";
    level._ID30909["price"]["cliff_pri_keepquiet"] = "cliff_pri_keepquiet";
    level._ID30909["price"]["cliff_pri_staycalm"] = "cliff_pri_staycalm";
    level._ID30909["price"]["cliff_pri_nicelydone"] = "cliff_pri_nicelydone";
    level._ID30909["price"]["tango_down"] = "cliff_pri_killfirm";
    level._ID30909["price"]["cliff_pri_splitup"] = "cliff_pri_splitup";
    level._ID30909["price"]["cliff_pri_likeaghost"] = "cliff_pri_likeaghost";
    level._ID30909["price"]["cliff_pri_yourein"] = "cliff_pri_yourein";
    level._ID30909["price"]["cliff_pri_truckcoming"] = "cliff_pri_truckcoming";
    level._ID30909["price"]["cliff_pri_flamingwreck"] = "cliff_pri_flamingwreck";
    level._ID30909["price"]["cliff_pri_outofsight"] = "cliff_pri_outofsight";
    level._ID30909["price"]["cliff_pri_attractattn"] = "cliff_pri_attractattn";
    level._ID30909["price"]["cliff_pri_prettysneaky"] = "cliff_pri_prettysneaky";
    level._ID30909["price"]["cliff_pri_2tangosfront"] = "cliff_pri_2tangosfront";
    level._ID30909["price"]["cliff_pri_getoutofthere"] = "cliff_pri_getoutofthere";
    level._ID30909["price"]["cliff_pri_nicework"] = "cliff_pri_nicework";
    level._ID30909["price"]["cliff_pri_takethisone"] = "cliff_pri_takethisone";
    level._ID30909["price"]["cliff_pri_hesmine"] = "cliff_pri_hesmine";
    level._ID30909["price"]["cliff_pri_ivegothim"] = "cliff_pri_ivegothim";
    level._ID30909["price"]["cliff_pri_onesmine"] = "cliff_pri_onesmine";
    level._ID30909["price"]["cliff_pri_illtakehim"] = "cliff_pri_illtakehim";
    level._ID30909["price"]["cliff_pri_scenicroute"] = "cliff_pri_scenicroute";
    level._ID30901["price"]["cliff_pri_scenicroute"] = %cliff_pri_scenicroute;
    level._ID30909["price"]["cliff_pri_headsup"] = "cliff_pri_headsup";
    level._ID30909["price"]["cliff_pri_lookingaround"] = "cliff_pri_lookingaround";
    level._ID30909["price"]["cliff_pri_takecover"] = "cliff_pri_takecover";
    level._ID30909["price"]["cliff_pri_beenspotted"] = "cliff_pri_beenspotted";
    level._ID30909["price"]["cliff_pri_foundyou"] = "cliff_pri_foundyou";
    level._ID30909["price"]["cliff_pri_multipledirections"] = "cliff_pri_multipledirections";
    level._ID30909["price"]["cliff_pri_notsneaky"] = "cliff_pri_notsneaky";
    level._ID30909["price"]["cliff_pri_dontalertthem"] = "cliff_pri_dontalertthem";
    level._ID30909["price"]["cliff_pri_sloppy"] = "cliff_pri_sloppy";
    level._ID30909["price"]["cliff_pri_silencers"] = "cliff_pri_silencers";
    level._ID30909["price"]["letsgo"] = "cliff_pri_letsgo";
    level._ID30901["price"]["letsgo"] = %cliff_pri_letsgo;
    level._ID30909["price"]["thefarside"] = "cliff_pri_thefarside";
    level._ID30908["outrunthem"] = "cliff_pri_outrunthem";
    level._ID30908["keepmoving"] = "cliff_pri_keepmoving";
    level._ID30908["gogogo"] = "cliff_pri_gogogo";
    level._ID30908["avalanche"] = "cliff_pri_avalanche";
    level._ID30908["moretangos"] = "cliff_pri_moretangos";
    level._ID30908["gonnamakeit"] = "cliff_pri_gonnamakeit";
    level._ID30908["comeoncomeon"] = "cliff_pri_comeoncomeon";
    level._ID30908["hangon2"] = "cliff_pri_hangon2";
    level._ID30909["price"]["hugthewall"] = "cliff_pri_hugthewall";
    level._ID30909["price"]["allright"] = "cliff_pri_allright";
    level._ID30909["price"]["headformig"] = "cliff_pri_headformig";
    level._ID30909["price"]["headingforjeeps"] = "cliff_pri_headingforjeeps";
    level._ID30909["price"]["runtonextmig"] = "cliff_pri_runtonextmig";
    level._ID30909["price"]["makingabreak"] = "cliff_pri_makingabreak";
    level._ID30909["price"]["moveup"] = "cliff_pri_moveup";
    level._ID30909["price"]["cometome"] = "cliff_pri_cometome";
    level._ID30909["price"]["snowmoibles"] = "cliff_pri_snowmoibles";
    level._ID30909["price"]["compromised"] = "cliff_pri_compromised";
    level._ID30909["price"]["plan_b"] = "cliff_pri_goplanb";
    level._ID30909["petrov"]["cliff_pet_capturedcomrade"] = "cliff_pet_capturedcomrade";
    level._ID30909["petrov"]["cliff_pet_surrender"] = "cliff_pet_surrender";
    level._ID30909["petrov"]["cliff_pet_willdie"] = "cliff_pet_willdie";
    level._ID30909["petrov"]["cliff_pet_handsup"] = "cliff_pet_handsup";
    level._ID30909["petrov"]["cliff_pet_verywell"] = "cliff_pet_verywell";
    level._ID30909["price"]["downloadfiles"] = "cliff_pri_downloadfiles";
    level._ID30901["price"]["downloadfiles"] = %cliff_pri_downloadfiles;
    level._ID30909["price"]["eastgo"] = "cliff_pri_eastgo";
    level._ID30909["price"]["runformigeast"] = "cliff_pri_runformigeast";
    level._ID30901["price"]["runformigeast"] = %cliff_pri_runformigeast;
    level._ID30908["cliff_pri_killfirm_plyr"] = "cliff_pri_killfirm_plyr";
    level._ID30908["cliff_pri_melee_plyr"] = "cliff_pri_melee_plyr";
    level._ID30908["cliff_pri_checksensor"] = "cliff_pri_checksensor";
    level._ID30908["cliff_pri_seeme"] = "cliff_pri_seeme";
    level._ID30908["cliff_pri_bluedot"] = "cliff_pri_bluedot";
    level._ID30908["cliff_pri_whitedots"] = "cliff_pri_whitedots";
    level._ID30908["cliff_pri_youtakeleft"] = "cliff_pri_youtakeleft";
    level._ID30908["cliff_pri_onthree"] = "cliff_pri_onthree";
    level._ID30908["cliff_pri_sameplan"] = "cliff_pri_sameplan";
    level._ID30908["cliff_pri_tappedcomms"] = "cliff_pri_tappedcomms";
    level._ID30908["cliff_pri_pvtnatalya"] = "cliff_pri_pvtnatalya";
    level._ID30908["cliff_pri_femcombatants"] = "cliff_pri_femcombatants";
    level._ID30908["cliff_pri_stormsbrewing"] = "cliff_pri_stormsbrewing";
    level._ID30908["cliff_pri_tangoleft"] = "cliff_pri_tangoleft";
    level._ID30908["cliff_pri_targetleft"] = "cliff_pri_targetleft";
    level._ID30908["cliff_pri_hostileright"] = "cliff_pri_hostileright";
    level._ID30908["cliff_pri_targetright"] = "cliff_pri_targetright";
    level._ID30908["cliff_pri_tangosix"] = "cliff_pri_tangosix";
    level._ID30908["cliff_pri_targetbehindyou"] = "cliff_pri_targetbehindyou";
    level._ID30908["cliff_pri_holdup"] = "cliff_pri_holdup";
    level._ID30908["cliff_pri_activityonrunway"] = "cliff_pri_activityonrunway";
    level._ID30908["cliff_pri_footmobiles"] = "cliff_pri_footmobiles";
    level._ID30908["cliff_pri_avoidarea"] = "cliff_pri_avoidarea";
    level._ID30908["cliff_pri_radiotraffic"] = "cliff_pri_radiotraffic";
    level._ID30908["cliff_pri_infarhangar"] = "cliff_pri_infarhangar";
    level._ID30908["cliff_pri_oscarmike"] = "cliff_pri_oscarmike";
    level._ID30908["cliff_pri_foundabody"] = "cliff_pri_foundabody";
    level._ID30908["cliff_pri_keepquiet"] = "cliff_pri_keepquiet";
    level._ID30908["cliff_pri_staycalm"] = "cliff_pri_staycalm";
    level._ID30908["cliff_pri_nicelydone"] = "cliff_pri_nicelydone";
    level._ID30908["tango_down"] = "UK_pri_inform_killfirm_generic_s";
    level._ID30908["cliff_pri_splitup"] = "cliff_pri_splitup";
    level._ID30908["cliff_pri_likeaghost"] = "cliff_pri_likeaghost";
    level._ID30908["cliff_pri_yourein"] = "cliff_pri_yourein";
    level._ID30908["cliff_pri_truckcoming"] = "cliff_pri_truckcoming";
    level._ID30908["cliff_pri_flamingwreck"] = "cliff_pri_flamingwreck";
    level._ID30908["cliff_pri_outofsight"] = "cliff_pri_outofsight";
    level._ID30908["cliff_pri_attractattn"] = "cliff_pri_attractattn";
    level._ID30908["cliff_pri_prettysneaky"] = "cliff_pri_prettysneaky";
    level._ID30908["cliff_pri_2tangosfront"] = "cliff_pri_2tangosfront";
    level._ID30908["cliff_pri_getoverhere"] = "cliff_pri_getoverhere";
    level._ID30909["price"]["cliff_pri_getoverhere"] = "cliff_pri_getoverhere";
    level._ID30908["cliff_pri_getoutofthere"] = "cliff_pri_getoutofthere";
    level._ID30908["cliff_pri_nicework"] = "cliff_pri_nicework";
    level._ID30908["cliff_pri_takethisone"] = "cliff_pri_takethisone";
    level._ID30908["cliff_pri_hesmine"] = "cliff_pri_hesmine";
    level._ID30908["cliff_pri_ivegothim"] = "cliff_pri_ivegothim";
    level._ID30908["cliff_pri_onesmine"] = "cliff_pri_onesmine";
    level._ID30908["cliff_pri_illtakehim"] = "cliff_pri_illtakehim";
    level._ID30908["cliff_pri_scenicroute"] = "cliff_pri_scenicroute";
    level._ID30908["cliff_pri_headsup"] = "cliff_pri_headsup";
    level._ID30908["cliff_pri_lookingaround"] = "cliff_pri_lookingaround";
    level._ID30908["cliff_pri_takecover"] = "cliff_pri_takecover";
    level._ID30908["cliff_pri_beenspotted"] = "cliff_pri_beenspotted";
    level._ID30908["cliff_pri_foundyou"] = "cliff_pri_foundyou";
    level._ID30908["cliff_pri_multipledirections"] = "cliff_pri_multipledirections";
    level._ID30908["cliff_pri_notsneaky"] = "cliff_pri_notsneaky";
    level._ID30908["cliff_pri_dontalertthem"] = "cliff_pri_dontalertthem";
    level._ID30908["cliff_pri_sloppy"] = "cliff_pri_sloppy";
    level._ID30908["cliff_pri_alertedthem"] = "cliff_pri_alertedthem";
    level._ID30908["cliff_pri_silencers"] = "cliff_pri_silencers";
    level._ID30908["cliff_pri_truckcomingback"] = "cliff_pri_truckcomingback";
    level._ID30908["cliff_pri_truckiscoming"] = "cliff_pri_truckiscoming";
    level._ID30908["cliff_pri_theygoingback"] = "cliff_pri_theygoingback";
    level._ID30908["cliff_pri_youreclear"] = "cliff_pri_youreclear";
    level._ID30908["cliff_pri_resthavegivenup"] = "cliff_pri_resthavegivenup";
    level._ID30908["cliff_pri_hidealerted"] = "cliff_pri_hidealerted";
    level._ID30908["cliff_pri_sightalertedone"] = "cliff_pri_sightalertedone";
    level._ID30908["cliff_pri_keepeyeonheart"] = "cliff_pri_keepeyeonheart";
    level._ID30909["price"]["cliff_pri_somework"] = "cliff_pri_somework";
    level._ID30909["price"]["cliff_pri_doeverything"] = "cliff_pri_doeverything";
    level._ID30908["cliff_pri_nevermind"] = "cliff_pri_nevermind";
    level._ID30908["cliff_pri_maybenot"] = "cliff_pri_maybenot";
    level._ID30908["cliff_pri_coverofstorm"] = "cliff_pri_coverofstorm";
    level._ID30908["cliff_pri_yourein_2"] = "cliff_pri_yourein_2";
    level._ID30908["cliff_pri_yourein_3"] = "cliff_pri_yourein_3";
    level._ID30908["cliff_pri_necorner"] = "cliff_pri_necorner";
    level._ID30908["cliff_pri_searchntheast"] = "cliff_pri_searchntheast";
    level._ID30908["cliff_pri_fuelingstation"] = "cliff_pri_fuelingstation";
    level._ID30908["cliff_pri_foundit"] = "cliff_pri_foundit";
    level._ID30908["cliff_pri_getthereasap"] = "cliff_pri_getthereasap";
    level._ID30908["cliff_pri_behindhangars"] = "cliff_pri_behindhangars";
    level._ID30908["cliff_pri_meetme"] = "cliff_pri_meetme";
    level._ID30909["price"]["cliff_pri_broughtfriends"] = "cliff_pri_broughtfriends";
    level._ID30908["cliff_pri_goback"] = "cliff_pri_goback";
    level._ID30909["price"]["Cliff_pri_onthree"] = "Cliff_pri_onthree";
    level._ID30909["price"]["Cliff_pri_one"] = "Cliff_pri_one";
    level._ID30909["price"]["Cliff_pri_two"] = "Cliff_pri_two";
    level._ID30909["price"]["Cliff_pri_three"] = "Cliff_pri_three";
    level._ID30908["UK_pri_inform_killfirm_generic_s"] = "cliff_pri_killfirm";
    level._ID30908["cliff_pri_enroute"] = "cliff_pri_enroute";
    level._ID30908["cliff_hp1_seeyouatbravo"] = "cliff_hp1_seeyouatbravo";
    level._ID30908["cliff_hp1_status"] = "cliff_hp1_status";
    level._ID30908["cliff_pri_almostthere"] = "cliff_pri_almostthere";
    level._ID30908["cliff_hp1_fumes"] = "cliff_hp1_fumes";
    level._ID30908["cliff_crc_gotacs"] = "cliff_crc_gotacs";
    level._ID30908["cliff_pri_pinthrottle"] = "cliff_pri_pinthrottle";
    level._ID30908["cliff_pri_thechopper"] = "cliff_pri_thechopper";
    level._ID30909["price"]["cliff_pri_watchmyback"] = "cliff_pri_watchmyback";
    level._ID30909["price"]["cliff_pri_goupstairs"] = "cliff_pri_goupstairs";
    level._ID30909["price"]["cliff_pri_takesnowmobile"] = "cliff_pri_takesnowmobile";
    level._ID30909["price"]["cliff_pri_snowmobileletsgo"] = "cliff_pri_snowmobileletsgo";
}

_ID48737( var_0 )
{
    var_0 endon( "death" );
    var_1 = _ID42237::_ID16299( "cold_breath_talking" );
    var_0._ID50240 = 1;

    while ( var_0._ID50240 == 1 )
    {
        playfxontag( var_1, var_0, "TAG_EYE" );
        wait 1.0;
    }
}

_ID53723( var_0 )
{
    var_0 thread _ID42259::_ID37173( 3.5 );
    _ID48737( var_0 );
}

_ID50919( var_0 )
{
    var_1 = _ID42237::_ID16299( "cold_breath_talking" );
    var_0._ID50240 = 0;
    stopfxontag( var_1, var_0, "TAG_EYE" );
}

_ID48833( var_0 )
{
    var_1 = getdvar( "r_znear" );
    setsaveddvar( "r_znear", 1 );
    _ID49359::_ID47801( level.player, 0.25, 1 );
    setsaveddvar( "r_znear", var_1 );
}

_ID48187( var_0 )
{
    var_1 = getentarray( "possible_c4_models", "targetname" );
    var_2 = _ID42237::_ID16182( level.player.origin, var_1 );
    var_2.origin = var_0 gettagorigin( "tag_weapon" );
    var_2.angles = var_0 gettagangles( "tag_weapon" );
    waittillframeend;
    var_0 detach( "weapon_c4", "tag_weapon" );
    var_2 show();
}
