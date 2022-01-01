// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID43266()
{
    _ID49815();

    if ( level._ID912 == "ending" )
    {
        _ID27229();
        chicken_anims();
        _ID23866();
    }

    _ID51346();
    _ID47674();
    _ID46085();
}
#using_animtree("generic_human");

_ID46085()
{
    level._ID30900["player_body"] = #animtree;
    level._ID30904["player_body"] = "body_desert_tf141_assault_a";
    level._ID30895["player_body"]["price_wakeup"] = %afchase_ending_player_body;
    level._ID30900["worldbody"] = #animtree;

    if ( level._ID912 == "ending" )
        level._ID30904["worldbody"] = "viewbody_tf141_wet";
    else
        level._ID30904["worldbody"] = "viewbody_tf141";

    level._ID30895["worldbody"]["impaled_takedown"] = %h2_af_chase_impaled_takedown_player;
    level._ID30895["worldbody"]["crawl_takedown"] = %h2_af_chase_crawl_takedown_player;
    _ID42259::_ID2058( "worldbody", "switch_bloody", ::_ID47047 );
    level._ID30895["worldbody"]["jumpin_zodiac"] = %h2_afchase_boat_jumpin_player;
}

_ID49815()
{
    level._ID54642 = %root;
    level._ID30895["crawl_death_1"]["crawl"] = %h2_dying_crawl_untouched;
    level._ID30895["crawl_death_1"]["death"][0] = %h2_dying_crawl_alt_death01;
    level._ID30895["crawl_death_1"]["death"][1] = %h2_dying_crawl_alt_death02;
    level._ID30895["crawl_death_1"]["death"][2] = %h2_dying_crawl_alt_death03;
    level._ID30895["crawl_death_1"]["blood_fx_rate"] = 1;
    level._ID30909["generic"]["afchase_pri_zodiacnine"] = "afchase_pri_zodiacnine";
    level._ID30909["generic"]["afchase_pri_gettingaway"] = "afchase_pri_gettingaway";
    level._ID30909["generic"]["afchase_pri_gogogo"] = "afchase_pri_gogogo";
    level._ID30909["generic"]["afchase_pri_cantlet"] = "afchase_pri_cantlet";
    level._ID30909["generic"]["afchase_pri_losinghim"] = "afchase_pri_losinghim";
    level._ID30909["generic"]["afchase_pri_aroundcorner"] = "afchase_pri_aroundcorner";
    level._ID30909["generic"]["afchase_pri_getonboat"] = "afchase_pri_getonboat";
    level._ID30909["generic"]["afchase_pri_drivingtheboat"] = "afchase_pri_drivingtheboat";
    level._ID30909["generic"]["afchase_pri_anotherchance"] = "afchase_pri_anotherchance";
    level._ID30909["generic"]["afchase_pri_wrongway"] = "afchase_pri_wrongway";
    level._ID30909["generic"]["afchase_pri_turntoobjective"] = "afchase_pri_turntoobjective";
    level._ID30909["generic"]["afchase_pri_wheregoing"] = "afchase_pri_wheregoing";
    level._ID30909["generic"]["afchase_pri_enemysix"] = "afchase_pri_enemysix";
    level._ID30909["generic"]["afchase_pri_zodiacsix"] = "afchase_pri_zodiacsix";
    level._ID30909["generic"]["afchase_pri_evasive"] = "afchase_pri_evasive";
    level._ID30909["generic"]["afchase_pri_enginesdead"] = "afchase_pri_enginesdead";
    level._ID30909["generic"]["afchase_pri_behindrocks"] = "afchase_pri_behindrocks";
    level._ID30909["generic"]["afchase_pri_miniguns"] = "afchase_pri_miniguns";
    level._ID30909["generic"]["afchase_pri_shakeemoff"] = "afchase_pri_shakeemoff";
    level._ID30909["generic"]["afchase_pri_threadtheneedle"] = "afchase_pri_threadtheneedle";
    level._ID30909["generic"]["afchase_pri_enemyboats"] = "afchase_pri_enemyboats";
    level._ID30909["generic"]["afchase_pri_openareas"] = "afchase_pri_openareas";
    level._ID30909["generic"]["afchase_pri_dodgedodge"] = "afchase_pri_dodgedodge";
    level._ID30909["generic"]["afchase_pri_leftleft"] = "afchase_pri_leftleft";
    level._ID30909["generic"]["afchase_pri_rightright"] = "afchase_pri_rightright";
    level._ID30909["generic"]["afchase_pri_left"] = "afchase_pri_left";
    level._ID30909["generic"]["afchase_pri_right"] = "afchase_pri_right";
    level._ID30909["generic"]["afchase_pri_rpgsonbridge"] = "afchase_pri_rpgsonbridge";
    level._ID30909["generic"]["afchase_pri_otherside"] = "afchase_pri_otherside";
    level._ID30909["generic"]["afchase_pri_technical"] = "afchase_pri_technical";
    level._ID30909["generic"]["dialog_helicopter_six2"] = "dialog_helicopter_six2";
    level._ID30909["generic"]["afchase_pri_dodgeheli"] = "afchase_pri_dodgeheli";
    level._ID30909["generic"]["afchase_pri_gunsspinup"] = "afchase_pri_gunsspinup";
    level._ID30909["generic"]["afchase_pri_steerclear"] = "afchase_pri_steerclear";
    level._ID30909["generic"]["afchase_pri_rapidsahead"] = "afchase_pri_rapidsahead";
    level._ID30909["generic"]["afchase_pri_fullpower"] = "afchase_pri_fullpower";
    level._ID30909["generic"]["afchase_pri_thrucave"] = "afchase_pri_thrucave";
    level._ID30895["generic"]["rapids_in"] = %zodiac_rightside_rapids_trans_in;
    level._ID30895["generic"]["rapids_loop"][0] = %zodiac_rightside_rapids_loopb;
    level._ID30909["generic"]["rapids_in"] = "afchase_pri_rapidsahead";
    level._ID30895["generic"]["rapids_out"] = %h2_zodiac_rightside_rapids_trans_out;
    level._ID30895["generic"]["left_react_bump"] = %h2_zodiac_rightside_react_bump_mid_med;
    level._ID30895["generic"]["left_react_bump_big"] = %h2_zodiac_rightside_react_bump_mid_hard_a;
    level._ID30895["generic"]["right_react_bump"] = %h2_zodiac_leftside_react_bump_mid_med;
    level._ID30895["generic"]["right_react_bump_big"] = %h2_zodiac_leftside_react_bump_mid_hard;
    level._ID30895["generic"]["left_afchase_pri_gettingaway"] = %h2_afchase_pri_1_3_hes_getting_away_r;
    level._ID30895["generic"]["left_afchase_pri_gogogo"] = %h2_afchase_pri_1_4_gogogo_r;
    level._ID30895["generic"]["left_afchase_pri_cantlet"] = %h2_afchase_pri_2_1_cant_let_shepherd_escape_r;
    level._ID30895["generic"]["left_afchase_pri_losinghim"] = %h2_afchase_pri_2_2_losinghim_r;
    level._ID30895["generic"]["left_afchase_pri_drivingtheboat"] = %h2_afchase_pri_2_3_focus_on_driving_r;
    level._ID30895["generic"]["left_afchase_pri_fullpower"] = %h2_afchase_pri_3_4_fullpower_r;
    level._ID30895["generic"]["right_afchase_pri_gettingaway"] = %h2_afchase_pri_1_3_hes_getting_away_l;
    level._ID30895["generic"]["right_afchase_pri_gogogo"] = %h2_afchase_pri_1_4_gogogo_l;
    level._ID30895["generic"]["right_afchase_pri_cantlet"] = %h2_afchase_pri_2_1_cant_let_shepherd_escape_l;
    level._ID30895["generic"]["right_afchase_pri_losinghim"] = %h2_afchase_pri_2_2_losinghim_l;
    level._ID30895["generic"]["right_afchase_pri_drivingtheboat"] = %h2_afchase_pri_2_3_focus_on_driving_l;
    level._ID30895["generic"]["right_afchase_pri_fullpower"] = %h2_afchase_pri_3_4_fullpower_l;
    level._ID30895["generic"]["left_afchase_pri_thrucave"] = %h2_afchase_pri_3_1_through_that_cave_r;
    level._ID30895["generic"]["left_afchase_pri_dodgeheli"] = %h2_afchase_pri_4_1_dodge_that_helicopter_r;
    level._ID30895["generic"]["left_afchase_pri_evasive"] = %h2_afchase_pri_4_2_chopper_on_6_r;
    level._ID30895["generic"]["left_afchase_pri_gunsspinup"] = %h2_afchase_pri_7_1_little_bird_r;
    level._ID30895["generic"]["left_afchase_pri_steerclear"] = %h2_afchase_pri_7_2_stay_clear_of_chopper_r;
    level._ID30895["generic"]["left_afchase_pri_miniguns"] = %h2_afchase_pri_8_2_shake_em_r;
    level._ID30895["generic"]["left_afchase_pri_shakeemoff"] = %h2_afchase_pri_8_3_shake_em_off_r;
    level._ID30895["generic"]["left_afchase_pri_openareas"] = %h2_afchase_pri_8_6_stay_clear_r;
    level._ID30895["generic"]["left_afchase_pri_leftleft"] = %h2_afchase_pri_8_8b_left_r;
    level._ID30895["generic"]["left_afchase_pri_rightright"] = %h2_afchase_pri_8_9_right_r;
    level._ID30895["generic"]["left_afchase_pri_left"] = %h2_afchase_pri_8_10_short_left_r;
    level._ID30895["generic"]["left_afchase_pri_right"] = %h2_afchase_pri_8_9_right_r;
    level._ID30895["generic"]["left_afchase_pri_rpgsonbridge"] = %h2_afchase_pri_8_12_rpg_on_bridge_r;
    level._ID30895["generic"]["left_TF_pri_callout_targetclock_12"] = %h2_afchase_tf_pri_co_contactclock_12_01_r;
    level._ID30895["generic"]["right_afchase_pri_thrucave"] = %h2_afchase_pri_3_1_through_that_cave_l;
    level._ID30895["generic"]["right_afchase_pri_dodgeheli"] = %h2_afchase_pri_4_1_dodge_that_helicopter_l;
    level._ID30895["generic"]["right_afchase_pri_evasive"] = %h2_afchase_pri_4_2_chopper_on_6_l;
    level._ID30895["generic"]["right_afchase_pri_gunsspinup"] = %h2_afchase_pri_7_1_little_bird_l;
    level._ID30895["generic"]["right_afchase_pri_steerclear"] = %h2_afchase_pri_7_2_stay_clear_of_chopper_l;
    level._ID30895["generic"]["right_afchase_pri_miniguns"] = %h2_afchase_pri_8_2_shake_em_l;
    level._ID30895["generic"]["right_afchase_pri_shakeemoff"] = %h2_afchase_pri_8_3_shake_em_off_l;
    level._ID30895["generic"]["right_afchase_pri_openareas"] = %h2_afchase_pri_8_6_stay_clear_l;
    level._ID30895["generic"]["right_afchase_pri_leftleft"] = %h2_afchase_pri_8_8b_left_l;
    level._ID30895["generic"]["right_afchase_pri_rightright"] = %h2_afchase_pri_8_9_right_l;
    level._ID30895["generic"]["right_afchase_pri_left"] = %h2_afchase_pri_8_8b_left_l;
    level._ID30895["generic"]["right_afchase_pri_right"] = %h2_afchase_pri_8_11_short_right_l;
    level._ID30895["generic"]["right_afchase_pri_rpgsonbridge"] = %h2_afchase_pri_8_12_rpg_on_bridge_l;
    level._ID30895["generic"]["right_TF_pri_callout_targetclock_12"] = %h2_afchase_tf_pri_co_contactclock_12_01_l;
    level._ID30909["generic"]["left_afchase_pri_thrucave"] = "afchase_pri_thrucave";
    level._ID30909["generic"]["left_afchase_pri_dodgeheli"] = "afchase_pri_dodgeheli";
    level._ID30909["generic"]["left_afchase_pri_evasive"] = "afchase_pri_evasive";
    level._ID30909["generic"]["left_afchase_pri_gunsspinup"] = "afchase_pri_gunsspinup";
    level._ID30909["generic"]["left_afchase_pri_steerclear"] = "afchase_pri_steerclear";
    level._ID30909["generic"]["left_afchase_pri_miniguns"] = "afchase_pri_miniguns";
    level._ID30909["generic"]["left_afchase_pri_shakeemoff"] = "afchase_pri_shakeemoff";
    level._ID30909["generic"]["left_afchase_pri_openareas"] = "afchase_pri_openareas";
    level._ID30909["generic"]["left_afchase_pri_leftleft"] = "afchase_pri_leftleft";
    level._ID30909["generic"]["left_afchase_pri_rightright"] = "afchase_pri_rightright";
    level._ID30909["generic"]["left_afchase_pri_left"] = "afchase_pri_left";
    level._ID30909["generic"]["left_afchase_pri_right"] = "afchase_pri_right";
    level._ID30909["generic"]["left_afchase_pri_rpgsonbridge"] = "afchase_pri_rpgsonbridge";
    level._ID30909["generic"]["left_TF_pri_callout_targetclock_12"] = "TF_pri_callout_targetclock_12";
    level._ID30909["generic"]["right_afchase_pri_thrucave"] = "afchase_pri_thrucave";
    level._ID30909["generic"]["right_afchase_pri_dodgeheli"] = "afchase_pri_dodgeheli";
    level._ID30909["generic"]["right_afchase_pri_evasive"] = "afchase_pri_evasive";
    level._ID30909["generic"]["right_afchase_pri_gunsspinup"] = "afchase_pri_gunsspinup";
    level._ID30909["generic"]["right_afchase_pri_steerclear"] = "afchase_pri_steerclear";
    level._ID30909["generic"]["right_afchase_pri_miniguns"] = "afchase_pri_miniguns";
    level._ID30909["generic"]["right_afchase_pri_shakeemoff"] = "afchase_pri_shakeemoff";
    level._ID30909["generic"]["right_afchase_pri_openareas"] = "afchase_pri_openareas";
    level._ID30909["generic"]["right_afchase_pri_leftleft"] = "afchase_pri_leftleft";
    level._ID30909["generic"]["right_afchase_pri_rightright"] = "afchase_pri_rightright";
    level._ID30909["generic"]["right_afchase_pri_left"] = "afchase_pri_left";
    level._ID30909["generic"]["right_afchase_pri_right"] = "afchase_pri_right";
    level._ID30909["generic"]["right_afchase_pri_rpgsonbridge"] = "afchase_pri_rpgsonbridge";
    level._ID30909["generic"]["right_TF_pri_callout_targetclock_12"] = "TF_pri_callout_targetclock_12";
    level._ID30909["generic"]["right_afchase_pri_gettingaway"] = "afchase_pri_gettingaway";
    level._ID30909["generic"]["right_afchase_pri_gogogo"] = "afchase_pri_gogogo";
    level._ID30909["generic"]["right_afchase_pri_cantlet"] = "afchase_pri_cantlet";
    level._ID30909["generic"]["right_afchase_pri_losinghim"] = "afchase_pri_losinghim";
    level._ID30909["generic"]["right_afchase_pri_drivingtheboat"] = "afchase_pri_drivingtheboat";
    level._ID30909["generic"]["right_afchase_pri_fullpower"] = "afchase_pri_fullpower";
    level._ID30909["generic"]["left_afchase_pri_gettingaway"] = "afchase_pri_gettingaway";
    level._ID30909["generic"]["left_afchase_pri_gogogo"] = "afchase_pri_gogogo";
    level._ID30909["generic"]["left_afchase_pri_cantlet"] = "afchase_pri_cantlet";
    level._ID30909["generic"]["left_afchase_pri_losinghim"] = "afchase_pri_losinghim";
    level._ID30909["generic"]["left_afchase_pri_drivingtheboat"] = "afchase_pri_drivingtheboat";
    level._ID30909["generic"]["left_afchase_pri_fullpower"] = "afchase_pri_fullpower";
    level._ID30895["generic"]["standby"] = %walk_cqb_f;
    level._ID30909["generic"]["TF_pri_callout_targetclock_12"] = "TF_pri_callout_targetclock_12";
    level._ID30909["generic"]["TF_pri_callout_targetclock_1"] = "TF_pri_callout_targetclock_1";
    level._ID30909["generic"]["TF_pri_callout_targetclock_2"] = "TF_pri_callout_targetclock_2";
    level._ID30909["generic"]["TF_pri_callout_targetclock_3"] = "TF_pri_callout_targetclock_3";
    level._ID30909["generic"]["TF_pri_callout_targetclock_4"] = "TF_pri_callout_targetclock_4";
    level._ID30909["generic"]["TF_pri_callout_targetclock_5"] = "TF_pri_callout_targetclock_5";
    level._ID30909["generic"]["TF_pri_callout_targetclock_6"] = "TF_pri_callout_targetclock_6";
    level._ID30909["generic"]["TF_pri_callout_targetclock_7"] = "TF_pri_callout_targetclock_7";
    level._ID30909["generic"]["TF_pri_callout_targetclock_8"] = "TF_pri_callout_targetclock_8";
    level._ID30909["generic"]["TF_pri_callout_targetclock_9"] = "TF_pri_callout_targetclock_9";
    level._ID30909["generic"]["TF_pri_callout_targetclock_10"] = "TF_pri_callout_targetclock_10";
    level._ID30909["generic"]["TF_pri_callout_targetclock_11"] = "TF_pri_callout_targetclock_11";
    level._ID30909["generic"]["TF_pri_callout_yourclock_12"] = "TF_pri_callout_yourclock_12";
    level._ID30909["generic"]["TF_pri_callout_yourclock_1"] = "TF_pri_callout_yourclock_1";
    level._ID30909["generic"]["TF_pri_callout_yourclock_2"] = "TF_pri_callout_yourclock_2";
    level._ID30909["generic"]["TF_pri_callout_yourclock_3"] = "TF_pri_callout_yourclock_3";
    level._ID30909["generic"]["TF_pri_callout_yourclock_4"] = "TF_pri_callout_yourclock_4";
    level._ID30909["generic"]["TF_pri_callout_yourclock_5"] = "TF_pri_callout_yourclock_5";
    level._ID30909["generic"]["TF_pri_callout_yourclock_6"] = "TF_pri_callout_yourclock_6";
    level._ID30909["generic"]["TF_pri_callout_yourclock_7"] = "TF_pri_callout_yourclock_7";
    level._ID30909["generic"]["TF_pri_callout_yourclock_8"] = "TF_pri_callout_yourclock_8";
    level._ID30909["generic"]["TF_pri_callout_yourclock_9"] = "TF_pri_callout_yourclock_9";
    level._ID30909["generic"]["TF_pri_callout_yourclock_10"] = "TF_pri_callout_yourclock_10";
    level._ID30909["generic"]["TF_pri_callout_yourclock_11"] = "TF_pri_callout_yourclock_11";
    _ID42259::_ID2069( "shepherd", "dialog1", "gun_fight", "afchase_shp_noshortage", undefined, "J_Jaw" );
    _ID42259::_ID2069( "shepherd", "dialog2", "gun_fight", "afchase_shp_iknow", undefined, "J_Jaw" );
    level._ID30909["shepherd"]["afchase_shp_waitingfor"] = "afchase_shp_waitingfor";
    level._ID30909["shepherd"]["afchase_shp_digtwograves"] = "afchase_shp_digtwograves";
    level._ID30909["shepherd"]["afchase_shp_goahead"] = "afchase_shp_goahead";
    level._ID30909["shepherd"]["afchase_shp_couldntdoit"] = "afchase_shp_couldntdoit";
    level._ID30909["shepherd"]["afchase_shp_goodwarrior"] = "afchase_shp_goodwarrior";
    level._ID30909["shepherd"]["afchase_shp_extrastep"] = "afchase_shp_extrastep";
    level._ID30909["shepherd"]["afchase_shp_necessary"] = "afchase_shp_necessary";
    _ID42259::_ID2058( "shepherd", "fire", ::_ID45390, "gun_fight" );
    level._ID30895["shepherd"]["knife_moment"] = %afchase_ending_shepherd_knife_moment;
    _ID42259::_ID2069( "shepherd", "gun_kick", "gun_kick", "scn_ending_gun_kick" );
    level._ID30895["shepherd"]["prone_stand"] = %hunted_pronehide_2_stand_v3;
    _ID47455();
    level._ID30895["price"]["knife_moment"] = %afchase_ending_price_knife_moment;
    _ID42259::_ID2069( "price", "dialog1", "endgame", "afchase_pri_soap1" );
    _ID42259::_ID2069( "price", "dialog2", "endgame", "afchase_pri_soap2" );
    level._ID30895["generic"]["zodiac_rapids_price"] = %h2_afchase_waterfall_price_fall;
    _ID42259::_ID2063( "generic", "fire", "price_fire_zodiac", "zodiac_rapids_price" );
    _ID42259::_ID2063( "generic", "shoot", "price_shoot", "zodiac_rapids_price" );
    _ID42259::_ID2063( "generic", "start_aim", "price_add_aim", "zodiac_rapids_price" );
    _ID42259::_ID2064( "generic", "stop_aim", "price_add_aim", "zodiac_rapids_price" );
    _ID42259::_ID2063( "generic", "dialog", "price_end_aiming_thread", "zodiac_rapids_price" );
    _ID42259::_ID2063( "generic", "steady_2", "boat_start_rubber_band", "zodiac_rapids_price" );
    _ID42259::_ID2063( "generic", "start_falling", "player_jumping_over_waterfall", "zodiac_rapids_price" );
    _ID42259::_ID2064( "generic", "start_falling", "boat_start_rubber_band", "zodiac_rapids_price" );
    _ID42259::_ID2069( "generic", "steady_1", "zodiac_rapids_price", "afchase_pri_holdsteady" );
    _ID42259::_ID2069( "generic", "steady_2", "zodiac_rapids_price", "afchase_pri_steady1" );
    _ID42259::_ID2069( "generic", "steady_3", "zodiac_rapids_price", "afchase_pri_steady1" );
    _ID42259::_ID2069( "generic", "dialog", "zodiac_rapids_price", "afchase_pri_backup" );
    _ID42259::_ID2058( "generic", "hide_price", ::_ID43346 );
    _ID42259::_ID2069( "price", "dialog3", "endgame", "afchase_pri_holdfornow" );
    _ID42259::_ID2069( "price", "dialog4", "endgame", "afchase_pri_toldyou" );
    _ID42259::_ID2069( "price", "dialog5", "endgame", "afchase_pri_soapouttahere" );
    level._ID30909["price"]["afchase_pri_holdfornow"] = "afchase_pri_holdfornow";
    level._ID30909["price"]["afchase_pri_toldyou"] = "afchase_pri_toldyou";
    level._ID30909["price"]["afchase_pri_soapouttahere"] = "afchase_pri_soapouttahere";
    level._ID30909["nikolai"]["afchase_nkl_lookingforus"] = "afchase_nkl_lookingforus";
    level._ID30909["nikolai"]["afchase_nkl_knowaplace"] = "afchase_nkl_knowaplace";
    _ID42259::_ID2062( "nikolai", "dialog", "endgame", "afchase_nkl_lookingforus" );
    _ID42259::_ID2062( "nikolai", "dialog", "endgame", "afchase_nkl_knowaplace" );
    level._ID30895["generic"]["civilian_crawl_1"] = %civilian_crawl_1;
    level._ID30895["generic"]["civilian_crawl_2"] = %civilian_crawl_2;
    level._ID30895["generic"]["dying_crawl"] = %dying_crawl;
    level._ID30895["impaled"]["death"] = %afchase_impaled_guy_knife_death;
    level._ID30895["impaled"]["aim_controller"] = %afchase_impaled_additive;
    level._ID30895["impaled"]["aim_controller_left"] = %afchase_impaled_additive_left;
    level._ID30895["impaled"]["aim_controller_right"] = %afchase_impaled_additive_right;
    level._ID30895["impaled"]["idle"][0] = %h2_afchase_pilot02_idle;
    level._ID30895["impaled"]["react"] = %h2_afchase_pilot02_reacta;
    level._ID30895["impaled"]["react_death"] = %h2_afchase_pilot02_react_end;
    level._ID30895["impaled"]["react_loop"][0] = %h2_afchase_pilot02_react_idle;
    level._ID30895["impaled"]["aim_6"] = %h2_afchase_pilot02_aimr;
    level._ID30895["impaled"]["aim_4"] = %h2_afchase_pilot02_aiml;
    level._ID30895["impaled"]["impaled_takedown"] = %h2_af_chase_impaled_takedown_npc;
    level._ID30895["generic"]["crawl_takedown"] = %h2_af_chase_crawl_takedown_npc;
    _ID42259::_ID2075( "generic", "crawl_takedown", "scn_ending_crawling_guy_throat_slit" );
    _ID42259::_ID2075( "impaled", "impaled_takedown", "scn_ending_impaled_guy_killed" );
    _ID42259::_ID2069( "shepherd", "bodyfall large", "knifepull_throw_kill", "scn_afchase_shepherd_death_bodyfall" );
    _ID42259::_ID2058( "shepherd", "slowmo_early", ::_ID49675 );
    _ID42259::_ID2058( "shepherd", "slowmo", ::_ID49675 );
    _ID42259::_ID2058( "shepherd", "settle", ::_ID45671 );
    _ID42259::_ID2058( "impaled", "click", ::_ID46843 );
    _ID42259::_ID2058( "impaled", "stop_aim", ::_ID47963, "react_death" );
    _ID42259::_ID2058( "impaled", "start_aim", ::_ID54474, "react" );
    _ID42259::_ID2058( "impaled", "pistol_pickup", ::_ID49073 );
    _ID42259::_ID2058( "price", "footstep_right_large", ::_ID48648 );
    _ID42259::_ID2058( "price", "footstep_left_large", ::_ID53510 );
    _ID42259::_ID2058( "price", "footstep_right_small", ::_ID48997 );
    _ID42259::_ID2058( "price", "footstep_left_small", ::_ID50559 );
    _ID42259::_ID2058( "nikolai", "footstep_right_large", ::_ID48648, "endgame" );
    _ID42259::_ID2058( "nikolai", "footstep_left_large", ::_ID53510, "endgame" );
    _ID42259::_ID2058( "nikolai", "footstep_right_small", ::_ID48997, "endgame" );
    _ID42259::_ID2058( "nikolai", "footstep_left_small", ::_ID50559, "endgame" );
    _ID42259::_ID2058( "shepherd", "bodyfall large", ::_ID48877 );
    _ID42259::_ID2058( "shepherd", "bodyfall small", ::_ID48877 );
    _ID42259::_ID2058( "price", "bodyfall large", ::_ID48877 );
    _ID42259::_ID2058( "price", "bodyfall small", ::_ID48877 );
    level._ID30909["generic"]["afchase_pri_steady1"] = "afchase_pri_steady1";
    level._ID30909["generic"]["afchase_pri_steady2"] = "afchase_pri_steady2";
    level._ID30909["shepherd"]["afchase_shp_fiveyearsago"] = "afchase_shp_fiveyearsago";
    level._ID30909["shepherd"]["afchase_shp_noshortage"] = "afchase_shp_noshortage";
    level._ID30909["shepherd"]["afchase_shp_iknow"] = "afchase_shp_iknow";
    level._ID30908["afchase_shp_sitrep"] = "afchase_shp_sitrep";
    level._ID30908["afchase_uav_downriver"] = "afchase_uav_downriver";
    level._ID30908["afchase_shp_comininhot"] = "afchase_shp_comininhot";
    level._ID30908["afchase_plp_above30knots"] = "afchase_plp_above30knots";
    level._ID30909["generic"]["afchase_shp_digtwograves"] = "afchase_shp_digtwograves";
    level._ID30909["generic"]["afchase_shp_goahead"] = "afchase_shp_goahead";
    level._ID30909["generic"]["afchase_shp_couldntdoit"] = "afchase_shp_couldntdoit";
    level._ID30909["generic"]["afchase_shp_goodwarrior"] = "afchase_shp_goodwarrior";
    level._ID30909["generic"]["afchase_shp_extrastep"] = "afchase_shp_extrastep";
    level._ID30909["generic"]["afchase_shp_necessary"] = "afchase_shp_necessary";
    level._ID30895["generic"]["endgame_price_intro"] = %h2_afchase_intro_price;
    level._ID30895["generic"]["price_into_boat"] = %h2_afchase_boat_jumpin_price;
    level._ID30902["generic"]["price_into_boat"] = 0;
    level._ID30895["generic"]["price_into_boat_idle"] = %h2_afchase_boat_wave_price;
    _ID42259::_ID2062( "generic", "dialog1", "endgame_price_intro", "afchase_pri_aroundcorner" );
    _ID42259::_ID2062( "generic", "dialog2", "endgame_price_intro", "afchase_pri_getonboat" );
    level._ID30895["shepherd"]["turn_buckle_idle"][0] = %h2_afchase_shepherd_turnbuckle_idle;
    level._ID30895["shepherd"]["turn_buckle_idleb"][0] = %h2_afchase_shepherd_turnbuckle_idleb;
    level._ID30895["shepherd"]["turn_buckle"] = %h2_afchase_shepherd_turnbuckle;
    level._ID30895["shepherd"]["turn_buckle_alt"] = %h2_afchase_shepherd_turnbuckle_alt;
    level._ID30895["shepherd"]["gun_monologue"] = %h2_afchase_shepherd_gun_monologue;
    level._ID30895["shepherd"]["gun_fight"] = %h2_afchase_shepherd_gun_fight;
    level._ID30895["shepherd"]["gun_drop"] = %h2_afchase_shepherd_gun_drop;
    level._ID30895["shepherd"]["price_wakeup"] = %h2_afchase_shepherd_wakeup;
    level._ID30895["shepherd"]["gun_kick"] = %h2_afchase_shepherd_gun_kick;
    level._ID30895["shepherd"]["fight"] = %h2_afchase_fightc_shepherd;
    level._ID30895["shepherd"]["fight_C2"] = %h2_afchase_fightc_shepherd;
    level._ID30895["shepherd"]["fight_B2"] = %h2_afchase_fightb_shepherd_short;
    level._ID30895["shepherd"]["fight_D3_swapped"] = %h2_afchase_fightd3_shepherd;
    level._ID30895["shepherd"]["fight_E"] = %h2_afchase_fighte_shepherd;
    level._ID30895["shepherd"]["wakeup"] = %h2_afchase_shepherd_wakeup;
    level._ID30895["shepherd"]["fight_E_loop"][0] = %h2_afchase_fighte_shepherd_punchloop_b;
    level._ID30895["shepherd"]["fight_E_loop"][1] = %h2_afchase_fighte_shepherd_punchloop_c;
    level._ID30895["shepherd"]["fight_B"] = %h2_afchase_fightb_shepherd;
    level._ID30895["shepherd"]["fight_C"] = %h2_afchase_fightc_shepherd;
    level._ID30895["shepherd"]["flee"] = %h2_afchase_shepherd_flee;
    level._ID30895["shepherd"]["run"] = %h2_afchase_shepherd_flee_loop;
    level._ID30895["shepherd"]["knifepull_throw_kill"] = %h2_afchase_shepherd_dies;
    level._ID30895["shepherd"]["endgame"] = %h2_afchase_shepherd_endgame;
    level._ID30902["shepherd"]["endgame"] = 1;
    level._ID30895["shepherd"]["crawl"] = %h2_afchase_shepherd_crawl;
    level._ID30902["shepherd"]["gun_kick"] = 0;
    level._ID30895["shepherd"]["nearcar_monologue_1"] = %h2_afchase_shepherd_nearcar_monologue1;
    level._ID30895["shepherd"]["nearcar_monologue_2"] = %h2_afchase_shepherd_nearcar_monologue2;
    level._ID30895["shepherd"]["nearcar_monologue_3"] = %h2_afchase_shepherd_nearcar_monologue3;
    level._ID30895["shepherd"]["nearcar_monologue_4"] = %h2_afchase_shepherd_nearcar_monologue4;
    level._ID30895["shepherd"]["nearcar_monologue_5"] = %h2_afchase_shepherd_nearcar_monologue5;
    level._ID30895["shepherd"]["nearcar_monologue_6"] = %h2_afchase_shepherd_nearcar_monologue6;
    _ID42259::_ID2062( "shepherd", "dialog1", "nearcar_monologue_1", "afchase_shp_digtwograves" );
    _ID42259::_ID2062( "shepherd", "dialog2", "nearcar_monologue_2", "afchase_shp_goahead" );
    _ID42259::_ID2062( "shepherd", "dialog3", "nearcar_monologue_3", "afchase_shp_couldntdoit" );
    _ID42259::_ID2062( "shepherd", "dialog4", "nearcar_monologue_4", "afchase_shp_goodwarrior" );
    _ID42259::_ID2062( "shepherd", "dialog5", "nearcar_monologue_5", "afchase_shp_extrastep" );
    _ID42259::_ID2062( "shepherd", "dialog6", "nearcar_monologue_6", "afchase_shp_necessary" );
    level._ID30895["price"]["fight_B"] = %h2_afchase_fightb_price;
    level._ID30895["price"]["fight_B2"] = %h2_afchase_fightb_price_short;
    level._ID30895["price"]["fight_C"] = %h2_afchase_fightc_price;
    level._ID30895["price"]["fight_D3_swapped"] = %h2_afchase_fightd3_price;
    level._ID30895["price"]["fight_E_loop"][0] = %h2_afchase_fighte_price_punchloop_b;
    level._ID30895["price"]["fight_E_loop"][1] = %h2_afchase_fighte_price_punchloop_c;
    level._ID30895["price"]["gun_drop"] = %h2_afchase_price_gun_drop;
    level._ID30895["price"]["gun_fight"] = %h2_afchase_price_gun_fight;
    level._ID30895["price"]["gun_kick_price"] = %h2_afchase_price_gun_kick;
    level._ID30895["price"]["gun_kick_price_loop"][0] = %h2_afchase_price_gun_kick_loop;
    level._ID30895["price"]["price_wakeup"] = %h2_afchase_price_wakeup;
    level._ID30895["price"]["fight"] = %h2_afchase_fightc_price;
    level._ID30895["price"]["fight_C2"] = %h2_afchase_fightc_price;
    level._ID30895["price"]["fight_D3"] = %h2_afchase_fightd3_price;
    level._ID30895["price"]["fight_E"] = %h2_afchase_fighte_price;
    level._ID30895["price"]["walk_off"] = %h2_afchase_price_walkoff;
    level._ID30895["price"]["fight_D2"] = %afchase_fightd2_price;
    level._ID30895["price"]["knifepull_throw_kill"] = %h2_afchase_price_shepherd_dies;
    level._ID30895["price"]["endgame"] = %h2_afchase_price_endgame;
    level._ID30902["price"]["endgame"] = 1;
    level._ID30895["price"]["crawl"] = %h2_afchase_price_crawl;
    level._ID30902["price"]["gun_kick_price"] = 0;
    level._ID30895["nikolai"]["walk_off"] = %h2_afchase_nicholai_walkoff;
    level._ID30895["nikolai"]["endgame"] = %h2_afchase_nicholai_endgame;
    _ID42259::_ID2058( "price", "h2_price_hat_detach", maps\af_chase_knife_fight_code::h2_price_hat_detach );
    _ID42259::_ID2058( "price", "h2_price_hat_reattach", maps\af_chase_knife_fight_code::h2_price_hat_reattach );
}

