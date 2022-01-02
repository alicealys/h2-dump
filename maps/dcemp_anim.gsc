// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    thread setup_exploder_anim();
    script_model_anim();
    _ID15518();
    _ID53822();
    _ID46077();
    _ID44728();
    _ID48570();
    _ID52250();
    _ID27229();
    _ID53071();
    _ID53583();
    _ID54345();
}
#using_animtree("generic_human");

_ID15518()
{
    level._ID30895["generic"]["stand_exposed_wave_halt"] = %stand_exposed_wave_halt;
    level._ID30895["generic"]["stand_exposed_wave_halt_v2"] = %stand_exposed_wave_halt_v2;
    level._ID30895["generic"]["stand_exposed_wave_on_me"] = %stand_exposed_wave_on_me;
    level._ID30895["generic"]["stand_exposed_wave_on_me_v2"] = %stand_exposed_wave_on_me_v2;
    level._ID30895["generic"]["stand_exposed_wave_move_up"] = %stand_exposed_wave_move_up;
    level._ID30895["generic"]["stand_exposed_wave_move_out"] = %stand_exposed_wave_move_out;
    level._ID30895["generic"]["stand_exposed_wave_target_spotted"] = %stand_exposed_wave_target_spotted;
    level._ID30895["generic"]["stand_exposed_wave_down"] = %stand_exposed_wave_down;
    level._ID30895["generic"]["stand_exposed_wave_go"] = %stand_exposed_wave_go;
    level._ID30895["generic"]["CornerStndR_alert_signal_enemy_spotted"] = %cornerstndr_alert_signal_enemy_spotted;
    level._ID30895["generic"]["CornerStndR_alert_signal_move_out"] = %cornerstndr_alert_signal_move_out;
    level._ID30895["generic"]["CornerStndR_alert_signal_on_me"] = %cornerstndr_alert_signal_on_me;
    level._ID30895["generic"]["CornerStndR_alert_signal_stopStay_down"] = %cornerstndr_alert_signal_stopstay_down;
    level._ID30895["generic"]["oilrig_sub_A_idle_1"] = %oilrig_sub_a_idle_1;
    level._ID30895["generic"]["bulletshield_pain_short"] = %stand_exposed_extendedpain_chest;
    level._ID30895["generic"]["CornerCrR_trans_IN_L"] = %cornercrr_trans_in_l;
    level._ID30895["generic"]["corner_standR_trans_CQB_IN_2"] = %corner_standr_trans_cqb_in_2;
    level._ID30895["generic"]["CornerCrL_alert_2_stand"] = %cornercrl_alert_2_stand;
    level._ID30895["generic"]["exposed_tracking_turn135R"] = %exposed_tracking_turn135r;
    level._ID30895["generic"]["dcemp_BHrescue_soldier"] = %h2_dcemp_bhrescue_soldier;
    level._ID30895["generic"]["corner_standR_trans_IN_3"] = %corner_standr_trans_in_3;
    level._ID30895["generic"]["corner_standR_trans_CQB_IN_3"] = %corner_standr_trans_cqb_in_3;
    level._ID30895["generic"]["DCemp_react_guyB_react"] = %h2_emp_react_guyb_react;
    level._ID30895["generic"]["DCemp_react_guyA_react"] = %h2_emp_react_guya_react;
    level._ID30895["generic"]["corner_standR_painC"] = %corner_standr_painc;
    level._ID30895["generic"]["corner_standR_look_idle"][0] = %corner_standr_look_idle;
    level._ID30895["generic"]["corner_standR_alert_2_look"] = %corner_standr_alert_2_look;
    level._ID30895["generic"]["corner_standR_look_2_alert_fast"] = %corner_standr_look_2_alert_fast;
    level._ID30895["generic"]["corner_standR_look_2_alert"] = %corner_standr_look_2_alert;
    level._ID30895["generic"]["CornerCrR_alert_painA"] = %cornercrr_alert_paina;
    level._ID30895["generic"]["CornerCrR_look_idle"][0] = %cornercrr_look_idle;
    level._ID30895["generic"]["CornerCrR_alert_2_look"] = %cornercrr_alert_2_look;
    level._ID30895["generic"]["CornerCrR_look_2_alert_fast"] = %cornercrr_look_2_alert_fast;
    level._ID30895["generic"]["CornerCrR_look_2_alert"] = %cornercrr_look_2_alert;
    level._ID30895["marine1"]["dcemp_BHrescue"] = %h2_dcemp_bhrescue_soldier;
    level._ID30895["foley"]["safe_zone_in"] = %h2_dcemp_fallingdebris_foley;
    _ID42259::_ID2062( "foley", "dialog", "safe_zone_in", "dcemp_fly_gogo" );
    level._ID30895["foley"]["safe_zone_idle"][0] = %h2_dcemp_fallingdebris_foley_idle;
    level._ID30895["foley"]["safe_zone_out"] = %h2_dcemp_fallingdebris_foley_out;
    _ID42259::_ID2062( "foley", "dialog", "safe_zone_out", "dcemp_fly_getagrip" );
    _ID42259::_ID2062( "foley", "dialog", "safe_zone_out", "dcemp_fly_stayhere" );
    _ID42259::_ID2062( "foley", "dialog", "safe_zone_out", "dcemp_fly_wartofight" );
    _ID42259::_ID2063( "foley", "Heli_explosion", "street_crash_heli_hide", "safe_zone_out" );
    _ID42259::_ID2063( "foley", "Engine_explo", "corner_engine_crash", "safe_zone_out" );
    _ID42259::_ID2058( "foley", "Engine_explo_VFX", maps\dcemp_code::h2_corner_plane_crash_fx, "safe_zone_out" );
    _ID42259::_ID2058( "foley", "Engine_explo_sound", maps\dcemp_code::h2_corner_plane_crash_sound, "safe_zone_out" );
    _ID42259::_ID2058( "foley", "Engine_explo_rumble", maps\dcemp_code::h2_corner_plane_crash_rumble, "safe_zone_out" );
    _ID42259::_ID2058( "foley", "open_door_start", maps\dcemp_code::_ID46529, "safe_zone_out", "scn_corner_foley_door_slow_open" );
    level._ID30895["dunn"]["safe_zone_in"] = %h2_dcemp_fallingdebris_dunn;
    level._ID30895["dunn"]["safe_zone_idle"][0] = %h2_dcemp_fallingdebris_dunn_idle;
    level._ID30895["dunn"]["safe_zone_out"] = %h2_dcemp_fallingdebris_dunn_out;
    _ID42259::_ID2062( "dunn", "dialog", "safe_zone_out", "dcemp_cpd_wearetotally" );
    _ID42259::_ID2062( "dunn", "dialog", "safe_zone_out", "dcemp_cpd_younuts" );
    level._ID30895["marine1"]["safe_zone_in"] = %h2_dcemp_fallingdebris_sandler;
    level._ID30895["marine1"]["safe_zone_idle"][0] = %h2_dcemp_fallingdebris_sandler_idle;
    level._ID30895["marine1"]["safe_zone_out"] = %h2_dcemp_fallingdebris_sandler_out;
    level._ID30895["marine2"]["safe_zone_in"] = %h2_dcemp_fallingdebris_mccord;
    level._ID30895["marine2"]["safe_zone_idle"][0] = %h2_dcemp_fallingdebris_mccord_idle;
    level._ID30895["marine2"]["safe_zone_out"] = %h2_dcemp_fallingdebris_mccord_out;
    level._ID30895["marine3"]["safe_zone_in"] = %h2_dcemp_fallingdebris_soldier;
    level._ID30895["marine3"]["safe_zone_idle"][0] = %h2_dcemp_fallingdebris_soldier_idle;
    level._ID30895["marine3"]["safe_zone_out"] = %h2_dcemp_fallingdebris_soldier_out;
    level._ID30895["generic"]["CornerCrR_trans_OUT_F"] = %cornercrr_trans_out_f;
    level._ID30895["generic"]["corner_standR_trans_OUT_6"] = %corner_standr_trans_out_6;
    level._ID30895["generic"]["traverse_jumpdown_96"] = %traverse_jumpdown_96;
    level._ID30895["generic"]["cornerCrR_alert_2_stand"] = %cornercrr_alert_2_stand;
    level._ID30895["generic"]["street_flare_throw"] = %grenade_return_standing_throw_overhand_forward;
    _ID42259::_ID2058( "generic", "grenade_right", ::_ID51647, "street_flare_throw" );
    _ID42259::_ID2058( "generic", "grenade_throw", ::_ID52074, "street_flare_throw" );
    thread sound_street_flare_throw();
    level._ID30895["generic"]["exposed_idle_reactB"] = %exposed_idle_reactb;
    level._ID30895["generic"]["exposed_flashbang_v1"] = %exposed_flashbang_v1;
    level._ID30895["generic"]["exposed_flashbang_v4"] = %exposed_flashbang_v4;
    level._ID30895["generic"]["run_reaction_R_quick"] = %run_reaction_r_quick;
    level._ID30895["generic"]["run_reaction_L_quick"] = %run_reaction_l_quick;
    level._ID30895["generic"]["run_turn_R45"] = %run_turn_r45;
    level._ID30895["generic"]["run_turn_L45"] = %run_turn_l45;
    level._ID30895["generic"]["run_turn_R90"] = %run_turn_r90;
    level._ID30895["generic"]["run_turn_L90"] = %run_turn_l90;
    level._ID30895["generic"]["crouch_2run_F"] = %crouch_2run_f;
    level._ID30895["generic"]["crouch_2run_R"] = %crouch_2run_r;
    level._ID30895["generic"]["crouch_2run_L"] = %crouch_2run_l;
    level._ID30895["generic"]["stand_2_run_F_2"] = %stand_2_run_f_2;
    level._ID30895["generic"]["stand_2_run_R"] = %stand_2_run_r;
    level._ID30895["generic"]["stand_2_run_L"] = %stand_2_run_l;
    level._ID30895["generic"]["jump_across_100_lunge"] = %jump_across_100_lunge;
    level._ID30895["generic"]["jump_across_100_spring"] = %jump_across_100_spring;
    level._ID30895["generic"]["jump_across_100_stumble"] = %jump_across_100_stumble;
    level._ID30895["generic"]["run_react_stumble_non_loop"] = %run_react_stumble_non_loop;
    level._ID30895["generic"]["run_react_flinch_non_loop"] = %run_react_flinch_non_loop;
    level._ID30895["generic"]["run_react_duck_non_loop"] = %run_react_duck_non_loop;
    level._ID30895["generic"]["run_pain_fallonknee"] = %run_pain_fallonknee;
    level._ID30895["generic"]["run_pain_fallonknee_02"] = %run_pain_fallonknee_02;
    level._ID30895["generic"]["run_pain_fallonknee_03"] = %run_pain_fallonknee_03;
    level._ID30895["generic"]["slide_across_car"] = %slide_across_car;
    level._ID30895["generic"]["gulag_sewer_slide"] = %gulag_sewer_slide;
    level._ID30895["generic"]["fastrope_fall"] = %fastrope_fall;
    level._ID30895["generic"]["traverse_window_M_2_dive"] = %traverse_window_m_2_dive;
    level._ID30895["generic"]["exposed_flashbang_v1"] = %exposed_flashbang_v1;
    level._ID30895["generic"]["exposed_flashbang_v2"] = %exposed_flashbang_v2;
    level._ID30895["generic"]["exposed_flashbang_v3"] = %exposed_flashbang_v3;
    level._ID30895["generic"]["exposed_flashbang_v4"] = %exposed_flashbang_v4;
    level._ID30895["generic"]["exposed_flashbang_v5"] = %exposed_flashbang_v5;
    level._ID30895["generic"]["cqb_stand_signal_move_out"] = %cqb_stand_signal_move_out;
    level._ID30895["generic"]["cqb_stop_8_signal"] = %cqb_stop_2_signal;
    level._ID30895["generic"]["bog_b_spotter_react"] = %bog_b_spotter_react;
    level._ID30895["generic"]["favela_run_and_wave"] = %favela_run_and_wave;
    level._ID30895["generic"]["corner_standR_explosion_divedown"] = %corner_standr_explosion_divedown;
    level._ID30895["generic"]["corner_standR_explosion_standup"] = %corner_standr_explosion_standup;
    level._ID30895["generic"]["hunted_open_barndoor_flathand"] = %hunted_open_barndoor_flathand;
    level._ID30895["generic"]["run_reaction_180"] = %run_reaction_180;
    level._ID30895["generic"]["combatwalk_F_spin"] = %combatwalk_f_spin;
    level._ID30895["generic"]["patrol_jog_look_up_once"] = %patrol_jog_look_up_once;
    level._ID30895["generic"]["patrol_jog_360_once"] = %patrol_jog_360_once;
    level._ID30895["generic"]["patrol_jog_orders_once"] = %patrol_jog_orders_once;
    level._ID30895["generic"]["CQB_walk_turn_6"] = %cqb_walk_turn_6;
    level._ID30895["generic"]["CQB_walk_turn_7"] = %cqb_walk_turn_7;
    level._ID30895["generic"]["CQB_walk_turn_9"] = %cqb_walk_turn_9;
    level._ID30895["generic"]["casual_killer_jog_stop"] = %casual_killer_jog_stop;
    level._ID30895["generic"]["casual_killer_jog_start"] = %casual_killer_jog_start;
    level._ID30895["generic"]["casual_killer_jog"][0] = %casual_killer_jog_a;
    level._ID30895["generic"]["casual_killer_jog"][1] = %casual_killer_jog_b;
    level._ID30895["generic"]["combat_jog"] = %combat_jog;
    level._ID30895["generic"]["scout_sniper_price_wave"] = %scout_sniper_price_wave;
    level._ID30895["foley"]["hunted_woundedhostage_check"] = %hunted_woundedhostage_check_soldier;
    level._ID30909["foley"]["hunted_woundedhostage_check"] = "scn_dcemp_check_dead_sgtfoley";
    level._ID30895["generic"]["casual_killer_jog_A"] = %casual_killer_jog_a;
    level._ID30895["generic"]["casual_killer_jog_B"] = %casual_killer_jog_b;
    level._ID30895["generic"]["casual_killer_jog"][0] = %casual_killer_jog_a;
    level._ID30895["generic"]["casual_killer_jog"][1] = %casual_killer_jog_b;
    level._ID30895["generic"]["patrol_bored_2_walk"] = %patrol_bored_2_walk;
    level._ID30895["generic"]["patrol_bored_walk_2_bored"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["patrol_bored_patrolwalk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["covercrouch_hide_idle"][0] = %covercrouch_hide_idle;
    level._ID30895["generic"]["covercrouch_hide_2_stand"] = %covercrouch_hide_2_stand;
    level._ID30895["generic"]["traverse_window_M_2_stop"] = %traverse_window_m_2_stop;
    level._ID30895["generic"]["traverse_window_M_2_run"] = %traverse_window_m_2_run;
    level._ID30895["generic"]["exposed_idle_reactA"] = %exposed_idle_reacta;
    level._ID30895["generic"]["cqb_stand_react_A"] = %cqb_stand_react_a;
    level._ID30895["generic"]["cqb_stand_react_B"] = %cqb_stand_react_b;
    level._ID30895["generic"]["cqb_stand_react_C"] = %cqb_stand_react_c;
    level._ID30895["generic"]["cqb_stand_react_D"] = %cqb_stand_react_d;
    level._ID30895["generic"]["cqb_stand_react_E"] = %cqb_stand_react_e;
    level._ID30895["generic"]["cargoship_open_cargo_guyL"] = %cargoship_open_cargo_guyl;
    level._ID30895["generic"]["run_2_stand_90R"] = %run_2_stand_90r;
    level._ID30895["generic"]["run_2_crouch_F"] = %run_2_crouch_f;
    level._ID30895["generic"]["run_2_crouch_90L"] = %run_2_crouch_90l;
    level._ID30895["generic"]["run_2_crouch_90R"] = %run_2_crouch_90r;
    level._ID30895["generic"]["casual_stand_idle_trans_in"] = %casual_stand_idle_trans_in;
    level._ID30895["generic"]["favela_escape_bigjump_faust"] = %favela_escape_bigjump_faust;
    level._ID30895["generic"]["freerunnerA_loop"] = %freerunnera_loop;
    level._ID30895["generic"]["freerunnerB_loop"] = %freerunnerb_loop;
    level._ID30895["generic"]["unarmed_climb_wall"] = %unarmed_climb_wall;
    level._ID30895["generic"]["exposed_crouch_2_stand"] = %exposed_crouch_2_stand;
    level._ID30895["generic"]["coverstand_hide_2_aim"] = %coverstand_hide_2_aim;
    level._ID30895["generic"]["corner_standR_trans_alert_2_A_v2"] = %corner_standr_trans_alert_2_a_v2;
    level._ID30895["generic"]["DCemp_run_sequence_runner"] = %dcemp_run_sequence_runner;
    _ID42259::_ID2058( "generic", "dcemp_ar3_whiskeyhotel_ps", ::_ID44532, "DCemp_run_sequence_runner" );
    level._ID30895["generic"]["DCemp_run_sequence_guy1"] = %dcemp_run_sequence_guy1;
    _ID42259::_ID2058( "generic", "dcemp_cpd_wheregoin_ps", ::_ID47482, "DCemp_run_sequence_meetup_dunn" );
    level._ID30895["runner"]["DCemp_run_sequence"] = %dcemp_run_sequence_runner;
    level._ID30895["dunn"]["DCemp_run_sequence"] = %dcemp_run_sequence_guy1;
    level._ID30895["generic"]["DCemp_run_sequence_meetup_dunn"] = %h2_dcemp_run_sequence_dunn;
    level._ID30895["marine2"]["DCemp_run_sequence_meetup_mccord"] = %h2_dcemp_run_sequence_mccord;
    level._ID30895["runner"]["h2_DCemp_run_sequence_runner"] = %h2_dcemp_run_sequence_runner_stairs;
    _ID42259::_ID2058( "runner", "dcemp_ar3_whiskeyhotel_ps", ::_ID44532, "DCemp_run_sequence" );
    _ID42259::_ID2058( "dunn", "dcemp_cpd_wheregoin_ps", ::_ID47482, "DCemp_run_sequence" );
    level._ID30895["generic"]["corner_standR_trans_CQB_OUT_8"] = %corner_standr_trans_cqb_out_8;
    level._ID30895["generic"]["hunted_open_barndoor"] = %hunted_open_barndoor;
    level._ID30895["generic"]["airport_security_guard_pillar_death_R"] = %airport_security_guard_pillar_death_r;
    level._ID30895["generic"]["airport_security_guard_pillar_death_L"] = %airport_security_guard_pillar_death_l;
    level._ID30895["generic"]["breach_kick_kickerR1_enter"] = %breach_kick_kickerr1_enter;
    _ID42259::_ID2058( "generic", "kick", ::_ID49307, "breach_kick_kickerR1_enter" );
    level._ID30895["generic"]["corner_standR_flinchB"] = %corner_standr_flinchb;
    level._ID30895["generic"]["CQB_stand_grenade_throw"] = %cqb_stand_grenade_throw;
    _ID42259::_ID2057( "generic", "grenade_right", "weapon_m84_flashbang_grenade", "TAG_INHAND", "CQB_stand_grenade_throw" );
    _ID42259::_ID2059( "generic", "grenade_throw", "weapon_m84_flashbang_grenade", "TAG_INHAND", "CQB_stand_grenade_throw" );
    _ID42259::_ID2058( "generic", "grenade_throw", ::_ID54490, "CQB_stand_grenade_throw" );
    level._ID30895["generic"]["exposed_tracking_turn180L"] = %exposed_tracking_turn180l;
    level._ID30895["generic"]["coverstand_hide_idle"][0] = %coverstand_hide_idle;
    level._ID30895["generic"]["traverse_jumpdown_96"] = %traverse_jumpdown_96;
    level._ID30895["generic"]["h2_traverse_jumpdown_96_dcemp"] = %h2_traverse_jumpdown_96_dcemp;
    level._ID30895["generic"]["traverse40"] = %traverse40;
    level._ID30895["generic"]["death_pose_on_desk"] = %death_pose_on_desk;
    level._ID30895["generic"]["hunted_woundedhostage_check_soldier_end"] = %hunted_woundedhostage_check_soldier_end;
    level._ID30895["generic"]["DCemp_wounded_check_end"] = %dcemp_wounded_check_end;
    level._ID30895["generic"]["DCemp_BTR_moment_climb_guy1"] = %dcemp_btr_moment_climb_guy1;
    level._ID30895["generic"]["DCemp_BTR_moment_climb_guy2"] = %dcemp_btr_moment_climb_guy2;
    level._ID30895["generic"]["DCemp_BTR_moment_climb_guy3"] = %dcemp_btr_moment_climb_guy3;
    level._ID30895["generic"]["DCemp_BTR_moment_idle_guy1"][0] = %dcemp_btr_moment_idle_guy1;
    level._ID30895["generic"]["DCemp_BTR_moment_idle_guy2"][0] = %dcemp_btr_moment_idle_guy2;
    level._ID30895["generic"]["DCemp_BTR_moment_idle_guy3"][0] = %dcemp_btr_moment_idle_guy3;
    level._ID30895["generic"]["DCemp_BTR_moment_guy1"] = %dcemp_btr_moment_guy1;
    level._ID30895["generic"]["DCemp_BTR_moment_guy2"] = %dcemp_btr_moment_guy2;
    level._ID30895["generic"]["DCemp_BTR_moment_guy3"] = %dcemp_btr_moment_guy3;
    level._ID30895["generic"]["CornerStndR_alert_2_lean"] = %cornerstndr_alert_2_lean;
    level._ID30895["generic"]["CornerCrR_alert_2_lean"] = %cornercrr_alert_2_lean;
    level._ID30895["generic"]["favela_civ_warning_landing"] = %favela_civ_warning_landing;
    level._ID30895["generic"]["corner_standR_trans_CQB_OUT_9"] = %corner_standr_trans_cqb_out_9;
    level._ID30895["generic"]["coverstand_look_moveup"] = %coverstand_look_moveup;
    level._ID30895["generic"]["coverstand_look_idle"][0] = %coverstand_look_idle;
    level._ID30895["generic"]["coverstand_look_movedown"] = %coverstand_look_movedown;
    level._ID30895["generic"]["coverstand_trans_OUT_R"] = %coverstand_trans_out_r;
    level._ID30895["generic"]["corner_standR_alert_2_look"] = %corner_standr_alert_2_look;
    level._ID30895["generic"]["corner_standR_look_2_alert"] = %corner_standr_look_2_alert;
    level._ID30895["generic"]["corner_standR_look_idle"][0] = %corner_standr_look_idle;
    level._ID30895["generic"]["patrol_bored_react_look_retreat"] = %patrol_bored_react_look_retreat;
    level._ID30895["generic"]["corner_standR_trans_OUT_9"] = %corner_standr_trans_out_9;
}

_ID44728()
{
    level._ID30895["dunn"]["hunted_woundedhostage_check"] = %hunted_woundedhostage_check_soldier;
    level._ID30909["dunn"]["hunted_woundedhostage_check"] = "scn_dcemp_check_dead_sgtfoley";
    level._ID30895["dunn"]["hunted_woundedhostage_check_soldier_end"] = %hunted_woundedhostage_check_soldier_end;
    level._ID30909["dunn"]["dcemp_cpd_huah3"] = "dcemp_cpd_huah3";
    level._ID30909["foley"]["dcemp_fly_cutchatter"] = "dcemp_fly_cutchatter";
    level._ID30909["foley"]["dcemp_fly_fortourists"] = "dcemp_fly_fortourists";
    level._ID30901["foley"]["dcemp_fly_fortourists"] = %dcemp_fly_fortourists;
    level._ID30909["marine1"]["dcemp_ar1_feetdry"] = "dcemp_ar1_feetdry";
    level._ID30909["generic"]["dcemp_ar2_letsgo"] = "dcemp_ar2_letsgo";
    level._ID30909["generic"]["dcemp_ar3_hustleup"] = "dcemp_ar3_hustleup";
    level._ID30909["generic"]["dcemp_ar3_thisway"] = "dcemp_ar3_thisway";
    level._ID30909["generic"]["dcemp_ar3_movemove"] = "dcemp_ar3_movemove";
    level._ID30895["dead_guy"]["hunted_woundedhostage_check"] = %hunted_woundedhostage_check_hostage;
    level._ID30909["dead_guy"]["hunted_woundedhostage_check"] = "scn_dcemp_check_dead_soldier";
    level._ID30895["dead_guy"]["hunted_woundedhostage_idle_start"][0] = %hunted_woundedhostage_idle_start;
    level._ID30895["dead_guy"]["hunted_woundedhostage_idle_end"] = %hunted_woundedhostage_idle_end;
    level._ID30895["generic"]["death_sitting_pose_v1"] = %death_sitting_pose_v1;
    level._ID30895["generic"]["tunnel_door_open_guy"] = %cargoship_open_cargo_guyl;
    level._ID30895["dunn"]["DCemp_door_sequence"] = %h2_dcemp_door_sequence_dunn;
    level._ID30895["foley"]["DCemp_door_sequence"] = %h2_dcemp_door_sequence_foley;
    _ID42259::_ID2062( "dunn", "dialog", "DCemp_door_sequence", "dcemp_cpd_westwing" );
    _ID42259::_ID2062( "foley", "dialog", "DCemp_door_sequence", "dcemp_fly_fortourists" );
    _ID42259::_ID2062( "dunn", "dialog", "DCemp_door_sequence", "dcemp_cpd_placeishistory" );
    level._ID30895["generic"]["wave_on"][0] = %coup_civilians_interrogated_guard_wave;
    level._ID30909["generic"]["gogogo"] = "dcemp_fly_gogogo";
    level._ID30909["generic"]["keep_moving"] = "dcemp_fly_dontstop";
}

_ID48570()
{
    level._ID30909["marshall"]["dcemp_cml_moremen"] = "dcemp_cml_moremen";
    level._ID30909["dunn"]["dcemp_cpd_partystarted"] = "dcemp_cpd_partystarted";
    level._ID30909["dunn"]["dcemp_cpd_radiooverhere"] = "dcemp_cpd_radiooverhere";
    level._ID30909["dunn"]["dcemp_cpd_talkingabout"] = "dcemp_cpd_talkingabout";
    level._ID30909["dunn"]["dcemp_cpd_happensnow"] = "dcemp_cpd_happensnow";
    level._ID30909["foley"]["dcemp_fly_rogerstayfrosty"] = "dcemp_fly_rogerstayfrosty";
    level._ID30909["foley"]["dcemp_fly_workyourwayleft"] = "dcemp_fly_workyourwayleft";
    level._ID30909["foley"]["dcemp_fly_ramirezgo"] = "dcemp_fly_ramirezgo";
    level._ID30909["foley"]["dcemp_fly_takeleftflank"] = "dcemp_fly_takeleftflank";
    level._ID30909["foley"]["dcemp_fly_punchthrough"] = "dcemp_fly_punchthrough";
    level._ID30909["foley"]["dcemp_fly_machineguns"] = "dcemp_fly_machineguns";
    level._ID30909["foley"]["dcemp_fly_flattenthecity"] = "dcemp_fly_flattenthecity";
    level._ID30909["foley"]["dcemp_fly_lessthantwomins"] = "dcemp_fly_lessthantwomins";
    level._ID30909["foley"]["dcemp_fly_30seconds"] = "dcemp_fly_30seconds";
    level._ID30909["foley"]["dcemp_fly_60seconds"] = "dcemp_fly_60seconds";
    level._ID30909["foley"]["dcemp_fly_90seconds"] = "dcemp_fly_90seconds";
    level._ID30909["foley"]["dcemp_fly_poptheflares"] = "dcemp_fly_poptheflares";
    level._ID30909["foley"]["dcemp_fly_waraintover"] = "dcemp_fly_waraintover";
    level._ID30909["foley"]["dcemp_fly_backdownstairs"] = "dcemp_fly_backdownstairs";
    level._ID30908["dcemp_fp1_hammerdown"] = "dcemp_fp1_hammerdown";
    level._ID30908["dcemp_fp1_highvalue"] = "dcemp_fp1_highvalue";
    level._ID30908["dcemp_fp1_greenflares"] = "dcemp_fp1_greenflares";
    level._ID30908["dcemp_fp1_willabort"] = "dcemp_fp1_willabort";
    level._ID30908["dcemp_fp1_2minutes"] = "dcemp_fp1_2minutes";
    level._ID30908["dcemp_fp1_90secs"] = "dcemp_fp1_90secs";
    level._ID30908["dcemp_fp1_1minute"] = "dcemp_fp1_1minute";
    level._ID30908["dcemp_fp1_30secs"] = "dcemp_fp1_30secs";
    level._ID30908["dcemp_fp1_beenauthorized"] = "dcemp_fp1_beenauthorized";
    level._ID30908["dcemp_fp1_bombsaway"] = "dcemp_fp1_bombsaway";
    level._ID30908["dcemp_fp1_abortabort"] = "dcemp_fp1_abortabort";
    level._ID30908["dcemp_fp1_closeone"] = "dcemp_fp1_closeone";
    level._ID30908["dcemp_fp1_wordtohq"] = "dcemp_fp1_wordtohq";
    level._ID30908["dcemp_fp2_abortmission"] = "dcemp_fp2_abortmission";
    level._ID30908["dcemp_fp3_rollingout"] = "dcemp_fp3_rollingout";
    level._ID30908["dcemp_fp4_abortingmission"] = "dcemp_fp4_abortingmission";
    level._ID30895["rappel_guy"]["rappel_stand_idle_1"][0] = %launchfacility_a_rappel_idle_1;
    level._ID30895["rappel_guy"]["rappel_stand_idle_2"][0] = %launchfacility_a_rappel_idle_2;
    level._ID30895["rappel_guy"]["rappel_stand_idle_3"][0] = %launchfacility_a_rappel_idle_3;
    level._ID30895["rappel_guy"]["rappel_drop"] = %launchfacility_a_rappel_1;
    level._ID30895["generic"]["doorburst_wave"] = %doorburst_wave;
    level._ID30895["generic"]["doorburst_fall"] = %doorburst_fall;
    level._ID30895["foley"]["flare_moment_stand"] = %flare_moment_stand;
    _ID42259::_ID2057( "foley", "attach flare", "mil_emergency_flare", "tag_inhand", "flare_moment_stand" );
    _ID42259::_ID2058( "foley", "start flare", maps\dcemp_endpart_code::_ID46192, "flare_moment_stand" );
    level._ID30895["marshall"]["DCemp_whitehouse_briefing"] = %dcemp_whitehouse_briefing_marshall;
    level._ID30895["foley"]["DCemp_whitehouse_briefing"] = %dcemp_whitehouse_briefing_foley;
    _ID42259::_ID2062( "foley", "dcemp_fly_situationhere_ps", "DCemp_whitehouse_briefing", "dcemp_fly_situationhere" );
    _ID42259::_ID2062( "marshall", "dcemp_cml_highground_ps", "DCemp_whitehouse_briefing", "dcemp_cml_highground" );
    _ID42259::_ID2062( "marshall", "dcemp_cml_retakeit_ps", "DCemp_whitehouse_briefing", "dcemp_cml_retakeit" );
    _ID42259::_ID2062( "marshall", "dcemp_cml_getyoursquad_ps", "DCemp_whitehouse_briefing", "dcemp_cml_getyoursquad" );
    _ID42259::_ID2062( "foley", "dcemp_fly_squadoscarmike_ps", "DCemp_whitehouse_briefing", "dcemp_fly_squadoscarmike" );
    _ID42259::_ID2063( "marshall", "dcemp_cml_getyoursquad_ps", "whitehouse_moveout", "DCemp_whitehouse_briefing" );
    var_0 = [];
    var_0["death_explosion_up10"] = %death_explosion_up10;
    var_0["death_explosion_left11"] = %death_explosion_left11;
    var_0["death_explosion_stand_B_v2"] = %death_explosion_stand_b_v2;
    level._ID43035 = var_0;
}

_ID53822()
{
    level._ID30908["dcemp_iss_requestfeed"] = "dcemp_iss_requestfeed";
    level._ID30908["dcemp_iss_theywantyou"] = "dcemp_iss_theywantyou";
    level._ID30908["dcemp_iss_rotateview"] = "dcemp_iss_rotateview";
    level._ID30908["dcemp_iss_thereitis"] = "dcemp_iss_thereitis";
    level._ID30908["dcemp_hsc_copythat"] = "dcemp_hsc_copythat";
    level._ID30908["dcemp_hsc_keeptracking"] = "dcemp_hsc_keeptracking";
    level._ID30908["dcemp_iss_notscheduled"] = "dcemp_iss_notscheduled";
    level._ID30908["dcemp_hsc_standby"] = "dcemp_hsc_standby";
    level._ID30908["dcemp_iss_anyword"] = "dcemp_iss_anyword";
    level._ID30908["scn_dcemp_iss_helmet_breathe_slow"] = "scn_dcemp_iss_helmet_breathe_slow";
    level._ID30908["scn_dcemp_iss_helmet_breathe_fast"] = "scn_dcemp_iss_helmet_breathe_fast";
    level._ID30909["dunn"]["dcemp_cpd_EMP"] = "dcemp_cpd_EMP";
    level._ID30909["dunn"]["dcemp_cpd_whatsgoinon"] = "dcemp_cpd_whatsgoinon";
    level._ID30909["foley"]["dcemp_fly_seekshelter"] = "dcemp_fly_seekshelter";
    level._ID30901["foley"]["dcemp_fly_seekshelter"] = %dcemp_fly_seekshelter;
    level._ID30909["dunn"]["dcemp_cpd_notgood"] = "dcemp_cpd_notgood";
    level._ID30909["foley"]["dcemp_fly_gogogo"] = "dcemp_fly_gogogo";
    level._ID30909["foley"]["dcemp_fly_dontstop"] = "dcemp_fly_dontstop";
    level._ID30909["dunn"]["dcemp_cpd_whoa"] = "dcemp_cpd_whoa";
    level._ID30909["dunn"]["dcemp_cpd_holy"] = "dcemp_cpd_holy";
    level._ID30909["foley"]["dcemp_fly_gogo"] = "dcemp_fly_gogo";
    level._ID30909["marine1"]["dcemp_ar1_whatsgoinon"] = "dcemp_ar1_whatsgoinon";
    level._ID30909["foley"]["dcemp_fly_justkeepmovin"] = "dcemp_fly_justkeepmovin";
    level._ID30909["dunn"]["dcemp_cpd_lookout"] = "dcemp_cpd_lookout";
    level._ID30909["dunn"]["dcemp_cpd_wearetotally"] = "dcemp_cpd_wearetotally";
    level._ID30909["foley"]["dcemp_fly_getagrip"] = "dcemp_fly_getagrip";
    level._ID30901["foley"]["dcemp_fly_getagrip"] = %dcemp_fly_getagrip;
    level._ID30909["dunn"]["dcemp_cpd_huah"] = "dcemp_cpd_huah";
    level._ID30909["marine1"]["dcemp_ar1_huah"] = "dcemp_ar1_huah";
    level._ID30909["marine1"]["dcemp_ar1_whatwasthat"] = "dcemp_ar1_whatwasthat";
    level._ID30909["foley"]["dcemp_fly_stayhere"] = "dcemp_fly_stayhere";
    level._ID30901["foley"]["dcemp_fly_stayhere"] = %dcemp_fly_stayhere;
    level._ID30909["dunn"]["dcemp_cpd_younuts"] = "dcemp_cpd_younuts";
    level._ID30909["foley"]["dcemp_fly_wartofight"] = "dcemp_fly_wartofight";
    level._ID30909["marine1"]["dcemp_ar1_thisisweird"] = "dcemp_ar1_thisisweird";
    level._ID30909["dunn"]["dcemp_cpd_soquiet"] = "dcemp_cpd_soquiet";
    level._ID30909["dunn"]["dcemp_cpd_heywhatthe"] = "dcemp_cpd_heywhatthe";
    level._ID30909["marine1"]["dcemp_ar1_minedowntoo"] = "dcemp_ar1_minedowntoo";
    level._ID30909["foley"]["dcemp_fly_empblast"] = "dcemp_fly_empblast";
    level._ID30909["marine1"]["dcemp_ar1_findironsite"] = "dcemp_ar1_findironsite";
    level._ID30909["marine2"]["dcemp_ar1_huah"] = "dcemp_ar1_huah";
    level._ID30909["dunn"]["dcemp_cpd_checkitout"] = "dcemp_cpd_checkitout";
    level._ID30909["foley"]["dcemp_fly_dammit"] = "dcemp_fly_dammit";
    level._ID30909["foley"]["dcemp_fly_regroup"] = "dcemp_fly_regroup";
    level._ID30909["dunn"]["dcemp_cpd_huah2"] = "dcemp_cpd_huah2";
    level._ID30909["dunn"]["dcemp_cpd_star"] = "dcemp_cpd_star";
    level._ID30901["dunn"]["dcemp_cpd_star"] = %h2_dcemp_run_sequence_dunn_star;
    level._ID30909["dunn"]["dcemp_cpd_willfire"] = "dcemp_cpd_willfire";
    level._ID30901["dunn"]["dcemp_cpd_willfire"] = %h2_dcemp_run_sequence_dunn_staror;
    level._ID30909["runner"]["dcemp_ar3_dontshoot"] = "dcemp_ar3_dontshoot";
    level._ID30901["runner"]["dcemp_ar3_dontshoot"] = %h2_dcemp_run_sequence_runner_idont;
    level._ID30909["foley"]["dcemp_fly_properresponse"] = "dcemp_fly_properresponse";
    level._ID30901["foley"]["dcemp_fly_properresponse"] = %h2_dcemp_run_sequence_foley_proper;
    level._ID30909["runner"]["dcemp_ar3_whiskeyhotel"] = "dcemp_ar3_whiskeyhotel";
    level._ID30901["runner"]["dcemp_ar3_whiskeyhotel"] = %h2_dcemp_run_sequence_runner_colonel;
    level._ID30909["dunn"]["dcemp_cpd_wheregoin"] = "dcemp_cpd_wheregoin";
    level._ID30901["dunn"]["dcemp_cpd_wheregoin"] = %h2_dcemp_run_sequence_dunn_sowhere;
    level._ID30909["runner"]["dcemp_ar3_everyoneelse"] = "dcemp_ar3_everyoneelse";
    level._ID30901["runner"]["dcemp_ar3_everyoneelse"] = %h2_dcemp_run_sequence_runner_totell;
    level._ID30909["foley"]["dcemp_fly_heardtheman"] = "dcemp_fly_heardtheman";
    level._ID30901["foley"]["dcemp_fly_heardtheman"] = %h2_dcemp_run_sequence_foley_youheard;
    level._ID30909["foley"]["dcemp_fly_dunnyoureup"] = "dcemp_fly_dunnyoureup";
    level._ID30909["dunn"]["dcemp_cpd_clear"] = "dcemp_cpd_clear";
    level._ID30909["marine2"]["dcemp_ar2_gotoursix"] = "dcemp_ar2_gotoursix";
    level._ID30909["foley"]["dcemp_fly_copythat"] = "dcemp_fly_copythat";
    level._ID30909["marine3"]["dcemp_ar3_star"] = "dcemp_ar3_star";
    level._ID30909["dunn"]["dcemp_cpd_sonofa"] = "dcemp_cpd_sonofa";
    level._ID30909["foley"]["dcemp_fly_contact"] = "dcemp_fly_contact";
    level._ID30909["dunn"]["dcemp_cpd_conact"] = "dcemp_cpd_conact";
    level._ID30909["dunn"]["dcemp_cpd_huaah"] = "dcemp_cpd_huaah";
    level._ID30909["marine1"]["dcemp_ar2_clear"] = "dcemp_ar2_clear";
    level._ID30909["foley"]["dcemp_fly_roomclear"] = "dcemp_fly_roomclear";
    level._ID30909["foley"]["dcemp_fly_oldexecbuilding"] = "dcemp_fly_oldexecbuilding";
    level._ID30909["dunn"]["dcemp_cpd_gottagoout"] = "dcemp_cpd_gottagoout";
    level._ID30909["foley"]["dcemp_fly_checkvitals"] = "dcemp_fly_checkvitals";
    level._ID30909["dunn"]["dcemp_cpd_gonner"] = "dcemp_cpd_gonner";
    level._ID30909["foley"]["dcemp_fly_keepquiet"] = "dcemp_fly_keepquiet";
    level._ID30909["marine1"]["dcemp_ar2_gotavisual"] = "dcemp_ar2_gotavisual";
    level._ID30909["foley"]["dcemp_fly_moveintopos"] = "dcemp_fly_moveintopos";
    level._ID30909["marine1"]["dcemp_ar2_clearshot"] = "dcemp_ar2_clearshot";
    level._ID30909["foley"]["dcemp_fly_smokeem"] = "dcemp_fly_smokeem";
    level._ID30909["foley"]["dcemp_fly_moveup"] = "dcemp_fly_moveup";
    level._ID30909["dunn"]["dcemp_cpd_whatabout"] = "dcemp_cpd_whatabout";
    level._ID30909["foley"]["dcemp_fly_whataboutem"] = "dcemp_fly_whataboutem";
    level._ID30909["marine1"]["dcemp_ar2_gotoursixgo"] = "dcemp_ar2_gotoursixgo";
    level._ID30909["dunn"]["dcemp_cpd_itsclear"] = "dcemp_cpd_itsclear";
    level._ID30909["dunn"]["dcemp_cpd_freezingmonsoon"] = "dcemp_cpd_freezingmonsoon";
    level._ID30909["marine1"]["dcemp_ar2_huah"] = "dcemp_ar2_huah";
    level._ID30909["foley"]["dcemp_fly_quietseesomething"] = "dcemp_fly_quietseesomething";
    level._ID30909["foley"]["dcemp_fly_holdyourfire"] = "dcemp_fly_holdyourfire";
    level._ID30909["dunn"]["dcemp_cpd_aretheyfriendly"] = "dcemp_cpd_aretheyfriendly";
    level._ID30909["foley"]["dcemp_fly_dontknowstar"] = "dcemp_fly_dontknowstar";
    level._ID30909["foley"]["dcemp_fly_coverme"] = "dcemp_fly_coverme";
    level._ID30909["foley"]["dcemp_fly_staaar"] = "dcemp_fly_staaar";
    level._ID30909["dunn"]["dcemp_cpd_saytexas"] = "dcemp_cpd_saytexas";
    level._ID30909["marine1"]["dcemp_ar2_streetclear"] = "dcemp_ar2_streetclear";
    level._ID30909["foley"]["dcemp_fly_oscarmike"] = "dcemp_fly_oscarmike";
    level._ID30909["foley"]["dcemp_fly_watchmovement"] = "dcemp_fly_watchmovement";
}
#using_animtree("vehicles");

_ID46077()
{
    level._ID30895["emp_heli_spotlight"]["crash"] = %dcemp_emp_heli_crash;
    level._ID30895["emp_heli_rappel"]["crash"] = %cobra_crash;
    level._ID30895["emp_heli_distant"]["crash"] = %cobra_crash;
    level._ID30895["emp_heli_last"]["crash"] = %sniper_escape_crash_mi28_crash;
    level._ID30895["generic"]["cobra_crash"] = %cobra_crash;
    level._ID30895["street_car"]["crash"] = %dcemp_car_hit;
    level._ID30895["emp_mi28"]["crash"] = %dcemp_emp_heli_crash;
    level._ID30900["emp_mi28"] = #animtree;
    level._ID30904["emp_mi28"] = "vehicle_mi-28_flying_low";
    level._ID30895["street_mi28a"]["crash"] = %dcemp_heli_crash_1;
    level._ID30900["street_mi28a"] = #animtree;
    level._ID30904["street_mi28a"] = "vehicle_mi-28_flying_low";
    level._ID30895["street_mi28b"]["crash"] = %dcemp_heli_crash_2;
    level._ID30900["street_mi28b"] = #animtree;
    level._ID30904["street_mi28b"] = "vehicle_mi-28_flying_low";
    level._ID30895["street_bh"]["crash"] = %dcemp_heli_crash_3;
    level._ID30900["street_bh"] = #animtree;
    level._ID30904["street_bh"] = "vehicle_blackhawk_low";
}

_ID49307( var_0 )
{
    var_1 = getent( "lobby_door_right", "targetname" );
    var_2 = getentarray( var_1.target, "targetname" );
    var_3 = undefined;

    foreach ( var_5 in var_2 )
    {
        if ( isdefined( var_5._ID31388 ) && var_5._ID31388 == "door_coll" )
            var_3 = var_5;
    }

    _ID42237::_ID3294( var_2, ::linkto, var_1 );
    var_3 connectpaths();
    _ID42237::_ID14402( "lobby_door_kick" );
    var_7 = 0.4;
    var_1 rotateroll( 90, var_7 );
    var_1 playsound( "wood_door_kick" );
    var_1 waittill( "rotatedone" );
    var_1 vibrate( ( 0, 0, 1 ), 1, 0.4, 0.5 );
}

_ID54490( var_0 )
{
    var_0._ID44680 = var_0.grenadeweapon;
    var_0.grenadeweapon = "flash_grenade";
    var_0.grenadeammo++;
    var_1 = _ID42237::_ID16638( "office_magic_bullet_target", "targetname" );
    var_2 = vectornormalize( var_1.origin - var_0 gettagorigin( "TAG_INHAND" ) + ( 0, 0, 40 ) );
    var_2 *= 800;
    var_3 = 1;
    var_0 magicgrenademanual( var_0 gettagorigin( "TAG_INHAND" ), var_2, var_3 );
}

_ID51647( var_0 )
{
    var_1 = getent( "street_flare", "targetname" );
    var_2 = spawn( "script_model", var_1._ID45977.origin );
    var_2.angles = var_1._ID45977.angles;
    var_2 setmodel( var_1._ID45977.model );
    var_2 linkto( var_1 );
    var_1._ID45977 delete();
    var_1._ID45977 = var_2;
    var_1._ID45977 linkto( var_1 );
    var_3 = getentarray( "parking_pickup_flare", "script_noteworthy" );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];
        var_5 _ID42407::_ID10226( 0, maps\dcemp_code::_ID45893, 0, 1 );
    }

    playfxontag( level._ID1426["handflare_red_dcemp"], var_1._ID45977, "TAG_ORIGIN" );
    var_1.origin = var_0 gettagorigin( "TAG_INHAND" );
    var_6 = anglestoup( var_0 gettagangles( "TAG_INHAND" ) );
    var_7 = vectortoangles( var_6 * -1 );
    var_1.angles = var_7;
    var_1 linkto( var_0, "TAG_INHAND" );
}

