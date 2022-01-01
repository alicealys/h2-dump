// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    precachemodel( "com_cellphone_on" );
    precachemodel( "com_metal_briefcase" );
    _ID48690();
    _ID52904();
    _ID50267();
    _ID45998();
    _ID40078();
    _ID27230();
    _ID23866();
    _ID51721();
    _ID46978();
    _ID46961();
    _ID10730();
}
#using_animtree("generic_human");

_ID48690()
{
    var_0 = [];
    var_0[0] = 2;
    var_0[1] = 1;
    var_0[2] = 1;
    var_0[3] = 1;
    var_1 = [];
    var_1[0] = 7;
    var_1[1] = 3;
    var_2 = _ID42237::_ID15649( var_1 );
    level._ID30895["civilian_cellphone_walk"]["run_noncombat"][0] = %civilian_cellphonewalk;
    level._ID30895["civilian_cellphone_walk"]["run_noncombat"][1] = %civilian_cellphonewalk_twitch;
    level._ID30895["civilian_cellphone_walk"]["run_weights"] = var_2;
    level._ID30895["civilian_cellphone_walk"]["dodge_left"] = %civilian_cellphonewalk_dodge_l;
    level._ID30895["civilian_cellphone_walk"]["dodge_right"] = %civilian_cellphonewalk_dodge_r;
    level._ID30895["civilian_cellphone_walk"]["turn_left_90"] = %civilian_cellphonewalk_turn_l;
    level._ID30895["civilian_cellphone_walk"]["turn_right_90"] = %civilian_cellphonewalk_turn_r;
    level._ID30895["civilian_hurried_walk"]["run_noncombat"][0] = %civilian_walk_hurried_1;
    level._ID30895["civilian_hurried_walk"]["run_noncombat"][1] = %civilian_walk_hurried_2;
    level._ID30895["civilian_cool_walk"]["run_noncombat"][0] = %civilian_walk_cool;
    level._ID30895["civilian_briefcase_walk"]["run_noncombat"][0] = %civilian_briefcase_walk;
    level._ID30895["civilian_briefcase_walk"]["dodge_left"] = %civilian_briefcase_walk_dodge_l;
    level._ID30895["civilian_briefcase_walk"]["dodge_right"] = %civilian_briefcase_walk_dodge_r;
    level._ID30895["civilian_briefcase_walk"]["turn_left_90"] = %civilian_briefcase_walk_turn_l;
    level._ID30895["civilian_briefcase_walk"]["turn_right_90"] = %civilian_briefcase_walk_turn_r;
}

_ID50267()
{
    level._ID30895["generic"]["civilian_stand_idle"][0] = %civilian_stand_idle;
    level._ID30895["generic"]["civilian_smoking_A"][0] = %civilian_smoking_a;
    level._ID30895["generic"]["civilian_smoking_B"][0] = %civilian_smoking_b;
    level._ID30895["generic"]["civilian_directions_1_A"][0] = %civilian_directions_1_a;
    level._ID30895["generic"]["civilian_directions_1_B"][0] = %civilian_directions_1_b;
    level._ID30895["generic"]["civilian_hackey_guy1"][0] = %civilian_hackey_guy1;
    level._ID30895["generic"]["civilian_hackey_guy2"][0] = %civilian_hackey_guy2;
}

