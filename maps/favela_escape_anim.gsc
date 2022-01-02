// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    _ID50899();
    _ID32951();
    _ID51444();
    _ID47863();
    thread _ID45937();
}

_ID45937()
{
    while ( !isdefined( level._ID36711 ) )
        wait 0.05;

    level._ID53525["rooftop_mantle"] = _ID42237::_ID16638( "market_evac_friendlies_climb_animspot", "targetname" );
}

_ID51444()
{
    level._ID43404 = [];
    level._ID43404[0] = "exploder_script_model";
}
#using_animtree("generic_human");

_ID50899()
{
    level._ID30895["generic"]["intro_rojas_idle"][0] = %h2_favela_escape_crucified_idle;
    _ID42259::_ID2058( "generic", "mumbling", maps\favela_escape_aud::crucified_rojas_idle, "intro_rojas_idle" );
    level._ID30895["generic"]["intro_rojas_death"] = %h2_favela_escape_crucified_death;
    level._ID30895["sarge"]["opening_radiotower"] = %h2_favela_escape_opening_soap;
    _ID42259::_ID2062( "sarge", "dialog", "opening_radiotower", "favesc_cmt_fightourway" );
    _ID42259::_ID2062( "sarge", "dialog", "opening_radiotower", "favesc_cmt_takeover" );
    _ID42259::_ID2058( "sarge", "drop_phone", maps\favela_escape_aud::soap_hanging_up_phone, "opening_radiotower" );
    level._ID30895["hero1"]["opening_radiotower"] = %h2_favela_escape_opening_ghost;
    _ID42259::_ID2062( "hero1", "dialog_gst", "opening_radiotower", "favesc_gst_closingin" );
    _ID42259::_ID2062( "hero1", "dialog_gst", "opening_radiotower", "favesc_gst_whataboutrojas" );
    _ID42259::_ID2058( "hero1", "dialog_gst_end", maps\favela_escape_aud::_ID51190, "opening_radiotower" );
    level._ID30895["generic"]["intro_casual_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["favela_run_and_wave"] = %favela_run_and_wave;
    level._ID30895["generic"]["door_kick_in"] = %door_kick_in;
    level._ID30895["generic"]["doorburst_wave"] = %doorburst_wave;
    level._ID30895["generic"]["doorburst_search"] = %doorburst_search;
    level._ID30895["generic"]["doorburst_fall"] = %doorburst_fall;
    level._ID30895["generic"]["window_smash_stop_inside"] = %window_smash_stop_inside;
    level._ID30895["generic"]["window_smash_stop_outside"] = %window_smash_stop_outside;
    level._ID30895["generic"]["window_smash_run"] = %window_smash_run;
    level._ID30895["generic"]["favela_chaotic_above_through"] = %favela_chaotic_above_through;
    level._ID30895["generic"]["favela_chaotic_above_through_uzi"] = %favela_chaotic_above_through_uzi;
    level._ID30895["generic"]["favela_chaotic_above_back"] = %favela_chaotic_above_back;
    level._ID30895["curtain_pull"]["pulldown"] = %favela_curtain_pull;
    level._ID30895["generic"]["traverse_window_M_2_dive"] = %traverse_window_m_2_dive;
    level._ID30895["generic"]["favela_escape_rooftop_traverse_L"] = %h2_favela_escape_rooftop_traverse_l;
    level._ID30895["generic"]["favela_escape_rooftop_traverse_R"] = %h2_favela_escape_rooftop_traverse_r;
    level._ID30895["generic"]["favela_escape_rooftop_traverse_M"] = %h2_favela_escape_rooftop_traverse_m;
    level._ID30895["sarge"]["favela_escape_rooftop_traverse_M_idle"] = %h2_favela_escape_rooftop_traverse_m_idle;
    level._ID30895["sarge"]["favela_escape_rooftop_traverse_M_idle_dialog1"] = %h2_favela_escape_rooftop_traverse_m_dialog1;
    level._ID30895["sarge"]["favela_escape_rooftop_traverse_M_idle_dialog2"] = %h2_favela_escape_rooftop_traverse_m_dialog2;
    level._ID30895["sarge"]["favela_escape_rooftop_traverse_M_idle_dialog3"] = %h2_favela_escape_rooftop_traverse_m_dialog3;
    _ID42259::_ID2062( "sarge", "dialog1", "favela_escape_rooftop_traverse_M_idle_dialog1", "favesc_cmt_getuphere" );
    _ID42259::_ID2062( "sarge", "dialog2", "favela_escape_rooftop_traverse_M_idle_dialog2", "favesc_cmt_climbup" );
    _ID42259::_ID2062( "sarge", "dialog3", "favela_escape_rooftop_traverse_M_idle_dialog3", "favesc_cmt_climbuphere" );
    level._ID30895["generic"]["favela_escape_rooftop_traverse_M_idle_2_run"] = %h2_favela_escape_rooftop_traverse_m_idle_2_run;
    level._ID30895["generic"]["freerunnerA_run"] = %freerunnera_loop;
    level._ID30895["generic"]["freerunnerB_run"] = %freerunnerb_loop;
    level._ID30895["freerunner"]["freerunnerA_left"] = %freerunnera_left;
    level._ID30895["freerunner"]["freerunnerB_mid"] = %freerunnerb_mid;
    level._ID30895["freerunner"]["freerunnerA_right"] = %freerunnera_right;
    level._ID30895["freerunner"]["freerunnerA_sideslope"] = %freerunnera_sideslope;
    level._ID30895["freerunner"]["freerunnerA_laundry"] = %freerunnera_laundry;
    level._ID30895["freerunner"]["freerunnerB_laundry"] = %freerunnerb_laundry;
    level._ID30895["freerunner"]["jump_across_100_lunge"] = %jump_across_100_lunge;
    level._ID30895["freerunner"]["favela_escape_bigjump_faust_loop"][0] = %h2_favela_escape_bigjump_faustloop;
    level._ID30895["freerunner"]["favela_escape_bigjump_ghost_loop"][0] = %h2_favela_escape_bigjump_ghostloop;
    level._ID30895["freerunner"]["favela_escape_bigjump_soap_loop"][0] = %h2_favela_escape_bigjump_soap_loop;
    level._ID30895["freerunner"]["favela_escape_bigjump_soap_reach"] = %h2_favela_escape_bigjump_soap_reach;
    level._ID30895["freerunner"]["favela_escape_bigjump_soap"] = %h2_favela_escape_bigjump_soap;
    level._ID30895["freerunner"]["favela_escape_bigjump_ghost"] = %h2_favela_escape_bigjump_ghost;
    level._ID30895["freerunner"]["favela_escape_bigjump_faust"] = %h2_favela_escape_bigjump_faust;
    _ID42259::_ID2058( "freerunner", "roof_piece_wobble", ::_ID51349 );
    level._ID30895["generic"]["chase_run"] = %run_n_gun_f;
    level._ID30909["freerunner"]["favela_escape_bigjump_faust"] = "favesc_tf1_jumpsfx";
    level._ID30895["generic"]["mobwalk_A"] = %mob_arc_a;
    level._ID30895["generic"]["mobwalk_B"] = %mob_arc_b;
    level._ID30895["generic"]["mobwalk_C"] = %mob_arc_c;
    level._ID30895["generic"]["mobwalk_D"] = %mob_arc_d;
    level._ID30895["generic"]["mob2_arc_A"] = %mob2_arc_a;
    level._ID30895["generic"]["mob2_arc_B"] = %mob2_arc_b;
    level._ID30895["generic"]["mob3_arc_C"] = %mob3_arc_c;
    level._ID30895["generic"]["mob2_arc_D"] = %mob2_arc_d;
    level._ID30895["generic"]["mob2_arc_E"] = %mob2_arc_e;
    level._ID30895["generic"]["mob2_arc_F"] = %mob2_arc_f;
    level._ID30895["generic"]["mob2_arc_G"] = %mob2_arc_g;
    level._ID30895["generic"]["mob2_arc_H"] = %mob2_arc_h;
    level._ID30895["generic"]["mob_left_A"] = %mob_left_a;
    level._ID30895["generic"]["mob_left_B"] = %mob_left_b;
    level._ID30895["generic"]["mob_left_C"] = %mob_left_c;
    level._ID30895["generic"]["mob_left_D"] = %mob_left_d;
    level._ID30895["generic"]["favela_escape_rooftop_mob1"] = %favela_escape_rooftop_mob1;
    level._ID30895["generic"]["favela_escape_rooftop_mob2"] = %favela_escape_rooftop_mob2;
    level._ID30895["generic"]["favela_escape_rooftop_mob3"] = %favela_escape_rooftop_mob3;
    level._ID30895["generic"]["favela_escape_rooftop_mob4"] = %favela_escape_rooftop_mob4;
    level._ID30895["default_civilian"]["run_and_slam_idle"][0] = %flee_alley_civilain_idle;
    level._ID30895["default_civilian"]["run_and_slam"] = %flee_alley_civilain;
    level._ID30895["default_civilian"]["run_and_slam_endidle"][0] = %civilain_crouch_hide_idle;
    level._ID30895["generic"]["unarmed_cowercrouch_react_A"] = %unarmed_cowercrouch_react_a;
    level._ID30895["generic"]["unarmed_cowercrouch_react_B"] = %unarmed_cowercrouch_react_b;
    level._ID30895["generic"]["unarmed_cowercrouch_idle"][0] = %unarmed_cowercrouch_idle;
    level._ID30895["generic"]["cargoship_stunned_react_v2"] = %cargoship_stunned_react_v2;
    level._ID30895["generic"]["unarmed_cowerstand_react_2_crouch"] = %unarmed_cowerstand_react_2_crouch;
    level._ID30895["generic"]["unarmed_cowerstand_idle"][0] = %unarmed_cowerstand_idle;
    level._ID30895["chopper_door_guy"]["chopperjump_in"] = %h2_favela_escape_ending_mctavish_in;
    level._ID30895["chopper_door_guy"]["chopperjump_loop"][0] = %h2_favela_escape_ending_mctavish_loop;
    level._ID30895["chopper_door_guy"]["chopperjump_flyaway"] = %h2_favela_escape_ending_mctavish_flying_away;
    _ID42259::_ID2062( "chopper_door_guy", "dialog", "chopperjump_flyaway", "favesc_cmt_gothim" );
    _ID45616();
    _ID52134();
    _ID51336();
}

_ID51349( var_0 )
{
    if ( _ID42237::_ID14385( "no_wobble_roof" ) )
        return;

    if ( var_0 == level._ID51527 )
        var_1 = "wobble_ghost";
    else if ( var_0 == level._ID47826 )
        var_1 = "wobble_soap";
    else
        var_1 = "wobble_faust";

    level._ID54453.node _ID42259::_ID3111( level._ID54453._ID29975, var_1 );
}

_ID32951()
{
    level._ID30909["hero1"]["favesc_gst_closingin"] = "favesc_gst_closingin";
    level._ID30909["sarge"]["favesc_cmt_fightourway"] = "favesc_cmt_fightourway";
    level._ID30909["hero1"]["favesc_gst_whataboutrojas"] = "favesc_gst_whataboutrojas";
    level._ID30909["sarge"]["favesc_cmt_takeover"] = "favesc_cmt_takeover";
    level._ID30909["hero1"]["favesc_gst_worksforme"] = "favesc_gst_worksforme";
    level._ID30909["sarge"]["favesc_cmt_surrounded"] = "favesc_cmt_surrounded";
    level._ID30908["favesc_nkl_ontheway"] = "favesc_nkl_ontheway";
    level._ID30909["sarge"]["favesc_cmt_lockandload"] = "favesc_cmt_lockandload";
    level._ID30909["hero1"]["favesc_gst_letsdothis"] = "favesc_gst_letsdothis";
    level._ID30909["hero1"]["favesc_gst_onrooftops"] = "favesc_gst_onrooftops";
    level._ID30909["hero1"]["favesc_gst_deadahead"] = "favesc_gst_deadahead";
    level._ID30909["hero1"]["favesc_gst_shackonleft"] = "favesc_gst_shackonleft";
    level._ID30909["hero1"]["favesc_gst_skinnies"] = "favesc_gst_skinnies";
    level._ID30909["hero1"]["favesc_gst_leftflank"] = "favesc_gst_leftflank";
    level._ID30909["sarge"]["favesc_cmt_shiftfire"] = "favesc_cmt_shiftfire";
    level._ID30909["hero1"]["favesc_gst_leftleftleft"] = "favesc_gst_leftleftleft";
    level._ID30909["sarge"]["favesc_cmt_rpgseast"] = "favesc_cmt_rpgseast";
    level._ID30909["hero1"]["favesc_gst_tothesouth"] = "favesc_gst_tothesouth";
    level._ID30909["sarge"]["favesc_cmt_lowfromse"] = "favesc_cmt_lowfromse";
    level._ID30909["hero1"]["favesc_gst_alotofem"] = "favesc_gst_alotofem";
    level._ID30909["hero1"]["favesc_gst_gottamove"] = "favesc_gst_gottamove";
    level._ID30909["generic"]["favesc_pe4_killthemall"] = "favesc_pe4_killthemall";
    level._ID30909["generic"]["favesc_pe1_heretheycome"] = "favesc_pe1_heretheycome";
    level._ID30909["generic"]["favesc_pe1_attack"] = "favesc_pe1_attack";
    level._ID30909["hero1"]["favesc_gst_technical"] = "favesc_gst_technical";
    level._ID30909["sarge"]["favesc_cmt_technical"] = "favesc_cmt_technical";
    level._ID30909["sarge"]["favesc_cmt_thruthatgate"] = "favesc_cmt_thruthatgate";
    level._ID30909["sarge"]["favesc_cmt_thrugate"] = "favesc_cmt_thrugate";
    level._ID30909["hero1"]["favesc_gst_gogogo"] = "favesc_gst_gogogo";
    level._ID30909["hero1"]["favesc_gst_chopperinbound"] = "favesc_gst_chopperinbound";
    level._ID30909["sarge"]["favesc_cmt_hitbyrpg"] = "favesc_cmt_hitbyrpg";
    level._ID30908["favesc_nkl_doityourway"] = "favesc_nkl_doityourway";
    level._ID30908["favesc_nkl_manymilitia"] = "favesc_nkl_manymilitia";
    level._ID30909["sarge"]["favesc_cmt_rogerandthanks"] = "favesc_cmt_rogerandthanks";
    level._ID30909["sarge"]["favesc_cmt_pushthrustreets"] = "favesc_cmt_pushthrustreets";
    level._ID30909["sarge"]["favesc_cmt_flankingroutes"] = "favesc_cmt_flankingroutes";
    level._ID30909["sarge"]["favesc_cmt_laydownfire"] = "favesc_cmt_laydownfire";
    level._ID30909["sarge"]["favesc_cmt_alleyonleft"] = "favesc_cmt_alleyonleft";
    level._ID30909["sarge"]["favesc_cmt_almostatmarket"] = "favesc_cmt_almostatmarket";
    level._ID30909["hero1"]["favesc_gst_highstreet"] = "favesc_gst_highstreet";
    level._ID30909["sarge"]["favesc_cmt_splitup"] = "favesc_cmt_splitup";
    level._ID30909["hero1"]["favesc_gst_firingblind"] = "favesc_gst_firingblind";
    level._ID30909["sarge"]["favesc_cmt_shackonright"] = "favesc_cmt_shackonright";
    level._ID30909["sarge"]["favesc_cmt_therespavelow"] = "favesc_cmt_therespavelow";
    level._ID30909["sarge"]["favesc_cmt_immediatedustoff"] = "favesc_cmt_immediatedustoff";
    level._ID30908["favesc_nkl_notfastenough"] = "favesc_nkl_notfastenough";
    level._ID30909["sarge"]["favesc_cmt_pickuppace"] = "favesc_cmt_pickuppace";
    level._ID30908["favesc_nkl_toohot"] = "favesc_nkl_toohot";
    level._ID30909["sarge"]["favesc_cmt_waveoff"] = "favesc_cmt_waveoff";
    level._ID30908["favesc_nkl_meetyouthere"] = "favesc_nkl_meetyouthere";
    level._ID30909["sarge"]["favesc_cmt_gettorooftops"] = "favesc_cmt_gettorooftops";
    level._ID30909["sarge"]["favesc_cmt_getuphere"] = "favesc_cmt_getuphere";
    level._ID30909["sarge"]["favesc_cmt_climbup"] = "favesc_cmt_climbup";
    level._ID30909["sarge"]["favesc_cmt_climbuphere"] = "favesc_cmt_climbuphere";
    level._ID30909["freerunner"]["favesc_cmt_letsgoletsgo"] = "favesc_cmt_letsgoletsgo";
    level._ID30908["favesc_nkl_wholevillage"] = "favesc_nkl_wholevillage";
    level._ID30909["freerunner"]["favesc_cmt_pickusup"] = "favesc_cmt_pickusup";
    level._ID30901["freerunner"]["favesc_cmt_pickusup"] = %favela_escape_soap_pickusup;
    level._ID30908["favesc_nkl_keepgoing"] = "favesc_nkl_keepgoing";
    level._ID30909["freerunner"]["favesc_gst_runoutofroof"] = "favesc_gst_runoutofroof";
    level._ID30909["freerunner"]["favesc_cmt_makeitgogo"] = "favesc_cmt_makeitgogo";
    level._ID30901["freerunner"]["favesc_cmt_makeitgogo"] = %favela_escape_soap_makeitgogo;
    level._ID30909["freerunner"]["favesc_cmt_getoutta"] = "favesc_cmt_getoutta";
    level._ID30909["freerunner"]["favesc_cmt_gettochopper"] = "favesc_cmt_gettochopper";
    level._ID30909["freerunner"]["favesc_cmt_whatsholdup"] = "favesc_cmt_whatsholdup";
    level._ID30908["favesc_cmt_wakeup"] = "favesc_cmt_wakeup";
    level._ID30908["favesc_gst_comingforyou"] = "favesc_gst_comingforyou";
    level._ID30908["favesc_cmt_toomany"] = "favesc_cmt_toomany";
    level._ID30908["favesc_cmt_runforit"] = "favesc_cmt_runforit";
    level._ID30908["favesc_cmt_circlingarea"] = "favesc_cmt_circlingarea";
    level._ID30908["favesc_cmt_lowonfuel"] = "favesc_cmt_lowonfuel";
    level._ID30908["favesc_cmt_meetussouth"] = "favesc_cmt_meetussouth";
    level._ID30908["favesc_cmt_leftturnleft"] = "favesc_cmt_leftturnleft";
    level._ID30908["favesc_cmt_headtoright"] = "favesc_cmt_headtoright";
    level._ID30908["favesc_cmt_comeon"] = "favesc_cmt_comeon";
    level._ID30908["favesc_nkl_verylow"] = "favesc_nkl_verylow";
    level._ID30908["favesc_cmt_onfumes"] = "favesc_cmt_onfumes";
    level._ID30909["chopper_door_guy"]["favesc_cmt_jump"] = "favesc_cmt_jump";
    level._ID30901["chopper_door_guy"]["favesc_cmt_jump"] = %favela_escape_soap_cmt_jump;
    level._ID30908["favesc_cmt_gothim"] = "favesc_cmt_gothim";
    level._ID30908["favesc_nkl_whereto"] = "favesc_nkl_whereto";
    level._ID30908["favesc_cmt_tothesub"] = "favesc_cmt_tothesub";
}
#using_animtree("player");

_ID51336()
{
    level._ID30895["player_bigjump"]["jump"] = %h2_favela_escape_bigjump_playerjump;
    level._ID30895["player_bigjump"]["recover"] = %h2_favela_escape_bigjump_playerfall;
    level._ID30904["player_bigjump"] = "h2_viewbody_stoccom";
    level._ID30900["player_bigjump"] = #animtree;
    level._ID30904["player"] = "viewhands_player_tf141_favela";
    level._ID30900["player"] = #animtree;
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "h2_viewbody_stoccom";
    level._ID30895["worldbody"]["slide_loop"][0] = %h2_favelaescape_slide_player_idle;
    level._ID30895["worldbody"]["slide_in"] = %h2_favelaescape_slide_player_in;
    level._ID30895["worldbody"]["slide_out"] = %h2_favelaescape_slide_player_out;
    level._ID30895["worldbody"]["slide_back_loop"][0] = %h2_favelaescape_slide_player_back_idle;
    level._ID30895["worldbody"]["slide_back_in"] = %h2_favelaescape_slide_player_back_in;
    level._ID30895["worldbody"]["slide_back_out"] = %h2_favelaescape_slide_player_back_out;
    level._ID30895["worldbody"]["slide_ar"] = %h2_favelaescape_slide_player_turnl;
    level._ID30895["worldbody"]["slide_al"] = %h2_favelaescape_slide_player_turnr;
    level._ID30895["worldbody"]["rooftop_mantle"] = %h2_favela_escape_rooftop_traverse_player;
    level._ID30895["worldbody"]["chopperjump_jump"] = %h2_favela_escape_ending_player_catch_rope;
    level._ID30904["viewhands"] = "viewhands_player_tf141_favela";
    level._ID30900["viewhands"] = #animtree;
}
#using_animtree("script_model");

_ID52134()
{
    level._ID30900["rojas_restraints"] = #animtree;
    level._ID30904["rojas_restraints"] = "h2_unconscious_rojas_rope";
    level._ID30895["rojas_restraints"]["idle"][0] = %h2_favela_escape_rojas_rope;
    level._ID30904["curtain"] = "curtain_torn01_animated";
    level._ID30900["curtain"] = #animtree;
    level._ID30895["curtain"]["pulldown"] = %favela_curtain_model_pull;
    level._ID30904["civ_door"] = "com_door_01_handleleft";
    level._ID30900["civ_door"] = #animtree;
    level._ID30895["civ_door"]["run_and_slam_idle"][0] = %flee_alley_door_idle;
    level._ID30895["civ_door"]["run_and_slam"] = %flee_alley_door;
    level._ID30904["roof_rig"] = "h2_fav_corrugated_metal_roof_animated";
    level._ID30900["roof_rig"] = #animtree;
    level._ID30895["roof_rig"]["breakaway"] = %h2_favela_escape_bigjump_roof_collapse;
    level._ID30895["roof_rig"]["wobble_faust"] = %h2_favela_escape_bigjump_roof_wobble_faust;
    level._ID30895["roof_rig"]["wobble_ghost"] = %h2_favela_escape_bigjump_roof_wobble_ghost;
    level._ID30895["roof_rig"]["wobble_soap"] = %h2_favela_escape_bigjump_roof_wobble;
    level._ID30904["laundry"] = "hanging_sheet";
    level._ID30900["laundry"] = #animtree;
    level._ID30895["laundry"]["roofrun_laundry_1"] = %favela_escape_sheet01_run_through;
    level._ID30895["laundry"]["roofrun_laundry_2"] = %favela_escape_sheet02_run_through;
    level._ID30904["ladder"] = "favela_escape_ropeladder";
    level._ID30895["ladder"]["chopperjump_in"] = %h2_favela_escape_ending_rope_in;
    level._ID30895["ladder"]["chopperjump_loop"][0] = %h2_favela_escape_ending_rope_loop;
    level._ID30895["ladder"]["chopperjump_jump"] = %h2_favela_escape_ending_rope_interaction;
    level._ID30900["ladder"] = #animtree;
    level._ID30904["chicken_anim"] = "chicken";
    level._ID30900["chicken_anim"] = #animtree;
    level._ID30895["chicken_anim"]["crazy01"][0] = %chicken_cage_loop_01;
    level._ID30895["chicken_anim"]["crazy02"][0] = %chicken_cage_loop_02;
    level._ID30895["chicken_anim"]["pecking"][0] = %chicken_cage_pecking_idle;
    level._ID30895["chicken_anim"]["seated"][0] = %chicken_cage_seated_idle;
    level._ID30895["chicken_anim"]["death01"] = %chicken_cage_death;
    level._ID30895["chicken_anim"]["death02"] = %chicken_cage_death_02;
    level._ID30904["payphone"] = "h2_fav_phonebooth_phone";
    level._ID30900["payphone"] = #animtree;
    level._ID30895["payphone"]["opening_radiotower"] = %h2_favela_escape_opening_phone;
    level._ID30904["goals"] = "h2_fav_soccer_goal_anim";
    level._ID30900["goals"] = #animtree;
    level._ID30895["goals"]["soccer_goal"][0] = %h2_fav_soccer_goal_idle;
    level._ID30895["goals"]["soccer_goal_heli"] = %h2_fav_soccer_goal_heli;
    level._ID30895["goals"]["soccer_goal_heli2idle"] = %h2_fav_soccer_goal_heli2idle;
    level._ID30904["heavy_wires"] = "h2_fave_soccer_field_wires_01_animated";
    level._ID30900["heavy_wires"] = #animtree;
    level._ID30895["heavy_wires"]["helicopter_wires"] = %h2_fave_soccer_field_wires_reacthelico;
    level._ID30904["airconditioner"] = "h2_com_ex_airconditioner";
    level._ID30900["airconditioner"] = #animtree;
    level._ID30895["airconditioner"]["idle"][0] = %h2_com_ex_airconditioner_idle;
}
#using_animtree("vehicles");

_ID45616()
{
    level._ID30895["chopper"]["cargodoor_open"] = %favela_escape_ending_chopper_open_back_door;
    level._ID30895["chopper"]["chopperjump_in"] = %h2_favela_escape_ending_chopper_in;
    level._ID30895["chopper"]["chopperjump_loop"][0] = %h2_favela_escape_ending_chopper_loop;
    level._ID30895["chopper"]["chopperjump_flyaway"] = %h2_favela_escape_ending_chopper_flying_away;
    level._ID30895["chopper"]["rotors"] = %bh_rotors;
    level._ID30904["chopper"] = "vehicle_pavelow";
    level._ID30900["chopper"] = #animtree;
    level._ID30900["car"] = #animtree;
    level._ID30895["car"]["destroyed_car"] = %h2_favela_ending_crushedcar;
}
#using_animtree("script_model");

_ID47863()
{
    level._ID30900["exploder_script_model"] = #animtree;
    level._ID30895["exploder_script_model"]["h2_favela_escape_truck_fence_break_a_anim"] = %h2_favela_escape_truck_fence_break_a_anim;
    level._ID30895["exploder_script_model"]["h2_favela_escape_truck_fence_break_b_anim"] = %h2_favela_escape_truck_fence_break_b_anim;
    level._ID30895["exploder_script_model"]["h2_favela_escape_truck_fence_break_c_anim"] = %h2_favela_escape_truck_fence_break_c_anim;
}
