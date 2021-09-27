// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("generic_human");

_ID19586()
{
    var_0 = [];
    var_0["straight_level"] = %prone_aim_5;
    var_0["legs_up"] = %prone_aim_feet_45up;
    var_0["legs_down"] = %prone_aim_feet_45down;
    var_0["fire"] = %prone_fire_1;
    var_0["semi2"] = %prone_fire_burst;
    var_0["semi3"] = %prone_fire_burst;
    var_0["semi4"] = %prone_fire_burst;
    var_0["semi5"] = %prone_fire_burst;
    var_0["single"] = [ %prone_fire_1 ];
    var_0["burst2"] = %prone_fire_burst;
    var_0["burst3"] = %prone_fire_burst;
    var_0["burst4"] = %prone_fire_burst;
    var_0["burst5"] = %prone_fire_burst;
    var_0["burst6"] = %prone_fire_burst;
    var_0["reload"] = %prone_reload;
    var_0["look"] = [ %prone_twitch_look, %prone_twitch_lookfast, %prone_twitch_lookup ];
    var_0["grenade_safe"] = [ %prone_grenade_a, %prone_grenade_a ];
    var_0["grenade_exposed"] = [ %prone_grenade_a, %prone_grenade_a ];
    var_0["exposed_idle"] = [ %prone_idle ];
    var_0["twitch"] = [ %prone_twitch_ammocheck, %prone_twitch_look, %prone_twitch_scan, %prone_twitch_lookfast, %prone_twitch_lookup ];
    var_0["hide_to_look"] = %coverstand_look_moveup;
    var_0["look_idle"] = %coverstand_look_idle;
    var_0["look_to_hide"] = %coverstand_look_movedown;
    var_0["look_to_hide_fast"] = %coverstand_look_movedown_fast;
    var_0["stand_2_prone"] = %stand_2_prone_nodelta;
    var_0["crouch_2_prone"] = %crouch_2_prone;
    var_0["prone_2_stand"] = %prone_2_stand_nodelta;
    var_0["prone_2_crouch"] = %prone_2_crouch;
    var_0["stand_2_prone_firing"] = %stand_2_prone_firing;
    var_0["crouch_2_prone_firing"] = %crouch_2_prone_firing;
    var_0["prone_2_stand_firing"] = %prone_2_stand_firing;
    var_0["prone_2_crouch_firing"] = %prone_2_crouch_firing;
    var_0["turn_left_45"] = %h1_prone_turn_l45;
    var_0["turn_left_90"] = %h1_prone_turn_l90;
    var_0["turn_left_180"] = %h1_prone_turn_180;
    var_0["turn_right_45"] = %h1_prone_turn_r45;
    var_0["turn_right_90"] = %h1_prone_turn_r90;
    var_0["turn_right_180"] = %h1_prone_turn_180;
    anim._ID3277["soldier"]["cover_prone"] = var_0;
}

_ID45673( var_0 )
{
    self endon( "killanimscript" );
    self endon( "killsetAnimModeDelayed" );
    wait(var_0);
    self _meth_819B( "face angle", self._ID8893._ID65[1] );
}

