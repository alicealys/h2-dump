// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19577()
{
    if ( isdefined( anim._ID3277 ) )
        return;

    anim._ID3277 = [];
    anim._ID3277["soldier"] = [];
    animscripts\cover_left::_ID19584();
    animscripts\cover_right::_ID19587();
    animscripts\cover_prone::_ID19586();
    animscripts\cover_multi::_ID19585();
    animscripts\cover_wall::_ID19588();
    animscripts\reactions::_ID19621();
    animscripts\pain::_ID19618();
    animscripts\death::_ID19593();
    animscripts\combat::_ID19581();
    animscripts\move::_ID19595();
    animscripts\move::_ID19631();
    animscripts\flashed::_ID19598();
    animscripts\pushed::_ID43955();
    animscripts\stop::_ID19602();
    animscripts\melee::_ID19617();
    anim._ID3204 = spawnstruct();
    anim._ID3204._ID24321 = [];
    _ID19597();
    _ID19590();
    _ID19620();
    _ID19623();
    _ID19627();
    _ID19601();
    _ID19632();
    _ID19594();
    _ID19622();
    _ID19626();
    _ID19629();
    _ID19596();
    _ID19624();
    _ID19636();
    _ID19589();
    _ID19600();
    _ID19619();
    _ID19743();
    _ID19691();
    _ID52740();
    _ID46499();
    _ID19599();
    _ID19704();
    _ID19625();
    _ID19580();
    _ID19628();
    _ID19630();
}

_ID29424( var_0, var_1, var_2 )
{
    _ID19577();
    anim._ID3277[var_0] = var_1;

    if ( isdefined( var_1["flashed"] ) )
        anim._ID14503[var_0] = 0;

    if ( isdefined( var_2 ) && var_2 )
        animscripts\init_move_transitions::_ID16612( var_0 );
}

_ID3276( var_0 )
{
    return isdefined( anim._ID3277[var_0] );
}
#using_animtree("generic_human");

_ID19624()
{
    anim._ID19851 = [];
    anim._ID19851["sprint"] = %sprint_loop_distant;
    anim._ID19851["sprint_short"] = %sprint1_loop;
    anim._ID19851["prone"] = %prone_crawl;
    anim._ID19851["straight"] = %run_lowready_f;
    anim._ID19851["smg_straight"] = %smg_run_lowready_f;
    anim._ID19851["straight_twitch"] = [ %run_twitch_guncheck, %run_twitch_aim_straight, %run_twitch_aim_above, %run_twitch_lookbehind_a, %run_twitch_lookbehind_b ];
    anim._ID19851["move_f"] = %walk_forward;
    anim._ID19851["move_l"] = %walk_left;
    anim._ID19851["move_r"] = %walk_right;
    anim._ID19851["move_b"] = %walk_backward;
    anim._ID19851["crouch"] = %crouch_fastwalk_f;
    anim._ID19851["crouch_l"] = %crouch_fastwalk_l;
    anim._ID19851["crouch_r"] = %crouch_fastwalk_r;
    anim._ID19851["crouch_b"] = %crouch_fastwalk_b;
    anim._ID19851["straight_30up"] = %h2_run_lowready_slope_up_30;
    anim._ID19851["straight_30down"] = %h2_run_lowready_slope_down_30;
    anim._ID19851["straight_15up"] = %h2_run_lowready_slope_up_15;
    anim._ID19851["straight_15down"] = %h2_run_lowready_slope_down_15;
    anim._ID19851["straight_10up"] = %h2_run_lowready_slope_up_10;
    anim._ID19851["straight_10down"] = %h2_run_lowready_slope_down_10;
    _ID46522();
    anim._ID19851["reload"] = [ %run_reload_a, %run_reload_b ];
    anim._ID3277["soldier"]["run"] = anim._ID19851;
}

_ID46522()
{
    anim._ID19851["stairs_up_6x8"] = %h2_run_stairs_6x8_loop_up;
    anim._ID19851["stairs_up_in_6x8"] = %h2_run_stairs_6x8_straight_up_in_l;
    anim._ID19851["stairs_up_out_6x8"] = %h2_run_stairs_6x8_straight_up_out_l;
    anim._ID19851["stairs_down_6x8"] = %h2_run_stairs_6x8_loop_down;
    anim._ID19851["stairs_down_in_6x8"] = %h2_run_stairs_6x8_straight_down_in_l;
    anim._ID19851["stairs_down_out_6x8"] = %h2_run_stairs_6x8_straight_down_out_l;
    anim._ID19851["turn_90l_2_stairs_up_6x8"] = %h2_run_stairs_6x8_left_up_in_l;
    anim._ID19851["turn_90r_2_stairs_up_6x8"] = %h2_run_stairs_6x8_right_up_in_l;
    anim._ID19851["turn_90l_2_stairs_down_6x8"] = %h2_run_stairs_6x8_left_down_in_l;
    anim._ID19851["turn_90r_2_stairs_down_6x8"] = %h2_run_stairs_6x8_right_down_in_l;
    anim._ID19851["stairs_up_8x8"] = %h1_run_stairs_up_8x8;
    anim._ID19851["stairs_up_in_8x8"] = %h1_run_stairs_up_8x8_in;
    anim._ID19851["stairs_up_out_8x8"] = %h1_run_stairs_up_8x8_out;
    anim._ID19851["stairs_down_8x8"] = %h1_run_stairs_down_8x8;
    anim._ID19851["stairs_down_in_8x8"] = %h1_run_stairs_down_8x8_in;
    anim._ID19851["stairs_down_out_8x8"] = %h1_run_stairs_down_8x8_out;
    anim._ID19851["turn_90l_2_stairs_up_8x8"] = %h1_turn_90l_2_run_stairs_up_8x8_in;
    anim._ID19851["turn_90r_2_stairs_up_8x8"] = %h1_turn_90r_2_run_stairs_up_8x8_in;
    anim._ID19851["turn_90l_2_stairs_down_8x8"] = %h1_turn_90l_2_run_stairs_down_8x8_in;
    anim._ID19851["turn_90r_2_stairs_down_8x8"] = %h1_turn_90r_2_run_stairs_down_8x8_in;
    anim._ID19851["stairs_up_12x8"] = %h2_run_stairs_12x8_loop_up;
    anim._ID19851["stairs_up_in_12x8"] = %h2_run_stairs_12x8_straight_up_in_l;
    anim._ID19851["stairs_up_out_12x8"] = %h2_run_stairs_12x8_straight_up_out_l;
    anim._ID19851["stairs_down_12x8"] = %h2_run_stairs_12x8_loop_down;
    anim._ID19851["stairs_down_in_12x8"] = %h2_run_stairs_12x8_straight_down_in_l;
    anim._ID19851["stairs_down_out_12x8"] = %h2_run_stairs_12x8_straight_down_out_l;
    anim._ID19851["turn_90l_2_stairs_up_12x8"] = %h2_run_stairs_12x8_left_up_in_l;
    anim._ID19851["turn_90r_2_stairs_up_12x8"] = %h2_run_stairs_12x8_right_up_in_l;
    anim._ID19851["turn_90l_2_stairs_down_12x8"] = %h2_run_stairs_12x8_left_down_in_l;
    anim._ID19851["turn_90r_2_stairs_down_12x8"] = %h2_run_stairs_12x8_right_down_in_l;
    anim._ID19851["stairs_up_16x8"] = %h1_run_stairs_up_16x8;
    anim._ID19851["stairs_up_in_16x8"] = %h1_run_stairs_up_16x8_in;
    anim._ID19851["stairs_up_out_16x8"] = %h1_run_stairs_up_16x8_out;
    anim._ID19851["stairs_down_16x8"] = %h1_run_stairs_down_16x8;
    anim._ID19851["stairs_down_in_16x8"] = %h1_run_stairs_down_16x8_in;
    anim._ID19851["stairs_down_out_16x8"] = %h1_run_stairs_down_16x8_out;
    anim._ID19851["turn_90l_2_stairs_up_16x8"] = %h1_turn_90l_2_run_stairs_up_16x8_in;
    anim._ID19851["turn_90r_2_stairs_up_16x8"] = %h1_turn_90r_2_run_stairs_up_16x8_in;
    anim._ID19851["turn_90l_2_stairs_down_16x8"] = %h1_turn_90l_2_run_stairs_down_16x8_in;
    anim._ID19851["turn_90r_2_stairs_down_16x8"] = %h1_turn_90r_2_run_stairs_down_16x8_in;
}

_ID19600()
{
    anim._ID19851 = anim._ID3277["soldier"]["run"];
    anim._ID19851["straight"] = %heat_run_loop;
    anim._ID3277["soldier"]["heat_run"] = anim._ID19851;
}

