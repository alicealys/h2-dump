// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    _ID15518();
    _ID27230();
    _ID40317();
    _ID921();
    _ID10730();
}
#using_animtree("generic_human");

_ID15518()
{
    level._ID30895["zpu_gunner"]["fire_a"][0] = %zpu_gunner_fire_a;
    level._ID30895["zpu_gunner"]["fire_b"][0] = %zpu_gunner_fire_b;
    level._ID30895["zpu_gunner"]["gunnerdeath"] = %zpu_gunner_deathslouch;
    level._ID30895["zpu_gunner"]["death_idle"][0] = %zpu_gunner_deathslouchidle;
    level._ID30895["zpu_gunner"]["dismount"] = %zpu_gunner_dismount;
    level._ID30895["fridge_guy"]["fridge_idle"][0] = %arcadia_fridge_idle;
    level._ID30895["fridge_guy"]["fridge_react"] = %arcadia_fridge_react;
    _ID42259::_ID2058( "fridge_guy", "refrig_react_foley", maps\arcadia_aud::_ID52586, "fridge_react" );
    level._ID30895["panicroom_enemy"]["ending_pose"] = %arcadia_ending_scenea_enemy2_death_pose;
    level._ID30895["panicroom_hvi"]["ending_pose"] = %arcadia_ending_scenea_dead_civilian;
    level._ID30895["generic"]["patrol_walk"] = %patrol_bored_patrolwalk;
    level._ID30895["generic"]["patrol_walk_twitch"] = %patrol_bored_patrolwalk_twitch;
    level._ID30895["generic"]["patrol_stop"] = %patrol_bored_walk_2_bored;
    level._ID30895["generic"]["patrol_start"] = %patrol_bored_2_walk;
    level._ID30895["generic"]["patrol_turn180"] = %patrol_bored_2_walk_180turn;
    level._ID30895["panicroom_hvi"]["h2_briefcase_pickup"] = %h2_arcadia_deadciv_fall;
    level._ID30895["dunn"]["panicroom_dunn_intro"] = %h2_arcadia_panicroom_dunn_part1;
    level._ID30895["dunn"]["panicroom_dunn_idle"][0] = %h2_arcadia_panicroom_dunn_idle;
    level._ID30895["dunn"]["panicroom_dunn_outro"] = %h2_arcadia_panicroom_dunn_part2;
    _ID42259::_ID2062( "dunn", "dialog", "panicroom_dunn_outro", "arcadia_cpd_checkouttats" );
    _ID42259::_ID2062( "dunn", "dialog", "panicroom_dunn_outro", "arcadia_cpd_huah" );
    _ID42259::_ID2057( "dunn", "attach_camera", "electronics_camera_pointandshoot_animated", "TAG_INHAND", "panicroom_dunn_outro" );
    level._ID30895["foley"]["panicroom_foley_intro"] = %h2_arcadia_panicroom_foley_part1;
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_intro", "arcadia_fly_icepick2" );
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_intro", "arcadia_fly_notright" );
    level._ID30895["foley"]["panicroom_foley_intro_idle"][0] = %h2_arcadia_panicroom_foley_earlyidle;
    level._ID30895["foley"]["panicroom_foley_intro_walk"] = %h2_arcadia_panicroom_foley_part1_5;
    level._ID30895["foley"]["panicroom_foley_panicroom"] = %h2_arcadia_panicroom_foley_hallway;
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_panicroom", "arcadia_fly_nosign" );
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_panicroom", "arcadia_fly_getthatbriefcase" );
    level._ID30895["foley"]["panicroom_foley_idle"][0] = %h2_arcadia_panicroom_foley_idle;
    level._ID30895["foley"]["panicroom_foley_outro"] = %h2_arcadia_panicroom_foley_part2;
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_outro", "arcadia_fly_photosforg2" );
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_outro", "arcadia_fly_notgoingtolike" );
    _ID42259::_ID2062( "foley", "dialog", "panicroom_foley_outro", "arcadia_fly_overlordhvi" );
    _ID42259::_ID2063( "foley", "stop level", "end_dialog_done", "panicroom_foley_outro" );
    level._ID30895["generic"]["panicroom_viktor_turnhead"] = %h2_arcadia_panicroom_viktor_headturn;
}
#using_animtree("player");

_ID27230()
{
    level._ID30900["worldbody"] = #animtree;
    level._ID30904["worldbody"] = "viewbody_us_army";
    level._ID30895["worldbody"]["h2_briefcase_pickup"] = %h2_arcadia_ending_player;
    level._ID30904["carry_sentry_player"] = "viewhands_player_us_army";
}
#using_animtree("vehicles");