_ID52074( var_0 )
{
    var_1 = getent( "street_flare", "targetname" );
    var_1 unlink();
    var_2 = anglestoforward( var_0.angles );
    var_3 = var_0.origin + var_2 * 50;
    var_3 += ( 0, 0, 18 );
    var_2 = vectornormalize( var_3 - var_0.origin );
    var_4 = var_2 * 704;
    var_5 = 0.85;
    var_1 movegravity( var_4, var_5 );
    var_1 rotatevelocity( ( 400, 0, 50 ), var_5 );
    wait(var_5);
    _ID42237::_ID14402( "plaza_throw_react" );
    var_6 = var_1;
    var_1 = spawn( "script_model", var_6.origin );
    var_1.angles = var_6.angles;
    var_1 setmodel( var_6.model );
    var_1._ID45977 = var_6._ID45977;
    var_1.targetname = "street_flare";
    var_6._ID45977 linkto( var_1 );
    var_6 delete();
    var_1 thread _ID42407::_ID27079( "scn_dcemp_street_flare_bounce" );
    var_5 = 0.4;
    var_4 = var_2 * 415;
    var_1 movegravity( var_4, var_5 );
    var_1 rotatevelocity( ( 550, 0, 50 ), var_5 );
    var_7 = getent( "parking_throw_flare", "script_noteworthy" );
    var_7 _ID42407::_ID10226( 0, maps\dcemp_code::_ID45893, 50000, 1, 0.027 );
    var_7 _meth_84a7( "force_on" );
    var_7 = getent( "parking_throw_flare_omni", "script_noteworthy" );
    var_7 _ID42407::_ID10226( 0, maps\dcemp_code::_ID45893, 9000, 1, 0.15 );
    thread _ID42407::_ID4918( "axis" );
    wait(var_5);
    var_6 = var_1;
    var_1 = spawn( "script_model", var_6.origin );
    var_1.angles = var_6.angles;
    var_1 setmodel( var_6.model );
    var_1._ID45977 = var_6._ID45977;
    var_1.targetname = "street_flare";
    var_6._ID45977 linkto( var_1 );
    var_6 delete();
    var_5 = 1;
    var_8 = var_2 * 95;
    var_9 = var_1.origin + ( var_8[0], var_8[1], 0 );
    var_1 moveto( var_9, var_5, 0, var_5 );
    var_1 waittill( "movedone" );
    var_1 = getent( "street_flare", "targetname" );
    var_10 = spawn( "script_model", var_1._ID45977.origin );
    var_10.angles = var_1._ID45977.angles;
    var_10 setmodel( var_1._ID45977.model );
    var_10 linkto( var_1 );
    var_1._ID45977 delete();
    var_1._ID45977 = var_10;
    var_1._ID45977 linkto( var_1 );
    playfxontag( level._ID1426["groundflare_red_dcemp"], var_1._ID45977, "TAG_ORIGIN" );
}