_ID616()
{
    self endon( "killanimscript" );
    animscripts\utility::_ID19930( "cover_prone" );

    if ( _func_1BE( self._ID1302 ) == "rocketlauncher" )
    {
        animscripts\combat::_ID616();
        return;
    }

    if ( _func_02F( self._ID7._ID3372 ) && self._ID7._ID3372 == "prone_saw" )
        animscripts\cover_wall::_ID39957( "saw_bipod_prone", "weapon_saw_MG_Setup", 0 );
    else if ( _func_02F( self._ID700._ID39235 ) )
        animscripts\cover_wall::_ID39960();

    if ( _func_02F( self._ID322 ) && _func_0F8( self._ID740 - self._ID322._ID740 ) < _func_0ED( 512 ) )
    {
        thread animscripts\combat::_ID616();
        return;
    }

    _unknown_0538();
    self._ID39229 = 50;
    self._ID8893 = self._ID700;
    self _meth_819B( "face angle", self._ID65[1] );
    self._ID7._ID16990 = 1;
    self _meth_820A( -45, 45, %prone_legs_down, %exposed_aiming, %prone_legs_up );

    if ( self._ID7._ID28253 != "prone" )
    {
        self _meth_819B( "face angle", self._ID8893._ID65[1] );
        _unknown_05DA( "prone" );
    }
    else
    {
        var_0 = 0;

        if ( self._ID7._ID24414 != "stop" )
            var_0 = 0.15;

        animscripts\utility::_ID13067( var_0 );

        if ( var_0 != 0 )
        {
            var_1 = animscripts\utility::_ID1735( self._ID65[1] - self._ID8893._ID65[1] );
            var_2 = %h1_crawl_2_prone;
            var_3 = 0.4;

            if ( var_1 < -17.5 )
            {
                var_2 = %h1_crawl_2_prone_35r;
                var_3 = 0.25;
            }
            else if ( var_1 > 17.5 )
            {
                var_3 = 0.25;
                var_2 = %h1_crawl_2_prone_35l;
            }

            var_4 = _func_067( var_2 );
            var_5 = var_4 * var_3;
            thread _unknown_0435( var_5 );
            self _meth_811C( "coverProneArrival", var_2, 1, 0.2, 1 );
            animscripts\shared::_ID11529( "coverProneArrival" );
            self notify( "killsetAnimModeDelayed" );
            self._ID7._ID24414 = "stop";
        }
    }

    thread animscripts\combat_utility::_ID2428();
    _unknown_06C1( 0.2 );
    self _meth_8155( %prone_aim_5, 1, 0.1 );
    self _meth_819B( "face angle", self._ID65[1] );
    self _meth_819A( "zonly_physics" );
    _unknown_061C();
    self notify( "stop_deciding_how_to_shoot" );
}

_ID319()
{
    self._ID7._ID16990 = undefined;
}

_ID19338()
{
    self endon( "killanimscript" );
    self endon( "kill_idle_thread" );

    for (;;)
    {
        var_0 = animscripts\utility::_ID3156( "prone_idle" );
        self _meth_811B( "idle", var_0 );
        self waittillmatch( "idle",  "end"  );
        self _meth_814C( var_0, 0.2 );
    }
}

_ID39763( var_0 )
{
    self _meth_820B( animscripts\utility::_ID22630( "cover_prone", "legs_up" ), animscripts\utility::_ID22630( "cover_prone", "legs_down" ), 1, var_0, 1 );
    self _meth_8155( %exposed_aiming, 1, 0.2 );
}

