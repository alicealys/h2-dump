// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19588()
{
    var_0 = [];
    var_0["add_aim_up"] = %covercrouch_aim8_add;
    var_0["add_aim_down"] = %covercrouch_aim2_add;
    var_0["add_aim_left"] = %covercrouch_aim4_add;
    var_0["add_aim_right"] = %covercrouch_aim6_add;
    var_0["straight_level"] = %covercrouch_aim5;
    var_0["hide_idle"] = %covercrouch_hide_idle;
    var_0["hide_idle_twitch"] = animscripts\utility::_ID3291( %covercrouch_twitch_2, %covercrouch_twitch_3, %covercrouch_twitch_4 );
    var_0["hide_idle_flinch"] = animscripts\utility::_ID3291();
    var_0["hide_2_crouch"] = %covercrouch_hide_2_aim;
    var_0["hide_2_stand"] = %covercrouch_hide_2_stand;
    var_0["hide_2_lean"] = %covercrouch_hide_2_lean;
    var_0["hide_2_right"] = %covercrouch_hide_2_right;
    var_0["hide_2_left"] = %covercrouch_hide_2_left;
    var_0["crouch_2_hide"] = %covercrouch_aim_2_hide;
    var_0["stand_2_hide"] = %covercrouch_stand_2_hide;
    var_0["lean_2_hide"] = %covercrouch_lean_2_hide;
    var_0["right_2_hide"] = %covercrouch_right_2_hide;
    var_0["left_2_hide"] = %covercrouch_left_2_hide;
    var_0["smg_hide_2_stand"] = %smg_covercrouch_hide_2_stand;
    var_0["smg_stand_2_hide"] = %smg_covercrouch_stand_2_hide;
    var_0["crouch_aim"] = %covercrouch_aim5;
    var_0["stand_aim"] = %exposed_aim_5;
    var_0["lean_aim"] = %covercrouch_lean_aim5;
    var_0["fire"] = %exposed_shoot_auto_v2;
    var_0["semi2"] = %exposed_shoot_semi2;
    var_0["semi3"] = %exposed_shoot_semi3;
    var_0["semi4"] = %exposed_shoot_semi4;
    var_0["semi5"] = %exposed_shoot_semi5;
    var_0["single"] = [ %exposed_shoot_semi1 ];
    var_0["burst2"] = %exposed_shoot_burst3;
    var_0["burst3"] = %exposed_shoot_burst3;
    var_0["burst4"] = %exposed_shoot_burst4;
    var_0["burst5"] = %exposed_shoot_burst5;
    var_0["burst6"] = %exposed_shoot_burst6;
    var_0["blind_fire"] = animscripts\utility::_ID3291( %covercrouch_blindfire_1, %covercrouch_blindfire_2, %covercrouch_blindfire_3, %covercrouch_blindfire_4 );
    var_0["reload"] = %covercrouch_reload_hide;
    var_0["reload_back"] = %h2_back_covercrouch_reload;
    var_0["reload_grip"] = %h2_grip_covercrouch_reload;
    var_0["reload_lmg"] = %h2_lmg_covercrouch_reload;
    var_0["reload_p90"] = %h2_p90_covercrouch_reload;
    var_0["shotgun_reload"] = %shotgun_covercrouch_reload;
    var_0["grenade_safe"] = animscripts\utility::_ID3291( %covercrouch_grenadea, %covercrouch_grenadeb );
    var_0["grenade_exposed"] = animscripts\utility::_ID3291( %covercrouch_grenadea, %covercrouch_grenadeb );
    var_0["exposed_idle"] = animscripts\utility::_ID3291( %exposed_idle_alert_v1, %exposed_idle_alert_v2, %exposed_idle_alert_v3 );
    var_0["look"] = animscripts\utility::_ID3291( %covercrouch_hide_look );
    anim._ID3277["soldier"]["cover_crouch"] = var_0;
    var_0 = [];
    var_0["add_aim_up"] = %coverstandaim_aim8_add;
    var_0["add_aim_down"] = %coverstandaim_aim2_add;
    var_0["add_aim_left"] = %coverstandaim_aim4_add;
    var_0["add_aim_right"] = %coverstandaim_aim6_add;
    var_0["straight_level"] = %coverstandaim_aim5;
    var_0["hide_idle"] = %coverstand_hide_idle;
    var_0["hide_idle_twitch"] = animscripts\utility::_ID3291( %coverstand_hide_idle_twitch01, %coverstand_hide_idle_twitch03, %coverstand_hide_idle_twitch04, %coverstand_hide_idle_twitch05 );
    var_0["hide_idle_flinch"] = animscripts\utility::_ID3291( %coverstand_react01, %coverstand_react02, %coverstand_react03, %coverstand_react04 );
    var_0["hide_2_stand"] = %coverstand_hide_2_aim;
    var_0["stand_2_hide"] = %coverstand_aim_2_hide;
    var_0["smg_hide_2_stand"] = %smg_coverstand_hide_2_aim;
    var_0["smg_stand_2_hide"] = %smg_coverstand_aim_2_hide;
    var_0["hide_2_over"] = %coverstand_2_coverstandaim;
    var_0["over_2_hide"] = %coverstandaim_2_coverstand;
    var_0["over_aim"] = %coverstandaim_aim5;
    var_0["fire"] = %coverstandaim_autofire;
    var_0["semi2"] = %coverstandaim_fire;
    var_0["semi3"] = %coverstandaim_fire;
    var_0["semi4"] = %coverstandaim_fire;
    var_0["semi5"] = %coverstandaim_fire;
    var_0["single"] = animscripts\utility::_ID3291( %coverstandaim_fire );
    var_0["burst2"] = %coverstandaim_autofire;
    var_0["burst3"] = %coverstandaim_autofire;
    var_0["burst4"] = %coverstandaim_autofire;
    var_0["burst5"] = %coverstandaim_autofire;
    var_0["burst6"] = %coverstandaim_autofire;
    var_0["blind_fire"] = animscripts\utility::_ID3291( %coverstand_blindfire_1, %coverstand_blindfire_2 );
    var_0["reload"] = %coverstand_reloada;
    var_0["reload_back"] = %h2_back_coverstand_reloada;
    var_0["reload_grip"] = %h2_grip_coverstand_reloada;
    var_0["reload_lmg"] = %h2_lmg_coverstand_reloada;
    var_0["reload_p90"] = %h2_p90_coverstand_reloada;
    var_0["look"] = animscripts\utility::_ID3291( %coverstand_look_quick, %coverstand_look_quick_v2 );
    var_0["grenade_safe"] = animscripts\utility::_ID3291( %coverstand_grenadea, %coverstand_grenadeb );
    var_0["grenade_exposed"] = animscripts\utility::_ID3291( %coverstand_grenadea, %coverstand_grenadeb );
    var_0["exposed_idle"] = animscripts\utility::_ID3291( %exposed_idle_alert_v1, %exposed_idle_alert_v2, %exposed_idle_alert_v3 );
    var_0["hide_to_look"] = %coverstand_look_moveup;
    var_0["look_idle"] = %coverstand_look_idle;
    var_0["look_to_hide"] = %coverstand_look_movedown;
    var_0["look_to_hide_fast"] = %coverstand_look_movedown_fast;
    anim._ID3277["soldier"]["cover_stand"] = var_0;
}