_ID19636()
{
    anim._ID19851 = [];
    anim._ID19851["sprint"] = %sprint_loop_distant;
    anim._ID19851["sprint_short"] = %sprint1_loop;
    anim._ID19851["prone"] = %prone_crawl;
    anim._ID19851["straight"] = %walk_cqb_f;
    anim._ID19851["smg_straight"] = %walk_cqb_f;
    anim._ID19851["move_f"] = %walk_cqb_f;
    anim._ID19851["move_l"] = %walk_left;
    anim._ID19851["move_r"] = %walk_right;
    anim._ID19851["move_b"] = %walk_backward;
    anim._ID19851["crouch"] = %crouch_fastwalk_f;
    anim._ID19851["crouch_l"] = %crouch_fastwalk_l;
    anim._ID19851["crouch_r"] = %crouch_fastwalk_r;
    anim._ID19851["crouch_b"] = %crouch_fastwalk_b;
    anim._ID19851["aim_2"] = %walk_aim_2;
    anim._ID19851["aim_4"] = %walk_aim_4;
    anim._ID19851["aim_6"] = %walk_aim_6;
    anim._ID19851["aim_8"] = %walk_aim_8;
    _ID53295();
    anim._ID3277["soldier"]["walk"] = anim._ID19851;
}

_ID19589()
{
    anim._ID19851 = [];
    anim._ID19851["sprint"] = %sprint_loop_distant;
    anim._ID19851["sprint_short"] = %sprint1_loop;
    anim._ID19851["straight"] = %run_cqb_f_search_v1;
    anim._ID19851["straight_twitch"] = [ %cqb_run_twitch_a_iw6, %cqb_run_twitch_b_iw6, %cqb_run_twitch_c_iw6, %cqb_run_twitch_d_iw6 ];
    anim._ID19851["move_f"] = %walk_cqb_f;
    anim._ID19851["move_l"] = %walk_left;
    anim._ID19851["move_r"] = %walk_right;
    anim._ID19851["move_b"] = %walk_backward;
    anim._ID19851["aim_2"] = %cqb_run_aim_2;
    anim._ID19851["aim_4"] = %cqb_run_aim_4;
    anim._ID19851["aim_5"] = %cqb_run_aim_5;
    anim._ID19851["aim_6"] = %cqb_run_aim_6;
    anim._ID19851["aim_8"] = %cqb_run_aim_8;
    _ID53295();
    anim._ID19851["straight_30up"] = %h2_cqb_run_slope_up_30;
    anim._ID19851["straight_30down"] = %h2_cqb_run_slope_down_30;
    anim._ID19851["straight_15up"] = %h2_cqb_run_slope_up_15;
    anim._ID19851["straight_15down"] = %h2_cqb_run_slope_down_15;
    anim._ID19851["straight_10up"] = %h2_cqb_run_slope_up_10;
    anim._ID19851["straight_10down"] = %h2_cqb_run_slope_down_10;
    anim._ID19851["shotgun_pullout"] = %shotgun_cqbrun_pullout;
    anim._ID19851["shotgun_putaway"] = %shotgun_cqbrun_putaway;
    anim._ID19851["reload"] = [ %cqb_run_reload_a_iw6, %cqb_run_reload_b_iw6 ];
    anim._ID3277["soldier"]["cqb"] = anim._ID19851;
}

_ID53295()
{
    anim._ID19851["stairs_up_6x8"] = %h2_cqb_stairs_6x8_loop_up;
    anim._ID19851["stairs_up_in_6x8"] = %h2_cqb_stairs_6x8_straight_up_in_l;
    anim._ID19851["stairs_up_out_6x8"] = %h2_cqb_stairs_6x8_straight_up_out_l;
    anim._ID19851["stairs_down_6x8"] = %h2_cqb_stairs_6x8_loop_down;
    anim._ID19851["stairs_down_in_6x8"] = %h2_cqb_stairs_6x8_straight_down_in_l;
    anim._ID19851["stairs_down_out_6x8"] = %h2_cqb_stairs_6x8_straight_down_out_l;
    anim._ID19851["turn_90l_2_stairs_up_6x8"] = %h2_cqb_stairs_6x8_left_up_in_l;
    anim._ID19851["turn_90r_2_stairs_up_6x8"] = %h2_cqb_stairs_6x8_right_up_in_l;
    anim._ID19851["turn_90l_2_stairs_down_6x8"] = %h2_cqb_stairs_6x8_left_down_in_l;
    anim._ID19851["turn_90r_2_stairs_down_6x8"] = %h2_cqb_stairs_6x8_right_down_in_l;
    anim._ID19851["stairs_up_8x8"] = %h1_cqb_stairs_up_8x8;
    anim._ID19851["stairs_up_in_8x8"] = %h1_cqb_stairs_up_8x8_in;
    anim._ID19851["stairs_up_out_8x8"] = %h1_cqb_stairs_up_8x8_out;
    anim._ID19851["stairs_down_8x8"] = %h1_cqb_stairs_down_8x8;
    anim._ID19851["stairs_down_in_8x8"] = %h1_cqb_stairs_down_8x8_in;
    anim._ID19851["stairs_down_out_8x8"] = %h1_cqb_stairs_down_8x8_out;
    anim._ID19851["turn_90l_2_stairs_up_8x8"] = %h1_turn_90l_2_cqb_stairs_up_8x8_in;
    anim._ID19851["turn_90r_2_stairs_up_8x8"] = %h1_turn_90r_2_cqb_stairs_up_8x8_in;
    anim._ID19851["turn_90l_2_stairs_down_8x8"] = %h1_turn_90l_2_cqb_stairs_down_8x8_in;
    anim._ID19851["turn_90r_2_stairs_down_8x8"] = %h1_turn_90r_2_cqb_stairs_down_8x8_in;
    anim._ID19851["stairs_up_12x8"] = %h2_cqb_stairs_12x8_loop_up;
    anim._ID19851["stairs_up_in_12x8"] = %h2_cqb_stairs_12x8_straight_up_in_l;
    anim._ID19851["stairs_up_out_12x8"] = %h2_cqb_stairs_12x8_straight_up_out_l;
    anim._ID19851["stairs_down_12x8"] = %h2_cqb_stairs_12x8_loop_down;
    anim._ID19851["stairs_down_in_12x8"] = %h2_cqb_stairs_12x8_straight_down_in_l;
    anim._ID19851["stairs_down_out_12x8"] = %h2_cqb_stairs_12x8_straight_down_out_l;
    anim._ID19851["turn_90l_2_stairs_up_12x8"] = %h2_cqb_stairs_12x8_left_up_in_l;
    anim._ID19851["turn_90r_2_stairs_up_12x8"] = %h2_cqb_stairs_12x8_right_up_in_l;
    anim._ID19851["turn_90l_2_stairs_down_12x8"] = %h2_cqb_stairs_12x8_left_down_in_l;
    anim._ID19851["turn_90r_2_stairs_down_12x8"] = %h2_cqb_stairs_12x8_right_down_in_l;
    anim._ID19851["stairs_up_16x8"] = %h1_cqb_stairs_up_16x8;
    anim._ID19851["stairs_up_in_16x8"] = %h1_cqb_stairs_up_16x8_in;
    anim._ID19851["stairs_up_out_16x8"] = %h1_cqb_stairs_up_16x8_out;
    anim._ID19851["stairs_down_16x8"] = %h1_cqb_stairs_down_16x8;
    anim._ID19851["stairs_down_in_16x8"] = %h1_cqb_stairs_down_16x8_in;
    anim._ID19851["stairs_down_out_16x8"] = %h1_cqb_stairs_down_16x8_out;
    anim._ID19851["turn_90l_2_stairs_up_16x8"] = %h1_cqb_stairs_up_16x8_in;
    anim._ID19851["turn_90r_2_stairs_up_16x8"] = %h1_cqb_stairs_up_16x8_in;
    anim._ID19851["turn_90l_2_stairs_down_16x8"] = %h1_cqb_stairs_down_16x8_in;
    anim._ID19851["turn_90r_2_stairs_down_16x8"] = %h1_cqb_stairs_down_16x8_in;
}

_ID19619()
{
    anim._ID19851 = [];
    anim._ID19851["sprint"] = %pistol_sprint;
    anim._ID19851["sprint_short"] = %pistol_sprint;
    anim._ID19851["straight"] = %pistol_walk;
    anim._ID19851["move_f"] = %pistol_walk;
    anim._ID19851["move_l"] = %pistol_walk_left;
    anim._ID19851["move_r"] = %pistol_walk_right;
    anim._ID19851["move_b"] = %pistol_walk_back;
    anim._ID3277["soldier"]["pistol_move"] = anim._ID19851;
}

_ID19620()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %pistol_stand_aim_8_add;
    anim._ID19851["add_aim_down"] = %pistol_stand_aim_2_add;
    anim._ID19851["add_aim_left"] = %pistol_stand_aim_4_add;
    anim._ID19851["add_aim_right"] = %pistol_stand_aim_6_add;
    anim._ID19851["straight_level"] = %pistol_stand_aim_5;
    anim._ID19851["fire"] = %pistol_stand_fire_a;
    anim._ID19851["single"] = animscripts\utility::_ID3291( %pistol_stand_fire_a );
    anim._ID19851["reload"] = animscripts\utility::_ID3291( %pistol_stand_reload_a );
    anim._ID19851["reload_grip"] = [ %h2_grip_stand_reload ];
    anim._ID19851["reload_crouchhide"] = [];
    anim._ID19851["exposed_idle"] = [ %exposed_idle_alert_v1, %exposed_idle_alert_v2, %exposed_idle_alert_v3 ];
    _ID32217();
    anim._ID19851["add_turn_aim_up"] = %pistol_stand_aim_8_alt;
    anim._ID19851["add_turn_aim_down"] = %pistol_stand_aim_2_alt;
    anim._ID19851["add_turn_aim_left"] = %pistol_stand_aim_4_alt;
    anim._ID19851["add_turn_aim_right"] = %pistol_stand_aim_6_alt;
    anim._ID3277["soldier"]["pistol_stand"] = anim._ID19851;
}