_ID52904()
{
    level._ID30895["generic"]["bike_rider"] = %favela_bicycle_rider;
    level._ID30895["makarov"]["opening_scene"] = %h2_favela_van_shootout_rojasassist;
    level._ID30895["makarov"]["opening_scene_shoot"][0] = %favela_van_shootout_guy1_aimidle;
    level._ID30895["makarov"]["opening_scene_flee"] = %favela_van_shootout_guy1_runaway;
    level._ID30895["makarov"]["stand_fire"] = %pistol_stand_fire_a;
    level._ID30895["gunner1"]["opening_scene"] = %h2_favela_van_shootout_guy2;
    level._ID30895["gunner2"]["opening_scene"] = %h2_favela_van_shootout_guy3;
    level._ID30895["driver"]["opening_scene"] = %h2_favela_van_shootout_guy4;
    level._ID30895["generic"]["airport_civ_fear_drop_5"] = %airport_civ_fear_drop_5;
    level._ID30895["generic"]["airport_civ_dying_groupA_kneel"] = %airport_civ_dying_groupa_kneel;
    level._ID30895["generic"]["airport_civ_dying_groupA_lean"] = %airport_civ_dying_groupa_lean;
    level._ID30895["driver"]["idle"][0] = %coup_driver_idle;
    level._ID30895["driver"]["drive_and_die"] = %h2_favela_opening_driver;
    _ID42259::_ID2058( "driver", "bullet hit", maps\favela::_ID48621 );
    _ID42259::_ID2058( "driver", "steering hit", maps\favela::_ID50904 );
    level._ID30895["curtain_pull"]["pulldown"] = %favela_curtain_pull;
    level._ID30895["generic"]["window_smash"] = %window_melee;
    level._ID30895["generic"]["civilian_window_1"] = %unarmed_shout_window_v2;
    level._ID30909["generic"]["civilian_window_1"] = "civilian_window_shout_1";
    level._ID30895["desert_eagle_guy"]["run"] = %unarmed_run_russian;
    level._ID30895["generic"]["run_death_roll"] = %run_death_roll;
    level._ID30895["generic"]["alley_death_fall"] = %civilian_run_2_crawldeath;
    level._ID30895["generic"]["alley_death_fall_too_late"] = %run_death_flop_nodropgun;
    _ID42259::_ID2056( "generic", "alley_death_fall", "bodyfall large", "scn_favela_death_crawl" );
    level._ID30895["meat"]["favela_warning_jump"] = %h2_favela_civ_warning_jump;
    level._ID30895["meat"]["favela_warning_landing"] = %h2_favela_civ_warning_landing;
    level._ID30895["mactavish"]["run_and_wave"] = %favela_run_and_wave;
    level._ID30895["mactavish"]["intro"] = %h2_favela_opening_soap;
    level._ID30895["mactavish"]["hit_by_car"] = %h2_favela_intersection_soap_crossing_slide;
    _ID42259::_ID2062( "mactavish", "dialog", "hit_by_car", "favela_cmt_nonlethal" );
    level._ID30895["faust"]["ending_takedown"] = %h2_favela_ending_rojas_tackled;
    level._ID30895["mactavish"]["ending_takedown"] = %h2_favela_ending_soap_tackling;
    _ID42259::_ID2056( "mactavish", "ending_takedown", "break_glass", "scn_favela_npc_through_window" );
    _ID42259::_ID2058( "mactavish", "break_glass", maps\favela_code::_ID47308 );
    _ID42259::_ID2058( "mactavish", "break_glass", maps\favela_code::_ID46738 );
    level._ID30895["torture_enemy"]["torture"] = %h2_favela_torture_sequence_rojasassist;
    level._ID30895["torture_friend1"]["torture"] = %h2_favela_torture_sequence_ghost;
    level._ID30895["torture_friend2"]["torture"] = %h2_favela_torture_sequence_soap;
    level._ID30895["torture_friend2"]["torture"] = %h2_favela_torture_sequence_soap_intro;
    level._ID30895["torture_friend2"]["tortureOutro"] = %h2_favela_torture_sequence_soap;
    _ID42259::_ID2058( "torture_friend2", "garage_door_closed", maps\favela_aud::_ID50452 );
    _ID42259::_ID2062( "torture_friend2", "dialog", "tortureOutro", "favela_cmt_hidinginfav" );
    _ID42259::_ID2063( "torture_friend2", "pull_start", "drop_door" );
    level._ID30895["royce"]["torture"] = %h2_favela_torture_sequence_royce;
    level._ID30895["generic"]["lean_none"] = %run_lowready_f;
    level._ID30895["generic"]["lean_none_jog"] = %combat_jog;
    level._ID30895["trailer"]["casual_stand_v2_twitch_talk"][0] = %casual_stand_v2_twitch_talk;
    level._ID30895["generic"]["h2_civilian_close_shutter"] = %h2_civilian_close_shutter;
    level._ID30895["faust"]["run"][0] = %rojas_unarmed_run;
    level._ID30895["generic"]["hit_by_car"] = %h2_favela_intersection_civilian;
    level._ID30895["driver"]["hit_by_car"] = %h2_favela_intersection_driver01;
    level._ID30895["driver2"]["hit_by_car"] = %h2_favela_intersection_driver03;
}
#using_animtree("dog");