_ID8861( var_0 )
{
    self endon( "killanimscript" );
    self._ID8893 = self._ID700;
    self._ID8910 = var_0;

    if ( !isdefined( self._ID700._ID39235 ) )
        animscripts\cover_behavior::_ID39234( 0 );

    if ( var_0 == "crouch" )
    {
        _ID32932( "unknown" );
        self._ID8893 _ID19879();
    }
    else
    {
        _ID32935( "unknown" );
        self._ID8893 _ID19880();
    }

    self._ID7._ID2428 = undefined;
    self orientmode( "face angle", self._ID8893._ID65[1] );

    if ( isdefined( self._ID1302 ) && animscripts\utility::_ID39985() && isdefined( self._ID700 ) && isdefined( self._ID700._ID39350 ) && canspawnturret() )
    {
        if ( var_0 == "crouch" )
        {
            if ( _ID20888( self._ID1302 ) )
                var_1 = "rpd_bipod_crouch";
            else
                var_1 = "saw_bipod_crouch";
        }
        else if ( _ID20888( self._ID1302 ) )
            var_1 = "rpd_bipod_stand";
        else
            var_1 = "saw_bipod_stand";

        if ( _ID20888( self._ID1302 ) )
            var_2 = "weapon_rpd_MG_Setup";
        else
            var_2 = "weapon_saw_MG_Setup";

        if ( _ID45002( self._ID1302 ) && _ID51972( var_1 ) )
            var_1 += "_muzzle_small";

        _ID39957( var_1, var_2, 0 );
    }
    else if ( isdefined( self._ID700 ) && isdefined( self._ID700._ID39235 ) )
        _ID39960();

    self animmode( "normal" );

    if ( var_0 == "crouch" && self._ID7._ID28253 == "stand" )
    {
        var_3 = animscripts\utility::_ID3153( "stand_2_hide" );

        if ( animscripts\utility::_ID39998() )
            var_3 = animscripts\utility::_ID3153( "smg_stand_2_hide" );

        var_4 = getanimlength( var_3 );
        self setanimknoballrestart( var_3, %body, 1, 0.2, animscripts\combat_utility::_ID13949() );
        thread animscripts\shared::_ID24471( self._ID8893, var_4 );
        wait(var_4);
        self._ID7._ID8878 = "hide";
    }
    else
    {
        var_5 = 0.4;
        var_6 = _ID22663( var_5 );

        if ( distancesquared( self._ID740, self._ID8893._ID740 ) > 1 )
        {
            thread animscripts\shared::_ID24471( self._ID8893, var_6 );
            wait(var_6 / 2);

            if ( var_0 == "crouch" )
                self._ID7._ID28253 = "crouch";

            wait(var_6 / 2);
        }
        else if ( var_6 == var_5 )
            wait 0.1;
        else
            wait(var_6);
    }

    _ID32593();

    if ( var_0 == "crouch" )
    {
        if ( self._ID7._ID28253 == "prone" )
            animscripts\utility::_ID13390( 1 );

        self._ID7._ID28253 = "crouch";
    }

    if ( self._ID8910 == "stand" )
        self._ID7._ID35357 = "cover_stand";
    else
        self._ID7._ID35357 = "cover_crouch";

    var_7 = spawnstruct();

    if ( !self._ID381 )
        var_7._ID24470 = animscripts\cover_behavior::_ID24470;

    var_7._ID868 = ::_ID8897;
    var_7._ID22122 = ::_ID28236;
    var_7._ID599 = ::_ID599;
    var_7._ID13953 = ::_ID13953;
    var_7._ID19302 = ::_ID19302;
    var_7._ID14562 = ::_ID14562;
    var_7._ID458 = ::_ID39080;
    var_7._ID17412 = ::_ID39081;
    var_7._ID5294 = ::_ID5294;
    animscripts\cover_behavior::_ID616( var_7 );
}