_ID51111( var_0 )
{
    if ( isdefined( level._ID46102.cheat._ID51310 ) && level._ID46102.cheat._ID51310 )
        level._ID46102 _ID49347::_ID52060( 1 );

    var_1 = "jnt_eyeball_L";
    var_2 = _ID42237::_ID35164();
    var_2 linkto( level._ID46102, var_1, ( 1.5, 0, 0 ), ( 0, 180, 0 ) );
    var_3 = 2;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        playfxontag( _ID42237::_ID16299( "blood_sheperd_eye" ), var_2, "tag_origin" );
        wait(randomfloatrange( 0.1, 0.15 ));
    }
}

_ID49675( var_0 )
{

}

_ID45671( var_0 )
{
    _ID42407::_ID34379();
    _ID42407::_ID34377( 0.33 );
    _ID42407::_ID34374( 0 );
    _ID42407::_ID34371();
    wait 2;
    _ID42407::_ID34375( 1 );
    _ID42407::_ID34372();
    _ID42407::_ID34369();
}

_ID43346( var_0 )
{
    level._ID28543 hide();
}

_ID53101( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 14;

    maps\af_chase_knife_fight_code::_ID51476( var_0 );
    level._ID50049 moveto( ( 65, 0, 0 ), var_0, var_0 * 0.5, var_0 * 0.5 );
}