_ID19623()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %rpg_stand_aim_8;
    anim._ID19851["add_aim_down"] = %rpg_stand_aim_2;
    anim._ID19851["add_aim_left"] = %rpg_stand_aim_4;
    anim._ID19851["add_aim_right"] = %rpg_stand_aim_6;
    anim._ID19851["straight_level"] = %rpg_stand_aim_5;
    anim._ID19851["fire"] = %rpg_stand_fire;
    anim._ID19851["single"] = [ %exposed_shoot_semi1 ];
    anim._ID19851["reload"] = [ %rpg_stand_reload ];
    anim._ID19851["reload_crouchhide"] = [];
    anim._ID19851["exposed_idle"] = [ %rpg_stand_idle ];
    _ID32211();
    _ID32216();
    _ID32196();
    anim._ID3277["soldier"]["rpg_stand"] = anim._ID19851;
}

_ID19627()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %shotgun_aim_8;
    anim._ID19851["add_aim_down"] = %shotgun_aim_2;
    anim._ID19851["add_aim_left"] = %shotgun_aim_4;
    anim._ID19851["add_aim_right"] = %shotgun_aim_6;
    anim._ID19851["straight_level"] = %shotgun_aim_5;
    anim._ID19851["fire"] = %exposed_shoot_auto_v3;
    anim._ID19851["single"] = [ %shotgun_stand_fire_1a, %shotgun_stand_fire_1b ];
    _ID32198();
    anim._ID19851["exposed_idle"] = [ %exposed_idle_alert_v1, %exposed_idle_alert_v2, %exposed_idle_alert_v3 ];
    anim._ID19851["reload"] = [ %shotgun_stand_reload_a, %shotgun_stand_reload_b, %shotgun_stand_reload_c, %shotgun_stand_reload_c, %shotgun_stand_reload_c ];
    anim._ID19851["reload_crouchhide"] = [ %shotgun_stand_reload_a, %shotgun_stand_reload_b ];
    _ID32211();
    _ID32216();
    _ID32196();
    anim._ID3277["soldier"]["shotgun_stand"] = anim._ID19851;
}

_ID19632()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %smg_exposed_aim_8;
    anim._ID19851["add_aim_down"] = %smg_exposed_aim_2;
    anim._ID19851["add_aim_left"] = %smg_exposed_aim_4;
    anim._ID19851["add_aim_right"] = %smg_exposed_aim_6;
    anim._ID19851["straight_level"] = %smg_exposed_aim_5;
    anim._ID19851["fire"] = %smg_exposed_shoot_auto_v3;
    anim._ID19851["fire_corner"] = %smg_exposed_shoot_auto_v2;
    anim._ID19851["single"] = animscripts\utility::_ID3291( %smg_exposed_shoot_semi1 );
    _ID32198();
    anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( %smg_exposed_idle_alert_v1, %smg_exposed_idle_alert_v2, %smg_exposed_idle_alert_v3 );
    anim._ID19851["exposed_grenade"] = animscripts\utility::_ID3291( %smg_exposed_grenadethrowb, %smg_exposed_grenadethrowc );
    anim._ID19851["reload"] = animscripts\utility::_ID3291( %smg_exposed_reload );
    anim._ID19851["reload_grip"] = [ %h2_grip_stand_reload ];
    anim._ID19851["reload_p90"] = [ %h2_p90_stand_reload ];
    anim._ID19851["reload_crouchhide"] = animscripts\utility::_ID3291( %smg_exposed_reloadb );
    anim._ID19851["reload_crouchhide_grip"] = [ %h2_grip_stand_reloadb ];
    anim._ID19851["reload_crouchhide_p90"] = [ %h2_p90_stand_reloadb ];
    _ID32212();
    _ID32210();
    _ID32194();
    anim._ID3277["soldier"]["smg_stand"] = anim._ID19851;
}

_ID19590()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %cqb_stand_aim8;
    anim._ID19851["add_aim_down"] = %cqb_stand_aim2;
    anim._ID19851["add_aim_left"] = %cqb_stand_aim4;
    anim._ID19851["add_aim_right"] = %cqb_stand_aim6;
    anim._ID19851["straight_level"] = %cqb_stand_aim5;
    anim._ID19851["fire"] = %exposed_shoot_auto_v3;
    anim._ID19851["single"] = [ %exposed_shoot_semi1 ];
    _ID32198();
    anim._ID19851["exposed_idle"] = [ %exposed_idle_alert_v1, %exposed_idle_alert_v2, %exposed_idle_alert_v3 ];
    anim._ID19851["reload"] = [ %cqb_stand_reload_steady ];
    anim._ID19851["reload_back"] = [ %h2_back_stand_reload ];
    anim._ID19851["reload_grip"] = [ %h2_grip_stand_reload ];
    anim._ID19851["reload_lmg"] = [ %h2_lmg_stand_reload ];
    anim._ID19851["reload_p90"] = [ %h2_p90_stand_reload ];
    anim._ID19851["reload_crouchhide"] = [ %cqb_stand_reload_knee ];
    anim._ID19851["reload_crouchhide_back"] = [ %h2_back_cqb_reload_knee ];
    anim._ID19851["reload_crouchhide_grip"] = [ %h2_grip_cqb_reload_knee ];
    anim._ID19851["reload_crouchhide_lmg"] = [ %h2_lmg_cqb_reload_knee ];
    anim._ID19851["reload_crouchhide_p90"] = [ %h2_p90_cqb_reload_knee ];
    _ID32211();
    _ID32216();
    _ID32196();
    anim._ID3277["soldier"]["cqb_stand"] = anim._ID19851;
}

_ID19601()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %heat_stand_aim_8;
    anim._ID19851["add_aim_down"] = %heat_stand_aim_2;
    anim._ID19851["add_aim_left"] = %heat_stand_aim_4;
    anim._ID19851["add_aim_right"] = %heat_stand_aim_6;
    anim._ID19851["straight_level"] = %heat_stand_aim_5;
    anim._ID19851["fire"] = %heat_stand_fire_auto;
    anim._ID19851["single"] = animscripts\utility::_ID3291( %heat_stand_fire_single );
    _ID32205( %heat_stand_fire_burst );
    anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( %heat_stand_idle, %heat_stand_scana, %heat_stand_scanb );
    anim._ID19851["reload"] = animscripts\utility::_ID3291( %heat_exposed_reload );
    anim._ID19851["reload_crouchhide"] = animscripts\utility::_ID3291();
    _ID32211();
    anim._ID19851["turn_left_45"] = %heat_stand_turn_l;
    anim._ID19851["turn_left_90"] = %heat_stand_turn_l;
    anim._ID19851["turn_left_135"] = %heat_stand_turn_180;
    anim._ID19851["turn_left_180"] = %heat_stand_turn_180;
    anim._ID19851["turn_right_45"] = %heat_stand_turn_r;
    anim._ID19851["turn_right_90"] = %heat_stand_turn_r;
    anim._ID19851["turn_right_135"] = %heat_stand_turn_180;
    anim._ID19851["turn_right_180"] = %heat_stand_turn_180;
    _ID32196();
    anim._ID3277["soldier"]["heat_stand"] = anim._ID19851;
}

_ID19599()
{
    anim._ID19851 = [];
    anim._ID19851["reload_cover_left"] = %heat_cover_reload_r;
    anim._ID19851["reload_cover_right"] = %heat_cover_reload_l;
    anim._ID19851["reload_default"] = %heat_exposed_reload;
    anim._ID3277["soldier"]["heat_reload"] = anim._ID19851;
}

_ID19597()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %exposed_aim_8;
    anim._ID19851["add_aim_down"] = %exposed_aim_2;
    anim._ID19851["add_aim_left"] = %exposed_aim_4;
    anim._ID19851["add_aim_right"] = %exposed_aim_6;
    anim._ID19851["straight_level"] = %exposed_aim_5;
    anim._ID19851["fire"] = %exposed_shoot_auto_v3;
    anim._ID19851["fire_corner"] = %exposed_shoot_auto_v2;
    anim._ID19851["single"] = animscripts\utility::_ID3291( %exposed_shoot_semi1 );
    _ID32198();
    anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( %exposed_idle_alert_v1, %exposed_idle_alert_v2, %exposed_idle_alert_v3 );
    anim._ID19851["exposed_grenade"] = animscripts\utility::_ID3291( %exposed_grenadethrowb, %exposed_grenadethrowc );
    anim._ID19851["reload"] = animscripts\utility::_ID3291( %exposed_reload );
    anim._ID19851["reload_back"] = [ %h2_back_stand_reload ];
    anim._ID19851["reload_grip"] = [ %h2_grip_stand_reload ];
    anim._ID19851["reload_lmg"] = [ %h2_lmg_stand_reload ];
    anim._ID19851["reload_p90"] = [ %h2_p90_stand_reload ];
    anim._ID19851["reload_crouchhide"] = animscripts\utility::_ID3291( %exposed_reloadb );
    anim._ID19851["reload_crouchhide_back"] = [ %h2_back_stand_reloadb ];
    anim._ID19851["reload_crouchhide_grip"] = [ %h2_grip_stand_reloadb ];
    anim._ID19851["reload_crouchhide_lmg"] = [ %h2_lmg_stand_reloadb ];
    anim._ID19851["reload_crouchhide_p90"] = [ %h2_p90_stand_reloadb ];
    _ID32211();
    _ID32216();
    _ID32196();
    anim._ID3277["soldier"]["default_stand"] = anim._ID19851;
}