_ID20888( var_0 )
{
    return getsubstr( var_0, 0, 3 ) == "rpd" && ( var_0.size == 3 || var_0[3] == "_" );
}

_ID45002( var_0 )
{
    return isendstr( var_0, "_muzzle_small" );
}

_ID51972( var_0 )
{
    return var_0 == "rpd_bipod_crouch" || var_0 == "rpd_bipod_stand" || var_0 == "saw_bipod_crouch";
}

_ID19879()
{
    if ( isdefined( self._ID9349 ) )
        return;

    var_0 = ( 0, 0, 42 );
    var_1 = anglestoforward( self._ID65 );
    self._ID9349 = sighttracepassed( self._ID740 + var_0, self._ID740 + var_0 + var_1 * 64, 0, undefined );
}

_ID19880()
{
    if ( isdefined( self._ID22705 ) )
        return;

    var_0 = ( 0, 0, 48 );
    var_1 = anglestoforward( self._ID65 );
    self._ID22705 = sighttracepassed( self._ID740 + var_0, self._ID740 + var_0 + var_1 * 64, 0, undefined );
}

_ID32932( var_0 )
{
    animscripts\combat::_ID32267( self._ID8893 );
    _ID32941( var_0 );
}

_ID32935( var_0 )
{
    animscripts\combat::_ID32267( self._ID8893 );
    _ID33460( var_0 );
}