_ID49073( var_0 )
{
    if ( isdefined( level._ID53458 ) )
        level._ID53458 delete();

    var_1 = var_0 gettagorigin( "tag_weapon_right" );
    var_2 = var_0 gettagangles( "tag_weapon_right" );
}

_ID54474( var_0 )
{
    var_0 thread h2_impaled_aims_at_player();
    var_0 thread maps\af_chase_knife_fight_code::impaled_takedown_additive_reset();
}

h2_impaled_aims_at_player()
{
    self endon( "death" );
    self endon( "stop_aim" );
    var_0 = _ID42407::_ID16120( "aim_controller_left" );
    var_1 = _ID42407::_ID16120( "aim_controller_right" );
    var_2 = _ID42407::_ID16120( "aim_6" );
    var_3 = _ID42407::_ID16120( "aim_4" );
    var_4 = -27;
    var_5 = -13;
    var_6 = 58;
    self setanimlimited( var_2, 1, 0, 1 );
    self setanimlimited( var_3, 1, 0, 1 );
    var_7 = anglestoforward( self._ID65 );
    var_7 = vectornormalize( var_7 * ( 1, 1, 0 ) );
    var_8 = anglestoright( self._ID65 );
    var_8 = vectornormalize( var_8 * ( 1, 1, 0 ) );

    for (;;)
    {
        var_9 = level._ID794._ID740 - self._ID740;
        var_9 = vectornormalize( var_9 * ( 1, 1, 0 ) );
        var_10 = vectordot( var_7, var_9 );
        var_11 = vectordot( var_8, var_9 );

        if ( var_10 >= 1 )
            var_12 = 0;
        else
        {
            var_12 = acos( var_10 );
            var_12 = abs( var_12 ) * _ID42237::_ID34160( var_11 );
        }

        var_13 = 0;

        if ( var_12 > var_5 )
        {
            if ( var_12 > var_6 )
                var_12 = var_6;

            var_13 = ( var_12 - var_5 ) / ( var_6 - var_5 );
            self setanimlimited( var_1, var_13, 0.1, 1 );
            self setanimlimited( var_0, 0, 0.1, 1 );
        }
        else
        {
            if ( var_12 < var_4 )
                var_12 = var_4;

            var_13 = ( var_5 - var_12 ) / ( var_5 - var_4 );
            self setanimlimited( var_0, var_13, 0.1, 1 );
            self setanimlimited( var_1, 0, 0.1, 1 );
        }

        wait 0.05;
    }
}