_ID19594()
{
    anim._ID19851 = [];
    _ID32199();
    anim._ID19851["fire"] = %exposed_crouch_shoot_auto_v2;
    anim._ID19851["single"] = animscripts\utility::_ID3291( %exposed_crouch_shoot_semi1 );
    _ID32197();
    anim._ID19851["reload"] = animscripts\utility::_ID3291( %exposed_crouch_reload );
    anim._ID19851["reload_back"] = [ %h2_back_exposed_crouch_reload ];
    anim._ID19851["reload_grip"] = [ %h2_grip_exposed_crouch_reload ];
    anim._ID19851["reload_lmg"] = [ %h2_lmg_exposed_crouch_reload ];
    anim._ID19851["reload_p90"] = [ %h2_p90_exposed_crouch_reload ];
    anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( %exposed_crouch_idle_alert_v1, %exposed_crouch_idle_alert_v2, %exposed_crouch_idle_alert_v3 );
    _ID32211();
    _ID32203();
    _ID32195();
    anim._ID3277["soldier"]["default_crouch"] = anim._ID19851;
}

_ID19622()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %rpg_crouch_aim_8;
    anim._ID19851["add_aim_down"] = %rpg_crouch_aim_2;
    anim._ID19851["add_aim_left"] = %rpg_crouch_aim_4;
    anim._ID19851["add_aim_right"] = %rpg_crouch_aim_6;
    anim._ID19851["straight_level"] = %rpg_crouch_aim_5;
    anim._ID19851["fire"] = %rpg_crouch_fire;
    anim._ID19851["single"] = [ %rpg_crouch_fire ];
    anim._ID19851["reload"] = [ %rpg_crouch_reload ];
    anim._ID19851["exposed_idle"] = [ %rpg_crouch_idle ];
    _ID32211();
    _ID32203();
    _ID32195();
    anim._ID3277["soldier"]["rpg_crouch"] = anim._ID19851;
}

_ID19626()
{
    anim._ID19851 = [];
    _ID32199();
    anim._ID19851["fire"] = %exposed_crouch_shoot_auto_v2;
    anim._ID19851["single"] = [ %shotgun_crouch_fire ];
    _ID32197();
    anim._ID19851["reload"] = [ %shotgun_crouch_reload ];
    anim._ID19851["exposed_idle"] = [ %exposed_crouch_idle_alert_v1, %exposed_crouch_idle_alert_v2, %exposed_crouch_idle_alert_v3 ];
    _ID32211();
    _ID32203();
    _ID32195();
    anim._ID3277["soldier"]["shotgun_crouch"] = anim._ID19851;
}

_ID19629()
{
    anim._ID19851 = [];
    _ID32199();
    anim._ID19851["fire"] = %exposed_crouch_shoot_auto_v2;
    anim._ID19851["single"] = animscripts\utility::_ID3291( %exposed_crouch_shoot_semi1 );
    _ID32197();
    anim._ID19851["reload"] = animscripts\utility::_ID3291( %exposed_crouch_reload );
    anim._ID19851["reload_back"] = [ %h2_back_exposed_crouch_reload ];
    anim._ID19851["reload_grip"] = [ %h2_grip_exposed_crouch_reload ];
    anim._ID19851["reload_lmg"] = [ %h2_lmg_exposed_crouch_reload ];
    anim._ID19851["reload_p90"] = [ %h2_p90_exposed_crouch_reload ];
    anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( %exposed_crouch_idle_alert_v1, %exposed_crouch_idle_alert_v2, %exposed_crouch_idle_alert_v3 );
    _ID32212();
    _ID32203();
    _ID32195();
    anim._ID3277["soldier"]["smg_crouch"] = anim._ID19851;
}

_ID19596()
{
    anim._ID19851 = [];
    anim._ID19851["add_aim_up"] = %prone_aim_8_add;
    anim._ID19851["add_aim_down"] = %prone_aim_2_add;
    anim._ID19851["add_aim_left"] = %prone_aim_4_add;
    anim._ID19851["add_aim_right"] = %prone_aim_6_add;
    anim._ID19851["straight_level"] = %prone_aim_5;
    anim._ID19851["fire"] = %prone_fire_1;
    anim._ID19851["single"] = [ %prone_fire_1 ];
    anim._ID19851["reload"] = [ %prone_reload ];
    anim._ID19851["burst2"] = %prone_fire_burst;
    anim._ID19851["burst3"] = %prone_fire_burst;
    anim._ID19851["burst4"] = %prone_fire_burst;
    anim._ID19851["burst5"] = %prone_fire_burst;
    anim._ID19851["burst6"] = %prone_fire_burst;
    anim._ID19851["semi2"] = %prone_fire_burst;
    anim._ID19851["semi3"] = %prone_fire_burst;
    anim._ID19851["semi4"] = %prone_fire_burst;
    anim._ID19851["semi5"] = %prone_fire_burst;
    anim._ID19851["turn_left_45"] = %h1_prone_turn_l45;
    anim._ID19851["turn_left_90"] = %h1_prone_turn_l90;
    anim._ID19851["turn_left_135"] = %h1_prone_turn_l90;
    anim._ID19851["turn_left_180"] = %h1_prone_turn_180;
    anim._ID19851["turn_right_45"] = %h1_prone_turn_r45;
    anim._ID19851["turn_right_90"] = %h1_prone_turn_r90;
    anim._ID19851["turn_right_135"] = %h1_prone_turn_r90;
    anim._ID19851["turn_right_180"] = %h1_prone_turn_180;
    anim._ID19851["exposed_idle"] = [ %exposed_crouch_idle_alert_v1, %exposed_crouch_idle_alert_v2, %exposed_crouch_idle_alert_v3 ];
    _ID32211();
    anim._ID3277["soldier"]["default_prone"] = anim._ID19851;
}

_ID19583( var_0 )
{
    self._ID8374 = var_0;
}

_ID19592( var_0, var_1, var_2, var_3 )
{
    anim._ID19851 = animscripts\utility::_ID22631( "default_stand" );

    if ( isdefined( var_1 ) )
        anim._ID19851["straight_level"] = var_1;

    if ( isdefined( var_0 ) )
    {
        anim._ID19851["fire"] = var_0;
        anim._ID19851["single"] = animscripts\utility::_ID3291( var_0 );
        _ID32205( var_0 );
    }

    if ( isdefined( var_2 ) )
        anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( var_2 );

    if ( isdefined( var_3 ) )
    {
        anim._ID19851["reload"] = animscripts\utility::_ID3291( var_3 );
        anim._ID19851["reload_crouchhide"] = animscripts\utility::_ID3291( var_3 );
    }

    self._ID8374 = anim._ID19851;
}

_ID19591( var_0, var_1, var_2 )
{
    anim._ID19851 = animscripts\utility::_ID22631( "default_crouch" );

    if ( isdefined( var_0 ) )
    {
        anim._ID19851["fire"] = var_0;
        anim._ID19851["single"] = animscripts\utility::_ID3291( var_0 );
        _ID32204( var_0 );
    }

    if ( isdefined( var_1 ) )
        anim._ID19851["exposed_idle"] = animscripts\utility::_ID3291( var_1 );

    if ( isdefined( var_2 ) )
        anim._ID19851["reload"] = animscripts\utility::_ID3291( var_2 );

    self._ID8364 = anim._ID19851;
}

_ID19582( var_0 )
{
    self._ID8364 = var_0;
}

_ID7851()
{
    self._ID9574 = undefined;
    self._ID9568 = undefined;
    self._ID8374 = undefined;
    self._ID8364 = undefined;
}

_ID32217( var_0 )
{
    anim._ID19851["turn_left_45"] = %pistol_stand_turn45l;
    anim._ID19851["turn_left_90"] = %pistol_stand_turn90l;
    anim._ID19851["turn_left_135"] = %pistol_stand_turn90l;
    anim._ID19851["turn_left_180"] = %pistol_stand_turn180l;
    anim._ID19851["turn_right_45"] = %pistol_stand_turn45r;
    anim._ID19851["turn_right_90"] = %pistol_stand_turn90r;
    anim._ID19851["turn_right_135"] = %pistol_stand_turn90r;
    anim._ID19851["turn_right_180"] = %pistol_stand_turn180l;
}