_ID45998()
{
    level._ID30895["dog"]["fence_attack"] = %sniper_escape_dog_fence;
    level._ID30895["dog"]["german_shepherd_idle"][0] = %german_shepherd_idle;
    level._ID30895["dog"]["german_shepherd_eating_loop"][0] = %german_shepherd_eating_loop;
}
#using_animtree("vehicles");

_ID40078()
{
    level._ID30900["van"] = #animtree;
    level._ID30895["van"]["opening_scene"] = %h2_favela_van_shootout_van;
    level._ID30900["car"] = #animtree;
    level._ID30895["car"]["intro"] = %h2_favela_opening_car;
    level._ID30895["car"]["hit_by_car"] = %h2_favela_intersection_car02;
    level._ID30900["car2"] = #animtree;
    level._ID30895["car2"]["hit_by_car"] = %h2_favela_intersection_car03;
    level._ID30895["car"]["ending_takedown"] = %favela_ending_car;
    _ID42259::_ID2056( "car", "ending_takedown", "window_shatter", "scn_favela_npc_car_landing" );
    _ID42259::_ID2058( "car", "window_shatter", maps\favela_code::_ID47408 );
}
#using_animtree("player");

_ID27230()
{
    level._ID30895["player_rig"]["die"] = %h2_favela_opening_playerview_death;
    level._ID30895["player_rig"]["duck_down"] = %h2_favela_opening_playerview_down;
    level._ID30895["player_rig"]["duck_down_idle"][0] = %h2_favela_opening_playerview_downidle;
    level._ID30895["player_rig"]["duck_up"] = %h2_favela_opening_playerview_up;
    level._ID30895["player_rig"]["intro"] = %h2_favela_opening_playerview_intro;
    level._ID30895["player_rig"]["idle"][0] = %h2_favela_opening_playerview_idle;
    level._ID30895["player_rig"]["getout"] = %h2_favela_opening_playerview_getout;
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "h2_viewbody_stoccom";
}
#using_animtree("script_model");