_ID46638()
{
    self endon( "death" );
    self endon( "stop_aim" );
    var_0 = _ID42407::_ID16120( "aim_controller" );
    var_1 = _ID42407::_ID16120( "aim_6" );
    var_2 = _ID42407::_ID16120( "aim_4" );
    var_3 = 45;
    self setanim( var_0, 1, 0.2, 1 );

    for (;;)
    {
        var_4 = anglestoright( self._ID65 );
        var_5 = vectornormalize( level._ID794._ID740 - self._ID740 );
        var_6 = anglestoforward( self._ID65 );
        var_4 = anglestoright( self._ID65 );
        var_7 = vectordot( var_6, var_5 );
        var_8 = vectordot( var_4, var_5 );
        var_9 = acos( var_7 );
        var_9 = abs( var_9 );
        var_10 = 0;

        if ( var_8 > 0 )
        {
            if ( var_9 > var_3 )
                var_9 = var_3;

            var_10 = var_9 / var_3;
            self setanim( var_1, var_10, 0.2, 1 );
            self setanim( var_2, 1 - var_10, 0.2, 1 );
        }
        else
        {
            var_9 += 10;

            if ( var_9 > var_3 )
                var_9 = var_3;

            var_10 = var_9 / var_3;
            self setanim( var_2, var_10, 0.2, 1 );
            self setanim( var_1, 1 - var_10, 0.2, 1 );
        }

        wait 0.05;
    }
}