_ID44532( var_0 )
{
    thread maps\dcemp_aud::runner_meetup_dialog();
    wait 0.5;
    _ID42237::_ID14402( "meetup_runner_leave" );
}

_ID47482( var_0 )
{
    level._ID44224 _ID42407::_ID10805( "dcemp_cpd_wheregoin" );
    level._ID46628 _ID42407::_ID10805( "dcemp_ar3_everyoneelse" );
    _ID42237::_ID14402( "meetup_runner_sprint" );
    _ID42237::_ID14402( "lobby_main" );
}

_ID48218( var_0 )
{
    var_0 setlookatentity();
}
#using_animtree("script_model");

_ID52250()
{
    level._ID30900["rope"] = #animtree;
    level._ID30904["rope"] = "rappelrope100_ri";
    level._ID30895["rope"]["rappel_stand_idle_1"][0] = %launchfacility_a_rappel_idle_1_100ft_rope;
    level._ID30895["rope"]["rappel_stand_idle_2"][0] = %launchfacility_a_rappel_idle_2_100ft_rope;
    level._ID30895["rope"]["rappel_stand_idle_3"][0] = %launchfacility_a_rappel_idle_3_100ft_rope;
    level._ID30895["rope"]["rappel_drop"] = %launchfacility_a_rappel_1_100ft_rope;
}