_ID23866()
{
    level._ID30900["bike"] = #animtree;
    level._ID30895["bike"]["pedal"] = %favela_bicycle;
    level._ID30900["curtain"] = #animtree;
    level._ID30904["curtain"] = "h2_curtain_torn01_animated";
    level._ID30895["curtain"]["pulldown"] = %favela_curtain_model_pull;
    level._ID30900["chain"] = #animtree;
    level._ID30895["chain"]["idle"][0] = %h2_fav_chained_lamps_soft_swing;
    level._ID30900["fan"] = #animtree;
    level._ID30895["fan"]["idle"][0] = %fan_upright_tall_01_spin;
    level._ID30900["soccerball"] = #animtree;
    level._ID30904["soccerball"] = "h2_soccer_ball";
    level._ID30895["soccerball"]["soccerball_for_guys"] = %h2_favela_civ_warning_ball_01;
    level._ID30895["soccerball"]["soccerball_single_guy"] = %h2_favela_civ_warning_ball_02;
    _ID42259::_ID2066( "soccerball", "start_ragdoll", "multi_soccerball", "soccerball_for_guys" );
    _ID42259::_ID2066( "soccerball", "start_ragdoll", "single_soccerball", "soccerball_single_guy" );
    _ID42259::_ID2066( "civilian_custom", "start_event", "soccer_start", "civ_playing_soccer_05" );
    level._ID30900["fence"] = #animtree;
    level._ID30904["fence"] = "h2_fav_soccer_fence_anim";
    level._ID30895["fence"]["fence_shake"] = %h2_dog_fence;
    level._ID30900["flag1"] = #animtree;
    level._ID30895["flag1"]["flag_idle"][0] = %h2_fav_brazil_flag_animated_01_idle;
    level._ID30895["flag1"]["flag_idle"][1] = %h2_fav_brazil_flag_animated_01_wind1;
    level._ID30895["flag1"]["flag_idle"][2] = %h2_fav_brazil_flag_animated_01_wind2;
    level._ID30900["flag2"] = #animtree;
    level._ID30895["flag2"]["flag_idle"][0] = %h2_fav_brazil_flag_animated_02_idle;
    level._ID30895["flag2"]["flag_idle"][1] = %h2_fav_brazil_flag_animated_02_wave;
    level._ID30904["chicken_anim"] = "chicken";
    level._ID30900["chicken_anim"] = #animtree;
    level._ID30895["chicken_anim"]["crazy01"][0] = %chicken_cage_loop_01;
    level._ID30895["chicken_anim"]["crazy02"][0] = %chicken_cage_loop_02;
    level._ID30895["chicken_anim"]["pecking"][0] = %chicken_cage_pecking_idle;
    level._ID30895["chicken_anim"]["seated"][0] = %chicken_cage_seated_idle;
    level._ID30895["chicken_anim"]["death01"] = %chicken_cage_death;
    level._ID30895["chicken_anim"]["death02"] = %chicken_cage_death_02;
    level._ID30904["torture_torch"] = "h2_fav_propane_blow_torch";
    level._ID30900["torture_torch"] = #animtree;
    level._ID30895["torture_torch"]["torture"] = %h2_favela_torture_sequence_blowtorch;
    level._ID30904["torture_door"] = "h2_fav_garage_door_03_animated";
    level._ID30900["torture_door"] = #animtree;
    level._ID30895["torture_door"]["tortureOutro"] = %h2_favela_torture_sequence_garagedoor;
    level._ID30900["h2_chains_02_without_attach_animated"] = #animtree;
    level._ID30904["h2_chains_02_without_attach_animated"] = "h2_chains_02_without_attach_animated";
    level._ID30895["h2_chains_02_without_attach_animated"]["idle"][0] = %h2_gulag_hanging_chains_03;
    level._ID30900["h2_cs_chain_accessories_hanging_straight_short_01"] = #animtree;
    level._ID30904["h2_cs_chain_accessories_hanging_straight_short_01"] = "h2_cs_chain_accessories_hanging_straight_short_01";
    level._ID30895["h2_cs_chain_accessories_hanging_straight_short_01"]["idle"][0] = %h2_gulag_hanging_chains_02;
    level._ID30900["h2_chains_alone_03_animated"] = #animtree;
    level._ID30904["h2_chains_alone_03_animated"] = "h2_chains_alone_03_animated";
    level._ID30895["h2_chains_alone_03_animated"]["idle"][0] = %h2_chains_03_alone_animated;
    level._ID30904["pliers"] = "h2_fav_plier";
    level._ID30900["pliers"] = #animtree;
    level._ID30895["pliers"]["torture"] = %h2_favela_torture_sequence_pliers;
    level._ID30904["goals"] = "h2_fav_soccer_goal_anim";
    level._ID30900["goals"] = #animtree;
    level._ID30895["goals"]["soccer_goal"][0] = %h2_fav_soccer_goal_idle;
    level._ID30900["sheet_green"] = #animtree;
    level._ID30895["sheet_green"]["sheet_green"] = %h2_hagging_clothes_sheet;
    level._ID30900["payphone"] = #animtree;
    level._ID30895["payphone"]["opening_radiotower"] = %h2_favela_escape_opening_phone;
}