_ID50978()
{
    self endon( "death" );
    self endon( "stop_aim" );
    var_0 = _ID42407::_ID16120( "aim_controller" );
    var_1 = _ID42407::_ID16120( "aim_4" );
    var_2 = _ID42407::_ID16120( "aim_6" );
    var_3 = 45;
    self setanim( var_0, 1, 0.2, 1 );

    for (;;)
    {
        var_4 = anglestoright( self._ID65 );
        var_5 = vectornormalize( level._ID794._ID740 - self._ID740 );
        var_6 = anglestoforward( self._ID65 );
        var_4 = anglestoright( self._ID65 );
        var_7 = vectordot( var_6, var_5 );
        var_8 = vectordot( var_4, var_5 );
        var_9 = acos( var_7 );
        var_9 = abs( var_9 );
        var_10 = 0;

        if ( var_8 > 0 )
        {
            if ( var_9 > var_3 )
                var_9 = var_3;

            var_10 = var_9 / var_3;
            self setanim( var_1, var_10, 0.2, 1 );
            self setanim( var_2, 1 - var_10, 0.2, 1 );
        }
        else
        {
            var_9 += 10;

            if ( var_9 > var_3 )
                var_9 = var_3;

            var_10 = var_9 / var_3;
            self setanim( var_2, var_10, 0.2, 1 );
            self setanim( var_1, 1 - var_10, 0.2, 1 );
        }

        wait 0.05;
    }
}

