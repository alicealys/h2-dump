// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19587()
{
    var_0 = [];
    var_0["alert_idle"] = %corner_standr_alert_idle;
    var_0["alert_idle_twitch"] = [ %corner_standr_alert_twitch01, %corner_standr_alert_twitch04, %corner_standr_alert_twitch05, %corner_standr_alert_twitch06, %corner_standr_alert_twitch07 ];
    var_0["alert_idle_twitch_noHat"] = [ %corner_standr_alert_twitch01, %corner_standr_alert_twitch04, %corner_standr_alert_twitch06 ];
    var_0["alert_idle_flinch"] = [ %corner_standr_flinch, %corner_standr_flinchb ];
    var_0["alert_to_A"] = [ %corner_standr_trans_alert_2_a, %corner_standr_trans_alert_2_a_v2 ];
    var_0["alert_to_B"] = [ %corner_standr_trans_alert_2_b, %corner_standr_trans_alert_2_b_v2, %corner_standr_trans_alert_2_b_v3 ];
    var_0["A_to_alert"] = [ %corner_standr_trans_a_2_alert_v2 ];
    var_0["A_to_alert_reload"] = [];
    var_0["A_to_B"] = [ %corner_standr_trans_a_2_b, %corner_standr_trans_a_2_b_v2 ];
    var_0["B_to_alert"] = [ %corner_standr_trans_b_2_alert, %corner_standr_trans_b_2_alert_v2, %corner_standr_trans_b_2_alert_v3 ];
    var_0["B_to_alert_reload"] = [ %corner_standr_reload_b_2_alert ];
    var_0["B_to_A"] = [ %corner_standr_trans_b_2_a, %corner_standr_trans_b_2_a_v2 ];
    var_0["lean_to_alert"] = [ %cornerstndr_lean_2_alert ];
    var_0["alert_to_lean"] = [ %cornerstndr_alert_2_lean ];
    var_0["look"] = %corner_standr_look;
    var_0["reload"] = [ %corner_standr_reload_v1 ];
    var_0["reload_back"] = [ %h2_back_cornerstndr_reload ];
    var_0["reload_grip"] = [ %h2_grip_cornerstndr_reload ];
    var_0["reload_lmg"] = [ %h2_lmg_cornerstndr_reload ];
    var_0["reload_p90"] = [ %h2_p90_cornerstndr_reload ];
    var_0["shotgun_reload"] = [ %shotgun_corner_standr_reload ];
    var_0["grenade_exposed"] = %corner_standr_grenade_a;
    var_0["grenade_safe"] = %corner_standr_grenade_b;
    var_0["blind_fire"] = [ %corner_standr_blindfire_v1, %corner_standr_blindfire_v2 ];
    var_0["alert_to_look"] = %corner_standr_alert_2_look;
    var_0["look_to_alert"] = %corner_standr_look_2_alert;
    var_0["look_to_alert_fast"] = %corner_standr_look_2_alert_fast;
    var_0["look_idle"] = %corner_standr_look_idle;
    var_0["stance_change"] = %cornercrr_stand_2_alert;
    var_0["lean_aim_down"] = %cornerstndr_lean_aim_2;
    var_0["lean_aim_left"] = %cornerstndr_lean_aim_4;
    var_0["lean_aim_straight"] = %cornerstndr_lean_aim_5;
    var_0["lean_aim_right"] = %cornerstndr_lean_aim_6;
    var_0["lean_aim_up"] = %cornerstndr_lean_aim_8;
    var_0["lean_reload"] = %cornerstndr_lean_reload;
    var_0["lean_idle"] = [ %cornerstndr_lean_idle ];
    var_0["lean_single"] = %cornerstndr_lean_fire;
    var_0["lean_fire"] = %cornerstndr_lean_auto;
    var_0["exposed_2_alert"] = %h1_cornerstndr_exposedstand_2_alert;
    anim._ID3277["soldier"]["cover_right_stand"] = var_0;
    var_0 = [];
    var_0["alert_idle"] = %cornercrr_alert_idle;
    var_0["alert_idle_twitch"] = [ %cornercrr_alert_twitch_v1, %cornercrr_alert_twitch_v2, %cornercrr_alert_twitch_v3 ];
    var_0["alert_idle_twitch_noHat"] = [ %cornercrr_alert_twitch_v1, %cornercrr_alert_twitch_v2, %cornercrr_alert_twitch_v3 ];
    var_0["alert_idle_flinch"] = [];
    var_0["alert_to_A"] = [ %cornercrr_trans_alert_2_a ];
    var_0["alert_to_B"] = [ %cornercrr_trans_alert_2_b ];
    var_0["A_to_alert"] = [ %cornercrr_trans_a_2_alert ];
    var_0["AW_to_MW_alert_trans"] = %cornercrouchr_crouchidle_2_alert;
    var_0["1knee_2_2knees"] = %h1_cornercrouch_trans_2_2knee;
    var_0["A_to_alert_reload"] = [];
    var_0["A_to_B"] = [ %cornercrr_trans_a_2_b ];
    var_0["B_to_alert"] = [ %cornercrr_trans_b_2_alert ];
    var_0["B_to_alert_reload"] = [];
    var_0["B_to_A"] = [ %cornercrr_trans_b_2_a ];
    var_0["lean_to_alert"] = [ %cornercrr_lean_2_alert ];
    var_0["alert_to_lean"] = [ %cornercrr_alert_2_lean ];
    var_0["reload"] = [ %cornercrr_reloada, %cornercrr_reloadb ];
    var_0["reload_back"] = [ %h2_back_cornercrouchr_reload ];
    var_0["reload_grip"] = [ %h2_grip_cornercrouchr_reload ];
    var_0["reload_lmg"] = [ %h2_lmg_cornercrouchr_reload ];
    var_0["reload_p90"] = [ %h2_p90_cornercrouchr_reload ];
    var_0["shotgun_reload"] = [ %shotgun_cornercrr_reload_2knee ];
    var_0["grenade_exposed"] = %cornercrr_grenadea;
    var_0["grenade_safe"] = %cornercrr_grenadea;
    var_0["alert_to_over"] = [ %cornercrr_alert_2_over ];
    var_0["over_to_alert"] = [ %cornercrr_over_2_alert ];
    var_0["over_to_alert_reload"] = [];
    var_0["blind_fire"] = [];
    var_0["rambo90"] = [];
    var_0["rambo45"] = [];
    var_0["alert_to_look"] = %cornercrr_alert_2_look;
    var_0["look_to_alert"] = %cornercrr_look_2_alert;
    var_0["look_to_alert_fast"] = %cornercrr_look_2_alert_fast;
    var_0["look_idle"] = %cornercrr_look_idle;
    var_0["stance_change"] = %cornercrr_alert_2_stand;
    var_0["lean_aim_down"] = %cornercrr_lean_aim_2;
    var_0["lean_aim_left"] = %cornercrr_lean_aim_4;
    var_0["lean_aim_straight"] = %cornercrr_lean_aim_5;
    var_0["lean_aim_right"] = %cornercrr_lean_aim_6;
    var_0["lean_aim_up"] = %cornercrr_lean_aim_8;
    var_0["lean_idle"] = [ %cornercrr_lean_idle ];
    var_0["lean_single"] = %cornercrr_lean_fire;
    var_0["lean_fire"] = %cornercrr_lean_auto;
    anim._ID3277["soldier"]["cover_right_crouch"] = var_0;
}

_ID616()
{
    self._ID3155 = [];
    self._ID3155["hiding"]["stand"] = ::_unknown_063C;
    self._ID3155["hiding"]["crouch"] = ::_unknown_0663;
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_right" );
    animscripts\corner::_ID8741( "right", -90 );
}

_ID319()
{
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "right" );
}

_ID32215()
{
    self._ID18567 = -90;
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_right_stand" );

    if ( _func_02F( anim._ID28939 ) )
    {
        self._ID7._ID3291["rambo90"] = anim._ID28939._ID8899;
        self._ID7._ID3291["rambo45"] = anim._ID28939._ID8898;
        self._ID7._ID3291["grenade_rambo"] = anim._ID28939._ID8900;
    }
}

_ID32202()
{
    self._ID18567 = -90;
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_right_crouch" );
}