_ID32216()
{
    anim._ID19851["turn_left_45"] = %exposed_tracking_turn45l;
    anim._ID19851["turn_left_90"] = %exposed_tracking_turn90l;
    anim._ID19851["turn_left_135"] = %exposed_tracking_turn135l;
    anim._ID19851["turn_left_180"] = %exposed_tracking_turn180l;
    anim._ID19851["turn_right_45"] = %exposed_tracking_turn45r;
    anim._ID19851["turn_right_90"] = %exposed_tracking_turn90r;
    anim._ID19851["turn_right_135"] = %exposed_tracking_turn135r;
    anim._ID19851["turn_right_180"] = %exposed_tracking_turn180r;
}

_ID32210()
{
    anim._ID19851["turn_left_45"] = %smg_exposed_tracking_turn45l;
    anim._ID19851["turn_left_90"] = %smg_exposed_tracking_turn90l;
    anim._ID19851["turn_left_135"] = %smg_exposed_tracking_turn135l;
    anim._ID19851["turn_left_180"] = %smg_exposed_tracking_turn180l;
    anim._ID19851["turn_right_45"] = %smg_exposed_tracking_turn45r;
    anim._ID19851["turn_right_90"] = %smg_exposed_tracking_turn90r;
    anim._ID19851["turn_right_135"] = %smg_exposed_tracking_turn135r;
    anim._ID19851["turn_right_180"] = %smg_exposed_tracking_turn180r;
}

_ID32203()
{
    anim._ID19851["turn_left_45"] = %exposed_crouch_turn_90_left;
    anim._ID19851["turn_left_90"] = %exposed_crouch_turn_90_left;
    anim._ID19851["turn_left_135"] = %exposed_crouch_turn_180_left;
    anim._ID19851["turn_left_180"] = %exposed_crouch_turn_180_left;
    anim._ID19851["turn_right_45"] = %exposed_crouch_turn_90_right;
    anim._ID19851["turn_right_90"] = %exposed_crouch_turn_90_right;
    anim._ID19851["turn_right_135"] = %exposed_crouch_turn_180_right;
    anim._ID19851["turn_right_180"] = %exposed_crouch_turn_180_right;
    anim._ID19851["cover2exposed_turn_left_45"] = %covercrouch_2_exposed_crouch_turn_90_left;
    anim._ID19851["cover2exposed_turn_left_90"] = %covercrouch_2_exposed_crouch_turn_90_left;
    anim._ID19851["cover2exposed_turn_left_135"] = %covercrouch_2_exposed_crouch_turn_180_left;
    anim._ID19851["cover2exposed_turn_left_180"] = %covercrouch_2_exposed_crouch_turn_180_left;
    anim._ID19851["cover2exposed_turn_right_45"] = %covercrouch_2_exposed_crouch_turn_90_right;
    anim._ID19851["cover2exposed_turn_right_90"] = %covercrouch_2_exposed_crouch_turn_90_right;
    anim._ID19851["cover2exposed_turn_right_135"] = %covercrouch_2_exposed_crouch_turn_180_right;
    anim._ID19851["cover2exposed_turn_right_180"] = %covercrouch_2_exposed_crouch_turn_180_right;
    anim._ID19851["exposed2cover_turn_left_45"] = %exposed_crouch_2_covercrouch_turn_90_left;
    anim._ID19851["exposed2cover_turn_left_90"] = %exposed_crouch_2_covercrouch_turn_90_left;
    anim._ID19851["exposed2cover_turn_left_135"] = %exposed_crouch_2_covercrouch_turn_180_left;
    anim._ID19851["exposed2cover_turn_left_180"] = %exposed_crouch_2_covercrouch_turn_180_left;
    anim._ID19851["exposed2cover_turn_right_45"] = %exposed_crouch_2_covercrouch_turn_90_right;
    anim._ID19851["exposed2cover_turn_right_90"] = %exposed_crouch_2_covercrouch_turn_90_right;
    anim._ID19851["exposed2cover_turn_right_135"] = %exposed_crouch_2_covercrouch_turn_180_right;
    anim._ID19851["exposed2cover_turn_right_180"] = %exposed_crouch_2_covercrouch_turn_180_right;
    anim._ID19851["cover2exposed_turn_all"] = _ID42237::array_flatten( [ anim._ID19851["cover2exposed_turn_left_45"], anim._ID19851["cover2exposed_turn_left_90"], anim._ID19851["cover2exposed_turn_left_135"], anim._ID19851["cover2exposed_turn_left_180"], anim._ID19851["cover2exposed_turn_right_45"], anim._ID19851["cover2exposed_turn_right_90"], anim._ID19851["cover2exposed_turn_left_135"], anim._ID19851["cover2exposed_turn_left_180"] ] );
}

_ID32211()
{
    anim._ID19851["crouch_2_stand"] = %exposed_crouch_2_stand;
    anim._ID19851["crouch_2_prone"] = %crouch_2_prone;
    anim._ID19851["stand_2_crouch"] = %exposed_stand_2_crouch;
    anim._ID19851["stand_2_prone"] = %stand_2_prone;
    anim._ID19851["prone_2_crouch"] = %prone_2_crouch;
    anim._ID19851["prone_2_stand"] = %prone_2_stand;
    anim._ID19851["covercrouch_2_stand"] = %covercrouch_2_stand;
}

_ID32212()
{
    anim._ID19851["crouch_2_stand"] = %smg_exposed_crouch_2_stand;
    anim._ID19851["crouch_2_prone"] = %crouch_2_prone;
    anim._ID19851["stand_2_crouch"] = %smg_exposed_stand_2_crouch;
    anim._ID19851["stand_2_prone"] = %stand_2_prone;
    anim._ID19851["prone_2_crouch"] = %prone_2_crouch;
    anim._ID19851["prone_2_stand"] = %prone_2_stand;
    anim._ID19851["covercrouch_2_stand"] = %covercrouch_2_stand;
}

_ID32198()
{
    anim._ID19851["burst2"] = %exposed_shoot_burst3;
    anim._ID19851["burst3"] = %exposed_shoot_burst3;
    anim._ID19851["burst4"] = %exposed_shoot_burst4;
    anim._ID19851["burst5"] = %exposed_shoot_burst5;
    anim._ID19851["burst6"] = %exposed_shoot_burst6;
    anim._ID19851["semi2"] = %exposed_shoot_semi2;
    anim._ID19851["semi3"] = %exposed_shoot_semi3;
    anim._ID19851["semi4"] = %exposed_shoot_semi4;
    anim._ID19851["semi5"] = %exposed_shoot_semi5;
}

_ID32205( var_0 )
{
    anim._ID19851["burst2"] = var_0;
    anim._ID19851["burst3"] = var_0;
    anim._ID19851["burst4"] = var_0;
    anim._ID19851["burst5"] = var_0;
    anim._ID19851["burst6"] = var_0;
    anim._ID19851["semi2"] = var_0;
    anim._ID19851["semi3"] = var_0;
    anim._ID19851["semi4"] = var_0;
    anim._ID19851["semi5"] = var_0;
}

_ID32197()
{
    anim._ID19851["burst2"] = %exposed_crouch_shoot_burst3;
    anim._ID19851["burst3"] = %exposed_crouch_shoot_burst3;
    anim._ID19851["burst4"] = %exposed_crouch_shoot_burst4;
    anim._ID19851["burst5"] = %exposed_crouch_shoot_burst5;
    anim._ID19851["burst6"] = %exposed_crouch_shoot_burst6;
    anim._ID19851["semi2"] = %exposed_crouch_shoot_semi2;
    anim._ID19851["semi3"] = %exposed_crouch_shoot_semi3;
    anim._ID19851["semi4"] = %exposed_crouch_shoot_semi4;
    anim._ID19851["semi5"] = %exposed_crouch_shoot_semi5;
}

_ID32199()
{
    anim._ID19851["add_aim_up"] = %exposed_crouch_aim_8;
    anim._ID19851["add_aim_down"] = %exposed_crouch_aim_2;
    anim._ID19851["add_aim_left"] = %exposed_crouch_aim_4;
    anim._ID19851["add_aim_right"] = %exposed_crouch_aim_6;
    anim._ID19851["straight_level"] = %exposed_crouch_aim_5;
}

_ID32204( var_0 )
{
    anim._ID19851["burst2"] = var_0;
    anim._ID19851["burst3"] = var_0;
    anim._ID19851["burst4"] = var_0;
    anim._ID19851["burst5"] = var_0;
    anim._ID19851["burst6"] = var_0;
    anim._ID19851["semi2"] = var_0;
    anim._ID19851["semi3"] = var_0;
    anim._ID19851["semi4"] = var_0;
    anim._ID19851["semi5"] = var_0;
}

_ID32196()
{
    anim._ID19851["add_turn_aim_up"] = %exposed_turn_aim_8;
    anim._ID19851["add_turn_aim_down"] = %exposed_turn_aim_2;
    anim._ID19851["add_turn_aim_left"] = %exposed_turn_aim_4;
    anim._ID19851["add_turn_aim_right"] = %exposed_turn_aim_6;
}

_ID32194()
{
    anim._ID19851["add_turn_aim_up"] = %smg_exposed_turn_aim_8;
    anim._ID19851["add_turn_aim_down"] = %smg_exposed_turn_aim_2;
    anim._ID19851["add_turn_aim_left"] = %smg_exposed_turn_aim_4;
    anim._ID19851["add_turn_aim_right"] = %smg_exposed_turn_aim_6;
}