_ID47963( var_0 )
{
    var_0 notify( "stop_aim" );
}

_ID46843( var_0 )
{
    var_0._ID44129++;

    if ( var_0._ID44129 >= 6 )
    {
        if ( randomint( 100 ) > 50 )
            return;
    }

    var_1 = var_0 gettagorigin( "tag_inhand" );
    _ID42237::_ID27077( "scn_afchase_dryfire_pistol_npc", var_1 );
}
#using_animtree("player");

_ID27229()
{
    level._ID30900["player_rig"] = #animtree;
    level._ID30904["player_rig"] = "viewbody_tf141_wet";
    level._ID30895["player_rig"]["knife_moment"] = %player_afchase_ending_knife_moment;
    level._ID30895["player_rig"]["wakeup"] = %h2_afchase_player_getup;
    level._ID30895["player_rig"]["prethrow"] = %h2_afchase_player_knife_throw_soon;
    level._ID30895["player_rig"]["gun_monologue"] = %h2_afchase_player_gun_monologue;
    level._ID30895["player_rig"]["gun_fight"] = %h2_afchase_player_gun_fight;
    level._ID30895["player_rig"]["endgame"] = %h2_afchase_player_endgame;
    level._ID30902["player_rig"]["endgame"] = 0.1;
    _ID42259::_ID2058( "player_rig", "dof", maps\af_chase_knife_fight_code::_ID44066, "gun_fight" );
    level._ID30895["player_rig"]["gun_drop_player"] = %h2_afchase_player_gun_drop;
    level._ID30895["player_rig"]["gun_kick"] = %h2_afchase_player_gun_kick;
    level._ID30902["player_rig"]["gun_kick"] = 0;
    _ID42259::_ID2058( "player_rig", "rumble", maps\af_chase_knife_fight_code::_ID44802, "gun_kick" );
    _ID42259::_ID2058( "player_rig", "vision_effect", ::_ID47060, "gun_kick" );
    level._ID30895["player_rig"]["turn_buckle_alt"] = %h2_afchase_player_turnbuckle_alt;
    _ID42259::_ID2059( "player_rig", "vision_effect", "weapon_commando_knife", "TAG_WEAPON_LEFT", "turn_buckle_alt" );
    _ID42259::_ID2058( "player_rig", "rumble", ::_ID49808, "turn_buckle_alt" );
    _ID42259::_ID2058( "player_rig", "vision_effect", ::_ID51184, "turn_buckle_alt" );
    _ID42259::_ID2058( "player_rig", "fadeout", ::_ID13798, "turn_buckle_alt" );
    level._ID30895["player_rig"]["turn_buckle"] = %h2_afchase_player_turnbuckle;
    _ID42259::_ID2059( "player_rig", "vision_effect", "weapon_commando_knife", "TAG_WEAPON_LEFT", "turn_buckle" );
    _ID42259::_ID2058( "player_rig", "rumble", ::_ID49808, "turn_buckle" );
    _ID42259::_ID2058( "player_rig", "vision_effect", ::_ID51184, "turn_buckle" );
    _ID42259::_ID2058( "player_rig", "fadeout", ::_ID13798, "turn_buckle" );
    level._ID30895["player_rig"]["walk_off"] = %h2_afchase_player_walkoff;
    level._ID30895["player_rig"]["gun_crawl_00"] = %h2_afchase_player_gun_crawl_00;
    level._ID30895["player_rig"]["gun_crawl_01"] = %h2_afchase_player_gun_crawl_01;
    level._ID30895["player_rig"]["gun_crawl_02"] = %h2_afchase_player_gun_crawl_02;
    level._ID30895["player_rig"]["gun_crawl_03"] = %h2_afchase_player_gun_crawl_03;
    level._ID30895["player_rig"]["gun_crawl_04"] = %h2_afchase_player_gun_crawl_04;
    level._ID30895["player_rig"]["gun_crawl_05"] = %h2_afchase_player_gun_crawl_05;
    level._ID30895["player_rig"]["gun_crawl_06"] = %h2_afchase_player_gun_crawl_06;
    level._ID30895["player_rig"]["gun_crawl_00_idle"][0] = %h2_afchase_player_gun_crawl_idle_00;
    level._ID30895["player_rig"]["gun_crawl_01_idle"][0] = %h2_afchase_player_gun_crawl_idle_01;
    level._ID30895["player_rig"]["gun_crawl_02_idle"][0] = %h2_afchase_player_gun_crawl_idle_02;
    level._ID30895["player_rig"]["gun_crawl_03_idle"][0] = %h2_afchase_player_gun_crawl_idle_03;
    level._ID30895["player_rig"]["gun_crawl_04_idle"][0] = %h2_afchase_player_gun_crawl_idle_04;
    level._ID30895["player_rig"]["gun_crawl_05_idle"][0] = %h2_afchase_player_gun_crawl_idle_05;
    level._ID30895["player_rig"]["gun_crawl_06_idle"][0] = %h2_afchase_player_gun_crawl_idle_06;
    level._ID30895["player_rig"]["knifepull_grab_01"] = %h2_afchase_player_knife_grab_01;
    level._ID30895["player_rig"]["knifepull_grab_02"] = %h2_afchase_player_knife_grab_02;
    level._ID30895["player_rig"]["knifepull_grab_idle"][0] = %h2_afchase_player_knife_grab_idle;
    level._ID30895["player_rig"]["knifepull_passout"] = %h2_afchase_player_knife_passout;
    level._ID30895["player_rig"]["knifepull_pull_01"] = %h2_afchase_player_knife_pull_01;
    level._ID30895["player_rig"]["knifepull_pull_02"] = %h2_afchase_player_knife_pull_02;
    level._ID30895["player_rig"]["knifepull_pull_03"] = %h2_afchase_player_knife_pull_03;
    level._ID30895["player_rig"]["knifepull_pullout_flip"] = %h2_afchase_player_knife_pullout_2_flip;
    _ID42259::_ID2058( "player_rig", "blood", ::_ID49714, "knifepull_pullout_flip" );
    _ID42259::_ID2058( "player_rig", "right_hand", ::_ID52783 );
    _ID42259::_ID2058( "player_rig", "left_hand", ::_ID47264 );
    level._ID30902["player_rig"]["knifepull_pullout_flip_idle"] = 1.0;
    level._ID30895["player_rig"]["knifepull_pullout_flip_idle"][0] = %h2_afchase_player_knife_pullout_2_flip_idle;
    level._ID30895["player_rig"]["knifepull_throw"] = %h2_afchase_player_knife_throw;
    level._ID30895["player_rig"]["knifepull_throw_kill"] = %h2_afchase_player_knife_throw_kill;
    level._ID30895["player_rig"]["knifepull_throw_passout"] = %h2_afchase_player_throw_passout;
    level._ID30895["player_rig"]["price_wakeup"] = %h2_afchase_player_end_wakeup;
    level._ID30895["player_rig"]["pull_additive_root"] = %h2_player_pull_additive;
    level._ID30895["player_rig"]["pull_additive_02"] = %h2_afchase_player_knife_pull_02_add;
    level._ID30895["player_rig"]["pull_additive_03"] = %h2_afchase_player_knife_pull_03_add;
    level._ID30900["dizzy_stumble"] = #animtree;
    level._ID30904["dizzy_stumble"] = "viewhands_tf141";
    level._ID30895["dizzy_stumble"]["dizzy_stumble_1"] = %h2_wpn_melee_knife_dizzy_stumble_l;
    level._ID30895["dizzy_stumble"]["dizzy_stumble_2"] = %h2_wpn_melee_knife_dizzy_stumble_r;
    level._ID30895["dizzy_stumble"]["dizzy_stumble_3"] = %h2_wpn_melee_knife_dizzy_idlebreaker;
    level._ID30912 = [];
    level._ID30912["dizzy_stumble_1"] = "h2_wpn_melee_knife_dizzy_stumble_l";
    level._ID30912["dizzy_stumble_2"] = "h2_wpn_melee_knife_dizzy_stumble_r";
    level._ID30912["dizzy_stumble_3"] = "h2_wpn_melee_knife_dizzy_idlebreaker";
}