_ID8897()
{
    var_0 = undefined;
    var_1 = animscripts\animset::has_special_reload( self._ID1302 );

    if ( isdefined( var_1 ) )
    {
        var_2 = "reload_" + var_1;

        if ( animscripts\utility::animarrayexist( var_2 ) )
            var_0 = animscripts\utility::_ID3153( var_2 );
    }

    if ( !isdefined( var_0 ) )
        var_0 = animscripts\utility::_ID3153( "reload" );

    if ( animscripts\utility::_ID20902( self._ID1302 ) && isdefined( self._ID7._ID3291["shotgun_reload"] ) )
        var_0 = animscripts\utility::_ID3153( "shotgun_reload" );

    var_3 = animscripts\combat_utility::_ID868( 2.0, var_0 );

    if ( isdefined( var_3 ) && var_3 )
        return 1;

    return 0;
}

_ID28236()
{
    self._ID562 = 1;

    if ( isdefined( self._ID28940 ) && randomfloat( 1 ) < self._ID28940 )
    {
        if ( _ID28935() )
            return 1;
    }

    if ( !_ID28230() )
        return 0;

    _ID33773();
    animscripts\combat_utility::_ID12641();

    if ( isdefined( self._ID33810 ) )
    {
        var_0 = lengthsquared( self._ID740 - self._ID33810 );

        if ( animscripts\utility::_ID39993() && animscripts\utility::_ID33944( var_0 ) )
        {
            if ( self._ID7._ID28253 == "stand" )
                animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_stand" ) );
            else
                animscripts\shared::_ID37693( animscripts\utility::_ID22630( "combat", "drop_rpg_crouch" ) );
        }
    }

    _ID16963();
    self._ID8867 = undefined;
    self._ID562 = 0;
    return 1;
}

_ID33773()
{
    self endon( "return_to_cover" );
    _ID42298::_ID10832();

    for (;;)
    {
        if ( isdefined( self._ID33962 ) )
            break;

        if ( !isdefined( self._ID33810 ) )
        {
            self waittill( "do_slow_things" );
            waitframe;

            if ( isdefined( self._ID33810 ) )
                continue;

            break;
        }

        if ( !self._ID6323 )
            break;

        if ( self._ID8910 == "crouch" && _ID24713() )
            break;

        _ID33820();
        self clearanim( %add_fire, 0.2 );
    }
}

_ID33820()
{
    if ( self._ID8910 == "crouch" )
        thread _ID2972();

    thread animscripts\combat_utility::_ID2428();
    animscripts\combat_utility::_ID33818();
}

_ID28935()
{
    if ( !animscripts\utility::_ID18223() )
        return 0;

    var_0 = "rambo";

    if ( randomint( 10 ) < 2 )
        var_0 = "rambo_fail";

    if ( !animscripts\utility::_ID3154( var_0 ) )
        return 0;

    if ( self._ID8910 == "crouch" && !self._ID8893._ID9349 )
        return 0;

    var_1 = _ID16588( self._ID8893._ID740 + animscripts\utility::_ID16464( self._ID8893 ) );

    if ( var_1 > 15 )
        return 0;

    var_2 = anglestoforward( self._ID65 );
    var_3 = self._ID740 + var_2 * -16;

    if ( !self maymovetopoint( var_3 ) )
        return 0;

    self._ID8895 = gettime();
    _ID32593();
    self._ID562 = 1;
    self._ID20874 = 1;
    self._ID7._ID28496 = "rambo";
    self._ID7305 = 1;
    thread animscripts\shared::_ID28937( 0 );

    if ( isdefined( self._ID700._ID51507 ) && var_0 == "rambo" )
    {
        var_4 = animscripts\utility::_ID44341( self._ID700._ID51507 );

        if ( isdefined( var_4 ) )
            var_5 = animscripts\utility::_ID44378( var_0, var_4 );
        else
            var_5 = animscripts\utility::_ID3156( var_0 );
    }
    else
        var_5 = animscripts\utility::_ID3156( var_0 );

    self setflaggedanimknoballrestart( "rambo", var_5, %body, 1, 0.2, 1 );
    _ID8860( var_5 );
    animscripts\shared::_ID11529( "rambo" );
    self notify( "rambo_aim_end" );
    self._ID7305 = 0;
    self._ID562 = 0;
    self._ID21972 = gettime();
    self._ID7305 = 0;
    self._ID20874 = undefined;
    return 1;
}

_ID19302()
{
    self endon( "end_idle" );

    for (;;)
    {
        var_0 = randomint( 2 ) == 0 && animscripts\utility::_ID3154( "hide_idle_twitch" );

        if ( var_0 )
            var_1 = animscripts\utility::_ID3156( "hide_idle_twitch" );
        else
            var_1 = animscripts\utility::_ID3153( "hide_idle" );

        _ID28079( var_1, var_0 );
    }
}