_ID32195()
{
    anim._ID19851["add_turn_aim_up"] = %exposed_crouch_turn_aim_8;
    anim._ID19851["add_turn_aim_down"] = %exposed_crouch_turn_aim_2;
    anim._ID19851["add_turn_aim_left"] = %exposed_crouch_turn_aim_4;
    anim._ID19851["add_turn_aim_right"] = %exposed_crouch_turn_aim_6;
}

_ID32213()
{
    if ( animscripts\utility::_ID39997() || isdefined( self._ID2834 ) )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "pistol_stand" );
    else if ( isdefined( self._ID8374 ) )
        self._ID7._ID3291 = self._ID8374;
    else if ( isdefined( self._ID18328 ) )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "heat_stand" );
    else if ( animscripts\utility::_ID39993() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "rpg_stand" );
    else if ( animscripts\utility::_ID39998() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "smg_stand" );
    else if ( isdefined( self._ID1302 ) && animscripts\utility::_ID41682() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "shotgun_stand" );
    else if ( animscripts\utility::_ID20716() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "cqb_stand" );
    else if ( animscripts\utility::_ID20961() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "unstable_stand" );
    else
        self._ID7._ID3291 = animscripts\utility::_ID22631( "default_stand" );
}

_ID32200()
{
    if ( animscripts\utility::_ID39997() )
        animscripts\shared::_ID26732( self._ID834, "right" );

    if ( isdefined( self._ID8364 ) )
        self._ID7._ID3291 = self._ID8364;
    else if ( animscripts\utility::_ID39993() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "rpg_crouch" );
    else if ( animscripts\utility::_ID39998() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "smg_crouch" );
    else if ( isdefined( self._ID1302 ) && animscripts\utility::_ID41682() )
        self._ID7._ID3291 = animscripts\utility::_ID22631( "shotgun_crouch" );
    else
        self._ID7._ID3291 = animscripts\utility::_ID22631( "default_crouch" );
}

_ID32209()
{
    if ( animscripts\utility::_ID39997() )
        animscripts\shared::_ID26732( self._ID834, "right" );

    self._ID7._ID3291 = animscripts\utility::_ID22631( "default_prone" );
}

_ID19743()
{
    var_0 = animscripts\utility::_ID48067();
    anim._ID19851 = [];

    if ( var_0 )
    {
        anim._ID19851[0] = %run_tight_turn_180;
        anim._ID19851[1] = %run_tight_turn_l135;
        anim._ID19851[2] = %run_tight_turn_l90;
        anim._ID19851[3] = %run_tight_turn_l45;
        anim._ID19851[5] = %run_tight_turn_r45;
        anim._ID19851[6] = %run_tight_turn_r90;
        anim._ID19851[7] = %run_tight_turn_r135;
        anim._ID19851[8] = %run_tight_turn_180;
        anim._ID19851[9] = %run_tight_turn_l20;
        anim._ID19851[10] = %run_tight_turn_r20;
    }
    else
    {
        anim._ID19851[0] = %run_turn_180;
        anim._ID19851[1] = %run_turn_l135;
        anim._ID19851[2] = %run_turn_l90;
        anim._ID19851[3] = %run_turn_l45;
        anim._ID19851[5] = %run_turn_r45;
        anim._ID19851[6] = %run_turn_r90;
        anim._ID19851[7] = %run_turn_r135;
        anim._ID19851[8] = %run_turn_180;
    }

    anim._ID3277["soldier"]["run_turn"] = anim._ID19851;
    anim._ID19851 = [];

    if ( var_0 )
    {
        anim._ID19851[0] = %run_tight_turn_180;
        anim._ID19851[1] = %run_tight_turn_l135;
        anim._ID19851[2] = %run_tight_turn_l90;
        anim._ID19851[3] = %run_tight_turn_l45;
        anim._ID19851[5] = %run_tight_turn_r45;
        anim._ID19851[6] = %run_tight_turn_r90;
        anim._ID19851[7] = %run_tight_turn_r135;
        anim._ID19851[8] = %run_tight_turn_180;
        anim._ID19851[9] = %run_tight_turn_l20;
        anim._ID19851[10] = %run_tight_turn_r20;
    }
    else
    {
        anim._ID19851[0] = %smg_run_turn_180;
        anim._ID19851[1] = %smg_run_turn_l135;
        anim._ID19851[2] = %smg_run_turn_l90;
        anim._ID19851[3] = %smg_run_turn_l45;
        anim._ID19851[5] = %smg_run_turn_r45;
        anim._ID19851[6] = %smg_run_turn_r90;
        anim._ID19851[7] = %smg_run_turn_r135;
        anim._ID19851[8] = %smg_run_turn_180;
    }

    anim._ID3277["soldier"]["smg_run_turn"] = anim._ID19851;
    anim._ID19851 = [];

    if ( var_0 )
    {
        anim._ID19851[0] = %cqb_walk_tight_turn_180;
        anim._ID19851[1] = %cqb_walk_tight_turn_l135;
        anim._ID19851[2] = %cqb_walk_tight_turn_l90;
        anim._ID19851[3] = %cqb_walk_tight_turn_l45;
        anim._ID19851[5] = %cqb_walk_tight_turn_r45;
        anim._ID19851[6] = %cqb_walk_tight_turn_r90;
        anim._ID19851[7] = %cqb_walk_tight_turn_r135;
        anim._ID19851[8] = %cqb_walk_tight_turn_180;
        anim._ID19851[9] = %cqb_walk_tight_turn_l20;
        anim._ID19851[10] = %cqb_walk_tight_turn_r20;
    }
    else
    {
        anim._ID19851[0] = %cqb_walk_turn_2;
        anim._ID19851[1] = %cqb_walk_turn_1;
        anim._ID19851[2] = %cqb_walk_turn_4;
        anim._ID19851[3] = %cqb_walk_turn_7;
        anim._ID19851[5] = %cqb_walk_turn_9;
        anim._ID19851[6] = %cqb_walk_turn_6;
        anim._ID19851[7] = %cqb_walk_turn_3;
        anim._ID19851[8] = %cqb_walk_turn_2;
    }

    anim._ID3277["soldier"]["cqb_turn"] = anim._ID19851;
    anim._ID19851 = [];

    if ( var_0 )
    {
        anim._ID19851[0] = %cqb_walk_tight_turn_180;
        anim._ID19851[1] = %cqb_walk_tight_turn_l135;
        anim._ID19851[2] = %cqb_walk_tight_turn_l90;
        anim._ID19851[3] = %cqb_walk_tight_turn_l45;
        anim._ID19851[5] = %cqb_walk_tight_turn_r45;
        anim._ID19851[6] = %cqb_walk_tight_turn_r90;
        anim._ID19851[7] = %cqb_walk_tight_turn_r135;
        anim._ID19851[8] = %cqb_walk_tight_turn_180;
        anim._ID19851[9] = %cqb_walk_tight_turn_l20;
        anim._ID19851[10] = %cqb_walk_tight_turn_r20;
    }
    else
    {
        anim._ID19851[0] = %cqb_run_turn_180_iw6;
        anim._ID19851[1] = %cqb_run_turn_l135_iw6;
        anim._ID19851[2] = %cqb_run_turn_l90_iw6;
        anim._ID19851[3] = %cqb_run_turn_l45_iw6;
        anim._ID19851[5] = %cqb_run_turn_r45_iw6;
        anim._ID19851[6] = %cqb_run_turn_r90_iw6;
        anim._ID19851[7] = %cqb_run_turn_r135_iw6;
        anim._ID19851[8] = %cqb_run_turn_180_iw6;
    }

    anim._ID3277["soldier"]["cqb_run_turn"] = anim._ID19851;
}

_ID19691()
{
    anim._ID19851 = [];
    anim._ID19851["turn_left_45"] = %h1_exposed_stand_45_l;
    anim._ID19851["turn_left_90"] = %h1_exposed_stand_90_l;
    anim._ID19851["turn_left_135"] = %h1_exposed_stand_135_l;
    anim._ID19851["turn_left_180"] = %h1_exposed_stand_180_l;
    anim._ID19851["turn_right_45"] = %h1_exposed_stand_45_r;
    anim._ID19851["turn_right_90"] = %h1_exposed_stand_90_r;
    anim._ID19851["turn_right_135"] = %h1_exposed_stand_135_r;
    anim._ID19851["turn_right_180"] = %h1_exposed_stand_180_r;
    anim._ID3277["soldier"]["exposed_turn"] = anim._ID19851;
    anim._ID19851 = [];
    anim._ID19851["turn_left_45"] = %exposed_crouch_turn_90_left;
    anim._ID19851["turn_left_90"] = %exposed_crouch_turn_90_left;
    anim._ID19851["turn_left_135"] = %exposed_crouch_turn_180_left;
    anim._ID19851["turn_left_180"] = %exposed_crouch_turn_180_left;
    anim._ID19851["turn_right_45"] = %exposed_crouch_turn_90_right;
    anim._ID19851["turn_right_90"] = %exposed_crouch_turn_90_right;
    anim._ID19851["turn_right_135"] = %exposed_crouch_turn_180_right;
    anim._ID19851["turn_right_180"] = %exposed_crouch_turn_180_right;
    anim._ID19851["exposed2cover_turn_left_45"] = %exposed_crouch_2_covercrouch_turn_90_left;
    anim._ID19851["exposed2cover_turn_left_90"] = %exposed_crouch_2_covercrouch_turn_90_left;
    anim._ID19851["exposed2cover_turn_left_135"] = %exposed_crouch_2_covercrouch_turn_180_left;
    anim._ID19851["exposed2cover_turn_left_180"] = %exposed_crouch_2_covercrouch_turn_180_left;
    anim._ID19851["exposed2cover_turn_right_45"] = %exposed_crouch_2_covercrouch_turn_90_right;
    anim._ID19851["exposed2cover_turn_right_90"] = %exposed_crouch_2_covercrouch_turn_90_right;
    anim._ID19851["exposed2cover_turn_right_135"] = %exposed_crouch_2_covercrouch_turn_180_right;
    anim._ID19851["exposed2cover_turn_right_180"] = %exposed_crouch_2_covercrouch_turn_180_right;
    anim._ID19851["exposed2cover_turn_all"] = _ID42237::array_flatten( [ anim._ID19851["exposed2cover_turn_left_45"], anim._ID19851["exposed2cover_turn_left_90"], anim._ID19851["exposed2cover_turn_left_135"], anim._ID19851["exposed2cover_turn_left_180"], anim._ID19851["exposed2cover_turn_right_45"], anim._ID19851["exposed2cover_turn_right_90"], anim._ID19851["exposed2cover_turn_right_135"], anim._ID19851["exposed2cover_turn_right_180"] ] );
    anim._ID3277["soldier"]["exposed_turn_crouch"] = anim._ID19851;
}