_ID10730()
{
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_ready2move" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_gst_good2go" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_rogerthat" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_inposition" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_insight" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_needhimalive" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_getdown" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_gettingaway" );
    _ID42259::_ID2062( "mactavish", "dialog", "intro", "favela_cmt_driversdead" );
    level._ID30908["favela_gst_onmyway"] = "favela_gst_onmyway";
    level._ID30908["favela_gst_hesfast"] = "favela_gst_hesfast";
    level._ID30909["mactavish"]["favela_cmt_nonlethal"] = "favela_cmt_nonlethal";
    level._ID30909["mactavish"]["favela_cmt_takeshot"] = "favela_cmt_takeshot";
    level._ID30909["mactavish"]["favela_cmt_hesdown"] = "favela_cmt_hesdown";
    _ID42259::_ID2062( "royce", "dialog", "torture", "favela_ryc_letsgo" );
    level._ID30909["royce"]["favela_ryc_watchyourbg"] = "favela_ryc_watchyourbg";
    level._ID30909["royce"]["favela_ryc_warning"] = "favela_ryc_warning";
    level._ID30909["meat"]["favela_met_rogerthat"] = "favela_met_rogerthat";
    level._ID30908["favela_cmt_fullbattalion"] = "favela_cmt_fullbattalion";
    level._ID30908["favela_ryc_withyou"] = "favela_ryc_withyou";
    level._ID30908["favela_cmt_doingok"] = "favela_cmt_doingok";
    level._ID30908["favela_ryc_nosign"] = "favela_ryc_nosign";
    level._ID30908["favela_cmt_keepsearching"] = "favela_cmt_keepsearching";
    level._ID30908["favela_ryc_moveup"] = "favela_ryc_moveup";
    level._ID30908["favela_ryc_meatisdown"] = "favela_ryc_meatisdown";
    level._ID30908["favela_ryc_imhit"] = "favela_ryc_imdown";
    level._ID30908["favela_cmt_cuthimoff"] = "favela_cmt_cuthimoff";
    level._ID30908["favela_cmt_keepgoing"] = "favela_cmt_keepgoing";
    level._ID30908["favela_cmt_notime"] = "favela_cmt_notime";
    level._ID30908["favela_cmt_watchrooftops"] = "favela_cmt_watchrooftops";
    level._ID30908["favela_cmt_theirterritory"] = "favela_cmt_theirterritory";
    level._ID30908["favela_cmt_stilltracking"] = "favela_cmt_stilltracking";
    level._ID30908["favela_gst_duffelbag"] = "favela_gst_duffelbag";
    level._ID30908["favela_cmt_intercept"] = "favela_cmt_intercept";
    level._ID30908["favela_cmt_yourside"] = "favela_cmt_yourside";
    level._ID30908["favela_gst_pinyoudown"] = "favela_gst_pinyoudown";
    level._ID30908["favela_cmt_lostsightagain"] = "favela_cmt_lostsightagain";
    level._ID30908["favela_gst_alleysbelow"] = "favela_gst_alleysbelow";
    level._ID30908["favela_cmt_stayonhim"] = "favela_cmt_stayonhim";
    level._ID30908["favela_gst_cuttingthru"] = "favela_gst_cuttingthru";
    level._ID30908["favela_cmt_headforrooftops"] = "favela_cmt_headforrooftops";
    level._ID30908["favela_gst_wayaround"] = "favela_gst_wayaround";
    level._ID30908["favela_gst_halfklick"] = "favela_gst_halfklick";
    level._ID30908["favela_cmt_eyeopen"] = "favela_cmt_eyeopen";
    level._ID30908["favela_gst_legshot"] = "favela_gst_legshot";
    level._ID30908["favela_cmt_donotengage"] = "favela_cmt_donotengage";
    level._ID30908["favela_gst_rogerthat2"] = "favela_gst_rogerthat2";
    level._ID30908["favela_cmt_spottedfaust"] = "favela_cmt_spottedfaust";
    level._ID30908["favela_cmt_unharmed"] = "favela_cmt_unharmed";
    level._ID30908["favela_cmt_cutoff"] = "favela_cmt_cutoff";
    level._ID30908["favela_cmt_nowheretogo"] = "favela_cmt_nowheretogo";
    level._ID30908["favela_cmt_traphimuphere"] = "favela_cmt_traphimuphere";
    level._ID30908["favela_gst_jumpedfence"] = "favela_gst_jumpedfence";
    level._ID30908["favela_cmt_goingleft"] = "favela_cmt_goingleft";
    level._ID30908["favela_gst_whereishe"] = "favela_gst_whereishe";
    level._ID30908["favela_cmt_slidingrooftops"] = "favela_cmt_slidingrooftops";
    level._ID30908["favela_gst_anotherlegshot"] = "favela_gst_anotherlegshot";
    level._ID30908["favela_cmt_carryhimback"] = "favela_cmt_carryhimback";
    level._ID30908["favela_cmt_closertoyourpart"] = "favela_cmt_closertoyourpart";
    level._ID30908["favela_cmt_motorcycle"] = "favela_cmt_motorcycle";
    level._ID30908["favela_gst_nohesnot"] = "favela_gst_nohesnot";
    level._ID30908["favela_cmt_dontshoothim"] = "favela_cmt_dontshoothim";
    level._ID30908["favela_cmt_onthemove"] = "favela_cmt_onthemove";
    level._ID30908["favela_cmt_anotherfence"] = "favela_cmt_anotherfence";
    level._ID30908["favela_cmt_corraling"] = "favela_cmt_corraling";
    level._ID30908["favela_cmt_backtowards"] = "favela_cmt_backtowards";
    level._ID30908["favela_cmt_doubleback"] = "favela_cmt_doubleback";
    level._ID30908["favela_cmt_farright"] = "favela_cmt_farright";
    level._ID30908["favela_gst_rogerthat"] = "favela_gst_rogerthat";
    level._ID30908["favela_gst_getaway"] = "favela_gst_getaway";
    _ID42259::_ID2062( "mactavish", "dialog", "ending_takedown", "favela_cmt_nohesnot" );
    _ID42259::_ID2062( "mactavish", "dialog", "ending_takedown", "favela_cmt_gotpackage" );
    level._ID30909["generic"]["walla1"] = "favela_civ1_outofhere";
    level._ID30909["generic"]["walla2"] = "favela_civ2_run";
    level._ID30909["generic"]["walla3"] = "favela_civ3_kidsoutofhere";
    level._ID30909["generic"]["walla4"] = "favela_civ4_carlarun";
    level._ID30909["generic"]["walla5"] = "favela_civ1_policecoming";
    level._ID30909["generic"]["walla6"] = "favela_civ2_surepolice";
    level._ID30909["generic"]["walla7"] = "favela_civ3_notstaying";
    level._ID30909["generic"]["walla8"] = "favela_civ4_policeraid";
    level._ID30909["generic"]["walla9"] = "favela_civ1_ineshouse";
    level._ID30909["generic"]["walla10"] = "favela_civ2_crossfire";
    level._ID30909["generic"]["walla11"] = "favela_civ3_shootout";
    level._ID30909["generic"]["walla12"] = "favela_civ4_otherside";
    level._ID48784[0] = "walla1";
    level._ID48784[1] = "walla2";
    level._ID48784[2] = "walla3";
    level._ID48784[3] = "walla4";
    level._ID48784[4] = "walla5";
    level._ID48784[5] = "walla6";
    level._ID48784[6] = "walla7";
    level._ID48784[7] = "walla8";
    level._ID48784[8] = "walla9";
    level._ID48784[9] = "walla10";
    level._ID48784[10] = "walla11";
    level._ID48784[11] = "walla12";
}
#using_animtree("animated_props");