_ID49714( var_0 )
{
    _ID51539( 3 );
}

_ID51539( var_0 )
{
    level._ID794 playrumblelooponentity( "damage_heavy" );
    thread maps\ending_aud::_ID51899();
    level._ID794 shellshock( "af_chase_ending_kill", 60 );
}

_ID51184( var_0 )
{
    level._ID794 playrumblelooponentity( "damage_light" );
    var_1 = maps\af_chase_knife_fight_code::_ID16077();
    var_1._ID55 = 1;
    var_1 fadeovertime( 1.0 );
    var_1._ID55 = 0.0;
    level._ID794 stopshellshock();
    setblur( 0, 2 );
    _ID42407::_ID32515( "ending_fight", 1 );
    _ID42407::_ID14689( "ending_fight", 1 );
    level._ID794 _ID42407::_ID48929( "ending_fight" );
    level._ID794 playrumblelooponentity( "damage_heavy" );
    setomnvar( "ui_consciousness_init", 1 );
    setomnvar( "ui_consciousness_play", 2 );
}

_ID47060( var_0 )
{
    level._ID794 playrumblelooponentity( "damage_heavy" );
    level._ID794 dodamage( 50 / level._ID794._ID255, level._ID794._ID740 );
    level._ID794 thread _ID42407::_ID27079( "face_stomp" );
    maps\af_chase_knife_fight_code::_ID52796( "af_chase_turn_buckle_slam" );
    level._ID794 playrumblelooponentity( "damage_heavy" );
    wait 0.05;
    level._ID794 setnormalhealth( 1 );
}
#using_animtree("script_model");

_ID51346()
{
    level._ID30900["gun_model"] = #animtree;
    level._ID30904["gun_model"] = "weapon_colt_anaconda_animated";
    level._ID30895["gun_model"]["gun_drop"] = %h2_afchase_revolver_gun_drop;
    level._ID30895["gun_model"]["gun_kick_gun"] = %h2_afchase_revolver_gun_kick;
    level._ID30895["gun_model"]["gun_monologue"] = %h2_afchase_revolver_gun_monologue;
    level._ID30895["gun_model"]["gun_fight"] = %h2_afchase_revolver_gun_fight;
    _ID42259::_ID2058( "gun_model", "bullets", ::_ID51058, "gun_fight" );
    level._ID30904["knife"] = "weapon_commando_knife";
    level._ID30900["knife"] = #animtree;
    level._ID30900["window"] = #animtree;
    level._ID30895["window"]["idle1"][0] = %h2_afch_window_panels_01_slowswing;
    level._ID30895["window"]["idle2"][0] = %h2_afch_window_panels_02_slowswing;
    level._ID30900["fence"] = #animtree;
    level._ID30895["fence"]["idle1"][0] = %h2_afch_fence_01_swing;
    level._ID30900["crane"] = #animtree;
    level._ID30895["crane"]["idle1"][0] = %h2_machinery_crane01_slowswing;
    level._ID30900["chain"] = #animtree;
    level._ID30895["chain"]["idle1"][0] = %h2_afch_cave_chain_swing;
    level._ID30900["light"] = #animtree;
    level._ID30895["light"]["idle1"][0] = %h2_af_chase_light_river_idle;
    level._ID30895["knife"]["turn_buckle"] = %h2_afchase_knife_turnbuckle;
    _ID42259::_ID2058( "knife", "blood", ::_ID53203, "turn_buckle" );
    level._ID30895["knife"]["turn_buckle_alt"] = %h2_afchase_knife_turnbuckle_alt;
    _ID42259::_ID2058( "knife", "blood", ::_ID53203, "turn_buckle_alt" );
    level._ID30895["knife"]["gun_drop"] = %h2_afchase_knife_gun_drop;
    level._ID30895["knife"]["gun_monologue"] = %h2_afchase_knife_gun_monologue;
    level._ID30895["knife"]["gun_fight"] = %h2_afchase_knife_gun_fight;
    level._ID30895["knife"]["knifepull_grab_01"] = %h2_afchase_knife_grab_01;
    level._ID30895["knife"]["knifepull_grab_02"] = %h2_afchase_knife_grab_02;
    level._ID30895["knife"]["knifepull_grab_idle"][0] = %h2_afchase_knife_grab_idle;
    level._ID30895["knife"]["knifepull_passout"] = %h2_afchase_knife_passout;
    level._ID30895["knife"]["knifepull_pull_01"] = %h2_afchase_knife_pull_01;
    level._ID30895["knife"]["knifepull_pull_02"] = %h2_afchase_knife_pull_02;
    level._ID30895["knife"]["knifepull_pull_03"] = %h2_afchase_knife_pull_03;
    level._ID30895["knife"]["knifepull_pullout_flip"] = %h2_afchase_knife_pullout_2_flip;
    level._ID30895["knife"]["knifepull_pullout_flip_idle"][0] = %h2_afchase_knife_pullout_2_flip_idle;
    level._ID30895["knife"]["knifepull_throw"] = %h2_afchase_knife_throw;
    level._ID30895["knife"]["prethrow"] = %h2_afchase_knife_throw_soon;
    level._ID30895["knife"]["knifepull_throw_kill"] = %h2_afchase_knife_throw_kill;
    level._ID30895["knife"]["knifepull_throw_passout"] = %h2_afchase_knife_throw_passout;
    level._ID30895["knife"]["endgame"] = %h2_afchase_knife_endgame;
    level._ID30902["knife"]["endgame"] = 0.1;
    level._ID30902["knife"]["knifepull_pullout_flip_idle"] = 1.0;
    _ID42259::_ID2058( "knife", "blood", ::_ID53203, "turn_buckle" );
    _ID42259::_ID2058( "shepherd", "knife_in_eye", ::_ID51111, "endgame" );
    _ID42259::_ID2058( "knife", "knife_out", ::_ID53203, "knifepull_pullout_flip" );
    level._ID30895["rotation"]["z_down"] = %rotate_z_l;
}

