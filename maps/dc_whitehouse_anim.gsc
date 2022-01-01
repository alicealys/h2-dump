// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID44728();
    _ID48570();
    _ID52250();
    _ID27229();
    _ID53583();
    _ID44092();
}
#using_animtree("generic_human");

_ID44728()
{
    level._ID30895["generic"]["combatwalk_F_spin"] = %combatwalk_f_spin;
    level._ID30895["dunn"]["hunted_woundedhostage_check"] = %hunted_woundedhostage_check_soldier;
    level._ID30895["dunn"]["hunted_woundedhostage_check_soldier_end"] = %hunted_woundedhostage_check_soldier_end;
    level._ID30909["dunn"]["dcemp_cpd_huah3"] = "dcemp_cpd_huah3";
    level._ID30909["dunn"]["dcemp_cpd_westwing"] = "dcemp_cpd_westwing";
    level._ID30909["dunn"]["dcemp_cpd_placeishistory"] = "dcemp_cpd_placeishistory";
    level._ID30909["foley"]["dcemp_fly_cutchatter"] = "dcemp_fly_cutchatter";
    level._ID30909["foley"]["dcemp_fly_fortourists"] = "dcemp_fly_fortourists";
    level._ID30909["marine1"]["dcemp_ar1_feetdry"] = "dcemp_ar1_feetdry";
    level._ID30909["generic"]["dcemp_ar2_letsgo"] = "dcemp_ar2_letsgo";
    level._ID30909["generic"]["dcemp_ar3_hustleup"] = "dcemp_ar3_hustleup";
    level._ID30901["generic"]["dcemp_ar3_hustleup"] = %dcemp_ar3_hustleup;
    level._ID30909["generic"]["dcemp_ar3_thisway"] = "dcemp_ar3_thisway";
    level._ID30909["generic"]["dcemp_ar3_movemove"] = "dcemp_ar3_movemove";
    level._ID30895["dead_guy"]["hunted_woundedhostage_check"] = %hunted_woundedhostage_check_hostage;
    level._ID30895["dead_guy"]["hunted_woundedhostage_idle_start"][0] = %hunted_woundedhostage_idle_start;
    level._ID30895["dead_guy"]["hunted_woundedhostage_idle_end"] = %hunted_woundedhostage_idle_end;
    level._ID30895["generic"]["death_sitting_pose_v1"] = %death_sitting_pose_v1;
    level._ID30895["generic"]["tunnel_door_open_guy"] = %cargoship_open_cargo_guyl;
    level._ID30895["dunn"]["DCemp_door_sequence"] = %dcemp_door_sequence_dunn;
    level._ID30895["foley"]["DCemp_door_sequence_foley_approch"] = %dcemp_door_sequence_foley_approch;
    level._ID30895["foley"]["DCemp_door_sequence_foley_idle"][0] = %dcemp_door_sequence_foley_idle;
    level._ID30895["foley"]["DCemp_door_sequence_foley_wave"] = %dcemp_door_sequence_foley_wave;
    _ID42259::_ID2062( "dunn", "dcemp_cpd_westwing_ps", "DCemp_door_sequence", "dcemp_cpd_westwing" );
    _ID42259::_ID2063( "dunn", "foley_dialogue", "tunnels_foley_dialogue", "DCemp_door_sequence" );
    _ID42259::_ID2062( "dunn", "dcemp_cpd_placeishistory_ps", "DCemp_door_sequence", "dcemp_cpd_placeishistory" );
    level._ID30895["foley"]["intro"] = %h2_dcwhitehouse_tunnel_intro_foley;
    level._ID30895["dunn"]["intro"] = %h2_dcwhitehouse_tunnel_intro_dunn;
    level._ID30895["dunn"]["intro_loop"][0] = %h2_dcwhitehouse_tunnel_intro_dunn_idle;
    level._ID30895["dunn"]["intro_out"] = %h2_dcwhitehouse_tunnel_intro_dunn_02;
    level._ID30895["marine1"]["intro"] = %h2_dcwhitehouse_tunnel_intro_ranger;
    level._ID30895["generic"]["wave_idle"][0] = %h2_dcwhitehouse_hustleup_idle;
    level._ID30895["generic"]["wave_whiskey"] = %h2_dcwhitehouse_hustleup_get_to_whiskey;
    level._ID30895["generic"]["wave_come_on"] = %h2_dcwhitehouse_hustleup_come_on;
    level._ID30895["generic"]["wave_move"] = %h2_dcwhitehouse_hustleup_move;
    _ID42259::_ID2062( "generic", "dialog", "wave_whiskey", "dcemp_ar3_hustleup" );
    _ID42259::_ID2062( "generic", "dialog", "wave_come_on", "dcemp_ar3_thisway" );
    _ID42259::_ID2062( "generic", "dialog", "wave_move", "dcemp_ar3_movemove" );
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
    level._ID30908["dcemp_fp1_closeone2"] = "dcemp_fp1_closeone";
    level._ID30895["rappel_guy"]["rappel_stand_idle_1"][0] = %launchfacility_a_setup_2_rappel_1;
    level._ID30895["rappel_guy"]["rappel_stand_idle_2"][0] = %launchfacility_a_setup_2_rappel_2;
    level._ID30895["rappel_guy"]["rappel_stand_idle_3"][0] = %launchfacility_a_rappel_idle_3;
    level._ID30895["rappel_guy"]["rappel_drop"] = %launchfacility_a_rappel_1;
    level._ID30895["generic"]["doorburst_wave"] = %doorburst_wave;
    level._ID30895["flare_guy"]["dcemp_flare_reshoot_start_idle"][0] = %dcemp_flare_reshoot_start_idle;
    level._ID30895["flare_guy"]["dcemp_flare_reshoot_start"] = %dcemp_flare_reshoot_start;
    _ID42259::_ID2057( "flare_guy", "attach flare", "mil_emergency_flare", "tag_inhand", "dcemp_flare_reshoot_start" );
    _ID42259::_ID2058( "flare_guy", "start flare", maps\dc_whitehouse_code::_ID47435, "dcemp_flare_reshoot_start" );
    _ID42259::_ID2063( "flare_guy", "attach flare", "flareguy_flare_popped", "dcemp_flare_reshoot_start" );
    level._ID30895["flare_guy"]["dcemp_flare_reshoot_end"] = %h2_dcemp_flare_reshoot_end;
    _ID42259::_ID2063( "flare_guy", "detach flare", "flare_guy_drop_flares", "dcemp_flare_reshoot_end" );
    _ID42259::_ID2063( "flare_guy", "start_dunn_animation", "start_ending_dialog", "dcemp_flare_reshoot_end" );
    level._ID30895["flare_guy"]["dcemp_flare_reshoot_start_short"] = %dcemp_flare_reshoot_start_short;
    _ID42259::_ID2057( "flare_guy", "attach flare", "mil_emergency_flare", "tag_inhand", "dcemp_flare_reshoot_start_short" );
    _ID42259::_ID2058( "flare_guy", "start flare", maps\dc_whitehouse_code::_ID47435, "dcemp_flare_reshoot_start_short" );
    _ID42259::_ID2063( "flare_guy", "attach flare", "flareguy_flare_popped", "dcemp_flare_reshoot_start_short" );
    level._ID30895["flare_guy"]["dcemp_flare_idle"][0] = %casual_stand_idle;
    level._ID30895["flare_guy"]["dcemp_flare_idle"][1] = %casual_stand_idle_twitch;
    level._ID30895["flare_guy"]["dcemp_flare_idle"][2] = %casual_stand_idle_twitchb;
    level._ID30895["dunn"]["ending_dialogue_in"] = %h2_dcwhite_flare_end_dunn;
    level._ID30895["dunn"]["ending_dialogue_idle"][0] = %h2_dcwhite_flare_end_dunn_idle;
    level._ID30895["dunn"]["ending_dialogue_out"] = %h2_dcwhite_flare_end_dunn_out;
    _ID42259::_ID2062( "dunn", "dialog", "ending_dialogue_out", "dcwhite_cpd_burnitdown" );
    level._ID30895["flare_guy"]["whitehouse_ending_runuphill"] = %whitehouse_ending_runuphill;
    level._ID30895["marshall"]["DCemp_whitehouse_briefing"] = %h2_dcemp_whitehouse_briefing_marshall;
    _ID42259::_ID2058( "marshall", "drop_bino", maps\dc_whitehouse::dropbinocular, "DCemp_whitehouse_briefing" );
    _ID42259::_ID2063( "marshall", "grab_gun", "marshallTakeBackWeapon", "DCemp_whitehouse_briefing" );
    level._ID30895["marshall"]["DCemp_whitehouse_briefing_idle"][0] = %h2_dcemp_whitehouse_briefing_marshall_idle;
    level._ID30895["marshall"]["DCemp_whitehouse_briefing_idle2"][0] = %h2_dcemp_whitehouse_briefing_marshall_idle2;
    level._ID30895["foley"]["DCemp_whitehouse_briefing"] = %h2_dcemp_whitehouse_briefing_foley;
    level._ID30895["marshall"]["dcw_briefing_marshall_moremen"] = %h2_dcemp_whitehouse_briefing_marshall_moremen;
    _ID42259::_ID2062( "marshall", "dcemp_cml_moremen", "dcw_briefing_marshall_moremen", "dcemp_cml_moremen" );
    _ID42259::_ID2062( "foley", "dcemp_fly_situationhere_ps", "DCemp_whitehouse_briefing", "dcemp_fly_situationhere" );
    _ID42259::_ID2062( "marshall", "dcemp_cml_highground_ps", "DCemp_whitehouse_briefing", "dcemp_cml_highground" );
    _ID42259::_ID2062( "marshall", "dcemp_cml_retakeit_ps", "DCemp_whitehouse_briefing", "dcemp_cml_retakeit" );
    _ID42259::_ID2062( "marshall", "dcemp_cml_getyoursquad_ps", "DCemp_whitehouse_briefing", "dcemp_cml_getyoursquad" );
    _ID42259::_ID2062( "foley", "dcemp_fly_squadoscarmike_ps", "DCemp_whitehouse_briefing", "dcemp_fly_squadoscarmike" );
    _ID42259::_ID2063( "marshall", "dcemp_cml_getyoursquad_ps", "whitehouse_moveout", "DCemp_whitehouse_briefing" );
    _ID42259::_ID2063( "marshall", "dcemp_cml_getyoursquad_ps", "music_cue", "DCemp_whitehouse_briefing" );
    level._ID30895["foley"]["oval_office_in"] = %h2_dcemp_wh_radio_foley_in;
    level._ID30895["foley"]["oval_office_idle"][0] = %h2_dcemp_wh_radio_foley_idle;
    level._ID30895["foley"]["oval_office"] = %h2_dcemp_wh_radio_foley;
    level._ID30895["dunn"]["oval_office_in"] = %h2_dcemp_wh_radio_dunn_in;
    level._ID30895["dunn"]["oval_office_idle"][0] = %h2_dcemp_wh_radio_dunn_idle;
    level._ID30895["dunn"]["oval_office"] = %h2_dcemp_wh_radio_dunn;
    _ID42259::_ID2058( "dunn", "add_speaker_reveal_mix", maps\dc_whitehouse_aud::start_speaker_reveal_mix, "oval_office" );
    _ID42259::_ID2063( "dunn", "kick", "oval_office_door_open", "oval_office" );
    level._ID30909["dunn"]["dcwhite_cpd_readingthis"] = "dcwhite_cpd_readingthis";
    level._ID30909["dunn"]["dcwhite_cpd_rogerthat"] = "dcwhite_cpd_rogerthat";
    level._ID30909["foley"]["dcwhite_fly_dunngetdoor"] = "dcwhite_fly_dunngetdoor";
    level._ID30909["foley"]["dcwhite_fly_dunn"] = "dcwhite_fly_dunn";
    level._ID30909["foley"]["dcwhite_fly_thatswhy"] = "dcwhite_fly_thatswhy";
    var_0 = [];
    var_0["death_explosion_up10"] = %death_explosion_up10;
    var_0["death_explosion_left11"] = %death_explosion_left11;
    var_0["death_explosion_stand_B_v2"] = %death_explosion_stand_b_v2;
    level._ID43035 = var_0;
    level._ID30909["foley"]["dcemp_fly_gettoroof"] = "dcemp_fly_gettoroof";
    level._ID30909["foley"]["dcemp_fly_useyourflares"] = "dcemp_fly_useyourflares";
    level._ID30909["flare_guy"]["dcemp_ar1_moscow"] = "dcemp_ar1_moscow";
    level._ID30901["flare_guy"]["dcemp_ar1_moscow"] = %dcemp_ar1_moscow;
    level._ID30909["dunn"]["dcwhite_cpd_burnitdown"] = "dcwhite_cpd_burnitdown";
    level._ID30909["flare_guy"]["dcwhite_ar1_huah"] = "dcwhite_ar1_huah";
    level._ID30901["flare_guy"]["dcwhite_ar1_huah"] = %dcwhite_ar1_huah;
    level._ID30909["foley"]["dcemp_fly_timeisright"] = "dcemp_fly_timeisright";
    level._ID30901["foley"]["dcemp_fly_timeisright"] = %dcemp_fly_timeisright;
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
    level._ID30900["painting"] = #animtree;
    level._ID30904["painting"] = "picture_frame_07_animated";
    level._ID30895["painting"]["oval_office"] = %h2_dcemp_wh_radio_painting;
    level._ID30900["door"] = #animtree;
    level._ID30904["door"] = "h2_wh_oval_office_secret_door_anim";
    level._ID30895["door"]["oval_office"] = %h2_dcemp_wh_radio_door;
    level._ID30900["chandelier"] = #animtree;
    level._ID30904["chandelier"] = "h2_light_chandelier_vintage_04_on";
    level._ID30895["chandelier"]["swing"] = %h2_wh_lobby_chandelier_hit;
    level._ID30895["chandelier"]["idle"] = %h2_wh_lobby_chandelier_idle;
    level._ID30895["chandelier"]["swing_fall"] = %h2_wh_lobby_chandelier_grenade_hit;
    level._ID30895["chandelier"]["idle_fall"] = %h2_wh_lobby_chandelier_grenade_idle;
    level._ID30900["pan"] = #animtree;
    level._ID30904["pan"] = "h2_com_pan_metal_animated";
    level._ID30895["pan"]["pan_metal_idle"][0] = %h2_com_pan_metal_animated;
    level._ID30904["pan"] = "h2_com_pan_copper_animated";
    level._ID30895["pan"]["pan_copper_idle"][0] = %h2_com_pan_copper_animated;
    level._ID30900["lantern"] = #animtree;
    level._ID30904["lantern"] = "h2_dcb_lamp_ceiling_animate";
    level._ID30895["lantern"]["idle"][0] = %h2_dcb_lamp_ceiling_idle;
}