_ID14562()
{
    if ( !animscripts\utility::_ID3154( "hide_idle_flinch" ) )
        return 0;

    var_0 = anglestoforward( self._ID65 );
    var_1 = self._ID740 + var_0 * -16;

    if ( !self maymovetopoint( var_1, !self._ID1063 ) )
        return 0;

    _ID32593();
    self._ID562 = 1;
    var_2 = animscripts\utility::_ID3156( "hide_idle_flinch" );
    _ID28079( var_2, 1 );
    self._ID562 = 0;
    return 1;
}

_ID28079( var_0, var_1 )
{
    if ( var_1 )
        self setflaggedanimknoballrestart( "idle", var_0, %body, 1, 0.25, 1 );
    else
        self setflaggedanimknoball( "idle", var_0, %body, 1, 0.25, 1 );

    _ID8860( var_0 );
    self._ID7._ID8878 = "hide";
    animscripts\shared::_ID11529( "idle" );
}

_ID599( var_0 )
{
    if ( !isdefined( self._ID7._ID3291["hide_to_look"] ) )
        return 0;

    if ( !_ID26556() )
        return 0;

    animscripts\shared::_ID28100( animscripts\utility::_ID3153( "look_idle" ), var_0 );
    var_1 = undefined;

    if ( animscripts\utility::_ID20934() )
        var_1 = animscripts\utility::_ID3153( "look_to_hide_fast" );
    else
        var_1 = animscripts\utility::_ID3153( "look_to_hide" );

    self setflaggedanimknoballrestart( "looking_end", var_1, %body, 1, 0.1 );
    _ID8860( var_1 );
    animscripts\shared::_ID11529( "looking_end" );
    return 1;
}

_ID26556()
{
    if ( isdefined( self._ID8893._ID31148 ) )
        return 0;

    var_0 = animscripts\utility::_ID3153( "hide_to_look" );
    self setflaggedanimknoball( "looking_start", var_0, %body, 1, 0.2 );
    _ID8860( var_0 );
    animscripts\shared::_ID11529( "looking_start" );
    return 1;
}

_ID13953()
{
    var_0 = animscripts\utility::_ID3156( "look" );
    self setflaggedanimknoballrestart( "look", var_0, %body, 1, 0.1 );
    _ID8860( var_0 );
    animscripts\shared::_ID11529( "look" );
    return 1;
}

_ID28231()
{
    if ( self._ID7._ID8878 == "left" || self._ID7._ID8878 == "right" || self._ID7._ID8878 == "over" )
        return 1;

    return animscripts\combat_utility::_ID28962();
}

_ID28230()
{
    var_0 = _ID16151();
    var_1 = 0.1;
    var_2 = animscripts\utility::_ID3153( "hide_2_" + var_0 );
    var_3 = !self._ID1063;

    if ( !self maymovetopoint( animscripts\utility::_ID16127( var_2 ), var_3 ) )
        return 0;

    if ( self._ID912 == "cover_crouch" && var_0 == "lean" )
        self._ID8867 = 1;

    if ( self._ID8910 == "crouch" )
        _ID32932( var_0 );
    else
        _ID32935( var_0 );

    self._ID7._ID35357 = "none";
    self._ID35375 = undefined;

    if ( self._ID8910 == "stand" )
    {
        if ( animscripts\utility::_ID39998() )
            self._ID7._ID35357 = "smg_cover_stand_aim";
        else
            self._ID7._ID35357 = "cover_stand_aim";
    }
    else
        self._ID7._ID35357 = "cover_crouch_aim";

    self._ID7305 = 1;
    self notify( "done_changing_cover_pos" );
    _ID32593();
    var_4 = _ID28231();
    self setflaggedanimknoballrestart( "pop_up", var_2, %body, 1, 0.1, var_4 );
    thread _ID11533( "pop_up" );

    if ( animhasnotetrack( var_2, "start_aim" ) )
    {
        self waittillmatch( "pop_up",  "start_aim"  );
        var_1 = getanimlength( var_2 ) / var_4 * ( 1 - self getanimtime( var_2 ) );
    }
    else
    {
        self waittillmatch( "pop_up",  "end"  );
        var_1 = 0.1;
    }

    self clearanim( var_2, var_1 + 0.05 );
    self._ID7._ID8878 = var_0;
    self._ID7._ID28496 = var_0;
    _ID32836( var_1 );
    thread animscripts\track::_ID38165();
    wait(var_1);

    if ( animscripts\combat_utility::_ID20910() )
        thread animscripts\shoot_behavior::_ID34776();

    self._ID7305 = 0;
    self._ID8895 = gettime();
    self notify( "stop_popup_donotetracks" );
    return 1;
}