_ID53583()
{
    level._ID30900["tunnel_door"] = #animtree;
    level._ID30904["tunnel_door"] = "tag_origin";
    level._ID30895["tunnel_door"]["DCemp_door_sequence"] = %dcemp_door_sequence_door;
    level._ID30900["tunnel_lamp"] = #animtree;
    level._ID30895["tunnel_lamp"]["dcemp_tunnel_lamp"][0] = %h2_wh_tunnel_hanging_lamp_idle;
}

_ID54345()
{
    level._ID30900["plank"] = #animtree;
    level._ID30904["plank"] = "h2_dcb_blackhawk_bars";
    level._ID30895["plank"]["dcemp_BHrescue"] = %h2_dcemp_bhrescue_plank_1;
    level._ID30900["plank1"] = #animtree;
    level._ID30904["plank1"] = "tag_origin";
    level._ID30895["plank1"]["dcemp_BHrescue"] = %dcemp_bhrescue_plank_1;
    level._ID30900["plank2"] = #animtree;
    level._ID30904["plank2"] = "tag_origin";
    level._ID30895["plank2"]["dcemp_BHrescue"] = %dcemp_bhrescue_plank_2;
    level._ID30900["iss_satellite"] = #animtree;
    level._ID30904["iss_satellite"] = "tag_origin";
    level._ID30895["iss_satellite"]["ISS_animation"] = %iss_sat;
}
#using_animtree("player");