_ID49808( var_0 )
{
    level._ID794 playrumblelooponentity( "damage_heavy" );
}

_ID13798( var_0 )
{
    _ID42237::_ID14402( "turn_buckle_fadeout" );
}
#using_animtree("vehicles");

_ID47674()
{
    level._ID30895["littlebird"]["endgame"] = %h2_afchase_chopper_landing;
    level._ID30895["zodiac_player"]["zodiac_waterfall_right"] = %afchase_waterfall_zodiac_r;
    level._ID30895["zodiac_player"]["zodiac_waterfall_left"] = %afchase_waterfall_zodiac_l;
    level._ID30895["zodiac_player"]["waterfall_over"] = %h2_afchase_waterfall_zodiac_fall;
    level._ID30902["zodiac_player"]["waterfall_over"] = 0;
    _ID42259::_ID2058( "zodiac_player", "zodiac_hide", ::afch_hide_customfunction );
    level._ID30895["zodiac_player"]["zodiac_waterfall_add_left"] = %zodiac_waterfall_add_left;
    level._ID30895["zodiac_player"]["zodiac_waterfall_left"] = %afchase_waterfall_player_zodiac_add_l;
    level._ID30895["zodiac_player"]["zodiac_waterfall_add_right"] = %zodiac_waterfall_add_right;
    level._ID30895["zodiac_player"]["zodiac_waterfall_right"] = %afchase_waterfall_player_zodiac_add_r;
    level._ID30895["zodiac_player"]["sniper_waterfall"] = %afchase_waterfall_player_zodiac;
    level._ID30895["pavelow"]["sniper_waterfall"] = %afchase_waterfall_pavelow;
    level._ID30895["pavelow"]["sniper_waterfall_idle"][0] = %afchase_waterfall_pavelow_idle;
    level._ID30895["zodiac_player"]["player_view_fall"] = %player_zodiac_view_fall;
    level._ID30895["zodiac_player"]["player_view_fall_anim"] = %h2_afchase_waterfall_player_view_fall;
}

afch_hide_customfunction( var_0 )
{
    var_0 hide();
}

_ID49948( var_0 )
{
    level notify( "bullets" );
}

_ID53203( var_0 )
{
    maps\af_chase_knife_fight_code::_ID49625();
    playfxontag( _ID42237::_ID16299( "player_stabbed" ), var_0, "TAG_FX" );
}

_ID51058( var_0 )
{
    playfxontag( _ID42237::_ID16299( "revolver_bullets" ), var_0, "J_Cylinder_Spin" );
}

_ID48648( var_0 )
{
    _ID42237::_ID49667( _ID42237::_ID16299( "footstep_dust_sandstorm_runner" ), var_0, "J_Ball_RI", ( 0, 0, 0 ), ( 0, -90, 90 ) );
}

_ID53510( var_0 )
{
    _ID42237::_ID49667( _ID42237::_ID16299( "footstep_dust_sandstorm_runner" ), var_0, "J_Ball_LE", ( 0, 0, 0 ), ( 0, -90, 90 ) );
}

_ID48997( var_0 )
{
    playfxontag( _ID42237::_ID16299( "footstep_dust_sandstorm_small_runner" ), var_0, "J_Ball_RI" );
}

_ID50559( var_0 )
{
    playfxontag( _ID42237::_ID16299( "footstep_dust_sandstorm_small_runner" ), var_0, "J_Ball_LE" );
}

_ID52783( var_0 )
{
    playfxontag( _ID42237::_ID16299( "crawl_dust_sandstorm_runner" ), var_0, "J_Mid_RI_2" );
}

_ID47264( var_0 )
{
    playfxontag( _ID42237::_ID16299( "crawl_dust_sandstorm_runner" ), var_0, "J_Mid_LE_2" );
}

_ID48877( var_0 )
{
    playfxontag( _ID42237::_ID16299( "bodyfall_dust_sandstorm_large_runner" ), var_0, "J_SpineUpper" );
}

_ID45390( var_0 )
{
    maps\af_chase_knife_fight_code::_ID44089();
    var_1 = 0.5;
    level._ID50049 moveto( ( 40, 0, 0 ), var_1, 0, var_1 );
}

_ID47455()
{
    level._ID30899["price"]["0fight_E_loop"] = "scn_afchase_e_loop_price_foley";
    level._ID30899["shepherd"]["0fight_E_loop"] = "scn_afchase_e_loop_shep_foley";
}

_ID45586()
{
    level._ID30899["price"]["0fight_E_loop"] = undefined;
    level._ID30899["shepherd"]["0fight_E_loop"] = undefined;
}

_ID47047( var_0 )
{
    if ( isdefined( level._ID794._ID50619 ) )
        return;

    level._ID794 takeweapon( "ending_knife" );
    level._ID794 giveweapon( "ending_knife_bloody" );
    level._ID794 switchtoweapon( "ending_knife_bloody" );
    level._ID794._ID50619 = 1;
}
#using_animtree("animals");

chicken_anims()
{
    level._ID30900["chicken"] = #animtree;
    level._ID30895["chicken"]["chicken_cage_freakout"][0] = %chicken_cage_freakout;
    level._ID30895["chicken"]["chicken_cage_pecking_idle"][0] = %chicken_cage_pecking_idle;
    level._ID30895["chicken"]["chicken_cage_seated_idle"][0] = %chicken_cage_seated_idle;
    level._ID30895["chicken"]["chicken_cage_loop_01"] = %chicken_cage_loop_01;
    level._ID30895["chicken"]["chicken_cage_loop_02"] = %chicken_cage_loop_02;
    level._ID30895["chicken"]["chicken_cage_death"] = %chicken_cage_death;
    level._ID30895["chicken"]["chicken_cage_death_02"] = %chicken_cage_death_02;
}
#using_animtree("script_model");

_ID23866()
{
    level._ID30895["pit_gun"]["training_pit_sitting_welcome_gun"] = %training_pit_sitting_welcome_gun;
    level._ID30895["pit_gun"]["training_pit_sitting_idle_gun"] = %training_pit_sitting_idle_gun;
    level._ID30895["pit_gun"]["training_pit_stand_idle_gun"] = %training_pit_stand_idle_gun;
    level._ID30895["pit_gun"]["training_pit_open_case_gun"] = %training_pit_open_case_gun;
    level._ID30900["pit_gun"] = #animtree;
    level._ID30900["bell"] = #animtree;
    level._ID30895["bell"]["pressing_button_infront"] = %h2_ending_player_press_bell_front_prop;
    level._ID30895["bell"]["pressing_button_behind"] = %h2_ending_player_press_bell_behind_prop;
    level._ID30895["bell"]["pressing_button_else"] = %h2_ending_player_press_bell_no_player;
    _ID42259::_ID2056( "bell", "pressing_button_infront", "ring", "detpack_trigger" );
    _ID42259::_ID2056( "bell", "pressing_button_behind", "ring", "detpack_trigger" );
    _ID42259::_ID2056( "bell", "pressing_button_else", "ring", "detpack_trigger" );
    level._ID30900["lantern"] = #animtree;
    level._ID30904["lantern"] = "h2_dcb_lamp_ceiling_animate";
    level._ID30895["lantern"]["idle"][0] = %h2_dcb_lamp_ceiling_idle;
}