_ID11533( var_0 )
{
    self endon( "killanimscript" );
    self endon( "stop_popup_donotetracks" );
    animscripts\shared::_ID11529( var_0 );
}

_ID32836( var_0 )
{
    if ( self._ID7._ID8878 == "left" || self._ID7._ID8878 == "right" )
        var_1 = "crouch";
    else
        var_1 = self._ID7._ID8878;

    self setanimknoball( animscripts\utility::_ID3153( var_1 + "_aim" ), %body, 1, var_0 );

    if ( var_1 == "crouch" )
    {
        self setanimlimited( animscripts\utility::_ID22630( "cover_crouch", "add_aim_down" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "cover_crouch", "add_aim_left" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "cover_crouch", "add_aim_up" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "cover_crouch", "add_aim_right" ), 1, 0 );
    }
    else if ( var_1 == "stand" )
    {
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_down" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_left" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_up" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_right" ), 1, 0 );
    }
    else if ( var_1 == "stand_tall" )
    {
        self setanimlimited( animscripts\utility::_ID22630( "old_default_stand", "add_aim_down" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "old_default_stand", "add_aim_left" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "old_default_stand", "add_aim_up" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "old_default_stand", "add_aim_right" ), 1, 0 );
    }
    else if ( var_1 == "lean" )
    {
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_down" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_left" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_up" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "default_stand", "add_aim_right" ), 1, 0 );
    }
    else if ( var_1 == "over" )
    {
        self setanimlimited( animscripts\utility::_ID22630( "cover_stand", "add_aim_down" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "cover_stand", "add_aim_left" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "cover_stand", "add_aim_up" ), 1, 0 );
        self setanimlimited( animscripts\utility::_ID22630( "cover_stand", "add_aim_right" ), 1, 0 );
    }
}

_ID16963()
{
    self notify( "return_to_cover" );
    self._ID7305 = 1;
    self notify( "done_changing_cover_pos" );
    animscripts\combat_utility::_ID12633();
    var_0 = _ID28231();

    if ( self._ID1194 == "allies" )
        wait(randomfloatrange( 0.0, 1.0 ));

    self setflaggedanimknoball( "go_to_hide", animscripts\utility::_ID3153( self._ID7._ID8878 + "_2_hide" ), %body, 1, 0.2, var_0 );
    self clearanim( %exposed_modern, 0.2 );
    animscripts\shared::_ID11529( "go_to_hide" );
    self._ID7._ID8878 = "hide";

    if ( self._ID8910 == "stand" )
        self._ID7._ID35357 = "cover_stand";
    else
        self._ID7._ID35357 = "cover_crouch";

    self._ID7305 = 0;
}

_ID39081( var_0 )
{
    return _ID39080( var_0, 1 );
}

_ID39080( var_0, var_1 )
{
    if ( isdefined( self._ID11575 ) || isdefined( var_0._ID11566 ) )
        return 0;

    var_2 = undefined;

    if ( isdefined( self._ID28940 ) && randomfloat( 1.0 ) < self._ID28940 )
        var_2 = animscripts\utility::_ID3156( "grenade_rambo" );
    else if ( isdefined( var_1 ) && var_1 )
        var_2 = animscripts\utility::_ID3156( "grenade_safe" );
    else
        var_2 = animscripts\utility::_ID3156( "grenade_exposed" );

    _ID32593();
    self._ID562 = 1;
    var_3 = animscripts\combat_utility::_ID39072( var_0, var_2 );
    self._ID562 = 0;
    return var_3;
}