_ID51721()
{
    level._ID30900["shutter"] = #animtree;
    level._ID30904["shutter"] = "h2_fav_windows_shutter_right_01_anim";
    level._ID30904["shutter"] = "h2_fav_windows_shutter_left_01_anim";
    level._ID30895["shutter"]["h2_civilian_close_shutter_l"] = %h2_civilian_close_shutter_l;
    level._ID30895["shutter"]["h2_civilian_close_shutter_r"] = %h2_civilian_close_shutter_r;
    level._ID30900["window"] = #animtree;
    level._ID30904["window"] = "h2_fav_window_19_right_anim";
    level._ID30904["window"] = "h2_fav_window_19_left_anim";
    level._ID30895["window"]["h2_fav_windows_right_open"] = %h2_fav_windows_right_open;
    level._ID30895["window"]["h2_fav_windows_left_open"] = %h2_fav_windows_left_open;
}
#using_animtree("generic_human");

_ID46978()
{
    level._ID30895["enemy_death"]["enemy_rooftop_death_a"] = %h2_favela_backalleys_death_rooftop_a;
    level._ID30895["enemy_death"]["enemy_rooftop_death_b"] = %h2_favela_backalleys_death_rooftop_b;
    level._ID30895["enemy_death"]["enemy_rooftop_death_c"] = %h2_favela_backalleys_death_rooftop_c;
    level._ID30895["enemy_death"]["enemy_rooftop_death_d"] = %h2_favela_backalleys_death_rooftop_d;
    level._ID30895["enemy_death"]["enemy_window_death_a"] = %h2_favela_backalleys_death_window_a;
    level._ID30895["enemy_death"]["enemy_window_death_a_idle"] = %h2_favela_backalleys_death_window_a_idle;
    level._ID30895["enemy_death"]["enemy_window_death_b"] = %h2_favela_backalleys_death_window_b;
    level._ID30895["enemy_death"]["enemy_window_death_b_idle"] = %h2_favela_backalleys_death_window_b_idle;
}