_ID52740()
{
    anim._ID19851 = [];
    anim._ID19851["turn_left_45"] = %h1_cqb_stand_45_l;
    anim._ID19851["turn_left_90"] = %h1_cqb_stand_90_l;
    anim._ID19851["turn_left_135"] = %h1_cqb_stand_135_l;
    anim._ID19851["turn_left_180"] = %h1_cqb_stand_180_l;
    anim._ID19851["turn_right_45"] = %h1_cqb_stand_45_r;
    anim._ID19851["turn_right_90"] = %h1_cqb_stand_90_r;
    anim._ID19851["turn_right_135"] = %h1_cqb_stand_135_r;
    anim._ID19851["turn_right_180"] = %h1_cqb_stand_180_r;
    anim._ID3277["soldier"]["cqb_stationary_turn"] = anim._ID19851;
}

_ID46499()
{
    anim._ID19851 = [];
    anim._ID19851["turn_left_45"] = %h1_casual_stand_45_l;
    anim._ID19851["turn_left_90"] = %h1_casual_stand_90_l;
    anim._ID19851["turn_left_135"] = %h1_casual_stand_135_l;
    anim._ID19851["turn_left_180"] = %h1_casual_stand_180_l;
    anim._ID19851["turn_right_45"] = %h1_casual_stand_45_r;
    anim._ID19851["turn_right_90"] = %h1_casual_stand_90_r;
    anim._ID19851["turn_right_135"] = %h1_casual_stand_135_r;
    anim._ID19851["turn_right_180"] = %h1_casual_stand_180_r;
    anim._ID3277["soldier"]["casual_stationary_turn"] = anim._ID19851;
}

_ID19704()
{
    anim._ID19851 = [];
    anim._ID19851["cower_squat"] = %exposed_squat_down_grenade_f;
    anim._ID19851["cower_squat_up"] = %exposed_squat_up_grenade_f;
    anim._ID19851["cower_squat_idle"] = %exposed_squat_idle_grenade_f;
    anim._ID19851["cower_dive_back"] = %exposed_dive_grenade_b;
    anim._ID19851["cower_dive_front"] = %exposed_dive_grenade_f;
    anim._ID19851["return_throw_short"] = [ %grenade_return_running_throw_forward, %grenade_return_standing_throw_forward_1 ];
    anim._ID19851["return_throw_long"] = [ %grenade_return_running_throw_forward, %grenade_return_standing_throw_overhand_forward ];
    anim._ID19851["return_throw_default"] = [ %grenade_return_standing_throw_overhand_forward ];
    anim._ID19851["return_throw_short_smg"] = [ %smg_grenade_return_running_throw_forward, %smg_grenade_return_standing_throw_forward_1 ];
    anim._ID19851["return_throw_long_smg"] = [ %smg_grenade_return_running_throw_forward, %smg_grenade_return_standing_throw_overhand_forward ];
    anim._ID19851["return_throw_default_smg"] = [ %smg_grenade_return_standing_throw_overhand_forward ];
    anim._ID19851["return_running_throw_short"] = [];
    anim._ID19851["return_running_throw_short"][0] = %grenade_return_running_throw_back;
    anim._ID19851["return_running_throw_short"][1] = %grenade_return_running_throw_left;
    anim._ID19851["return_running_throw_short"][2] = %grenade_return_running_throw_forward;
    anim._ID19851["return_running_throw_short"][3] = %grenade_return_running_throw_right;
    anim._ID19851["return_running_throw_long"] = [];
    anim._ID19851["return_running_throw_long"][0] = %grenade_return_running_throw_back;
    anim._ID19851["return_running_throw_long"][1] = %grenade_return_running_throw_left;
    anim._ID19851["return_running_throw_long"][2] = %grenade_return_running_throw_overhand_forward;
    anim._ID19851["return_running_throw_long"][3] = %grenade_return_running_throw_right;
    anim._ID19851["return_standing_throw"] = [];
    anim._ID19851["return_standing_throw"][0] = %grenade_return_standing_throw_overhand_back;
    anim._ID19851["return_standing_throw"][1] = %grenade_return_standing_throw_overhand_left;
    anim._ID19851["return_standing_throw"][2] = %grenade_return_standing_throw_overhand_forward;
    anim._ID19851["return_standing_throw"][3] = %grenade_return_standing_throw_overhand_right;
    anim._ID19851["return_crouching_throw"] = [];
    anim._ID19851["return_crouching_throw"][0] = %grenade_return_crouching_throw_back;
    anim._ID19851["return_crouching_throw"][1] = %grenade_return_crouching_throw_left;
    anim._ID19851["return_crouching_throw"][2] = %grenade_return_crouching_throw_forward;
    anim._ID19851["return_crouching_throw"][3] = %grenade_return_crouching_throw_right;
    anim._ID19851["return_cornercrl_1knee_throw"] = anim._ID19851["return_crouching_throw"];
    anim._ID19851["return_cornercrl_1knee_throw"][3] = %grenade_return_cornercrl_1knee_throw;
    anim._ID19851["return_cornercrl_2knee_throw"] = anim._ID19851["return_crouching_throw"];
    anim._ID19851["return_cornercrl_2knee_throw"][3] = %grenade_return_cornercrl_2knee_throw;
    anim._ID19851["return_cornercrr_1knee_throw"] = anim._ID19851["return_crouching_throw"];
    anim._ID19851["return_cornercrr_1knee_throw"][1] = %grenade_return_cornercrr_1knee_throw;
    anim._ID19851["return_cornercrr_2knee_throw"] = anim._ID19851["return_crouching_throw"];
    anim._ID19851["return_cornercrr_2knee_throw"][1] = %grenade_return_cornercrr_2knee_throw;
    anim._ID19851["return_covercrouch_throw"] = anim._ID19851["return_crouching_throw"];
    anim._ID19851["return_covercrouch_throw"][2] = %grenade_return_covercrouch_throw;
    anim._ID3277["soldier"]["grenade"] = anim._ID19851;
}