_ID40317()
{
    level._ID30900["zpu_turret"] = #animtree;
    level._ID30904["zpu_turret"] = "vehicle_zpu4";
    level._ID30895["zpu_turret"]["fire_a"][0] = %zpu_gun_fire_a;
    level._ID30895["zpu_turret"]["fire_b"][0] = %zpu_gun_fire_b;
    level._ID30895["zpu_turret"]["idle"] = %zpu_gun_stop;
    level._ID30895["blackhawk_death_additive"]["hit_rear"] = %mi17_heli_hitreact_rear;
    _ID42259::_ID2058( "zpu_turret", "fire_1", maps\arcadia_code::_ID46090 );
    _ID42259::_ID2058( "zpu_turret", "fire_2", maps\arcadia_code::_ID49911 );
}
#using_animtree("script_model");

_ID921()
{
    level._ID30900["distant_parachute_left"] = #animtree;
    level._ID30904["distant_parachute_left"] = "parachute_deploy";
    level._ID30895["distant_parachute_left"]["drop1"] = %paratrooper_jump_lefta_chute;
    level._ID30895["distant_parachute_left"]["drop2"] = %paratrooper_jump_leftb_chute;
    level._ID30900["distant_parachute_right"] = #animtree;
    level._ID30904["distant_parachute_right"] = "parachute_deploy";
    level._ID30895["distant_parachute_right"]["drop1"] = %paratrooper_jump_righta_chute;
    level._ID30895["distant_parachute_right"]["drop2"] = %paratrooper_jump_rightb_chute;
    level._ID30900["distant_parachute_left_guy"] = #animtree;
    level._ID30900["distant_parachute_right_guy"] = #animtree;
    level._ID30895["distant_parachute_left_guy"]["drop1"] = %paratrooper_jump_lefta_guy;
    level._ID30895["distant_parachute_left_guy"]["drop2"] = %paratrooper_jump_leftb_guy;
    level._ID30895["distant_parachute_right_guy"]["drop1"] = %paratrooper_jump_righta_guy;
    level._ID30895["distant_parachute_right_guy"]["drop2"] = %paratrooper_jump_rightb_guy;
    level._ID30900["fridge"] = #animtree;
    level._ID30895["fridge"]["fridge_idle"][0] = %arcadia_fridge_idle_fridgerig;
    level._ID30895["fridge"]["fridge_react"] = %arcadia_fridge_react_fridgerig;
    _ID42259::_ID2058( "fridge", "refrig_idle_foley", maps\arcadia_aud::_ID52663, "fridge_idle" );
    _ID42259::_ID2058( "fridge", "refrig_bump_into", maps\arcadia_aud::_ID53972, "fridge_react" );
    level._ID30900["briefcase"] = #animtree;
    level._ID30895["briefcase"]["h2_briefcase_pickup"] = %h2_arcadia_briefcase;
    level._ID30900["crashed_plane_wires"] = #animtree;
    level._ID30895["crashed_plane_wires"]["idle"][0] = %h2_ch_bunker_wires_02_idle;
    level._ID30900["horizontal_lights"] = #animtree;
    level._ID30895["horizontal_lights"]["idle"][0] = %h2_arc_hanging_lights;
    level._ID30900["signs"] = #animtree;
    level._ID30895["signs"]["office_sign_idle"][0] = %h2_arc_sign_office_idle;
    level._ID30895["signs"]["bx_sign_idle"][0] = %h2_sign_realstate_inescrow;
    level._ID30895["signs"]["security_sign_idle"][0] = %h2_arc_sign_security_idle;
    level._ID30900["chandelier"] = #animtree;
    level._ID30895["chandelier"]["idle"][0] = %h2_arcadia_chandelier_vintage_idle;
}