_ID46961()
{
    level._ID30895["civilian_custom"]["civ_playing_soccer_01"] = %h2_favela_civ_warning_civ01;
    level._ID30895["civilian_custom"]["civ_playing_soccer_02"] = %h2_favela_civ_warning_civ02;
    level._ID30895["civilian_custom"]["civ_playing_soccer_03"] = %h2_favela_civ_warning_civ03;
    level._ID30895["civilian_custom"]["civ_playing_soccer_04"] = %h2_favela_civ_warning_civ04;
    level._ID30895["civilian_custom"]["civ_chatting_01"] = %h2_favela_civ_warning_civ05;
    level._ID30895["civilian_custom"]["civ_chatting_02"] = %h2_favela_civ_warning_civ06;
    level._ID30895["civilian_custom"]["civ_playing_soccer_05"] = %h2_favela_civ_warning_civ07;
    level._ID30895["civilian_custom"]["rojas_assistant_run_gun"] = %h2_favela_runnershootingback_accident;
    level._ID30895["civilian_custom"]["rojas_assistant_run_gun_alley"] = %h2_favela_runnershootingback_alley;
    level._ID30895["ghost"]["ending_takedown"] = %h2_favela_ending_ghost_shoulderradio;
    _ID42259::_ID2062( "ghost", "dialog", "ending_takedown", "favela_gst_sendchopper" );
    _ID42259::_ID2062( "ghost", "dialog", "ending_takedown", "favela_gst_skiesareclear" );
    _ID42259::_ID2062( "ghost", "dialog", "ending_takedown", "favela_gst_onourown" );
    _ID42259::_ID2058( "ghost", "mus_play_stinger_02", ::_ID45289, "ending_takedown" );
}

_ID45289( var_0 )
{
    _ID42407::_ID24584( 1.6 );
    level._ID794 _ID42407::_ID27079( "mus_favela_ending_stinger_02" );
}