_ID19625()
{
    anim._ID19851 = [];
    anim._ID19851[0] = %h2_run_n_gun_left_180;
    anim._ID19851[1] = %h2_run_n_gun_left_135;
    anim._ID19851[2] = %h2_run_n_gun_left_90;
    anim._ID19851[3] = %h2_run_n_gun_left_45;
    anim._ID19851[4] = %run_n_gun_f;
    anim._ID19851[5] = %h2_run_n_gun_right_45;
    anim._ID19851[6] = %h2_run_n_gun_right_90;
    anim._ID19851[7] = %h2_run_n_gun_right_135;
    anim._ID19851[8] = %h2_run_n_gun_right_180;
    anim._ID19851["stairs_up_6x8"] = %h2_run_n_gun_stairs_6x8_loop_up;
    anim._ID19851["stairs_up_in_6x8"] = %h2_run_n_gun_stairs_6x8_straight_up_in_l;
    anim._ID19851["stairs_up_out_6x8"] = %h2_run_n_gun_stairs_6x8_straight_up_out_l;
    anim._ID19851["stairs_down_6x8"] = %h2_run_n_gun_stairs_6x8_loop_down;
    anim._ID19851["stairs_down_in_6x8"] = %h2_run_n_gun_stairs_6x8_straight_down_in_l;
    anim._ID19851["stairs_down_out_6x8"] = %h2_run_n_gun_stairs_6x8_straight_down_out_l;
    anim._ID19851["turn_90l_2_stairs_up_6x8"] = %h2_run_n_gun_stairs_6x8_left_up_in_l;
    anim._ID19851["turn_90r_2_stairs_up_6x8"] = %h2_run_n_gun_stairs_6x8_right_up_in_l;
    anim._ID19851["turn_90l_2_stairs_down_6x8"] = %h2_run_n_gun_stairs_6x8_left_down_in_l;
    anim._ID19851["turn_90r_2_stairs_down_6x8"] = %h2_run_n_gun_stairs_6x8_right_down_in_l;
    anim._ID19851["stairs_up_8x8"] = %h1_run_n_gun_stairs_up_8x8;
    anim._ID19851["stairs_up_in_8x8"] = %h1_run_n_gun_stairs_up_8x8_in;
    anim._ID19851["stairs_up_out_8x8"] = %h1_run_n_gun_stairs_up_8x8_out;
    anim._ID19851["stairs_down_8x8"] = %h1_run_n_gun_stairs_down_8x8;
    anim._ID19851["stairs_down_in_8x8"] = %h1_run_n_gun_stairs_down_8x8_in;
    anim._ID19851["stairs_down_out_8x8"] = %h1_run_n_gun_stairs_down_8x8_out;
    anim._ID19851["turn_90l_2_stairs_up_8x8"] = %h1_turn_90l_2_run_n_gun_stairs_up_8x8_in;
    anim._ID19851["turn_90r_2_stairs_up_8x8"] = %h1_turn_90r_2_run_n_gun_stairs_up_8x8_in;
    anim._ID19851["turn_90l_2_stairs_down_8x8"] = %h1_turn_90l_2_run_n_gun_stairs_down_8x8_in;
    anim._ID19851["turn_90r_2_stairs_down_8x8"] = %h1_turn_90r_2_run_n_gun_stairs_down_8x8_in;
    anim._ID19851["stairs_up_12x8"] = %h2_run_n_gun_stairs_12x8_loop_up;
    anim._ID19851["stairs_up_in_12x8"] = %h2_run_n_gun_stairs_12x8_straight_up_in_l;
    anim._ID19851["stairs_up_out_12x8"] = %h2_run_n_gun_stairs_12x8_straight_up_out_l;
    anim._ID19851["stairs_down_12x8"] = %h2_run_n_gun_stairs_12x8_loop_down;
    anim._ID19851["stairs_down_in_12x8"] = %h2_run_n_gun_stairs_12x8_straight_down_in_l;
    anim._ID19851["stairs_down_out_12x8"] = %h2_run_n_gun_stairs_12x8_straight_down_out_l;
    anim._ID19851["turn_90l_2_stairs_up_12x8"] = %h2_run_n_gun_stairs_12x8_left_up_in_l;
    anim._ID19851["turn_90r_2_stairs_up_12x8"] = %h2_run_n_gun_stairs_12x8_right_up_in_l;
    anim._ID19851["turn_90l_2_stairs_down_12x8"] = %h2_run_n_gun_stairs_12x8_left_down_in_l;
    anim._ID19851["turn_90r_2_stairs_down_12x8"] = %h2_run_n_gun_stairs_12x8_right_down_in_l;
    anim._ID19851["stairs_up_16x8"] = %h1_run_n_gun_stairs_up_16x8;
    anim._ID19851["stairs_up_in_16x8"] = %h1_run_n_gun_stairs_up_16x8_in;
    anim._ID19851["stairs_up_out_16x8"] = %h1_run_n_gun_stairs_up_16x8_out;
    anim._ID19851["stairs_down_16x8"] = %h1_run_n_gun_stairs_down_16x8;
    anim._ID19851["stairs_down_in_16x8"] = %h1_run_n_gun_stairs_down_16x8_in;
    anim._ID19851["stairs_down_out_16x8"] = %h1_run_n_gun_stairs_down_16x8_out;
    anim._ID19851["turn_90l_2_stairs_up_16x8"] = %h1_turn_90l_2_run_n_gun_stairs_up_16x8_in;
    anim._ID19851["turn_90r_2_stairs_up_16x8"] = %h1_turn_90r_2_run_n_gun_stairs_up_16x8_in;
    anim._ID19851["turn_90l_2_stairs_down_16x8"] = %h1_turn_90l_2_run_n_gun_stairs_down_16x8_in;
    anim._ID19851["turn_90r_2_stairs_down_16x8"] = %h1_turn_90r_2_run_n_gun_stairs_down_16x8_in;
    anim._ID19851["move_back"] = %combatwalk_b;
    anim._ID3277["soldier"]["run_n_gun"] = anim._ID19851;
}

_ID33414()
{
    self._ID23125 = 130;
    self.maxrunngunanimationangle = 180;
    self._ID30428 = 0.25;
    self._ID30427 = 0.3;
    self.useoldrunngunsystem = undefined;
}

_ID19580()
{
    anim._ID19851 = [];
    anim._ID19851["move_l"] = %combatwalk_l;
    anim._ID19851["move_r"] = %combatwalk_r;
    anim._ID19851["move_b"] = %combatwalk_b;
    anim._ID3277["soldier"]["ambush"] = anim._ID19851;
}

_ID19628()
{
    anim._ID19851 = [];
    anim._ID19851["move_l"] = %smg_combatwalk_l;
    anim._ID19851["move_r"] = %smg_combatwalk_r;
    anim._ID19851["move_b"] = %smg_combatwalk_b;
    anim._ID3277["soldier"]["smg_ambush"] = anim._ID19851;
}

_ID19630()
{
    anim._ID19851 = [];
    anim._ID19851["crouch"] = %smg_crouch_fastwalk_f;
    anim._ID19851["crouch_l"] = %smg_crouch_fastwalk_l;
    anim._ID19851["crouch_r"] = %smg_crouch_fastwalk_r;
    anim._ID19851["crouch_b"] = %smg_crouch_fastwalk_b;
    anim._ID3277["soldier"]["smg_crouch_run"] = anim._ID19851;
}

_ID32189()
{
    var_0 = "ambush";

    if ( animscripts\utility::_ID39998() )
        var_0 = "smg_ambush";

    self._ID7._ID24390["move_l"] = animscripts\utility::_ID22630( var_0, "move_l" );
    self._ID7._ID24390["move_r"] = animscripts\utility::_ID22630( var_0, "move_r" );
    self._ID7._ID24390["move_b"] = animscripts\utility::_ID22630( var_0, "move_b" );
}

_ID18330()
{
    if ( self._ID1302 != self._ID834 )
        return animscripts\utility::_ID3156( "reload" );

    if ( isdefined( self._ID700 ) )
    {
        if ( self nearclaimnodeandangle() )
        {
            var_0 = undefined;

            if ( self._ID700._ID1244 == "Cover Left" )
                var_0 = animscripts\utility::_ID22630( "heat_reload", "reload_cover_left" );
            else if ( self._ID700._ID1244 == "Cover Right" )
                var_0 = animscripts\utility::_ID22630( "heat_reload", "reload_cover_right" );

            if ( isdefined( var_0 ) )
                return var_0;
        }
    }

    return animscripts\utility::_ID22630( "heat_reload", "reload_default" );
}

is_back_reload_weapon( var_0 )
{
    switch ( var_0 )
    {
        case "aug_reflex":
        case "aug_reflex_arctic":
        case "aug_scope":
        case "aug_scope_arctic":
        case "famas_arctic":
        case "famas_arctic_reflex":
        case "famas_woodland":
        case "famas_woodland_eotech":
        case "famas_woodland_reflex":
        case "fn2000":
        case "fn2000_acog":
        case "fn2000_eotech":
        case "fn2000_reflex":
        case "fn2000_scope":
        case "fn2000_thermal":
        case "tavor_acog":
        case "tavor_digital_acog":
        case "tavor_digital_eotech":
        case "tavor_eotech":
        case "tavor_mars":
        case "tavor_reflex":
        case "tavor_woodland_acog":
        case "tavor_woodland_eotech":
        case "wa2000":
        case "wa2000_thermal":
            return 1;
    }

    return 0;
}

is_lmg_reload_weapon( var_0 )
{
    switch ( var_0 )
    {
        case "m240":
        case "m240_acog":
        case "m240_heartbeat_reflex_arctic":
        case "m240_reflex":
        case "mg4":
        case "mg4_arctic":
        case "rpd":
        case "rpd_acog":
        case "rpd_digital":
        case "rpd_digital_acog":
        case "rpd_digital_reflex":
        case "rpd_reflex":
            return 1;
    }

    return 0;
}

is_grip_reload_weapon( var_0 )
{
    switch ( var_0 )
    {
        case "uzi":
        case "uzi_akimbo":
        case "pp2000":
        case "pp2000_reflex":
        case "pp2000_thermal":
        case "tmp":
        case "tmp_reflex":
            return 1;
    }

    return 0;
}

is_p90_reload_weapon( var_0 )
{
    switch ( var_0 )
    {
        case "p90":
        case "p90_arctic":
        case "p90_acog":
        case "p90_eotech":
        case "p90_reflex":
        case "p90_silencer":
            return 1;
    }

    return 0;
}

has_special_reload( var_0 )
{
    if ( is_back_reload_weapon( var_0 ) )
        return "back";
    else if ( is_lmg_reload_weapon( var_0 ) )
        return "lmg";
    else if ( is_grip_reload_weapon( var_0 ) )
        return "grip";
    else if ( is_p90_reload_weapon( var_0 ) )
        return "p90";

    return undefined;
}