_ID11659( var_0, var_1 )
{
    var_2 = _func_02F( self._ID33810 );
    var_3 = 1;
    var_4 = 0.2;
    var_5 = _func_02F( self._ID322 ) && !_func_02F( self._ID39233 ) && self _meth_81CB( self._ID322, 2 ) && _func_0F5( self._ID322._ID740, self._ID740 ) < 262144;

    if ( self._ID7._ID31561 + 500 > _func_03D() )
    {
        var_4 = 0.25;

        if ( var_5 )
            thread animscripts\combat::_ID13757();
    }
    else if ( var_5 )
    {
        var_6 = 1.0 - _func_0F3( self._ID322._ID740, self._ID740 ) / 512;
        var_3 = 1 + var_6 * 1;

        if ( var_3 > 2 )
            var_4 = 0.05;
        else if ( var_3 > 1.3 )
            var_4 = 0.1;
        else
            var_4 = 0.15;
    }

    var_7 = 0;

    if ( var_1 > 157.5 )
        var_7 = 180;
    else if ( var_1 > 67.5 )
        var_7 = 90;
    else
        var_7 = 45;

    var_8 = "turn_" + var_0 + "_" + var_7;
    var_9 = animscripts\utility::_ID3153( var_8 );

    if ( _func_02F( self._ID39233 ) )
        self _meth_819A( "angle deltas", 0 );
    else if ( _func_02F( self._ID700 ) && _func_02F( anim._ID20710[self._ID700._ID1244] ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 256 )
        self _meth_819A( "angle deltas", 0 );
    else if ( animscripts\combat::_ID20667( var_9 ) )
        animscripts\combat::_ID29767();
    else
        self _meth_819A( "angle deltas", 0 );

    self _meth_8151( %exposed_aiming, %body, 1, var_4 );
    self _meth_8156( %turn, 1, var_4 );

    if ( _func_02F( self._ID18328 ) )
        var_3 = _func_0C4( 1.0, var_3 );

    self _meth_8117( "turn", var_9, 1, var_4, var_3 );
    self notify( "turning" );
    animscripts\combat::_ID11660();
    self _meth_8156( %turn, 0, 0.2 );
    self _meth_814C( %turn, 0.2 );
    self _meth_814D( %exposed_aiming, 1, 0.2, 1 );

    if ( _func_02F( self._ID39220 ) )
    {
        self._ID39220 = undefined;
        thread animscripts\combat::_ID13757();
    }

    animscripts\combat::_ID29767( 0 );
    self notify( "done turning" );
}

_ID24717()
{
    if ( !_func_02F( self._ID45105 ) )
        return 0;

    var_0 = self._ID33810;

    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = self._ID65[1] - _func_11B( var_0 - self._ID740 );
    var_2 = _func_0F5( self._ID740, var_0 );

    if ( var_2 < 65536 )
    {
        var_3 = _func_0EC( var_2 );

        if ( var_3 > 3 )
            var_1 += _func_0BE( -3 / var_3 );
    }

    return animscripts\utility::_ID1735( var_1 ) > self._ID39229;
}

_ID39232( var_0 )
{
    if ( var_0 < 0 - self._ID39229 )
    {
        _unknown_07D6( "left", 0 - var_0 );
        _ID42298::_ID10832();
        return 1;
    }

    if ( var_0 > self._ID39229 )
    {
        _unknown_07EB( "right", var_0 );
        _ID42298::_ID10832();
        return 1;
    }

    return 0;
}

_ID48484()
{
    if ( _unknown_088A() )
    {
        var_0 = 0.25;

        if ( _func_02F( self._ID33785 ) && !_func_0D6( self._ID33785 ) )
            var_0 = 1.5;

        var_1 = animscripts\shared::_ID16537( var_0 );

        if ( _unknown_08C8( var_1 ) )
            return 1;
    }

    return 0;
}

_ID28709()
{
    self endon( "killanimscript" );
    thread animscripts\track::_ID38165();
    thread animscripts\shoot_behavior::_ID10054( "normal" );
    var_0 = _func_03D() > 2500;

    for (;;)
    {
        animscripts\utility::_ID39726();
        _unknown_083C( 0.05 );

        if ( !var_0 )
        {
            wait(0.05 + _func_0B8( 1.5 ));
            var_0 = 1;
            continue;
        }

        if ( !_func_02F( self._ID33810 ) )
        {
            if ( _unknown_0927() )
                continue;

            if ( _unknown_09AC() )
                continue;

            wait 0.05;
            continue;
        }

        var_1 = _func_0F8( self._ID740 - self._ID33810 );

        if ( self._ID7._ID28253 != "crouch" && self _meth_81D7( "crouch" ) && var_1 < _func_0ED( 400 ) )
        {
            if ( var_1 < _func_0ED( 285 ) )
            {
                _unknown_0A1A( "crouch" );
                thread animscripts\combat::_ID616();
                return;
            }
        }

        if ( _unknown_097E() )
            continue;

        if ( _unknown_0A03() )
            continue;

        if ( _unknown_09EA( 0 ) )
            continue;

        if ( animscripts\combat_utility::_ID2425() )
        {
            animscripts\combat_utility::_ID33818();
            self _meth_814C( %add_fire, 0.2 );
            continue;
        }

        wait 0.05;
    }
}

_ID28713( var_0 )
{
    return animscripts\combat_utility::_ID868( var_0, animscripts\utility::_ID3153( "reload" ) );
}

_ID32934()
{
    self _meth_817F( self._ID700 );
    self._ID7._ID3291 = animscripts\utility::_ID22631( "cover_prone" );
}

_ID39080( var_0, var_1 )
{
    var_2 = undefined;

    if ( _func_02F( var_1 ) && var_1 )
        var_2 = animscripts\utility::_ID3156( "grenade_safe" );
    else
        var_2 = animscripts\utility::_ID3156( "grenade_exposed" );

    self _meth_819A( "zonly_physics" );
    self._ID562 = 1;
    var_3 = ( 32, 20, 64 );
    var_4 = animscripts\combat_utility::_ID39072( var_0, var_2 );
    self._ID562 = 0;
    return var_4;
}

_ID8533()
{
    if ( _func_02F( anim._ID37694 ) && _func_1A7( level._ID794 ) )
    {
        if ( _unknown_0AA0( level._ID794, 200 ) )
            return 1;
    }

    if ( _func_02F( self._ID322 ) )
        return _unknown_0AB3( self._ID322, 850 );

    return 0;
}

_ID33948()
{
    if ( !_func_02F( self._ID1302 ) || !_func_1B8( self._ID1302 ) )
        return 0;

    if ( _func_02F( self._ID700 ) && _func_0F5( self._ID740, self._ID700._ID740 ) < 256 )
        return 0;

    if ( _func_02F( self._ID322 ) && self _meth_81CA( self._ID322 ) && !_func_02F( self._ID458 ) && animscripts\shared::_ID16103() < 20 )
        return animscripts\move::_ID23140();

    return 0;
}

_ID28706( var_0 )
{
    if ( var_0 == self._ID7._ID28253 )
        return;

    self _meth_814C( %animscript_root, 0.3 );
    animscripts\combat_utility::_ID12641();

    if ( _unknown_0B4D() )
        var_1 = animscripts\utility::_ID3153( self._ID7._ID28253 + "_2_" + var_0 + "_firing" );
    else
        var_1 = animscripts\utility::_ID3153( self._ID7._ID28253 + "_2_" + var_0 );

    if ( var_0 == "prone" )
    {

    }

    self _meth_8119( "trans", var_1, %body, 1, 0.2, 1.0 );
    animscripts\shared::_ID11529( "trans" );
    self _meth_8153( animscripts\utility::_ID3153( "straight_level" ), %body, 1, 0.25 );
    _ID14236( 0.25 );
}

_ID14236( var_0 )
{
    self endon( "killanimscript" );
    animscripts\shared::_ID11529( var_0 );
}

_ID33590( var_0 )
{
    self _meth_8151( %prone_aim_5, %body, 1, var_0 );
    self _meth_8156( %prone_aim_2_add, 1, var_0 );
    self _meth_8156( %prone_aim_4_add, 1, var_0 );
    self _meth_8156( %prone_aim_6_add, 1, var_0 );
    self _meth_8156( %prone_aim_8_add, 1, var_0 );
}

_ID28718( var_0, var_1, var_2 )
{
    self _meth_814C( %animscript_root, 0.3 );
    var_3 = undefined;

    if ( _unknown_0C31() )
    {
        if ( var_0 == "crouch" )
            var_3 = %prone_2_crouch_firing;
        else if ( var_0 == "stand" )
            var_3 = %prone_2_stand_firing;
    }
    else if ( var_0 == "crouch" )
        var_3 = %prone_2_crouch;
    else if ( var_0 == "stand" )
        var_3 = %prone_2_stand_nodelta;

    if ( _func_02F( self._ID28703 ) )
        var_3 = self._ID28703;

    if ( _func_02F( self._ID28705 ) )
        var_1 = self._ID28705;

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    animscripts\utility::_ID13390( _func_067( var_3 ) / 2 );
    self _meth_8119( "trans", var_3, %body, 1, 0.2, var_1 );
    animscripts\shared::_ID11529( "trans" );

    if ( !_func_02F( var_2 ) )
        var_2 = 0.1;

    self _meth_814C( var_3, var_2 );
}