_ID53583()
{
    level._ID30900["tunnel_door"] = #animtree;
    level._ID30904["tunnel_door"] = "tag_origin";
    level._ID30895["tunnel_door"]["DCemp_door_sequence"] = %dcemp_door_sequence_door;
}

_ID44092()
{
    level._ID30900["h2_chains_alone_03_animated"] = #animtree;
    level._ID30904["h2_chains_alone_03_animated"] = "h2_chains_alone_03_animated";
    level._ID30895["h2_chains_alone_03_animated"]["idle"][0] = %h2_chains_03_alone_animated;
    level._ID30900["h2_wh_tunnel_hanging_lamp"] = #animtree;
    level._ID30904["h2_wh_tunnel_hanging_lamp"] = "h2_wh_tunnel_hanging_lamp";
    level._ID30895["h2_wh_tunnel_hanging_lamp"]["idle"][0] = %h2_wh_tunnel_hanging_lamp_idle;
    level._ID30900["h2_wh_neon_attached_animated"] = #animtree;
    level._ID30904["h2_wh_neon_attached_animated"] = "h2_wh_neon_attached_animated";
    level._ID30895["h2_wh_neon_attached_animated"]["idle"][0] = %h2_wh_neon_attached;
}
#using_animtree("player");

_ID27229()
{
    level._ID30900["flare_rig"] = #animtree;
    level._ID30904["flare_rig"] = "viewhands_player_us_army_bloody";
    level._ID30895["flare_rig"]["flare"] = %dcemp_player_flare_wave;
    _ID42259::_ID2063( "flare_rig", "fx", "flare_start_fx", "flare" );
    _ID42259::_ID2063( "flare_rig", "fx", "whitehouse_hammerdown_jets_safe", "flare" );
    level._ID30900["iss_rig"] = #animtree;
    level._ID30904["iss_rig"] = "viewhands_player_iss";
    level._ID30895["iss_rig"]["ISS_animation"] = %iss_player_rotate;
    level._ID30895["iss_rig"]["ISS_float_away"] = %iss_player_float_away;
    level._ID30900["worldhands"] = #animtree;
    level._ID30904["worldhands"] = "viewhands_player_us_army_bloody";
    level._ID30895["worldhands"]["player_turret_in"] = %h2_dcwhitehouse_turret_player_in;
    level._ID30895["worldhands"]["player_turret_out"] = %h2_dcwhitehouse_turret_player_out;
    level._ID30895["worldhands"]["player_turret_idle"][0] = %h2_dcwhitehouse_turret_player_idle;
    level._ID30895["worldhands"]["player_turret_fire"][0] = %h2_dcwhitehouse_turret_player_fire;
}
#using_animtree("door");

_ID53071()
{
    level._ID30900["door"] = #animtree;
    level._ID30904["door"] = "com_door_01_handleleft2";
    level._ID30895["door"]["shotgunbreach_door_immediate"] = %shotgunbreach_door_immediate;
}
