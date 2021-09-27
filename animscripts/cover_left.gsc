// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19584()
{
    var_0 = [];
    var_0["alert_idle"] = %corner_standl_alert_idle;
    var_0["alert_idle_twitch"] = [ %corner_standl_alert_twitch01, %corner_standl_alert_twitch03, %corner_standl_alert_twitch04, %corner_standl_alert_twitch06, %corner_standl_alert_twitch07 ];
    var_0["alert_idle_twitch_noHat"] = [ %corner_standl_alert_twitch01, %corner_standl_alert_twitch03, %corner_standl_alert_twitch04, %corner_standl_alert_twitch07 ];
    var_0["alert_idle_flinch"] = [ %corner_standl_flinch ];
    var_0["alert_to_A"] = [ %corner_standl_trans_alert_2_a ];
    var_0["alert_to_B"] = [ %corner_standl_trans_alert_2_b_v2 ];
    var_0["A_to_alert"] = [ %corner_standl_trans_a_2_alert_v2 ];
    var_0["A_to_alert_reload"] = [];
    var_0["A_to_B"] = [ %corner_standl_trans_a_2_b_v2 ];
    var_0["B_to_alert"] = [ %corner_standl_trans_b_2_alert_v2 ];
    var_0["B_to_alert_reload"] = [ %corner_standl_reload_b_2_alert ];
    var_0["B_to_A"] = [ %corner_standl_trans_b_2_a_v2 ];
    var_0["lean_to_alert"] = [ %cornerstndl_lean_2_alert ];
    var_0["alert_to_lean"] = [ %cornerstndl_alert_2_lean ];
    var_0["look"] = %corner_standl_look;
    var_0["reload"] = [ %corner_standl_reload_v1 ];
    var_0["reload_back"] = [ %h2_back_cornerstndl_reload ];
    var_0["reload_grip"] = [ %h2_grip_cornerstndl_reload ];
    var_0["reload_lmg"] = [ %h2_lmg_cornerstndl_reload ];
    var_0["reload_p90"] = [ %h2_p90_cornerstndl_reload ];
    var_0["shotgun_reload"] = [ %shotgun_corner_standl_reload ];
    var_0["grenade_exposed"] = %corner_standl_grenade_a;
    var_0["grenade_safe"] = %corner_standl_grenade_b;
    var_0["blind_fire"] = [ %corner_standl_blindfire_v1, %corner_standl_blindfire_v2 ];
    var_0["alert_to_look"] = %corner_standl_alert_2_look;
    var_0["look_to_alert"] = %corner_standl_look_2_alert;
    var_0["look_to_alert_fast"] = %corner_standl_look_2_alert_fast_v1;
    var_0["look_idle"] = %corner_standl_look_idle;
    var_0["stance_change"] = %cornercrl_stand_2_alert;
    var_0["lean_aim_down"] = %cornerstndl_lean_aim_2;
    var_0["lean_aim_left"] = %cornerstndl_lean_aim_4;
    var_0["lean_aim_straight"] = %cornerstndl_lean_aim_5;
    var_0["lean_aim_right"] = %cornerstndl_lean_aim_6;
    var_0["lean_aim_up"] = %cornerstndl_lean_aim_8;
    var_0["lean_reload"] = %cornerstndl_lean_reload;
    var_0["lean_idle"] = [ %cornerstndl_lean_idle ];
    var_0["lean_single"] = %cornerstndl_lean_fire;
    var_0["lean_fire"] = %cornerstndl_lean_auto;
    var_0["exposed_2_alert"] = %h1_cornerstndl_exposedstand_2_alert;
    anim._ID3277["soldier"]["cover_left_stand"] = var_0;
    var_0 = [];
    var_0["alert_idle"] = %cornercrl_alert_idle;
    var_0["alert_idle_twitch"] = [];
    var_0["alert_idle_twitch_noHat"] = [];
    var_0["alert_idle_flinch"] = [];
    var_0["alert_to_A"] = [ %cornercrl_trans_alert_2_a ];
    var_0["alert_to_B"] = [ %cornercrl_trans_alert_2_b ];
    var_0["A_to_alert"] = [ %cornercrl_trans_a_2_alert ];
    var_0["AW_to_MW_alert_trans"] = %cornercrouchl_crouchidle_2_alert;
    var_0["1knee_2_2knees"] = %h1_cornercrl_trans_2_2knees;
    var_0["A_to_alert_reload"] = [];
    var_0["A_to_B"] = [ %cornercrl_trans_a_2_b ];
    var_0["B_to_alert"] = [ %cornercrl_trans_b_2_alert ];
    var_0["B_to_alert_reload"] = [];
    var_0["B_to_A"] = [ %cornercrl_trans_b_2_a ];
    var_0["lean_to_alert"] = [ %cornercrl_lean_2_alert ];
    var_0["alert_to_lean"] = [ %cornercrl_alert_2_lean ];
    var_0["look"] = %cornercrl_look_fast;
    var_0["reload"] = [ %cornercrl_reloadb ];
    var_0["reload_back"] = [ %h2_back_cornercrl_reload ];
    var_0["reload_grip"] = [ %h2_grip_cornercrl_reload ];
    var_0["reload_lmg"] = [ %h2_lmg_cornercrl_reload ];
    var_0["reload_p90"] = [ %h2_p90_cornercrl_reload ];
    var_0["shotgun_reload"] = [ %shotgun_cornercrl_reload ];
    var_0["grenade_safe"] = %cornercrl_grenadea;
    var_0["grenade_exposed"] = %cornercrl_grenadeb;
    var_0["alert_to_over"] = [ %cornercrl_alert_2_over ];
    var_0["over_to_alert"] = [ %cornercrl_over_2_alert ];
    var_0["over_to_alert_reload"] = [];
    var_0["blind_fire"] = [];
    var_0["rambo90"] = [];
    var_0["rambo45"] = [];
    var_0["stance_change"] = %cornercrl_alert_2_stand;
    var_0["lean_aim_down"] = %cornercrl_lean_aim_2;
    var_0["lean_aim_left"] = %cornercrl_lean_aim_4;
    var_0["lean_aim_straight"] = %cornercrl_lean_aim_5;
    var_0["lean_aim_right"] = %cornercrl_lean_aim_6;
    var_0["lean_aim_up"] = %cornercrl_lean_aim_8;
    var_0["lean_idle"] = [ %cornercrl_lean_idle ];
    var_0["lean_single"] = %cornercrl_lean_fire;
    var_0["lean_fire"] = %cornercrl_lean_auto;
    anim._ID3277["soldier"]["cover_left_crouch"] = var_0;
}

_ID616()
{
    self._ID3155 = [];
    self._ID3155["hiding"]["stand"] = ::_unknown_0580;
    self._ID3155["hiding"]["crouch"] = ::_unknown_05A7;
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_left" );
    animscripts\corner::_ID8741( "left", 90 );
}

_ID319()
{
    animscripts\corner::_ID12614();
    animscripts\cover_behavior::_ID319( "left" );
}

_ID32214()
{
    self._ID18567 = 90;
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_left_stand" );

    if ( _func_02F( anim._ID28939 ) )
    {
        self._ID7._ID3291["rambo90"] = anim._ID28939._ID8876;
        self._ID7._ID3291["rambo45"] = anim._ID28939._ID8875;
        self._ID7._ID3291["grenade_rambo"] = anim._ID28939._ID8877;
    }
}

_ID32201()
{
    self._ID18567 = 90;
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_left_crouch" );
}