_ID10730()
{
    level._ID30909["foley"]["arcadia_fly_heavylosses"] = "arcadia_fly_heavylosses";
    level._ID30909["foley"]["arcadia_fly_destroytriplea"] = "arcadia_fly_destroytriplea";
    level._ID30908["arcadia_hqr_sitrep"] = "arcadia_hqr_sitrep";
    level._ID30909["foley"]["arcadia_fly_intoarcadia"] = "arcadia_fly_intoarcadia";
    level._ID30908["arcadia_hqr_neworders"] = "arcadia_hqr_neworders";
    level._ID30909["foley"]["arcadia_fly_solidcopy"] = "arcadia_fly_solidcopy";
    level._ID30908["arcadia_hqr_divertto4677"] = "arcadia_hqr_divertto4677";
    level._ID30909["foley"]["arcadia_fly_divertto4677"] = "arcadia_fly_divertto4677";
    level._ID30908["arcadia_hqr_checkback"] = "arcadia_hqr_checkback";
    level._ID30909["generic"]["arcadia_ar1_lookac130"] = "arcadia_ar1_lookac130";
    level._ID30909["generic"]["arcadia_ar2_dontfly"] = "arcadia_ar2_dontfly";
    level._ID30909["generic"]["arcadia_ar1_suckstobethem"] = "arcadia_ar1_suckstobethem";
    level._ID30909["generic"]["arcadia_ar2_huah"] = "arcadia_ar2_huah";
    level._ID30908["arcadia_str_wehavelock"] = "arcadia_str_wehavelock";
    level._ID30908["arcadia_str_engaging"] = "arcadia_str_engaging";
    level._ID30908["arcadia_str_attacking"] = "arcadia_str_attacking";
    level._ID30908["arcadia_str_solidcopyeng"] = "arcadia_str_solidcopyeng";
    level._ID30908["arcadia_str_havealock"] = "arcadia_str_havealock";
    level._ID30908["arcadia_str_badgeronecopies"] = "arcadia_str_badgeronecopies";
    level._ID30908["arcadia_str_attackingvehicle"] = "arcadia_str_attackingvehicle";
    level._ID30908["arcadia_str_engchopper"] = "arcadia_str_engchopper";
    level._ID30908["arcadia_str_engaginginfantry"] = "arcadia_str_engaginginfantry";
    level._ID30908["arcadia_str_engagingvehicle"] = "arcadia_str_engagingvehicle";
    level._ID30908["arcadia_str_apartmentoffice"] = "arcadia_str_apartmentoffice";
    level._ID30908["arcadia_str_securitystation"] = "arcadia_str_securitystation";
    level._ID30908["arcadia_str_checkpoint"] = "arcadia_str_checkpoint";
    level._ID30908["arcadia_str_engyellowhouse"] = "arcadia_str_engyellowhouse";
    level._ID30908["arcadia_str_targgreyhouse"] = "arcadia_str_targgreyhouse";
    level._ID30908["arcadia_str_engfiretruck"] = "arcadia_str_engfiretruck";
    level._ID30908["arcadia_str_confpolicecar"] = "arcadia_str_confpolicecar";
    level._ID30908["arcadia_str_targdestroyed"] = "arcadia_str_targdestroyed";
    level._ID30908["arcadia_str_areasuppressed"] = "arcadia_str_areasuppressed";
    level._ID30908["arcadia_str_tasuppressed"] = "arcadia_str_tasuppressed";
    level._ID30908["arcadia_str_uhnegative"] = "arcadia_str_uhnegative";
    level._ID30908["arcadia_str_invalidtarget"] = "arcadia_str_invalidtarget";
    level._ID30908["arcadia_str_outtarange"] = "arcadia_str_outtarange";
    level._ID30908["arcadia_str_outofrange"] = "arcadia_str_outofrange";
    level._ID30908["arcadia_str_wererollin"] = "arcadia_str_wererollin";
    level._ID30908["arcadia_str_standclear"] = "arcadia_str_standclear";
    level._ID30908["arcadia_str_oscarmike"] = "arcadia_str_oscarmike";
    level._ID30908["arcadia_str_holdingposition"] = "arcadia_str_holdingposition";
    level._ID30909["foley"]["arcadia_fly_yellowhouse"] = "arcadia_fly_yellowhouse";
    level._ID30909["dunn"]["arcadia_cpd_greyhouse"] = "arcadia_cpd_greyhouse";
    level._ID30909["foley"]["arcadia_fly_greyhouse"] = "arcadia_fly_greyhouse";
    level._ID30909["foley"]["arcadia_fly_suppressingfire"] = "arcadia_fly_suppressingfire";
    level._ID30909["foley"]["arcadia_fly_suppressingfire"] = "arcadia_fly_suppressingfire";
    level._ID30909["dunn"]["arcadia_cpd_apartments"] = "arcadia_cpd_apartments";
    level._ID30909["foley"]["arcadia_fly_apartments"] = "arcadia_fly_apartments";
    level._ID30909["foley"]["arcadia_fly_usedesignator"] = "arcadia_fly_usedesignator";
    level._ID30909["foley"]["arcadia_fly_painttargets"] = "arcadia_fly_painttargets";
    level._ID30908["arcadia_str_lasetarget"] = "arcadia_str_lasetarget";
    level._ID30908["arcadia_str_standingby"] = "arcadia_str_standingby";
    level._ID30908["arcadia_str_painttarget"] = "arcadia_str_painttarget";
    level._ID30908["arcadia_str_thanks"] = "arcadia_str_thanks";
    level._ID30908["arcadia_str_nicework"] = "arcadia_str_nicework";
    level._ID30909["foley"]["arcadia_fly_everyoneup"] = "arcadia_fly_everyoneup";
    level._ID30909["foley"]["arcadia_fly_moveup"] = "arcadia_fly_moveup";
    level._ID30909["dunn"]["arcadia_cpd_moveup"] = "arcadia_cpd_moveup";
    level._ID30909["dunn"]["arcadia_cpd_letsgo"] = "arcadia_cpd_letsgo";
    level._ID30909["foley"]["arcadia_fly_lostbadgerone"] = "arcadia_fly_lostbadgerone";
    level._ID30909["foley"]["arcadia_fly_offstreets"] = "arcadia_fly_offstreets";
    level._ID30909["foley"]["arcadia_fly_flankthruhouses"] = "arcadia_fly_flankthruhouses";
    level._ID30909["foley"]["arcadia_fly_movethruhouses"] = "arcadia_fly_movethruhouses";
    level._ID30909["foley"]["arcadia_fly_getoffstreets"] = "arcadia_fly_getoffstreets";
    level._ID30909["foley"]["arcadia_fly_outtastreets"] = "arcadia_fly_outtastreets";
    level._ID30909["foley"]["arcadia_fly_sentryguns"] = "arcadia_fly_sentryguns";
    level._ID30909["foley"]["arcadia_fly_takeoutsgun"] = "arcadia_fly_takeoutsgun";
    level._ID30908["arcadia_str_rpgfire"] = "arcadia_str_rpgfire";
    level._ID30909["foley"]["arcadia_fly_wereonit"] = "arcadia_fly_wereonit";
    level._ID30909["foley"]["arcadia_fly_protectstryker"] = "arcadia_fly_protectstryker";
    level._ID30909["foley"]["arcadia_fly_watchforrpgs"] = "arcadia_fly_watchforrpgs";
    level._ID30909["foley"]["arcadia_fly_laserdes"] = "arcadia_fly_laserdes";
    level._ID30909["foley"]["arcadia_fly_callartillery"] = "arcadia_fly_callartillery";
    level._ID30908["arcadia_art_missionrec"] = "arcadia_art_missionrec";
    level._ID30908["arcadia_art_confirmed"] = "arcadia_art_confirmed";
    level._ID30909["foley"]["arcadia_fly_getrunover"] = "arcadia_fly_getrunover";
    level._ID30909["dunn"]["arcadia_cpd_getoutta"] = "arcadia_cpd_getoutta";
    level._ID30909["foley"]["arcadia_fly_headingto4677"] = "arcadia_fly_headingto4677";
    level._ID30909["foley"]["arcadia_fly_lookingfor"] = "arcadia_fly_lookingfor";
    level._ID30908["arcadia_shp_genshep"] = "arcadia_shp_genshep";
    level._ID30908["arcadia_shp_panicroom"] = "arcadia_shp_panicroom";
    level._ID30909["foley"]["arcadia_fly_yessir"] = "arcadia_fly_yessir";
    level._ID30908["arcadia_shp_phoenix"] = "arcadia_shp_phoenix";
    level._ID30908["arcadia_shp_reportback"] = "arcadia_shp_reportback";
    level._ID30909["foley"]["arcadia_fly_heardtheman"] = "arcadia_fly_heardtheman";
    level._ID30909["foley"]["arcadia_fly_icepick1"] = "arcadia_fly_icepick1";
    level._ID30909["foley"]["arcadia_fly_icepick2"] = "arcadia_fly_icepick2";
    level._ID30909["foley"]["arcadia_fly_notright"] = "arcadia_fly_notright";
    level._ID30909["foley"]["arcadia_fly_nosign"] = "arcadia_fly_nosign";
    level._ID30909["foley"]["arcadia_fly_getthatbriefcase"] = "arcadia_fly_getthatbriefcase";
    level._ID30909["dunn"]["arcadia_cpd_checkouttats"] = "arcadia_cpd_checkouttats";
    level._ID30909["foley"]["arcadia_fly_photosforg2"] = "arcadia_fly_photosforg2";
    level._ID30909["dunn"]["arcadia_cpd_huah"] = "arcadia_cpd_huah";
    level._ID30909["foley"]["arcadia_fly_notgoingtolike"] = "arcadia_fly_notgoingtolike";
    level._ID30909["foley"]["arcadia_fly_overlordhvi"] = "arcadia_fly_overlordhvi";
}