_ID5294()
{
    if ( !animscripts\utility::_ID3154( "blind_fire" ) )
        return 0;

    self._ID54064 = 1;

    if ( !isdefined( self._ID18169 ) )
    {
        self._ID7._ID21758 = 1;
        animscripts\shared::_ID39728();
    }

    _ID32593();
    self._ID562 = 1;
    var_0 = "blind_fire";

    if ( isdefined( self._ID700._ID53049 ) )
    {
        var_1 = animscripts\utility::_ID50392( self._ID700._ID53049 );

        if ( isdefined( var_1 ) )
            var_2 = animscripts\utility::_ID44378( var_0, var_1 );
        else
            var_2 = animscripts\utility::_ID3156( var_0 );
    }
    else
        var_2 = animscripts\utility::_ID3156( var_0 );

    self setflaggedanimknoballrestart( "blindfire", var_2, %body, 1, 0.2, 1 );
    animscripts\shared::_ID11529( "blindfire" );
    self._ID562 = 0;
    self._ID54064 = 0;
    self._ID7._ID21758 = 0;
    animscripts\shared::_ID39728();
    return 1;
}

_ID9292( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 1;

    var_4 = spawnturret( "misc_turret", var_0._ID740, var_1 );
    var_4._ID65 = var_0._ID65;
    var_4._ID2446 = self;
    var_4 setmodel( var_2 );

    if ( var_3 )
        var_4 makeusable();

    var_4 setdefaultdroppitch( 0 );

    if ( isdefined( var_0._ID591 ) )
        var_4._ID591 = var_0._ID591;

    if ( isdefined( var_0._ID895 ) )
        var_4._ID895 = var_0._ID895;

    if ( isdefined( var_0._ID1215 ) )
        var_4._ID1215 = var_0._ID1215;

    if ( isdefined( var_0._ID137 ) )
        var_4._ID137 = var_0._ID137;

    return var_4;
}

_ID10326( var_0 )
{
    self endon( "death" );
    self endon( "being_used" );
    wait 0.1;

    if ( isdefined( var_0 ) )
        var_0 notify( "turret_use_failed" );

    self delete();
}

_ID39957( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    var_3 = _ID9292( self._ID700._ID39350, var_0, var_1, var_2 );

    if ( self useturret( var_3 ) )
    {
        var_3 thread _ID10326( self );

        if ( isdefined( self._ID39263 ) )
            thread [[ self._ID39263 ]]( var_3 );

        self waittill( "turret_use_failed" );
    }
    else
        var_3 delete();
}

_ID39960()
{
    var_0 = self._ID700._ID39235;

    if ( !var_0._ID20897 )
        return;

    thread _ID42330::_ID17529( var_0 );
    self waittill( "continue_cover_script" );
}

_ID32941( var_0 )
{
    if ( animscripts\utility::_ID20527() )
    {
        self._ID7._ID3291 = animscripts\utility::_ID22631( "free_run_cover_crouch" );
        return;
    }

    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_crouch" );

    if ( animscripts\utility::_ID41682() )
    {
        if ( var_0 == "lean" || var_0 == "stand" )
            self._ID7._ID3291["single"] = animscripts\utility::_ID22630( "shotgun_stand", "single" );
        else
            self._ID7._ID3291["single"] = animscripts\utility::_ID22630( "shotgun_crouch", "single" );
    }

    if ( isdefined( anim._ID28939 ) )
    {
        if ( self._ID7._ID52500 )
        {
            self._ID7._ID3291["rambo"] = anim._ID28939._ID50825;
            self._ID7._ID3291["rambo_fail"] = anim._ID28939._ID52690;
        }
        else
        {
            self._ID7._ID3291["rambo"] = anim._ID28939._ID8864;
            self._ID7._ID3291["rambo_fail"] = anim._ID28939._ID8865;
        }

        self._ID7._ID3291["grenade_rambo"] = anim._ID28939._ID8866;
    }
}