_ID27229()
{
    level._ID30900["flare_rig"] = #animtree;
    level._ID30904["flare_rig"] = "viewhands_player_us_army";
    level._ID30895["flare_rig"]["flare"] = %dcemp_player_flare_wave;
    _ID42259::_ID2063( "flare_rig", "fx", "flare_start_fx", "flare" );
    _ID42259::_ID2063( "flare_rig", "fx", "whitehouse_hammerdown_jets_safe", "flare" );
    level._ID30900["iss_rig"] = #animtree;
    level._ID30904["iss_rig"] = "viewbody_iss";
    level._ID30895["iss_rig"]["ISS_animation"] = %h2_iss_player_rotate;
    level._ID30895["iss_rig"]["ISS_idle"][0] = %h2_iss_player_idle;
    level._ID30895["iss_rig"]["ISS_float_away"] = %h2_iss_player_float_away;
    level._ID30895["player_rig"]["dcemp_BHrescue"] = %h2_dcemp_bhrescue_player;
}
#using_animtree("door");

_ID53071()
{
    level._ID30900["door"] = #animtree;
    level._ID30904["door"] = "com_door_01_handleleft2";
    level._ID30895["door"]["shotgunbreach_door_immediate"] = %shotgunbreach_door_immediate;
}

setup_exploder_anim()
{
    level._ID43404 = [];
    level._ID43404[0] = "exploder_script_model";
}
#using_animtree("script_model");

script_model_anim()
{
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_a_anim"] = %h2_iss_destruction_a_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_b_anim"] = %h2_iss_destruction_b_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_c_anim"] = %h2_iss_destruction_c_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_d_anim"] = %h2_iss_destruction_d_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_e_anim"] = %h2_iss_destruction_e_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_e_2_anim"] = %h2_iss_destruction_e_2_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_f_anim"] = %h2_iss_destruction_f_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_g_anim"] = %h2_iss_destruction_g_anim;
    level._ID30895["exploder_script_model"]["h2_iss_destruction_h_anim"] = %h2_iss_destruction_h_anim;
    level._ID30900["moto"] = #animtree;
    level._ID30895["moto"]["safe_zone_in"] = %h2_dcemp_fallingdebris_motorcycle;
    level._ID30900["door2"] = #animtree;
    level._ID30895["door2"]["safe_zone_out"] = %h2_dcemp_fallingdebris_door;
}

sound_street_flare_throw()
{
    waitframe;
    _ID42259::_ID2075( "generic", "street_flare_throw", "scn_dcemp_street_flare_throw" );
}
