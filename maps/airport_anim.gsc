// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID15518();
    _ID53822();
    player();
    _ID49919();
    _ID51444();
    _ID47863();
    _ID40319();
    thread init_animsound();
}
#using_animtree("generic_human");

_ID15518()
{
    level._ID30895["shotgun"]["stand_reload"] = %shotgun_stand_reload_c;
    level._ID30895["m4"]["stand_reload"] = %exposed_reload;
    level._ID30895["makarov"]["stand_reload"] = %exposed_reload;
    level._ID30895["saw"]["stand_reload"] = %exposed_reload;
    level._ID30895["generic"]["casual_killer_walk_wave"] = %casual_killer_walk_wave_makarov;
    level._ID30895["generic"]["casual_killer_walk_point"] = %casual_killer_walk_point_makarov;
    level._ID30895["makarov"]["casual_killer_walk_stop"] = %casual_killer_walk_stop_makarov;
    level._ID30895["shotgun"]["casual_killer_walk_stop"] = %casual_killer_walk_stop_shotgun;
    level._ID30895["generic"]["casual_killer_walk_start"] = %casual_killer_walk_start;
    level._ID30895["generic"]["casual_killer_jog_stop"] = %casual_killer_jog_stop;
    level._ID30895["generic"]["casual_killer_jog_start"] = %casual_killer_jog_start;
    level._ID30895["generic"]["casual_killer_stand_aim5"][0] = %h2_casual_killer_stand_idle;
    level._ID30895["generic"]["casual_killer_flinch"] = %casual_killer_flinch;
    level._ID30895["generic"]["casual_killer_flinch2"] = %casual_killer_flinch2;
    level._ID30895["generic"]["casual_killer_weapon_swap"] = %casual_killer_walk_f_weapon_swap;
    level._ID30895["generic"]["grenadier_fire_and_reload"] = %h2_casual_killer_stand_reload_grenadier;
    level._ID30895["generic"]["stand_exposed_wave_move_out"] = %stand_exposed_wave_move_out;
    level._ID30895["generic"]["stand_exposed_wave_halt_v2"] = %stand_exposed_wave_halt_v2;
    level._ID30895["generic"]["CornerStndR_alert_signal_move_out"] = %cornerstndr_alert_signal_move_out;
    level._ID30895["generic"]["CornerStndR_alert_signal_stopstay_down"] = %cornerstndr_alert_signal_stopstay_down;
    level._ID30895["generic"]["CornerStndR_alert_signal_enemy_spotted"] = %cornerstndr_alert_signal_enemy_spotted;
    level._ID30895["shotgun"]["elevator_scene"] = %h2_airport_elevator_kiril;
    level._ID30895["makarov"]["elevator_scene"] = %h2_airport_elevator_makarov;
    _ID42259::_ID2062( "makarov", "dialog", "elevator_scene", "airport_mkv_noruss" );
    _ID42259::_ID2063( "makarov", "start_civilians", "start_civilians", "elevator_scene" );
    _ID42259::_ID2063( "makarov", "makarov_open_fire", "lobby_open_fire", "elevator_scene" );
    level._ID30895["saw"]["elevator_scene"] = %h2_airport_elevator_lev;
    level._ID30895["m4"]["elevator_scene"] = %h2_airport_elevator_viktor;
    level._ID30895["shotgun"]["walking_toward_stairs"] = %h2_airport_elevator_leave_kiril;
    level._ID30902["shotgun"]["walking_toward_stairs"] = 0.5;
    level._ID30895["makarov"]["walking_toward_stairs"] = %h2_airport_elevator_leave_makarov;
    level._ID30902["makarov"]["walking_toward_stairs"] = 0.5;
    level._ID30895["saw"]["walking_toward_stairs"] = %h2_airport_elevator_leave_lev;
    level._ID30902["saw"]["walking_toward_stairs"] = 0.5;
    level._ID30895["m4"]["walking_toward_stairs"] = %h2_airport_elevator_leave_viktor;
    level._ID30902["m4"]["walking_toward_stairs"] = 0.5;
    level._ID30895["generic"]["h2_airport_intro_civilian1"] = %h2_airport_intro_civilian1;
    level._ID30895["generic"]["h2_airport_intro_civilian2"] = %h2_airport_intro_civilian2;
    level._ID30895["generic"]["h2_airport_intro_civilian3"] = %h2_airport_intro_civilian3;
    level._ID30895["generic"]["h2_airport_intro_civilian4"] = %h2_airport_intro_civilian4;
    level._ID30895["generic"]["h2_airport_intro_civilian5"] = %h2_airport_intro_civilian5;
    level._ID30895["generic"]["h2_airport_intro_civilian6"] = %h2_airport_intro_civilian6;
    level._ID30895["generic"]["h2_airport_intro_civilian7"] = %h2_airport_intro_civilian7;
    level._ID30895["generic"]["h2_airport_intro_civilian8"] = %h2_airport_intro_civilian8;
    level._ID30895["generic"]["h2_airport_intro_civilian9"] = %h2_airport_intro_civilian9;
    level._ID30895["generic"]["h2_airport_intro_civilian10"] = %h2_airport_intro_civilian10;
    level._ID30895["generic"]["h2_airport_intro_civilian11"] = %h2_airport_intro_civilian11;
    level._ID30895["generic"]["h2_airport_intro_civilian12"] = %h2_airport_intro_civilian12;
    level._ID30895["generic"]["h2_airport_intro_civilian13"] = %h2_airport_intro_civilian13;
    level._ID30895["generic"]["h2_airport_intro_civilian14"] = %h2_airport_intro_civilian14;
    level._ID30895["generic"]["h2_airport_intro_civilian15"] = %h2_airport_intro_civilian15;
    level._ID30895["generic"]["h2_airport_intro_civilian16"] = %h2_airport_intro_civilian16;
    level._ID30895["generic"]["h2_airport_intro_civilian17"] = %h2_airport_intro_civilian17;
    level._ID30895["generic"]["h2_airport_intro_civilian18"] = %h2_airport_intro_civilian18;
    level._ID30895["generic"]["h2_airport_intro_civilian19"] = %h2_airport_intro_civilian19;
    level._ID30895["generic"]["h2_airport_intro_civilian20"] = %h2_airport_intro_civilian20;
    level._ID30895["generic"]["h2_airport_intro_civilian21"] = %h2_airport_intro_civilian21;
    level._ID30895["generic"]["h2_airport_intro_civilian22"] = %h2_airport_intro_civilian22;
    level._ID30895["generic"]["h2_airport_intro_civilian23"] = %h2_airport_intro_civilian23;
    level._ID30895["generic"]["h2_airport_intro_civilian24"] = %h2_airport_intro_civilian24;
    level._ID30895["generic"]["h2_airport_intro_civilian25"] = %h2_airport_intro_civilian25;
    level._ID30895["generic"]["h2_airport_intro_civilian26"] = %h2_airport_intro_civilian26;
    level._ID30895["generic"]["h2_airport_intro_civilian27"] = %h2_airport_intro_civilian27;
    level._ID30895["generic"]["h2_airport_intro_civilian28"] = %h2_airport_intro_civilian28;
    level._ID30895["generic"]["h2_airport_intro_civilian29"] = %h2_airport_intro_civilian29;
    level._ID30895["generic"]["h2_airport_intro_civilian30"] = %h2_airport_intro_civilian30;
    level._ID30895["generic"]["h2_airport_intro_civilian31"] = %h2_airport_intro_civilian31;
    level._ID30895["generic"]["h2_airport_intro_policeman1"] = %h2_airport_intro_policeman1;
    _ID42259::_ID2057( "generic", "pistol_pickup", getweaponmodel( "beretta" ), "TAG_WEAPON_RIGHT", "h2_airport_intro_policeman1" );
    level._ID30895["generic"]["h2_airport_intro_policeman2"] = %h2_airport_intro_policeman2;
    _ID42259::_ID2057( "generic", "pistol_pickup", getweaponmodel( "beretta" ), "TAG_WEAPON_RIGHT", "h2_airport_intro_policeman2" );
    level._ID30895["generic"]["makarov_elevator_reload"] = %stand_2_melee_1;
    level._ID30895["generic"]["m4_elevator_reload"] = %exposed_reloadb;
    level._ID30895["generic"]["shotgun_elevator_reload"] = %exposed_pain_face;
    level._ID30895["generic"]["saw_elevator_reload"] = %exposed_reload;
    level._ID30895["generic"]["m4_elevator_idle"][0] = %corner_standl_alert_idle;
    level._ID30895["generic"]["shotgun_elevator_idle"][0] = %corner_standr_alert_idle;
    level._ID30895["generic"]["civilian_texting_standing"][0] = %civilian_texting_standing;
    level._ID30895["generic"]["civilian_atm"][0] = %civilian_atm;
    level._ID30895["generic"]["civilian_stand_idle"][0] = %civilian_stand_idle;
    level._ID30895["generic"]["unarmed_cowerstand_idle"][0] = %unarmed_cowerstand_idle;
    level._ID30895["generic"]["airport_civ_in_line_6_A_reaction"] = %airport_civ_in_line_6_a_reaction;
    level._ID30895["generic"]["airport_civ_in_line_6_B_reaction"] = %airport_civ_in_line_6_b_reaction;
    level._ID30895["generic"]["airport_civ_in_line_6_C_reaction"] = %airport_civ_in_line_6_c_reaction;
    level._ID30895["generic"]["airport_civ_in_line_9_A_reaction"] = %airport_civ_in_line_9_a_reaction;
    level._ID30895["generic"]["airport_civ_in_line_9_B_reaction"] = %airport_civ_in_line_9_b_reaction;
    level._ID30895["generic"]["airport_civ_in_line_9_C_reaction"] = %airport_civ_in_line_9_c_reaction;
    level._ID30895["generic"]["airport_civ_in_line_10_A_reaction"] = %airport_civ_in_line_10_a_reaction;
    level._ID30895["generic"]["airport_civ_in_line_10_B_reaction"] = %airport_civ_in_line_10_b_reaction;
    level._ID30895["generic"]["airport_civ_in_line_10_C_reaction"] = %airport_civ_in_line_10_c_reaction;
    level._ID30895["generic"]["airport_civ_in_line_12_A_reaction"] = %airport_civ_in_line_12_a_reaction;
    level._ID30895["generic"]["airport_civ_in_line_12_B_reaction"] = %airport_civ_in_line_12_b_reaction;
    level._ID30895["generic"]["airport_civ_in_line_12_C_reaction"] = %airport_civ_in_line_12_c_reaction;
    level._ID30895["generic"]["airport_civ_in_line_15_A_reaction"] = %airport_civ_in_line_15_a_reaction;
    level._ID30895["generic"]["airport_civ_in_line_15_B_reaction"] = %airport_civ_in_line_15_b_reaction;
    level._ID30895["generic"]["airport_civ_in_line_15_C_reaction"] = %airport_civ_in_line_15_c_reaction;
    level._ID30895["generic"]["airport_civ_in_line_13_A_reaction"] = %airport_civ_in_line_13_a_reaction;
    level._ID30895["generic"]["airport_civ_in_line_13_C_reaction"] = %airport_civ_in_line_13_c_reaction;
    level._ID30895["generic"]["exposed_crouch_death_flip"] = %exposed_crouch_death_flip;
    level._ID30895["generic"]["stairs_up"][0] = %traverse_stair_run_01;
    level._ID30895["generic"]["stairs_up"][1] = %run_react_stumble;
    level._ID30895["generic"]["stairs_up_weights"][0] = 3;
    level._ID30895["generic"]["stairs_up_weights"][1] = 1;
    level._ID30895["generic"]["riotshield_run"] = %riotshield_run_f;
    level._ID30895["generic"]["riotshield_sprint"] = %riotshield_sprint;
    level._ID30895["shotgun"]["casual_killer_jog_A"] = %casual_killer_jog_a_shotgun;
    level._ID30895["m4"]["casual_killer_jog_A"] = %casual_killer_jog_a;
    level._ID30895["makarov"]["casual_killer_jog_A"] = %casual_killer_jog_a_makarov;
    level._ID30895["saw"]["casual_killer_jog_A"] = %casual_killer_jog_a_m240;
    level._ID30895["generic"]["casual_killer_jog_B"] = %casual_killer_jog_b;
    level._ID30895["generic"]["casual_killer_jog"][0] = %casual_killer_jog_b;
    level._ID30895["generic"]["casual_killer_jog"][1] = %casual_killer_jog_a;
    level._ID30895["generic"]["casual_killer_walk_F"] = %casual_killer_walk_f;
    level._ID30895["generic"]["casual_killer_walk_R"] = %casual_killer_walk_r;
    level._ID30895["generic"]["casual_killer_walk_L"] = %casual_killer_walk_l;
    level._ID30895["generic"]["DRS_sprint"] = undefined;
    level._ID30895["generic"]["DRS_sprint"][0] = %casual_killer_jog_b;
    level._ID30895["generic"]["DRS_sprint"][1] = %casual_killer_jog_a;
    level._ID30895["generic"]["DRS_run"] = undefined;
    level._ID30895["generic"]["DRS_combat_jog"] = undefined;
    level._ID30895["generic"]["DRS_run_2_stop"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["DRS_stop_idle"][0] = %patrol_bored_idle;
    level._ID30895["generic"]["signal_go"] = undefined;
    level._ID30895["generic"]["airport_security_guard_2"] = %airport_security_guard_2;
    _ID42259::_ID2058( "generic", "bodyshot", ::_ID44952, "airport_security_guard_2" );
    level._ID30895["generic"]["airport_security_guard_3"] = %airport_security_guard_3;
    _ID42259::_ID2058( "generic", "headshot", ::_ID44952, "airport_security_guard_3" );
    level._ID30895["generic"]["airport_security_guard_4"] = %airport_security_guard_4;
    _ID42259::_ID2058( "generic", "headshot", ::_ID44952, "airport_security_guard_4" );
    level._ID30895["generic"]["corner_standR_death_grenade_explode"] = %corner_standr_death_grenade_explode;
    level._ID30895["generic"]["dying_crawl_death_v3"] = %dying_crawl_death_v3;
    level._ID30895["generic"]["run_death_facedown"] = %run_death_facedown;
    level._ID30895["generic"]["dying_back_death_v2"] = %dying_back_death_v2;
    level._ID30895["generic"]["coverstand_death_right"] = %coverstand_death_right;
    level._ID30895["generic"]["covercrouch_death_3"] = %covercrouch_death_3;
    level._ID30895["generic"]["civ_run_array"][0] = %civilian_run_hunched_a;
    level._ID30895["generic"]["civ_run_array"][1] = %civilian_run_hunched_c;
    level._ID30895["generic"]["civ_run_array"][2] = %civilian_run_hunched_flinch;
    level._ID30895["generic"]["civilian_run_hunched_flinch"] = %civilian_run_hunched_flinch;
    level._ID30895["generic"]["unarmed_cowercrouch_idle"][0] = %unarmed_cowercrouch_idle;
    level._ID30895["generic"]["unarmed_cowercrouch_idle_reach"] = %unarmed_cowercrouch_idle;
    level._ID30895["generic"]["unarmed_cowercrouch_idle_duck"][0] = %unarmed_cowercrouch_idle_duck;
    level._ID30895["generic"]["unarmed_cowercrouch_duck"] = %unarmed_cowercrouch_idle_duck;
    level._ID30895["generic"]["unarmed_cowercrouch_react_A"] = %unarmed_cowercrouch_react_a;
    level._ID30895["generic"]["unarmed_cowercrouch_react_B"] = %unarmed_cowercrouch_react_b;
    level._ID30895["generic"]["unarmed_cowerstand_pointidle"][0] = %unarmed_cowerstand_pointidle;
    level._ID30895["generic"]["h2_airport_civ_dying_groupa_kneel_idle"][0] = %h2_airport_civ_dying_groupa_kneel_idle;
    level._ID30895["generic"]["h2_airport_civ_pillar_exit_idle"][0] = %h2_airport_civ_pillar_exit_idle;
    level._ID30895["generic"]["h2_dcburning_bunker_stumble_idle"][0] = %h2_dcburning_bunker_stumble_idle;
    level._ID30895["generic"]["cliffhanger_capture_Price_idle"][0] = %cliffhanger_capture_price_idle;
    level._ID30895["generic"]["cliffhanger_capture_Price_idle_reach"] = %cliffhanger_capture_price_idle;
    level._ID30895["generic"]["exposed_squat_idle_grenade_F"][0] = %exposed_squat_idle_grenade_f;
    level._ID30895["generic"]["exposed_squat_idle_grenade_F_reach"] = %exposed_squat_idle_grenade_f;
    level._ID30895["generic"]["coup_civilians_interrogated_civilian_v1"][0] = %coup_civilians_interrogated_civilian_v1;
    level._ID30895["generic"]["coup_civilians_interrogated_civilian_v1_reach"] = %coup_civilians_interrogated_civilian_v1;
    level._ID30895["generic"]["coup_civilians_interrogated_civilian_v3"][0] = %coup_civilians_interrogated_civilian_v3;
    level._ID30895["generic"]["run_pain_fallonknee"] = %run_pain_fallonknee;
    level._ID30895["generic"]["breach_react_desk_v5"] = %breach_react_desk_v5;
    level._ID30895["generic"]["breach_react_desk_v6"] = %breach_react_desk_v6;
    level._ID30895["generic"]["crouch_2run_L"] = %crouch_2run_l;
    level._ID30895["generic"]["stand_2_run_L"] = %stand_2_run_l;
    level._ID30895["generic"]["stand_2_run_F_2"] = %stand_2_run_f_2;
    level._ID30895["generic"]["slide_across_car"] = %h2_airport_slide_across;
    level._ID30895["generic"]["slide_across_car_death"] = %h2_airport_slide_across_death;
    _ID42259::_ID2058( "generic", "traverse_death", ::_ID50938, "slide_across_car" );
    level._ID30895["generic"]["melee_f_awin_attack"] = %melee_f_awin_attack;
    level._ID30895["generic"]["melee_f_awin_defend"] = %melee_f_awin_defend;
    _ID42259::_ID2058( "generic", "sync", ::_ID43737, "melee_f_awin_defend" );
    _ID42259::_ID2058( "generic", "bodyfall large", ::_ID44647, "melee_f_awin_defend" );
    level._ID30895["generic"]["cliffhanger_Price_intro_idle"][0] = %cliffhanger_price_intro_idle;
    level._ID30895["generic"]["crawl_death_front"] = %crawl_death_front;
    level._ID30895["generic"]["run_react_180"] = %run_reaction_180;
    level._ID30895["generic"]["run_turn_180"] = %run_turn_180;
    level._ID30895["generic"]["airport_civ_fear_drop_5"] = %airport_civ_fear_drop_5;
    level._ID30895["generic"]["airport_civ_fear_drop_6"] = %airport_civ_fear_drop_6;
    level._ID30895["generic"]["run_stumble0"] = %run_pain_fallonknee;
    level._ID30895["generic"]["run_stumble1"] = %run_pain_fallonknee;
    level._ID30895["generic"]["run_stumble2"] = %run_pain_fallonknee;
    level._ID30895["generic"]["run_death0"] = %run_death_facedown;
    level._ID30895["generic"]["run_death1"] = %run_death_roll;
    level._ID30895["generic"]["run_death2"] = %airport_security_guard_3_reaction;
    level._ID30895["generic"]["run_death3"] = %airport_security_guard_4_reaction;
    level._ID30895["generic"]["unarmed_cowerstand_react"] = %unarmed_cowerstand_react;
    level._ID30895["generic"]["unarmed_cowerstand_react_2_crouch"] = %unarmed_cowerstand_react_2_crouch;
    level._ID30895["generic"]["airport_civ_cower_piller_idle"][0] = %airport_civ_cower_piller_idle;
    level._ID30895["generic"]["DC_Burning_bunker_stumble"] = %dc_burning_bunker_stumble;
    level._ID30895["generic"]["DC_Burning_bunker_sit_idle"][0] = %dc_burning_bunker_sit_idle;
    level._ID30895["generic"]["DC_Burning_bunker_react"] = %dc_burning_bunker_react;
    level._ID30895["generic"]["airport_civ_pillar_exit"] = %airport_civ_pillar_exit;
    level._ID30895["generic"]["airport_civ_pillar_exit_death"] = %airport_civ_pillar_exit_death;
    level._ID30895["generic"]["airport_civ_cellphone_hide"] = %airport_civ_cellphone_hide;
    level._ID30895["generic"]["airport_civ_cellphone_death"] = %airport_civ_cellphone_death;
    level._ID30895["generic"]["airport_civ_dying_groupA_kneel"] = %airport_civ_dying_groupa_kneel;
    level._ID30895["generic"]["airport_civ_dying_groupA_kneel_death"] = %airport_civ_dying_groupa_kneel_death;
    level._ID30895["generic"]["airport_civ_dying_groupA_lean"] = %airport_civ_dying_groupa_lean;
    level._ID30895["generic"]["airport_civ_dying_groupB_pull"] = %airport_civ_dying_groupb_pull;
    level._ID30895["generic"]["airport_civ_dying_groupB_pull_death"] = %airport_civ_dying_groupb_pull_death;
    level._ID30895["generic"]["airport_civ_dying_groupB_wounded"] = %airport_civ_dying_groupb_wounded;
    level._ID30895["generic"]["airport_civ_dying_groupB_wounded_death"] = %airport_civ_dying_groupb_wounded_death;
    level._ID30895["generic"]["dying_crawl_back"] = %bleedout_crawlb;
    level._ID30895["generic"]["bleedout_crawlB"] = %bleedout_crawlb;
    level._ID30895["generic"]["dying_back_death_v1"] = %dying_back_death_v1;
    level._ID30895["generic"]["civilian_leaning_death"] = %civilian_leaning_death;
    level._ID30895["generic"]["civilian_leaning_death_shot"] = %civilian_leaning_death_shot;
    level._ID30895["generic"]["civilian_crawl_1"] = %civilian_crawl_1;
    level._ID30895["generic"]["civilian_crawl_2"] = %civilian_crawl_2;
    level._ID30895["generic"]["dying_crawl"] = %dying_crawl;
    level._ID30895["crawl_death_1"]["crawl"] = %civilian_crawl_1;
    level._ID30895["crawl_death_1"]["death"][0] = %civilian_crawl_1_death_a;
    level._ID30895["crawl_death_1"]["death"][1] = %civilian_crawl_1_death_b;
    level._ID30895["crawl_death_1"]["blood_fx_rate"] = 0.5;
    level._ID30895["crawl_death_1"]["blood_fx"] = "blood_drip";
    level._ID30895["crawl_death_2"]["crawl"] = %civilian_crawl_2;
    level._ID30895["crawl_death_2"]["death"][0] = %civilian_crawl_2_death_a;
    level._ID30895["crawl_death_2"]["death"][1] = %civilian_crawl_2_death_b;
    level._ID30895["crawl_death_2"]["blood_fx_rate"] = 0.25;
    level._ID30895["generic"]["corner_standR_alert_idle"][0] = %corner_standr_alert_idle;
    level._ID30895["generic"]["corner_standR_trans_IN_2"] = %corner_standr_trans_in_2;
    level._ID30895["generic"]["corner_standR_trans_IN_1"] = %corner_standr_trans_in_1;
    level._ID30895["generic"]["walk_left"] = %walk_left;
    level._ID30895["generic"]["stand_2_run_L"] = %stand_2_run_l;
    level._ID30895["generic"]["run_2_stand_F_6"] = %run_2_stand_f_6;
    level._ID30895["generic"]["exposed_fast_grenade_F2"] = %exposed_fast_grenade_f2;
    _ID42259::_ID2057( "generic", "grenade_right", "projectile_m67fraggrenade", "TAG_INHAND", "exposed_fast_grenade_F2" );
    _ID42259::_ID2059( "generic", "fire", "projectile_m67fraggrenade", "TAG_INHAND", "exposed_fast_grenade_F2" );
    _ID42259::_ID2058( "generic", "fire", ::_ID47935, "exposed_fast_grenade_F2" );
    level._ID30895["generic"]["airport_security_guard_pillar_react_L"] = %airport_security_guard_pillar_react_l;
    _ID42259::_ID2058( "generic", "fire", ::_ID49054, "airport_security_guard_pillar_react_L" );
    level._ID30895["generic"]["airport_security_guard_pillar_death_L"] = %airport_security_guard_pillar_death_l;
    level._ID30895["generic"]["airport_security_guard_pillar_react_R"] = %airport_security_guard_pillar_react_r;
    _ID42259::_ID2058( "generic", "fire", ::_ID49054, "airport_security_guard_pillar_react_R" );
    level._ID30895["generic"]["airport_security_guard_pillar_death_R"] = %airport_security_guard_pillar_death_r;
    level._ID30895["generic"]["airport_security_civ_rush_guard"] = %airport_security_civ_rush_guard;
    _ID42259::_ID2058( "generic", "shout", ::_ID50812, "airport_security_civ_rush_guard" );
    level._ID30895["generic"]["airport_security_civ_rush_guard"] = %airport_security_civ_rush_guard;
    _ID42259::_ID2058( "generic", "fire", ::_ID43680, "airport_security_civ_rush_guard" );
    level._ID30895["generic"]["airport_security_civ_rush_civA"] = %airport_security_civ_rush_civa;
    level._ID30895["generic"]["airport_security_civ_rush_civB"] = %airport_security_civ_rush_civb;
    level._ID30895["generic"]["airport_security_civ_rush_civC"] = %airport_security_civ_rush_civc;
    level._ID30895["generic"]["corner_standL_rambo_jam"] = %corner_standl_rambo_jam;
    level._ID30895["generic"]["corner_standL_rambo_set"] = %corner_standl_rambo_set;
    level._ID30895["generic"]["death_shotgun_legs"] = %death_shotgun_legs;
    level._ID30895["generic"]["exposed_death_falltoknees"] = %exposed_death_falltoknees;
    level._ID30895["generic"]["exposed_death_falltoknees_02"] = %exposed_death_falltoknees_02;
    level._ID30895["generic"]["exposed_death_blowback"] = %exposed_death_blowback;
    level._ID30895["generic"]["covercrouch_blindfire_1"] = %covercrouch_blindfire_1;
    level._ID30895["generic"]["covercrouch_blindfire_2"] = %covercrouch_blindfire_2;
    level._ID30895["generic"]["covercrouch_hide_idle"][0] = %covercrouch_hide_idle;
    level._ID30895["generic"]["walk_backward"] = %walk_backward;
    level._ID30895["generic"]["exposed_backpedal"] = %exposed_backpedal;
    level._ID30895["generic"]["react_stand_2_run_180"] = %react_stand_2_run_180;
    level._ID30895["generic"]["exposed_crouch_2_stand"] = %exposed_crouch_2_stand;
    level._ID30895["generic"]["death_explosion_stand_L_v3"] = %death_explosion_stand_l_v3;
    level._ID30895["generic"]["death_explosion_stand_R_v1"] = %death_explosion_stand_r_v1;
    level._ID30895["generic"]["death_explosion_stand_B_v1"] = %death_explosion_stand_b_v1;
    level._ID30895["generic"]["death_explosion_stand_B_v2"] = %death_explosion_stand_b_v2;
    level._ID30895["generic"]["death_explosion_stand_B_v3"] = %death_explosion_stand_b_v3;
    level._ID30895["generic"]["death_explosion_stand_B_v4"] = %death_explosion_stand_b_v4;
    level._ID30895["generic"]["death_explosion_run_R_v1"] = %death_explosion_run_r_v1;
    level._ID30895["generic"]["death_explosion_run_R_v2"] = %death_explosion_run_r_v2;
    level._ID30895["generic"]["death_explosion_run_L_v1"] = %death_explosion_run_l_v1;
    level._ID30895["generic"]["death_explosion_run_L_v2"] = %death_explosion_run_l_v2;
    level._ID30895["generic"]["death_explosion_run_B_v1"] = %death_explosion_run_b_v1;
    level._ID30895["generic"]["death_explosion_run_B_v2"] = %death_explosion_run_b_v2;
    level._ID30895["generic"]["death_explosion_run_F_v1"] = %death_explosion_run_f_v1;
    level._ID30895["generic"]["death_explosion_run_F_v2"] = %death_explosion_run_f_v2;
    level._ID30895["generic"]["corner_standL_alert_idle_reach"] = %corner_standl_alert_idle;
    level._ID30895["generic"]["corner_standL_alert_idle"][0] = %corner_standl_alert_idle;
    level._ID30895["generic"]["corner_standR_alert_idle"][0] = %corner_standr_alert_idle;
    level._ID30895["generic"]["exposed_grenadeThrowB"] = %exposed_grenadethrowb;
    _ID42259::_ID2057( "generic", "grenade_right", "projectile_m67fraggrenade", "TAG_INHAND", "exposed_grenadeThrowB" );
    _ID42259::_ID2059( "generic", "grenade_throw", "projectile_m67fraggrenade", "TAG_INHAND", "exposed_grenadeThrowB" );
    _ID42259::_ID2058( "generic", "grenade_throw", ::_ID49642, "exposed_grenadeThrowB" );
    level._ID30895["generic"]["corner_standL_explosion_B"] = %corner_standl_explosion_b;
    level._ID30895["generic"]["corner_standR_trans_OUT_6"] = %corner_standr_trans_out_6;
    level._ID30895["generic"]["run_turn_R90"] = %run_turn_r90;
    level._ID30895["generic"]["CornerCrL_alert_idle"][0] = %cornercrl_alert_idle;
    level._ID30895["generic"]["CornerCrL_look_fast"] = %cornercrl_look_fast;
    level._ID30895["generic"]["CornerCrR_alert_idle"][0] = %cornercrr_alert_idle;
    level._ID30895["generic"]["CornerCrR_alert_first_frame"] = %cornercrr_alert_idle;
    level._ID30895["shotgun"]["walk_start_after_elevator_massacre"] = %h2_casual_killer_walk_start_28l;
    level._ID30895["generic"]["civilian_run_hunched_turnR90_slide"] = %civilian_run_hunched_turnr90_slide;
    level._ID30895["generic"]["airport_civilian_run_turnR_90"] = %airport_civilian_run_turnr_90;
    level._ID30895["generic"]["civilian_run_hunched_A"] = %civilian_run_hunched_a;
    level._ID30895["generic"]["civilian_run_hunched_C"] = %civilian_run_hunched_c;
    level._ID30895["makarov"]["going_down_stairs"] = %h2_airport_stairs_down_makarov;
    level._ID30895["saw"]["going_down_stairs"] = %h2_airport_stairs_down_lev;
    level._ID30895["shotgun"]["going_down_stairs"] = %h2_airport_stairs_down_kiril;
    level._ID30895["m4"]["going_down_stairs"] = %h2_airport_stairs_down_viktor;
    _ID42259::_ID2062( "makarov", "dialog", "going_down_stairs", "airport_mkv_letsgo2" );
    level._ID30895["generic"]["doorkick_basement"] = %doorkick_2_cqbwalk;
    _ID42259::_ID2058( "generic", "kick", ::_ID51201, "doorkick_basement" );
    level._ID30895["makarov"]["get_ready"] = %h2_airport_door_opening_makarov_in;
    level._ID30895["makarov"]["ready_idle"][0] = %h2_airport_door_opening_makarov_loop_short;
    level._ID30895["makarov"]["ready_idle"][1] = %h2_airport_door_opening_makarov_loop_long;
    level._ID30895["makarov"]["opening_door"] = %h2_airport_door_opening_makarov_out;
    level._ID30895["comrad"]["get_ready"] = %h2_airport_door_opening_viktor_in;
    level._ID30895["comrad"]["ready_idle"][0] = %h2_airport_door_opening_viktor_loop;
    level._ID30895["comrad"]["ready_idle"][1] = %h2_airport_door_opening_viktor_loop_breaker;
    level._ID30895["comrad"]["follow_makarov"] = %h2_airport_door_opening_viktor_out;
    level._ID30895["generic"]["doorkick_escape"] = %doorkick_2_cqbwalk;
    _ID42259::_ID2058( "generic", "kick", ::_ID48635, "doorkick_escape" );
    level._ID30895["generic"]["bog_a_start_briefing"] = %bog_a_start_briefing;
    level._ID30895["generic"]["bog_b_guard_react"] = %bog_b_guard_react;
    level._ID30895["makarov"]["makarov_first_breach"] = %h2_airport_first_breach_makarov;
    level._ID30895["saw"]["lev_first_breach"] = %h2_airport_first_breach_lev;
    level._ID30895["shotgun"]["kiril_first_breach"] = %h2_airport_first_breach_kiril;
    level._ID30895["m4"]["viktor_first_breach"] = %h2_airport_first_breach_viktor;
    level._ID30895["makarov"]["first_breach_arrival"] = %h2_airport_first_breach_makarov_arrival;
    level._ID30895["saw"]["first_breach_arrival"] = %h2_airport_first_breach_lev_arrival;
    level._ID30895["shotgun"]["first_breach_arrival"] = %h2_airport_first_breach_kiril_arrival;
    level._ID30895["m4"]["first_breach_arrival"] = %h2_airport_first_breach_viktor_arrival;
    level._ID30895["makarov"]["first_breach_loop"] = [ %h2_airport_first_breach_makarov_loop ];
    level._ID30895["saw"]["first_breach_loop"] = [ %h2_airport_first_breach_lev_loop ];
    level._ID30895["shotgun"]["first_breach_loop"] = [ %h2_airport_first_breach_kiril_loop ];
    level._ID30895["m4"]["first_breach_loop"] = [ %h2_airport_first_breach_viktor_loop ];
    level._ID30895["makarov"]["first_breach_idle"] = %h2_airport_first_breach_makarov_idle;
    level._ID30895["saw"]["first_breach_idle"] = %h2_airport_first_breach_lev_idle;
    level._ID30895["shotgun"]["first_breach_idle"] = %h2_airport_first_breach_kiril_idle;
    level._ID30895["m4"]["first_breach_idle"] = %h2_airport_first_breach_viktor_idle;
    _ID42259::_ID2062( "makarov", "dialog", "first_breach_idle", "airport_mkv_ontime" );
    _ID42259::_ID2062( "makarov", "dialog2", "first_breach_idle", "airport_mkv_checkammo" );
    _ID42259::_ID2062( "m4", "dialog", "first_breach_idle", "airport_vkt_beenwaiting2" );
    _ID42259::_ID2062( "makarov", "dialog3", "first_breach_idle", "airport_mkv_haventweall" );
    level._ID30895["generic"]["pistol_sprint"] = %pistol_sprint;
    level._ID30895["generic"]["pistol_walk_left"] = %pistol_walk_left;
    level._ID30895["generic"]["pistol_walk_right"] = %pistol_walk_right;
    level._ID30895["generic"]["pistol_walk"] = %pistol_walk;
    level._ID30895["generic"]["pistol_walk_back"] = %pistol_walk_back;
    level._ID30895["generic"]["sprint_loop_distant"] = %sprint_loop_distant;
    level._ID30895["generic"]["coverstand_grenadeA"] = %coverstand_grenadea;
    _ID42259::_ID2058( "generic", "grenade_throw", ::_ID45612, "coverstand_grenadeA" );
    level._ID30895["generic"]["coverstand_grenadeB"] = %coverstand_grenadeb;
    _ID42259::_ID2058( "generic", "grenade_throw", ::_ID45612, "coverstand_grenadeB" );
    level._ID30895["generic"]["pistol_stand_pullout"] = %pistol_stand_pullout;
    level._ID30895["generic"]["pistol_stand_aim_5"][0] = %pistol_stand_aim_5;
    level._ID30895["generic"]["pistol_crouchaimstraight2stand"] = %pistol_crouchaimstraight2stand;
    level._ID30895["generic"]["riotshield_idle"][0] = %riotshield_idle;
    level._ID30895["generic"]["traverse_jumpdown_40"] = %traverse_jumpdown_40;
    level._ID30895["generic"]["bm21_driver_idle"][0] = %bm21_driver_idle;
    level._ID30895["generic"]["bm21_driver_climbout"] = %bm21_driver_climbout;
    level._ID30895["generic"]["exposed_crouch_2_stand"] = %exposed_crouch_2_stand;
    level._ID30895["generic"]["casual_stand_idle_trans_in"] = %casual_stand_idle_trans_in;
    level._ID30895["generic"]["casual_stand_idle"][0] = %casual_stand_idle;
    level._ID30895["generic"]["casual_stand_idle"][1] = %casual_stand_idle_twitch;
    level._ID30895["generic"]["casual_stand_idle"][2] = %casual_stand_idle_twitchb;
    level._ID30895["generic"]["traverse_stepup_52"] = %traverse_stepup_52;
    level._ID30895["generic"]["patrol_bored_walk_2_bored"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["patrol_bored_2_walk"] = %patrol_bored_2_walk;
    level._ID30895["generic"]["patrol_bored_idle"][0] = %patrol_bored_idle;
    level._ID30895["generic"]["patrol_bored_patrolwalk"] = %patrol_bored_patrolwalk;
    level._ID30895["van_mate"]["end_open_door"] = %h2_airport_ending_opendoors_quick_anatoly;
    _ID42259::_ID2062( "van_mate", "dialog", "end_open_door", "airport_vt_madeit" );
    _ID42259::_ID2062( "van_mate", "dialog", "end_open_door", "airport_vt_beenough" );
    _ID42259::_ID2063( "van_mate", "start_soldiers", "start_ending_sequence", "end_open_door" );
    level._ID30895["comrad"]["end_get_in"] = %h2_airport_ending_climb_viktor;
    level._ID30895["makarov"]["end_get_in"] = %h2_airport_ending_climb_quick_makarov;
    _ID42259::_ID2069( "makarov", "player_ready", "end_get_in", "scn_airport_weapon_toss" );
    _ID42259::_ID2063( "makarov", "player_ready", "end_player_ready", "end_get_in" );
    _ID42259::_ID2063( "makarov", "start_player", "end_makarov_in_place", "end_get_in" );
    _ID42259::_ID2062( "makarov", "dialog", "end_get_in", "airport_mkv_nomessage" );
    _ID42259::_ID2062( "makarov", "dialog", "end_get_in", "airport_mkv_thiswill" );
    _ID42259::_ID2062( "makarov", "dialog", "end_get_in", "airport_mkv_allofrussia" );
    _ID42259::_ID2057( "makarov", "pistol_pickup", getweaponmodel( "beretta" ), "TAG_INHAND", "end_get_in" );
    _ID42259::_ID2058( "makarov", "gun_2_chest", ::_ID51644, "end_get_in" );
    _ID42259::_ID2058( "makarov", "fire", ::_ID53084, "end_get_in" );
    _ID42259::_ID2058( "makarov", "fire", maps\airport::_ID46863, "end_get_in" );
    _ID42259::_ID2058( "makarov", "fire", ::_ID44021, "end_get_in" );
    _ID42259::_ID2063( "makarov", "close_door", "ambulance_close_door", "end_get_in" );
    _ID42259::_ID2063( "makarov", "ambulance_leave", "ambulance_ready_to_leave", "end_get_in" );
    level._ID30895["makarov"]["end_get_in_idle_in"] = %h2_airport_ending_climb_idle_in_makarov;
    level._ID30895["makarov"]["end_get_in_idle"][0] = %h2_airport_ending_idle_makarov;
    level._ID30895["comrad"]["end_get_in_idle"][0] = %h2_airport_ending_climb_idle_viktor;
    level._ID30895["van_mate"]["end_get_in_idle_in"] = %h2_airport_ending_idle_in_anatoly;
    level._ID30895["van_mate"]["end_get_in_idle"][0] = %h2_airport_ending_idle_anatoly;
    level._ID30895["van_mate"]["end_player_shot"] = %h2_airport_ending_shoot_anatoly;
    level._ID30895["makarov"]["end_player_shot"] = %h2_airport_ending_shoot_makarov;
    _ID42259::_ID2062( "makarov", "dialog", "end_player_shot", "airport_mkv_nomessage" );
    _ID42259::_ID2062( "makarov", "dialog", "end_player_shot", "airport_mkv_thiswill" );
    _ID42259::_ID2062( "makarov", "dialog", "end_player_shot", "airport_mkv_allofrussia" );
    _ID42259::_ID2057( "makarov", "pistol_pickup", getweaponmodel( "beretta" ), "TAG_INHAND", "end_player_shot" );
    _ID42259::_ID2058( "makarov", "gun_2_chest", ::_ID51644, "end_player_shot" );
    _ID42259::_ID2058( "makarov", "fire", ::_ID53084, "end_player_shot" );
    _ID42259::_ID2058( "makarov", "fire", maps\airport::_ID46863, "end_player_shot" );
    _ID42259::_ID2058( "makarov", "fire", ::_ID44021, "end_player_shot" );
    _ID42259::_ID2063( "makarov", "close_door", "ambulance_close_door", "end_player_shot" );
    _ID42259::_ID2063( "makarov", "ambulance_leave", "ambulance_ready_to_leave", "end_player_shot" );
    level._ID30895["generic"]["arriving_cops_1"] = %h2_airport_ending_fbs1;
    level._ID30895["generic"]["arriving_cops_2"] = %h2_airport_ending_fbs2;
    level._ID30895["generic"]["arriving_cops_3"] = %h2_airport_ending_fbs3;
    level._ID30895["generic"]["patrol_jog_orders_once"] = %patrol_jog_orders_once;
    level._ID30895["generic"]["patrol_boredjog_find"] = %patrol_boredjog_find;
    level._ID30895["generic"]["patrol_boredrun_find"] = %patrol_boredrun_find;
    level._ID30895["generic"]["patrol_jog_look_up_once"] = %patrol_jog_look_up_once;
    level._ID30895["generic"]["patrol_jog_360_once"] = %patrol_jog_360_once;
    level._ID30895["generic"]["patrol_jog"] = %patrol_jog;
    level._ID30895["generic"]["afgan_chase_ending_search_spin"] = %afgan_chase_ending_search_spin;
    level._ID30895["generic"]["pistol_stand_pullout"] = %pistol_stand_pullout;
    level._ID30895["generic"]["pistol_stand_switch"] = %pistol_stand_switch;
    level._ID30895["generic"]["civ_stand_2_run_l"] = %h2_airport_stand_2_run_l;
    level._ID30895["generic"]["civ_fallon_knee"] = %h2_airport_run_pain_fallonknee;
    level._ID30895["generic"]["yuri_elevator_ee"] = %h2_airport_elevator_yuri_stumble;
    level._ID30895["makarov"]["climb_stairs"] = %h2_airport_climb_stairs_makarov;
    _ID42259::_ID2062( "makarov", "dialog", "climb_stairs", "airport_mkv_upstairs" );
    level._ID30895["m4"]["climb_stairs"] = %h2_airport_climb_stairs_viktor;
    level._ID30895["saw"]["climb_stairs"] = %h2_airport_climb_stairs_lev;
    level._ID30895["shotgun"]["climb_stairs"] = %h2_airport_climb_stairs_kiril;
    level._ID30895["m4"]["recoil"] = %heat_stand_fire_auto;
}
#using_animtree("player");

player()
{
    level._ID30895["player_ending"]["end_player_shot"] = %h2_airport_ending_player;
    _ID42259::_ID2063( "player_ending", "start_fbs", "cops_arrive", "end_player_shot" );
    level._ID30900["player_ending"] = #animtree;
    level._ID30904["player_ending"] = "h2_viewbody_airport";
}
#using_animtree("animated_props");

_ID49919()
{
    level._ID30895["ending_weap"]["end_get_in"] = %h2_airport_ending_climbin_makarov_weapon;
    level._ID30895["ending_weap"]["end_get_in_idle"][0] = %h2_airport_ending_climbin_makarov_weapon_idle;
    level._ID30895["player_weapon"]["end_player_shot"] = %h2_airport_ending_player_weapon;
    level._ID30900["player_weapon"] = #animtree;
    level._ID30900["ending_weap"] = #animtree;
    level._ID30904["ending_weap"] = "weapon_m4";
    level._ID30900["sign"] = #animtree;
    level._ID30895["sign"]["security_sign_anim_01"] = %h2_airport_sign_security_hit_01;
    level._ID30895["sign"]["security_sign_anim_02"] = %h2_airport_sign_security_hit_02;
    level._ID30900["luggage"] = #animtree;
    level._ID30895["luggage"]["h2_airport_xray_hugebag"] = %h2_airport_xray_hugebag;
    level._ID30895["luggage"]["h2_airport_xray_dufflebag"] = %h2_airport_xray_dufflebag;
    level._ID30895["luggage"]["h2_airport_xray_luggage"] = %h2_airport_xray_luggage;
    level._ID30895["luggage"]["h2_airport_xray_schoolbag"] = %h2_airport_xray_schoolbag;
    level._ID30895["luggage"]["h2_airport_xray_flaps"] = %h2_airport_xray_flaps;
}
#using_animtree("generic_human");

_ID53822()
{
    level._ID30909["makarov"]["airport_mkv_snamibog"] = "airport_mkv_snamibog";
    level._ID30909["makarov"]["airport_mkv_noruss"] = "airport_mkv_noruss";
    level._ID30908["airport_mkv_30secs"] = "airport_mkv_30secs";
    level._ID30908["airport_mkv_go"] = "airport_mkv_go";
    level._ID30908["airport_mkv_upstairs"] = "airport_mkv_upstairs";
    level._ID30908["airport_mkv_clearedeng"] = "airport_mkv_clearedeng";
    level._ID30908["airport_mkv_nosurvivors"] = "airport_mkv_nosurvivors";
    level._ID30908["airport_mkv_noexceptions"] = "airport_mkv_noexceptions";
    level._ID30908["airport_mkv_letsmoveup"] = "airport_mkv_letsmoveup";
    level._ID30908["airport_mkv_letsgo2"] = "airport_mkv_letsgo2";
    level._ID30908["airport_mkv_keepmoving"] = "airport_mkv_keepmoving";
    level._ID30908["airport_mkv_thesesheep"] = "airport_mkv_thesesheep";
    level._ID30908["airport_mkv_doubtyou"] = "airport_mkv_doubtyou";
    level._ID30908["airport_mkv_openfire"] = "airport_mkv_openfire";
    level._ID30908["airport_mkv_nice"] = "airport_mkv_nice";
    level._ID30908["airport_mkv_welldone"] = "airport_mkv_welldone";
    level._ID30908["airport_mkv_youtraitor"] = "airport_mkv_youtraitor";
    level._ID30908["airport_mkv_cowards"] = "airport_mkv_cowards";
    level._ID30908["airport_mkv_checkfire"] = "airport_mkv_checkfire";
    level._ID30909["male_civ_1"]["stairs_line"] = "airport_rmc2_getdown";
    level._ID30909["male_civ_2"]["stairs_line"] = "airport_rmc2_theyhaveguns";
    level._ID30909["male_civ_3"]["stairs_line"] = "airport_rmc1_takeyoursister";
    level._ID30909["male_civ_4"]["stairs_line"] = "airport_rmc2_dontwait";
    level._ID30909["male_civ_5"]["stairs_line"] = "airport_rmc1_runaway";
    level._ID30909["male_civ_6"]["stairs_line"] = "airport_rmc2_getoutofhere";
    level._ID30909["female_civ_1"]["stairs_line"] = "airport_rfc1_hurryup";
    level._ID30909["female_civ_2"]["stairs_line"] = "airport_rfc2_takethestairs";
    level._ID30909["male_civ_1"]["scream1"] = "airport_rmc1_scream1";
    level._ID30909["male_civ_1"]["scream2"] = "airport_rmc1_scream2";
    level._ID30909["male_civ_1"]["scream3"] = "airport_rmc1_scream3";
    level._ID30909["male_civ_1"]["scream4"] = "airport_rmc1_scream4";
    level._ID30909["male_civ_2"]["scream1"] = "airport_rmc2_scream1";
    level._ID30909["male_civ_2"]["scream2"] = "airport_rmc2_scream2";
    level._ID30909["male_civ_2"]["scream3"] = "airport_rmc2_scream3";
    level._ID30909["male_civ_2"]["scream4"] = "airport_rmc2_scream4";
    level._ID30909["female_civ_1"]["scream1"] = "airport_rfc1_scream1";
    level._ID30909["female_civ_1"]["scream2"] = "airport_rfc1_scream2";
    level._ID30909["female_civ_1"]["scream3"] = "airport_rfc1_scream3";
    level._ID30909["female_civ_1"]["scream4"] = "airport_rfc1_scream4";
    level._ID30909["female_civ_2"]["scream1"] = "airport_rfc2_scream1";
    level._ID30909["female_civ_2"]["scream2"] = "airport_rfc2_scream2";
    level._ID30909["female_civ_2"]["scream3"] = "airport_rfc2_scream3";
    level._ID30909["female_civ_2"]["scream4"] = "airport_rfc2_scream4";
    level._ID30909["generic"]["airport_rmc2_myleg"] = "airport_rmc2_myleg";
    level._ID30909["generic"]["airport_rmc2_scream2"] = "airport_rmc2_scream2";
    level._ID30909["generic"]["airport_rmc1_mykatia"] = "airport_rmc1_mykatia";
    level._ID30909["generic"]["airport_rmc1_runaway"] = "airport_rmc1_runaway";
    level._ID30909["generic"]["airport_rmc1_scream2"] = "airport_rmc1_scream2";
    level._ID30909["generic"]["airport_rmc2_scream3"] = "airport_rmc2_scream3";
    level._ID30909["makarov"]["airport_mkv_takebookstore"] = "airport_mkv_takebookstore";
    level._ID30909["generic"]["airport_rac_freeze"] = "airport_rac_freeze";
    level._ID30909["generic"]["airport_rac_movemove"] = "airport_rac_movemove";
    level._ID30909["generic"]["airport_rac_handsup"] = "airport_rac_handsup";
    level._ID30908["airport_mkv_careofit"] = "airport_mkv_careofit";
    level._ID30908["airport_mkv_elevators"] = "airport_mkv_elevators";
    level._ID30908["airport_mkv_fireinhole"] = "airport_mkv_fireinhole";
    level._ID30908["airport_mkv_runner"] = "airport_mkv_runner";
    level._ID30908["airport_mkv_fragout"] = "airport_mkv_fragout";
    level._ID30908["airport_at1_security"] = "airport_at1_security";
    level._ID30908["airport_at1_fragout"] = "airport_at1_fragout";
    level._ID30909["makarov"]["airport_mkv_forzakhaev"] = "airport_mkv_forzakhaev";
    level._ID30909["makarov"]["airport_mkv_ontime"] = "airport_mkv_ontime";
    level._ID30909["makarov"]["airport_mkv_rightontime"] = "airport_mkv_rightontime";
    level._ID30909["makarov"]["airport_mkv_checkammo"] = "airport_mkv_checkammo";
    level._ID30909["m4"]["airport_vkt_beenwaiting"] = "airport_vkt_beenwaiting";
    level._ID30909["m4"]["airport_vkt_beenwaiting2"] = "airport_vkt_beenwaiting2";
    level._ID30909["makarov"]["airport_mkv_haventweall"] = "airport_mkv_haventweall";
    level._ID30909["makarov"]["airport_mkv_haventweall2"] = "airport_mkv_haventweall2";
    level._ID30909["makarov"]["airport_mkv_gogogo"] = "airport_mkv_gogogo";
    level._ID30908["airport_mkv_2ndfloor"] = "airport_mkv_2ndfloor";
    level._ID30908["airport_at1_isee"] = "airport_at1_isee";
    level._ID30908["airport_mkv_fsb"] = "airport_mkv_fsb";
    level._ID30908["airport_at1_gotmorefsb"] = "airport_at1_gotmorefsb";
    level._ID30908["airport_mkv_takecare"] = "airport_mkv_takecare";
    level._ID30908["airport_at1_roger"] = "airport_at1_roger";
    level._ID30909["generic"]["airport_fsb1_fsbfsb"] = "airport_fsb1_fsbfsb";
    level._ID30909["generic"]["airport_fsb1_moveingo"] = "airport_fsb1_moveingo";
    level._ID30909["generic"]["airport_fsb2_fsb"] = "airport_fsb2_fsb";
    level._ID30909["generic"]["airport_fsb2_aimforhead"] = "airport_fsb2_aimforhead";
    level._ID30909["generic"]["airport_fsb2_fsbfsb"] = "airport_fsb2_fsbfsb";
    level._ID30909["generic"]["airport_fsb3_openfire"] = "airport_fsb3_openfire";
    level._ID30909["generic"]["airport_fsb3_aimforheads"] = "airport_fsb3_aimforheads";
    level._ID30909["generic"]["airport_fsbr_sendingtruck"] = "airport_fsbr_sendingtruck";
    level._ID30909["generic"]["airport_fsbr_servicetunnels"] = "airport_fsbr_servicetunnels";
    level._ID30909["m4"]["man_down"] = "airport_vkt_mandown";
    level._ID30909["comrad"]["man_down"] = "airport_vkt_mandown";
    level._ID30909["makarov"]["man_down"] = "airport_mkv_hesdead";
    level._ID30909["makarov"]["check_fire1"] = "airport_mkv_checkyourfire";
    level._ID30909["makarov"]["check_fire2"] = "airport_mkv_watchyourfire";
    level._ID30909["m4"]["check_fire1"] = "airport_vkt_checkfire";
    level._ID30909["m4"]["check_fire2"] = "airport_vkt_watchfire";
    level._ID30909["makarov"]["grenade1"] = "airport_mkv_grenade";
    level._ID30909["m4"]["grenade1"] = "airport_vkt_grenade";
    level._ID30909["makarov"]["grenade2"] = "airport_mkv_incoming";
    level._ID30909["m4"]["grenade2"] = "airport_vkt_lookout";
    level._ID30909["makarov"]["engine_warn"] = "airport_mkv_clearofjetengine";
    level._ID30909["m4"]["engine_warn"] = "airport_vkt_gonnablow";
    level._ID30909["m4"]["ready1"] = "airport_vkt_ready";
    level._ID30909["m4"]["ready2"] = "airport_vkt_ready2";
    level._ID30909["makarov"]["ready1"] = "airport_mkv_ready1";
    level._ID30909["makarov"]["ready2"] = "airport_mkv_ready2";
    level._ID30909["m4"]["go1"] = "airport_vkt_go";
    level._ID30909["m4"]["go2"] = "airport_vkt_move";
    level._ID30909["m4"]["go3"] = "airport_vkt_gogogo";
    level._ID30909["makarov"]["go1"] = "airport_mkv_gogo";
    level._ID30909["makarov"]["go2"] = "airport_mkv_go1";
    level._ID30909["makarov"]["go3"] = "airport_mkv_move";
    level._ID30909["makarov"]["go4"] = "airport_mkv_go2";
    level._ID30909["m4"]["moving1"] = "airport_vkt_moving";
    level._ID30909["m4"]["moving2"] = "airport_vkt_movingcover";
    level._ID30909["m4"]["moving3"] = "airport_vkt_movingup";
    level._ID30909["makarov"]["moving1"] = "airport_mkv_moving1";
    level._ID30909["makarov"]["moving2"] = "airport_mkv_moving2";
    level._ID30909["makarov"]["moving3"] = "airport_mkv_cominthru";
    level._ID30909["makarov"]["enemy_luggage"] = "airport_mkv_luggagecart";
    level._ID30909["m4"]["enemy_luggage"] = "airport_vkt_luggagecart";
    level._ID30909["makarov"]["enemy_landinggear"] = "airport_mkv_landinggear";
    level._ID30909["m4"]["enemy_landinggear"] = "airport_vkt_landinggear";
    level._ID30909["makarov"]["enemy_underplane"] = "airport_mkv_underplane";
    level._ID30909["m4"]["enemy_bus"] = "airport_vkt_behindbus";
    level._ID30909["makarov"]["contact_2nd_floor"] = "airport_mkv_2ndflrwndws";
    level._ID30909["m4"]["contact_2nd_floor"] = "airport_vkt_copy2ndflr";
    level._ID30909["makarov"]["van_left"] = "airport_mkv_fsbvan";
    level._ID30909["makarov"]["airport_mkv_behindus"] = "airport_mkv_behindus";
    level._ID30908["airport_at1_scream"] = "airport_at1_scream";
    level._ID30908["airport_mkv_thisway"] = "airport_mkv_thisway";
    level._ID30908["airport_mkv_hallway"] = "airport_mkv_hallway";
    level._ID30909["makarov"]["airport_mkv_hallway"] = "airport_mkv_hallway";
    level._ID30908["airport_mkv_holdfire"] = "airport_mkv_holdfire";
    level._ID30909["makarov"]["airport_mkv_holdfire"] = "airport_mkv_holdfire";
    level._ID30901["makarov"]["airport_mkv_holdfire"] = %airport_mkv_holdfire;
    level._ID30895["makarov"]["stand_exposed_wave_halt_v2"] = %stand_exposed_wave_halt_v2;
    level._ID30909["van_mate"]["airport_vt_madeit"] = "airport_vt_madeit";
    level._ID30909["van_mate"]["airport_vt_comeon"] = "airport_vt_comeon";
    level._ID30909["van_mate"]["airport_vt_waitingfor"] = "airport_vt_waitingfor";
    level._ID30909["van_mate"]["airport_vt_beenough"] = "airport_vt_beenough";
    level._ID30909["makarov"]["airport_mkv_nomessage"] = "airport_mkv_nomessage";
    level._ID30909["makarov"]["airport_mkv_thiswill"] = "airport_mkv_thiswill";
    level._ID30908["airport_mkv_allofrussia"] = "airport_mkv_allofrussia";
}

_ID49250( var_0 )
{
    self endon( "death" );
    self endon( "done_shoot_player" );
    self setanimlimited( %h2_airport_ending_aim4_makarov, 1, 0 );
    self setanimlimited( %h2_airport_ending_aim6_makarov, 1, 0 );

    for (;;)
    {
        var_1 = vectortoangles( level.player.origin - self.origin )[1];
        var_1 = angleclamp180( self.angles[1] - var_1 );
        var_1 = clamp( var_1, -60, 60 );
        var_2 = 0;
        var_3 = 0;

        if ( var_1 < 0 )
            var_2 = var_1 / -60;
        else if ( var_1 > 0 )
            var_3 = var_1 / 60;

        self setanimlimited( %airport_ending_aim_left, var_2, 0.2 );
        self setanimlimited( %airport_ending_aim_right, var_3, 0.2 );
        wait 0.05;
    }
}

_ID53084( var_0 )
{
    var_0.ignoreme = 1;
    var_0.ignoreall = 1;
    wait 1;
    var_0.team = "axis";
}

_ID44021( var_0 )
{
    thread _ID42237::_ID27077( "weap_makarov_fire_npc", var_0 gettagorigin( "TAG_FLASH" ) );
}

_ID51644( var_0 )
{
    var_1 = _ID42407::_ID35028( "ending_weap" );
    var_2 = level._ID49338;
    var_2 thread _ID42259::_ID3111( var_1, "end_get_in" );
    var_1 _ID42407::_ID1985( _ID42407::_ID1689, "single anim", "end" );
    var_2 _ID42407::_ID1890( _ID42259::_ID3044, var_1, "end_get_in_idle", "stop_loop" );
    thread _ID42407::_ID11231();
    waitframe;
    var_0 _ID42407::_ID17509();
    wait 0.25;
    var_0 playsound( "scn_airport_weapon_catch" );
    _ID42237::_ID14413( "ambulance_ready_to_leave" );
    var_2 notify( "stop_loop" );
    var_1 delete();
}

_ID47044( var_0 )
{
    var_0 setlookatentity( level.player );
}

_ID48218( var_0 )
{
    var_0 setlookatentity();
}

_ID51201( var_0 )
{
    var_1 = getent( "basement_door", "targetname" );
    var_2 = getent( "basement_door_model", "targetname" );
    var_2 linkto( var_1 );
    var_1 connectpaths();
    var_1 playsound( "scn_airport_metal_door_kick" );
    var_1 rotateyaw( 95, 0.25, 0, 0.25 );
    var_1 waittill( "rotatedone" );
    var_1 rotateyaw( -5, 2, 0, 2 );
}

_ID48635( var_0 )
{
    var_1 = getent( "escape_door", "targetname" );
    var_2 = getent( "escape_door_model", "targetname" );
    var_2 linkto( var_1 );
    var_1 connectpaths();
    var_1 playsound( "scn_airport_metal_door_kick" );
    var_1 rotateyaw( -95, 0.25, 0, 0.25 );
    var_1 waittill( "rotatedone" );
    var_1 rotateyaw( 20, 2, 0, 2 );
}

_ID50812( var_0 )
{
    var_0 thread _ID42407::_ID27081( "airport_rac_movemove" );
}

_ID43680( var_0 )
{
    _ID42237::_ID14402( "massacre_kill_rush" );
}

_ID49054( var_0 )
{
    var_0.ignoreme = 0;
    var_0 notify( "shoot_me" );
}

_ID49642( var_0 )
{
    var_0.grenadeammo++;
    var_1 = anglestoforward( var_0.angles );
    var_2 = anglestoright( var_0.angles );
    var_2 *= -0.25;
    var_3 = var_0.origin + var_1 * 50;
    var_3 = var_3 + ( 0, 0, 14 ) + var_2;
    var_1 = vectornormalize( var_3 - var_0.origin );
    var_1 *= 800;
    var_4 = 2.5;
    var_0 magicgrenademanual( var_0 gettagorigin( "TAG_INHAND" ), var_1, var_4 );
    _ID42407::_ID10226( var_4 - 0.05, _ID42237::_ID14402, "massacre_elevator_grenade_exp" );
    wait 0.75;
    _ID42237::_ID14402( "massacre_elevator_grenade_throw" );
}

_ID47935( var_0 )
{
    var_0.grenadeammo++;
    var_1 = anglestoforward( var_0.angles );
    var_2 = anglestoright( var_0.angles );
    var_2 *= 4;
    var_3 = var_0.origin + var_1 * 50;
    var_3 = var_3 + ( 0, 0, 6 ) + var_2;
    var_1 = vectornormalize( var_3 - var_0.origin );
    var_1 *= 1300;
    _ID42237::_ID14402( "massacre_nadethrow" );
    var_0 magicgrenademanual( var_0 gettagorigin( "j_wrist_ri" ), var_1, level._ID51803 );
}

_ID45612( var_0 )
{
    var_1 = var_0.grenadeweapon;
    var_0.grenadeweapon = "flash_grenade";
    var_0.grenadeammo++;
    var_2 = anglestoforward( var_0.angles );
    var_3 = var_0.origin + var_2 * 50;
    var_3 += ( 0, 0, 5 );
    var_4 = var_3 + ( 0, 0, 30 );
    var_2 = vectornormalize( var_3 - var_0.origin );
    var_2 *= 512;
    var_0 magicgrenademanual( var_0 gettagorigin( "TAG_INHAND" ), var_2, 1.5 );
    var_0.grenadeweapon = var_1;
    wait 0.1;
    radiusdamage( var_4, 64, 5000, 5000 );
}

_ID43737( var_0 )
{
    var_0._ID7._ID24881 = 1;
    var_0.allowdeath = 0;
    var_0._ID48281 = 1;
}

_ID44647( var_0 )
{
    wait 1;
    var_0._ID7._ID24881 = 1;
    var_0.allowdeath = 1;
    var_0._ID48281 = 1;
}

_ID48783( var_0 )
{
    var_0._ID7._ID24881 = 0;
    var_0.allowdeath = 1;
}

_ID44952( var_0 )
{
    var_0.allowdeath = 1;
    var_0 kill();
}

_ID50938( var_0 )
{
    var_0.allowdeath = 0;
    var_0._ID7._ID24881 = 1;
    var_1 = var_0 gettagorigin( "J_SpineUpper" );
    var_2 = _ID42237::_ID16182( var_0.origin, level.team );
    var_3 = vectornormalize( var_2.origin - var_1 );
    var_4 = var_3 * 10;

    if ( getdvarint( "cg_blood" ) == 1 )
        playfx( _ID42237::_ID16299( "killshot" ), var_1 + var_4, var_3 );

    var_0 thread _ID42259::_ID3020( var_0, "slide_across_car_death" );
    wait 1;
    var_0.allowdeath = 1;
    var_0 kill();
}

_ID49809( var_0 )
{
    var_1 = var_0.grenadeweapon;
    var_0.grenadeweapon = "smoke_grenade_american";
    var_0.grenadeammo++;
    var_2 = var_0._ID45402 - var_0.origin + ( 0, 0, 500 );
    var_3 = 6;
    var_0 magicgrenademanual( var_0 gettagorigin( "TAG_INHAND" ), var_2, var_3 );
    var_0.grenadeweapon = var_1;
    wait 0.5;
    var_0 stopanimscripted();
    var_0 notify( "grenade_throw_done" );
}

_ID51465()
{
    var_0 = [];
    var_0["intro_lobby_anim_group_1"][0]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_1"][0]["anime"] = "h2_airport_intro_civilian8";
    var_0["intro_lobby_anim_group_1"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_1"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_1"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_1"][0]["body"] = "body_urban_civ_male_aa_a";
    var_0["intro_lobby_anim_group_1"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_1"][1]["anime"] = "h2_airport_intro_civilian9";
    var_0["intro_lobby_anim_group_1"][1]["delay"] = 0;
    var_0["intro_lobby_anim_group_1"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_1"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_1"][1]["body"] = "body_urban_civ_male_ac_b";
    var_0["intro_lobby_anim_group_1"][2]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_1"][2]["anime"] = "h2_airport_intro_civilian10";
    var_0["intro_lobby_anim_group_1"][2]["delay"] = 0;
    var_0["intro_lobby_anim_group_1"][2]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_1"][2]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_1"][2]["body"] = "body_urban_civ_female_b_a";
    var_0["intro_lobby_anim_group_2"][0]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_2"][0]["anime"] = "h2_airport_intro_civilian11";
    var_0["intro_lobby_anim_group_2"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_2"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_2"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_2"][0]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_2"][0]["body"] = "body_urban_civ_female_b_b";
    var_0["intro_lobby_anim_group_2"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_2"][1]["anime"] = "h2_airport_intro_civilian12";
    var_0["intro_lobby_anim_group_2"][1]["delay"] = 0;
    var_0["intro_lobby_anim_group_2"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_2"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_2"][1]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_2"][1]["body"] = "body_urban_civ_male_aa_c";
    var_0["intro_lobby_anim_group_2"][2]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_2"][2]["anime"] = "h2_airport_intro_civilian13";
    var_0["intro_lobby_anim_group_2"][2]["delay"] = 0;
    var_0["intro_lobby_anim_group_2"][2]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_2"][2]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_2"][2]["body"] = "body_urban_civ_male_ab_a";
    var_0["intro_lobby_anim_group_3"][0]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_3"][0]["anime"] = "h2_airport_intro_civilian14";
    var_0["intro_lobby_anim_group_3"][0]["delay"] = 1;
    var_0["intro_lobby_anim_group_3"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_3"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_3"][0]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_3"][0]["body"] = "body_urban_civ_female_a_b";
    var_0["intro_lobby_anim_group_3"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_3"][1]["anime"] = "h2_airport_intro_civilian15";
    var_0["intro_lobby_anim_group_3"][1]["delay"] = 1;
    var_0["intro_lobby_anim_group_3"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_3"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_3"][1]["body"] = "body_urban_civ_male_ab_b";
    var_0["intro_lobby_anim_group_3"][2]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_3"][2]["anime"] = "h2_airport_intro_civilian16";
    var_0["intro_lobby_anim_group_3"][2]["delay"] = 1;
    var_0["intro_lobby_anim_group_3"][2]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_3"][2]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_3"][2]["body"] = "body_urban_civ_male_ab_c";
    var_0["intro_lobby_anim_group_4"][0]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_4"][0]["anime"] = "h2_airport_intro_civilian17";
    var_0["intro_lobby_anim_group_4"][0]["delay"] = 1;
    var_0["intro_lobby_anim_group_4"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_4"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_4"][0]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_4"][0]["body"] = "body_urban_civ_male_ac_a";
    var_0["intro_lobby_anim_group_4"][1]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_4"][1]["anime"] = "h2_airport_intro_civilian18";
    var_0["intro_lobby_anim_group_4"][1]["delay"] = 1;
    var_0["intro_lobby_anim_group_4"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_4"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_4"][1]["body"] = "body_urban_civ_female_a_p";
    var_0["intro_lobby_anim_group_4"][2]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_4"][2]["anime"] = "h2_airport_intro_civilian19";
    var_0["intro_lobby_anim_group_4"][2]["delay"] = 1;
    var_0["intro_lobby_anim_group_4"][2]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_4"][2]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_4"][2]["body"] = "body_urban_civ_male_ac_c";
    var_0["intro_lobby_anim_group_5"][0]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_5"][0]["anime"] = "h2_airport_intro_civilian20";
    var_0["intro_lobby_anim_group_5"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_5"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_5"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_5"][0]["body"] = "body_urban_civ_male_ac_c";
    var_0["intro_lobby_anim_group_5"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_5"][1]["anime"] = "h2_airport_intro_civilian21";
    var_0["intro_lobby_anim_group_5"][1]["delay"] = 0;
    var_0["intro_lobby_anim_group_5"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_5"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_5"][1]["body"] = "body_urban_civ_male_ba_b";
    var_0["intro_lobby_anim_group_6"][0]["model"] = "civilian_female_suit_low_LOD";
    var_0["intro_lobby_anim_group_6"][0]["anime"] = "h2_airport_intro_civilian22";
    var_0["intro_lobby_anim_group_6"][0]["delay"] = 2;
    var_0["intro_lobby_anim_group_6"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_6"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_6"][0]["body"] = "body_urban_civ_female_a_y";
    var_0["intro_lobby_anim_group_6"][1]["model"] = "civilian_male_suit_low_LOD";
    var_0["intro_lobby_anim_group_6"][1]["anime"] = "h2_airport_intro_civilian23";
    var_0["intro_lobby_anim_group_6"][1]["delay"] = 2;
    var_0["intro_lobby_anim_group_6"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_6"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_6"][1]["body"] = "body_urban_civ_male_bb_a";
    var_0["intro_lobby_anim_group_6"][2]["model"] = "civilian_male_suit_low_LOD";
    var_0["intro_lobby_anim_group_6"][2]["anime"] = "h2_airport_intro_civilian24";
    var_0["intro_lobby_anim_group_6"][2]["delay"] = 2;
    var_0["intro_lobby_anim_group_6"][2]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_6"][2]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_6"][2]["body"] = "body_urban_civ_male_bb_b";
    var_0["intro_lobby_anim_group_7"][0]["model"] = "civilian_male_suit_low_LOD";
    var_0["intro_lobby_anim_group_7"][0]["anime"] = "h2_airport_intro_civilian25";
    var_0["intro_lobby_anim_group_7"][0]["delay"] = 2;
    var_0["intro_lobby_anim_group_7"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_7"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_7"][0]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_7"][0]["body"] = "body_urban_civ_male_bc_blue";
    var_0["intro_lobby_anim_group_7"][1]["model"] = "civilian_male_suit_low_LOD";
    var_0["intro_lobby_anim_group_7"][1]["anime"] = "h2_airport_intro_civilian26";
    var_0["intro_lobby_anim_group_7"][1]["delay"] = 2;
    var_0["intro_lobby_anim_group_7"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_7"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_7"][1]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_7"][1]["body"] = "body_urban_civ_male_bc_gray";
    var_0["intro_lobby_anim_group_8"][0]["model"] = "civilian_male_suit_low_LOD";
    var_0["intro_lobby_anim_group_8"][0]["anime"] = "h2_airport_intro_civilian27";
    var_0["intro_lobby_anim_group_8"][0]["delay"] = 2;
    var_0["intro_lobby_anim_group_8"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_8"][0]["deathtime"] = 9.5;
    var_0["intro_lobby_anim_group_8"][0]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_8"][0]["body"] = "body_urban_civ_male_bb_b";
    var_0["intro_lobby_anim_group_8"][1]["model"] = "civilian_male_suit_low_LOD";
    var_0["intro_lobby_anim_group_8"][1]["anime"] = "h2_airport_intro_civilian28";
    var_0["intro_lobby_anim_group_8"][1]["delay"] = 2;
    var_0["intro_lobby_anim_group_8"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_8"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_8"][1]["body"] = "body_urban_civ_male_bc_red";
    var_0["intro_lobby_anim_group_9"][0]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_9"][0]["anime"] = "h2_airport_intro_civilian4";
    var_0["intro_lobby_anim_group_9"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_9"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_9"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_9"][0]["body"] = "body_urban_civ_female_a_y";
    var_0["intro_lobby_anim_group_9"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_9"][1]["anime"] = "h2_airport_intro_civilian5";
    var_0["intro_lobby_anim_group_9"][1]["delay"] = 0;
    var_0["intro_lobby_anim_group_9"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_9"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_9"][1]["body"] = "body_urban_civ_male_bc_red";
    var_0["intro_lobby_anim_group_10"][0]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_10"][0]["anime"] = "h2_airport_intro_civilian29";
    var_0["intro_lobby_anim_group_10"][0]["delay"] = 1;
    var_0["intro_lobby_anim_group_10"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_10"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_10"][0]["deleteme"] = 1;
    var_0["intro_lobby_anim_group_10"][0]["body"] = "body_urban_civ_male_ab_a";
    var_0["intro_lobby_anim_group_10"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_10"][1]["anime"] = "h2_airport_intro_civilian30";
    var_0["intro_lobby_anim_group_10"][1]["delay"] = 1;
    var_0["intro_lobby_anim_group_10"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_10"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_10"][1]["body"] = "body_urban_civ_male_bc_white";
    var_0["intro_lobby_anim_group_11"][0]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_11"][0]["anime"] = "h2_airport_intro_civilian31";
    var_0["intro_lobby_anim_group_11"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_11"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_11"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_11"][0]["body"] = "body_urban_civ_male_bc_red";
    var_0["intro_lobby_anim_group_12"][0]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_12"][0]["anime"] = "h2_airport_intro_civilian3";
    var_0["intro_lobby_anim_group_12"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_12"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_12"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_12"][0]["body"] = "body_urban_civ_female_a_g";
    var_0["intro_lobby_anim_group_12"][1]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_12"][1]["anime"] = "h2_airport_intro_civilian2";
    var_0["intro_lobby_anim_group_12"][1]["delay"] = 0;
    var_0["intro_lobby_anim_group_12"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_12"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_12"][1]["body"] = "body_urban_civ_male_aa_b";
    var_0["intro_lobby_anim_group_12"][2]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_12"][2]["anime"] = "h2_airport_intro_civilian1";
    var_0["intro_lobby_anim_group_12"][2]["delay"] = 0;
    var_0["intro_lobby_anim_group_12"][2]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_12"][2]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_12"][2]["body"] = "body_urban_civ_male_ac_b";
    var_0["intro_lobby_anim_group_13"][0]["model"] = "civilian_female_suit";
    var_0["intro_lobby_anim_group_13"][0]["anime"] = "h2_airport_intro_civilian7";
    var_0["intro_lobby_anim_group_13"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_13"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_13"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_13"][0]["body"] = "body_urban_civ_female_b_b";
    var_0["intro_lobby_anim_group_14"][0]["model"] = "civilian_male_suit";
    var_0["intro_lobby_anim_group_14"][0]["anime"] = "h2_airport_intro_civilian6";
    var_0["intro_lobby_anim_group_14"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_14"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_14"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_14"][0]["body"] = "body_urban_civ_male_bb_b";
    var_0["intro_lobby_anim_group_15"][0]["model"] = "male_security_guard";
    var_0["intro_lobby_anim_group_15"][0]["anime"] = "h2_airport_intro_policeman1";
    var_0["intro_lobby_anim_group_15"][0]["delay"] = 0;
    var_0["intro_lobby_anim_group_15"][0]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_15"][0]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_15"][0]["body"] = "body_secret_service_smg";
    var_0["intro_lobby_anim_group_15"][1]["model"] = "male_security_guard";
    var_0["intro_lobby_anim_group_15"][1]["anime"] = "h2_airport_intro_policeman2";
    var_0["intro_lobby_anim_group_15"][1]["delay"] = 0;
    var_0["intro_lobby_anim_group_15"][1]["deathanim"] = undefined;
    var_0["intro_lobby_anim_group_15"][1]["deathtime"] = 0;
    var_0["intro_lobby_anim_group_15"][1]["body"] = "body_secret_service_smg";
    return var_0;
}

_ID51444()
{
    level._ID43404 = [];
    level._ID43404[0] = "exploder_script_model";
}
#using_animtree("script_model");

_ID47863()
{
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID30895["exploder_script_model"]["h2_airport_restaurant_destruction_break_a_anim"] = %h2_airport_restaurant_destruction_break_a_anim;
    level._ID30900["door"] = #animtree;
    level._ID30895["door"]["opening_door"] = %h2_airport_door_opening_door_anim;
}
#using_animtree("vehicles");

_ID40319()
{
    level._ID30900["ambulance"] = #animtree;
    level._ID30895["ambulance"]["end_open_door"] = %h2_airport_ending_open_doors;
    level._ID30895["ambulance"]["end_close_door"] = %h2_airport_ending_close_doors;
}

init_animsound()
{
    waitframe;
    _ID42259::_ID2075( "comrad", "end_get_in", "scn_viktor_climb_in_ambulance" );
    _ID42259::_ID2075( "makarov", "end_get_in", "scn_makarov_climb_in_ambulance" );
    _ID42259::_ID2075( "generic", "arriving_cops_1", "scn_end_arriving_cops_01" );
}