_ID33460( var_0 )
{
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_stand" );

    if ( var_0 != "over" )
    {
        var_1 = animscripts\utility::_ID22631( "default_stand" );
        self._ID7._ID3291["add_aim_left"] = var_1["add_aim_left"];
        self._ID7._ID3291["add_aim_right"] = var_1["add_aim_right"];
        self._ID7._ID3291["add_aim_up"] = var_1["add_aim_up"];
        self._ID7._ID3291["add_aim_down"] = var_1["add_aim_down"];
        self._ID7._ID3291["stand_aim"] = var_1["straight_level"];
        self._ID7._ID3291["fire"] = var_1["fire_corner"];
        self._ID7._ID3291["semi2"] = var_1["semi2"];
        self._ID7._ID3291["semi3"] = var_1["semi3"];
        self._ID7._ID3291["semi4"] = var_1["semi4"];
        self._ID7._ID3291["semi5"] = var_1["semi5"];

        if ( animscripts\utility::_ID41682() )
            self._ID7._ID3291["single"] = animscripts\utility::_ID22630( "shotgun_stand", "single" );
        else
            self._ID7._ID3291["single"] = var_1["single"];

        self._ID7._ID3291["burst2"] = var_1["burst2"];
        self._ID7._ID3291["burst3"] = var_1["burst3"];
        self._ID7._ID3291["burst4"] = var_1["burst4"];
        self._ID7._ID3291["burst5"] = var_1["burst5"];
        self._ID7._ID3291["burst6"] = var_1["burst6"];
    }

    if ( isdefined( anim._ID28939 ) )
    {
        self._ID7._ID3291["rambo"] = anim._ID28939._ID8902;
        self._ID7._ID3291["rambo_fail"] = anim._ID28939._ID8903;
        self._ID7._ID3291["grenade_rambo"] = anim._ID28939._ID8904;
    }
}

_ID22663( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0.1;

    var_1 = var_0;

    if ( self._ID8910 == "stand" && self getanimweight( %exposed_aiming ) != 0.0 )
    {
        self setanimknoball( %exposed_stand_2_coverstand_hide, %body, 1, var_0 );
        var_1 = getanimlength( %exposed_stand_2_coverstand_hide );
    }
    else
        self setanimknoballrestart( animscripts\utility::_ID3153( "hide_idle" ), %body, 1, var_0 );

    self._ID7._ID8878 = "hide";
    return var_1;
}

_ID2972()
{
    self endon( "killanimscript" );
    self notify( "newAngleRangeCheck" );
    self endon( "newAngleRangeCheck" );
    self endon( "return_to_cover" );

    for (;;)
    {
        if ( _ID24713() )
            break;

        wait 0.1;
    }

    self notify( "stopShooting" );
}

_ID24713()
{
    if ( self._ID8910 != "crouch" )
        return 0;

    var_0 = _ID16588( self geteye() );

    if ( self._ID7._ID8878 == "lean" )
        return var_0 < 10;
    else
        return var_0 > 45;
}

_ID16151()
{
    var_0 = [];

    if ( self._ID8910 == "stand" )
    {
        if ( !self._ID8893._ID22705 && ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" ) )
        {
            var_0 = self._ID8893 getvalidcoverpeekouts();
            var_0[var_0.size] = "stand_tall";
        }
        else
        {
            var_0 = self._ID8893 getvalidcoverpeekouts();

            if ( isdefined( self._ID3152 ) && self._ID3152 == "s1_soldier" )
                var_0[var_0.size] = "over";
            else
                var_0[var_0.size] = "stand";
        }
    }
    else
    {
        var_1 = _ID16588( self._ID8893._ID740 + animscripts\utility::_ID16464( self._ID8893 ) );

        if ( var_1 > 30 )
            return "lean";

        if ( ( var_1 > 15 || !self._ID8893._ID9349 ) && ( !isdefined( self._ID48701 ) || !self._ID48701 ) )
            return "stand";

        var_0 = self._ID8893 getvalidcoverpeekouts();
        var_0[var_0.size] = "crouch";
    }

    var_2 = 0;

    while ( var_2 < var_0.size )
    {
        if ( !isdefined( self._ID7._ID3291["hide_2_" + var_0[var_2]] ) )
        {
            var_0[var_2] = var_0[var_0.size - 1];
            var_0[var_0.size - 1] = undefined;
            continue;
        }

        var_2++;
    }

    return animscripts\combat_utility::_ID16551( var_0 );
}

_ID16588( var_0 )
{
    var_1 = animscripts\utility::_ID16256();
    return angleclamp180( vectortoangles( var_1 - var_0 )[0] );
}

_ID32593()
{
    if ( self._ID1063 )
        self animmode( "nogravity" );
    else
        self animmode( "zonly_physics" );
}

_ID8860( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "run";

    self._ID13770 = animscripts\face::_ID28062( var_0, var_1, self._ID13770 );
}

_ID8852()
{
    self._ID13770 = undefined;
    self clearanim( %head, 0.2 );
}
