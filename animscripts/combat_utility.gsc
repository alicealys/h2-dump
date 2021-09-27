// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID16648( var_0 )
{
    var_1 = self _meth_809E() + ( 0, 0, -3 );
    var_2 = ( var_1[0] - var_0[0], var_1[1] - var_0[1], var_1[2] - var_0[2] );
    var_2 = _func_119( var_2 );
    var_3 = var_2[2] * -1;
    return var_3;
}

_ID16593()
{
    if ( _func_1B3( self._ID322 ) )
        return _func_0BA( self._ID322._ID17476._ID23609, self._ID322._ID17476._ID23066 );
    else
        return _func_0BA( anim._ID23609, anim._ID23066 );
}

_ID16569()
{
    var_0 = _func_03D() - self._ID7._ID21978 / 1000;
    var_1 = _unknown_008D();

    if ( var_1 > var_0 )
        return var_1 - var_0;

    return 0;
}

_ID16161()
{
    if ( animscripts\utility::_ID39997() )
        return _func_0BA( 0.15, 0.55 );
    else if ( animscripts\utility::_ID41682() )
        return _func_0BA( 1.0, 1.7 );
    else if ( _unknown_095E() )
        return _unknown_00AD();
    else if ( self._ID13941 )
        return _func_0BA( 0.1, 0.35 );
    else
        return _func_0BA( 0.4, 0.9 );
}

_ID6451()
{
    if ( self._ID6323 )
    {
        if ( self._ID33816 == "full" && !self._ID13941 )
        {
            if ( self._ID7._ID21978 == _func_03D() )
                wait 0.05;

            return;
        }

        var_0 = _unknown_0100();

        if ( var_0 )
            wait(var_0);
    }
}

_ID7345()
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( self._ID1194 != "allies" )
    {
        if ( !_func_1B3( self._ID322 ) )
            return 0;

        if ( self._ID322 _ID42407::_ID13019( "player_is_invulnerable" ) )
            return 0;
    }

    if ( animscripts\utility::_ID39997() || animscripts\utility::_ID39993() )
        return 0;

    if ( _func_03D() - self._ID2939 < self._ID2938 )
        return 0;

    if ( !self _meth_81CA( self._ID322 ) && _func_0F5( self._ID740, self._ID322._ID740 ) > 65536 )
        return 0;

    self._ID6323 = _func_0C1( _func_1B7( self._ID1302 ) / 2 );

    if ( self._ID6323 > _func_1B7( self._ID1302 ) )
        self._ID6323 = _func_1B7( self._ID1302 );

    self._ID2939 = _func_03D();
    self notify( "cheated_reload_level_stats" );
    return 1;
}

_ID2424()
{
    for ( var_0 = _func_0C1( 60.0 ); var_0 > 0; var_0-- )
    {
        if ( _func_02F( self._ID11575 ) || _func_02F( self._ID322 ) && _func_02F( self._ID322._ID11566 ) )
        {
            wait 0.05;
            continue;
        }

        return 0;
    }

    return 1;
}

_ID33818()
{
    self endon( "shoot_behavior_change" );
    self endon( "stopShooting" );

    if ( _unknown_0A7F() )
    {
        if ( _func_02F( self._ID322 ) && _func_0D4( self._ID322 ) && _func_0F5( level._ID794._ID740, self._ID322._ID740 ) < 147456 )
            self._ID322 animscripts\battlechatter_ai::_ID2115( "infantry", self, 1.0 );

        if ( animscripts\utility::_ID39993() && _func_0D6( self._ID322 ) )
            wait(_func_0B8( 2.0 ));
    }

    if ( _func_02F( self._ID322 ) && _func_0F5( self._ID740, self._ID322._ID740 ) > _func_0ED( 400 ) )
        var_0 = _func_0B9( 1, 5 );
    else
        var_0 = 10;

    for (;;)
    {
        _unknown_0264();

        if ( _unknown_02A4() )
            break;

        if ( self._ID33816 == "full" )
            _unknown_03E1( animscripts\utility::_ID3153( "fire" ), 1, animscripts\shared::_ID10053() );
        else if ( self._ID33816 == "burst" || self._ID33816 == "semi" )
        {
            var_1 = animscripts\shared::_ID10052();

            if ( var_1 == 1 )
                _unknown_040F( animscripts\utility::_ID3156( "single" ), 1, var_1 );
            else
                _unknown_0421( animscripts\utility::_ID3153( self._ID33816 + var_1 ), 1, var_1 );
        }
        else if ( self._ID33816 == "single" )
            _unknown_043F( animscripts\utility::_ID3156( "single" ), 1, 1 );
        else
            self waittill( "hell freezes over" );

        if ( !self._ID6323 )
            break;

        var_0--;

        if ( var_0 < 0 )
        {
            self._ID33962 = 1;
            break;
        }
    }
}

_ID16710()
{
    anim._ID3185++;
    return anim._ID3185;
}
#using_animtree("generic_human");

_ID33531( var_0 )
{
    self _meth_8155( %exposed_aiming, 1, 0.2 );
    self _meth_814E( animscripts\utility::_ID3153( "straight_level" ), 1, var_0 );
    self _meth_814E( animscripts\utility::_ID3153( "add_aim_up" ), 1, var_0 );
    self _meth_814E( animscripts\utility::_ID3153( "add_aim_down" ), 1, var_0 );
    self _meth_814E( animscripts\utility::_ID3153( "add_aim_left" ), 1, var_0 );
    self _meth_814E( animscripts\utility::_ID3153( "add_aim_right" ), 1, var_0 );
    self._ID13770 = animscripts\face::_ID28062( undefined, "aim", self._ID13770 );
}

_ID36122()
{
    if ( !_func_02F( self._ID7._ID2428 ) )
    {
        var_0 = 0.2;

        if ( _func_02F( self._ID2431 ) )
            var_0 = self._ID2431;

        _unknown_0443( var_0 );

        if ( self._ID47383 )
            thread _unknown_04A0();

        thread animscripts\track::_ID38165();
    }
}

_ID12641()
{
    _unknown_04E9();
    self _meth_814C( %add_fire, 0.1 );
    self notify( "stop tracking" );
}

_ID34063()
{
    if ( _func_02F( self._ID7._ID2428 ) )
        self _meth_8155( %add_idle, 0, 0.2 );

    self _meth_8155( %add_fire, 1, 0.1 );
}

_ID18550()
{
    if ( _func_02F( self._ID7._ID2428 ) )
        self _meth_8155( %add_idle, 1, 0.2 );

    self _meth_8155( %add_fire, 0, 0.1 );
}

_ID2428( var_0 )
{
    self endon( "killanimscript" );
    self endon( "end_aim_idle_thread" );

    if ( _func_02F( self._ID7._ID2428 ) )
        return;

    self._ID7._ID2428 = 1;
    wait 0.1;
    self _meth_8156( %add_idle, 1, 0.2 );
    var_1 = %add_idle;
    var_2 = 0;

    for (;;)
    {
        var_3 = "idle" + var_2;

        if ( _func_02F( self._ID7._ID22113 ) )
            var_4 = animscripts\utility::_ID3156( "lean_idle" );
        else if ( animscripts\utility::_ID3154( "exposed_idle" ) )
            var_4 = animscripts\utility::_ID3156( "exposed_idle" );
        else
        {
            wait 0.5;
            jump loc_5F1
        }

        if ( var_4 == var_1 )
            self _meth_811D( var_3, var_4, 1, 0.2 );
        else
            self _meth_8117( var_3, var_4, 1, 0.2 );

        var_1 = var_4;
        self waittillmatch( var_3,  "end"  );
        var_2++;
    }

    self _meth_814C( %add_idle, 0.1 );
}

_ID12633()
{
    self notify( "end_aim_idle_thread" );
    self._ID7._ID2428 = undefined;
    self _meth_814C( %add_idle, 0.1 );
}

_ID47437()
{
    return _func_0BA( 1.0, 1.7 );
}

_ID33861()
{
    if ( animscripts\utility::_ID41682() )
        return 1.0;

    if ( animscripts\weaponlist::_ID39983() )
        return animscripts\weaponlist::_ID4463() * 0.7;

    return 0.4;
}

_ID14321( var_0, var_1, var_2 )
{
    var_3 = "fireAnim_" + _unknown_05C5();
    _ID42298::_ID29779();

    while ( !_unknown_0723() )
        wait 0.05;

    _unknown_0616();
    var_4 = 1.0;

    if ( _func_02F( self._ID33815 ) )
        var_4 = self._ID33815;
    else if ( self._ID33816 == "full" )
        var_4 = animscripts\weaponlist::_ID4463() * _func_0BA( 0.5, 1.0 );
    else if ( self._ID33816 == "burst" )
        var_4 = animscripts\weaponlist::_ID6455();
    else if ( animscripts\utility::_ID39997() )
        var_4 = 3.0;
    else if ( animscripts\utility::_ID39996() )
        var_4 = _unknown_06D0();

    self _meth_8116( var_3, var_0, 1, 0.2, var_4 );
    self _meth_81FA();
    var_5 = _func_1B6( self._ID1302 );
    _unknown_0738( var_3, var_0, var_1, var_2, var_5 );
    _unknown_0699();
}

_ID14322()
{
    self endon( "killanimscript" );
    self endon( "fireAnimEnd" );
    self notify( "FireUntilOutOfAmmo_WaitTillEnded" );
    self endon( "FireUntilOutOfAmmo_WaitTillEnded" );
    var_0 = thisthread;

    for (;;)
    {
        waitframe;

        if ( !_func_02F( var_0 ) )
        {
            self _meth_83E7();
            return;
        }

        wait 0.05;
    }
}

_ID14323( var_0, var_1, var_2, var_3, var_4 )
{
    self endon( "enemy" );

    if ( _func_1B3( self._ID322 ) && self._ID33816 == "full" || self._ID33816 == "semi" )
        level endon( "player_becoming_invulnerable" );

    if ( var_2 )
    {
        thread _unknown_0831( var_0, "fireAnimEnd" );
        self endon( "fireAnimEnd" );
    }

    if ( !_func_02F( var_3 ) )
        var_3 = -1;

    var_5 = 0;
    var_6 = _func_067( var_1 );
    var_7 = _func_068( var_1, "fire" );
    var_8 = _func_1BE( self._ID1302 ) == "rocketlauncher";
    thread _unknown_07BD();

    while ( var_5 < var_3 && var_3 > 0 )
    {
        var_9 = 0;

        if ( var_7 )
            self waittillmatch( var_0,  "fire"  );

        if ( !self._ID6323 )
        {
            if ( !_unknown_0663() )
                break;
        }

        if ( !_unknown_0860() )
            break;

        _unknown_08A2();

        if ( _func_1B3( self._ID322 ) && self._ID322 _ID42407::_ID13019( "player_is_invulnerable" ) )
        {
            if ( _func_0B7( 3 ) == 0 )
                self._ID6323--;
        }
        else
            self._ID6323--;

        if ( var_8 )
        {
            self._ID7._ID30103--;

            if ( _func_125( _func_128( self._ID1302 ), "rpg" ) || _func_125( _func_128( self._ID1302 ), "panzerfaust" ) )
            {
                self _meth_804E( "tag_rocket" );
                self._ID7._ID30106 = 0;
            }
        }

        var_5++;
        thread _unknown_0914( var_0 );

        if ( self._ID13941 && var_5 == var_3 )
            break;

        if ( !var_7 || var_3 == 1 && self._ID33816 == "single" )
        {
            self waittillmatch( var_0,  "end"  );
            var_9 = var_6;
        }
    }

    self _meth_83E7();

    if ( var_2 )
        self notify( "fireAnimEnd" );
}

_ID2425()
{
    if ( !_func_02F( self._ID33810 ) )
        return 1;

    var_0 = self _meth_81C5();
    var_1 = animscripts\shared::_ID16587();
    var_2 = _func_11A( self._ID33810 - var_1 );
    var_3 = anim._ID2440;

    if ( _func_02F( self._ID2427 ) )
        var_3 = self._ID2427;

    var_4 = animscripts\utility::_ID1735( var_0[1] - var_2[1] );

    if ( var_4 > var_3 )
    {
        if ( _func_0F5( self _meth_80AF(), self._ID33810 ) > anim._ID2438 || var_4 > anim._ID2439 )
            return 0;
    }

    var_5 = anim._ID2430;

    if ( self._ID7._ID28253 == "crouch" && _func_0F5( self _meth_80AF(), self._ID33810 ) < anim._ID44892 )
        var_5 = anim._ID51480;

    return animscripts\utility::_ID1735( var_0[0] - var_2[0] ) <= var_5;
}

_ID25138( var_0, var_1 )
{
    self endon( "killanimscript" );
    self endon( var_1 );
    self waittillmatch( var_0,  "end"  );
    self notify( var_1 );
}

_ID20908()
{
    if ( _func_1BC( self._ID1302 ) > 0 )
        return 0;
    else if ( _func_1B8( self._ID1302 ) )
        return 0;

    return 1;
}

_ID33774()
{
    var_0 = _unknown_09E8();

    if ( _func_02F( self._ID33785 ) )
    {
        if ( _func_02F( self._ID322 ) && self._ID33785 == self._ID322 )
            animscripts\utility::_ID33781( var_0 );
    }
    else
        self [[ anim._ID33814 ]]( self._ID33810, var_0 );
}

_ID10082()
{
    if ( self._ID6323 )
        self._ID6323--;
}

_ID33862( var_0 )
{
    if ( !animscripts\utility::_ID41682() )
        return;

    self endon( "killanimscript" );
    self notify( "shotgun_pump_sound_end" );
    self endon( "shotgun_pump_sound_end" );
    thread _unknown_0A66( 2.0 );
    self waittillmatch( var_0,  "rechamber"  );
    self _meth_80A1( "ai_shotgun_pump" );
    self notify( "shotgun_pump_sound_end" );
}

_ID36614( var_0 )
{
    self endon( "killanimscript" );
    self endon( "shotgun_pump_sound_end" );
    wait(var_0);
    self notify( "shotgun_pump_sound_end" );
}

_ID29286( var_0 )
{

}

_ID24716( var_0 )
{
    if ( self._ID1302 == "none" )
        return 0;

    if ( _func_02F( self._ID24926 ) )
    {
        if ( self._ID6323 < _func_1B7( self._ID1302 ) * 0.5 )
            self._ID6323 = _func_0C1( _func_1B7( self._ID1302 ) * 0.5 );

        if ( self._ID6323 <= 0 )
            self._ID6323 = 1;

        return 0;
    }

    if ( animscripts\stairs_utility::_ID54507( 100 ) )
    {
        if ( self._ID6323 < _func_1B7( self._ID1302 ) * 0.5 )
            self._ID6323 = _func_0C1( _func_1B7( self._ID1302 ) * 0.5 );

        if ( self._ID6323 <= 0 )
            self._ID6323 = 1;

        return 0;
    }

    if ( self._ID6323 <= _func_1B7( self._ID1302 ) * var_0 )
    {
        if ( var_0 == 0 )
        {
            if ( _unknown_08C1() )
                return 0;
        }

        return 1;
    }

    return 0;
}

_ID28777()
{
    self endon( "weapon_switch_done" );
    self endon( "death" );
    self waittill( "killanimscript" );
    animscripts\shared::_ID26732( self._ID834, "right" );
}

_ID44708()
{
    var_0 = 1;
    return var_0;
}

_ID868( var_0, var_1 )
{
    self endon( "killanimscript" );

    if ( !_unknown_0B52( var_0 ) )
        return 0;

    animscripts\battlechatter_ai::_ID13241();
    animscripts\battlechatter::_ID27185();

    if ( _func_02F( var_1 ) )
    {
        var_2 = _unknown_0B9B();
        self _meth_8118( "reloadanim", var_1, %body, 1, 0.1, var_2 );
        animscripts\shared::_ID11529( "reloadanim" );
        animscripts\weaponlist::_ID29364();
        self._ID7._ID24711 = 0;
    }
    else
    {
        if ( self._ID7._ID28253 == "prone" )
        {
            self _meth_8118( "reloadanim", %prone_reload, %body, 1, 0.1, 1 );
            self _meth_820B( %prone_legs_up, %prone_legs_down, 1, 0.1, 1 );
        }
        else
        {
            wait 2;
            return;
        }

        animscripts\shared::_ID11529( "reloadanim" );
        animscripts\weaponlist::_ID29364();
        self._ID7._ID24711 = 0;
    }

    return 1;
}

_ID2022( var_0, var_1 )
{
    if ( !_func_02F( anim._ID17421 ) )
    {
        anim._ID17421 = [];
        anim._ID17422 = [];
    }

    var_2 = anim._ID17421.size;
    anim._ID17421[var_2] = var_0;
    anim._ID17422[var_2] = var_1;
}

_ID19910()
{
    _unknown_0C99( %exposed_grenadethrowb, ( 41.5391, 7.28883, 72.2128 ) );
    _unknown_0CAE( %exposed_grenadethrowc, ( 34.8849, -4.77048, 74.0488 ) );
    _unknown_0CC3( %corner_standl_grenade_a, ( 41.605, 6.80107, 81.4785 ) );
    _unknown_0CD8( %corner_standl_grenade_b, ( 24.1585, -14.7221, 29.2992 ) );
    _unknown_0CED( %cornercrl_grenadea, ( 25.8988, -10.2811, 30.4813 ) );
    _unknown_0D02( %cornercrl_grenadeb, ( 24.688, 45.0702, 64.377 ) );
    _unknown_0D17( %corner_standr_grenade_a, ( 37.1254, -32.7053, 76.5745 ) );
    _unknown_0D2C( %corner_standr_grenade_b, ( 19.356, 15.5341, 16.5036 ) );
    _unknown_0D41( %cornercrr_grenadea, ( 39.8857, 5.92472, 24.5878 ) );
    _unknown_0D56( %covercrouch_grenadea, ( -1.6363, -0.693674, 60.1009 ) );
    _unknown_0D6B( %covercrouch_grenadeb, ( -1.6363, -0.693674, 60.1009 ) );
    _unknown_0D80( %coverstand_grenadea, ( 10.8573, 7.12614, 77.2356 ) );
    _unknown_0D95( %coverstand_grenadeb, ( 19.1804, 5.68214, 73.2278 ) );
    _unknown_0DAA( %prone_grenade_a, ( 12.2859, -1.3019, 33.4307 ) );
    _unknown_0DBF( %cqb_stand_grenade_throw, ( 35.7494, 26.6052, 37.7086 ) );
    _unknown_0DD4( %s1_covercrouch_grenadea, ( -15.5413, -16.7719, 19.4304 ) );
    _unknown_0DE9( %s1_coverstand_grenadea, ( 3.99694, -2.76588, 32.8777 ) );
    _unknown_0DFE( %s1_coverstand_grenadeb, ( 5.51904, 2.92983, 32.8406 ) );
    _unknown_0E13( %s1_exposed_crouch_fast_grenade_1, ( 16.4611, -8.55309, 30.1018 ) );
    _unknown_0E28( %s1_exposed_crouch_fast_grenade_2, ( 30.5886, -7.6374, 47.3139 ) );
    _unknown_0E3D( %s1_exposed_grenadethrowc, ( 13.433, -0.473915, 43.3545 ) );
    _unknown_0E52( %s1_exposed_grenadethrowb, ( -31.425, -7.62042, 42.4334 ) );
    _unknown_0E67( %s1_cornercrr_grenade_2, ( 37.4516, -2.01701, 22.6517 ) );
    _unknown_0E7C( %s1_corner_standl_grenade_a, ( 41.605, 6.80107, 81.4785 ) );
    _unknown_0E91( %s1_cornercrr_grenadea, ( 39.8857, 5.92472, 24.5878 ) );
}

_ID46245( var_0 )
{
    if ( var_0 == "grenade_left" || var_0 == "grenade_right" )
    {
        self._ID44669 = _func_06A( "script_model", self _meth_818C( "tag_inhand" ) );
        var_1 = animscripts\utility::_ID16307();
        self._ID44669 _meth_80B8( var_1 );
        self._ID44669 _meth_8053( self, "tag_inhand", ( 0, 0, 3 ), ( 0, 0, 0 ) );
    }
    else if ( var_0 == "grenade_throw" )
    {
        self._ID44669 _meth_80B7();
        self._ID44669 = undefined;
        return "end";
    }
}

_ID16308( var_0 )
{
    var_1 = ( 0, 0, 64 );

    if ( _func_02F( var_0 ) )
    {
        var_2 = anim._ID17421;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_0 == var_3 )
            {
                var_1 = anim._ID17422[var_4];
                break;
            }
        }

        var_clear_2
    }

    if ( var_1[2] == 64 )
    {
        if ( !_func_02F( var_0 ) )
        {

        }
        else
        {

        }
    }

    return var_1;
}

_ID37695()
{
    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        if ( level._ID805[var_0]._ID25254 == 0 )
        {
            level._ID805[var_0]._ID17424["fraggrenade"] = 0;
            level._ID805[var_0]._ID17424["flash_grenade"] = 0;
        }
    }

    anim._ID37694 = 1;
}

_ID32536( var_0 )
{
    self._ID1826 = _func_1A5();

    if ( _func_1B3( var_0 ) )
    {
        self._ID1826._ID20863 = 1;
        self._ID1826._ID794 = var_0;
        self._ID1826._ID37755 = self._ID470;
    }
    else
    {
        self._ID1826._ID20863 = 0;
        self._ID1826._ID37755 = "AI_" + self._ID470;
    }
}

_ID39989()
{
    return self._ID1826._ID20863;
}

_ID32643( var_0, var_1 )
{
    if ( var_0._ID20863 )
    {
        var_2 = var_0._ID794;
        var_3 = var_2._ID17424[var_0._ID37755];
        var_2._ID17424[var_0._ID37755] = _func_0E6( var_1, var_3 );
    }
    else
    {
        var_3 = anim._ID17424[var_0._ID37755];
        anim._ID17424[var_0._ID37755] = _func_0E6( var_1, var_3 );
    }
}

_ID16216()
{
    var_0 = undefined;

    if ( _unknown_1118() )
    {
        var_1 = self._ID1826._ID794;
        var_0 = _func_03D() + var_1._ID17476._ID27830 + _func_0B7( var_1._ID17476._ID27831 );
    }
    else
        var_0 = _func_03D() + 30000 + _func_0B7( 30000 );

    return var_0;
}

_ID16309( var_0 )
{
    if ( var_0._ID20863 )
        return var_0._ID794._ID17424[var_0._ID37755];
    else
        return anim._ID17424[var_0._ID37755];
}

_ID8532( var_0 )
{
    if ( !_func_1B3( var_0 ) && self _meth_8147() )
    {
        if ( _func_03D() < _unknown_11A7( self._ID1826 ) )
        {
            if ( level._ID794._ID511 )
                return var_0;

            var_1 = self _meth_8184();
            var_2 = level._ID794 _meth_8184();

            if ( var_1 != "" && var_2 != "" && _func_10E( var_2, var_1 ) < -10000 )
                return var_0;

            if ( self _meth_81CA( level._ID794 ) || _func_0D4( var_0 ) && var_0 _meth_81CA( level._ID794 ) )
            {
                if ( _func_02F( self._ID8893 ) )
                {
                    var_3 = _func_11A( level._ID794._ID740 - self._ID740 );
                    var_4 = _func_0F0( self._ID8893._ID65[1] - var_3[1] );
                }
                else
                    var_4 = animscripts\utility::_ID16762( level._ID794._ID740 );

                if ( _func_0C3( var_4 ) < 60 )
                {
                    var_0 = level._ID794;
                    _unknown_11F5( var_0 );
                }
            }
        }
    }

    return var_0;
}

_ID23142( var_0 )
{
    if ( _ID42407::_ID27342() )
        return 0;

    if ( !var_0._ID17476._ID11663 )
        return 0;

    var_1 = _func_03D();

    if ( var_1 < var_0._ID17424["double_grenade"] )
        return 0;

    if ( var_1 > var_0._ID21925 + 3000 )
        return 0;

    if ( var_1 < var_0._ID21925 + 500 )
        return 0;

    return var_0._ID25254 < 2;
}

_ID24633()
{
    return _func_03D() >= self._ID7._ID24783;
}

_ID17406( var_0 )
{
    if ( _ID42407::_ID27342() )
        return 0;

    if ( self._ID31213 == 1 )
        return 1;

    if ( !_unknown_12F3() )
        return 0;

    if ( _func_03D() >= _unknown_12A7( self._ID1826 ) )
        return 1;

    if ( self._ID1826._ID20863 && self._ID1826._ID37755 == "fraggrenade" )
        return _unknown_1306( var_0 );

    return 0;
}

_ID39073( var_0, var_1, var_2, var_3 )
{
    if ( !self _meth_81DB( var_0, var_1 ) && !_ID49347::iswolf( self ) )
        return 0;
    else if ( _func_0F5( self._ID740, var_1 ) < 40000 )
        return 0;

    var_4 = _func_091( var_1 + ( 0, 0, 1 ), var_1 + ( 0, 0, -500 ) );

    if ( var_4 == var_1 + ( 0, 0, -500 ) )
        return 0;

    var_4 += ( 0, 0, 0.1 );
    return _unknown_140B( var_0, var_4, var_2, var_3 );
}

_ID39072( var_0, var_1 )
{
    if ( self._ID1302 == "mg42" || self._ID464 <= 0 )
        return 0;

    _unknown_130C( var_0 );
    var_0 = _unknown_1357( var_0 );

    if ( !_unknown_13AF( var_0 ) )
        return 0;

    var_2 = _unknown_12F2( var_1 );

    if ( _func_02F( self._ID322 ) && var_0 == self._ID322 )
    {
        if ( !_unknown_176E() )
            return 0;

        if ( _func_1B3( self._ID322 ) && _ID42407::_ID20581( self._ID322 ) )
            return 0;

        if ( animscripts\utility::_ID6885() )
        {
            if ( !self _meth_81DB( var_0, var_0._ID740 ) && !_ID49347::iswolf( self ) )
                return 0;

            return _unknown_1481( var_0, undefined, var_1, var_2 );
        }
        else if ( animscripts\utility::_ID6899() )
            return _unknown_1427( var_0, animscripts\utility::_ID16257(), var_1, var_2 );
        else
        {
            if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
                var_3 = self _meth_81CD( var_0 );
            else
                var_3 = var_0._ID740;

            if ( !self _meth_81DB( var_0, var_3 ) && !_ID49347::iswolf( self ) )
                return 0;

            return _unknown_14C8( var_0, undefined, var_1, var_2 );
        }

        return 0;
    }
    else
    {
        if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
            var_3 = self _meth_81CD( var_0 );
        else
            var_3 = var_0._ID740;

        return _unknown_147D( var_0, var_3, var_1, var_2 );
    }
}

_ID39074( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = _func_03A( "ai_GrenadeThrowAllowedInStairs", 1 );

    if ( var_7 && _func_02F( self.grenadethrowallowedinstairs ) )
        var_7 = self.grenadethrowallowedinstairs;

    if ( !var_7 && animscripts\stairs_utility::_ID54360() )
        return 0;

    if ( _func_03D() < 10000 && !_func_02F( level._ID19383 ) )
        return 0;

    if ( !_func_02F( var_5 ) )
        var_5 = 1;

    if ( _func_02F( var_2 ) )
    {
        var_8 = var_2;
        var_9 = self._ID7._ID17524;
    }
    else
    {
        switch ( self._ID7._ID35357 )
        {

        }
    }

    if ( !_func_02F( var_6 ) )
        return 0;

    if ( _func_02F( var_access_8 ) )
    {
        if ( !_func_02F( var_2 ) )
            var_10 = self _meth_81B0( var_1, var_access_8, var_3, "min energy", "min time", "max time" );
        else
            var_10 = self _meth_81B0( var_1, var_access_8, var_3, "min time", "min energy" );
    }
    else if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_10 = self _meth_81B0( var_1, self _meth_81CD( var_access_9 ), var_3, "min energy", "min time", "max time" );
    else
    {
        var_11 = _func_0F3( var_access_9._ID740, self._ID740 );
        var_12 = self._ID28963;

        if ( var_11 < 800 )
        {
            if ( var_11 < 256 )
                var_12 = 0;
            else
                var_12 *= var_11 - 256 / 544;
        }

        if ( !_func_02F( var_2 ) )
            var_10 = self _meth_81DC( var_1, var_12, "min energy", "min time", "max time" );
        else
            var_10 = self _meth_81DC( var_1, var_12, "min time", "min energy" );
    }

    if ( _func_02F( self.nextgrenadetrydelayminmax ) )
        self._ID7._ID24783 = _func_03D() + _func_0B9( self.nextgrenadetrydelayminmax[0], self.nextgrenadetrydelayminmax[1] );
    else
        self._ID7._ID24783 = _func_03D() + _func_0B9( 1000, 2000 );

    if ( _func_02F( var_10 ) )
    {
        if ( !_func_02F( self._ID25557 ) )
            self._ID25557 = self._ID465;

        self._ID465 = 0;
        var_13 = _unknown_15B2();
        _unknown_15AD( self._ID1826, _func_0C4( _func_03D() + 3000, var_13 ) );
        var_14 = 0;

        if ( _unknown_15B1() )
        {
            var_access_12._ID25254++;
            thread _unknown_177A( var_access_12 );

            if ( var_access_12._ID25254 > 1 )
                var_14 = 1;

            if ( self._ID1826._ID37755 == "fraggrenade" )
            {
                if ( var_access_12._ID25254 <= 1 )
                    var_access_12._ID21925 = _func_03D();
            }
        }

        if ( _func_02F( var_4 ) )
            thread _unknown_17B4( var_6, var_10, var_13, var_14 );
        else
            _unknown_17C0( var_6, var_10, var_13, var_14 );

        return 1;
        jump loc_17C2
    }

    return 0;
    case "cover_crouch":
    case "none":
    default:
}

_ID29354( var_0 )
{
    self endon( "dont_reduce_giptp_on_killanimscript" );
    self waittill( "killanimscript" );
    var_0._ID25254--;
}

_ID11482( var_0, var_1, var_2, var_3 )
{
    self endon( "killanimscript" );

    if ( self._ID912 == "combat" || self._ID912 == "move" )
        self _meth_819B( "face direction", var_1 );

    animscripts\battlechatter_ai::_ID13236( "grenade" );
    self notify( "stop_aiming_at_enemy" );
    self _meth_8119( "throwanim", var_0, %body, _unknown_1AF1(), 0.1, 1 );
    thread animscripts\notetracks::_ID11530( "throwanim", "killanimscript" );
    var_4 = animscripts\utility::_ID16307();
    var_5 = "none";

    for (;;)
    {
        self waittill( "throwanim",  var_6  );

        if ( var_6 == "grenade_left" || var_6 == "grenade_right" )
        {
            var_5 = _unknown_1943( var_4, "TAG_INHAND" );
            self._ID20766 = 1;
        }

        if ( var_6 == "grenade_throw" || var_6 == "grenade throw" )
            break;

        if ( var_6 == "end" )
        {
            self._ID1826._ID794._ID25254--;
            self notify( "dont_reduce_giptp_on_killanimscript" );
            return 0;
        }
    }

    self notify( "dont_reduce_giptp_on_killanimscript" );

    if ( _unknown_16D9() )
        thread _unknown_1924( self._ID1826._ID794, var_2 );

    self _meth_81DF();

    if ( !_unknown_16ED() )
        _unknown_16F8( self._ID1826, var_2 );

    if ( var_3 )
    {
        var_13 = self._ID1826._ID794;

        if ( var_13._ID25254 > 1 || _func_03D() - var_13._ID21927 < 2000 )
            var_13._ID17424["double_grenade"] = _func_03D() + _func_0C4( 5000, var_13._ID17476._ID27800 );
    }

    self notify( "stop grenade check" );

    if ( var_5 != "none" )
    {
        self _meth_802A( var_4, var_5 );
        jump loc_196F
    }

    self._ID20766 = undefined;
    self._ID465 = self._ID25557;
    self._ID25557 = undefined;
    self waittillmatch( "throwanim",  "end"  );
    self notify( "done_grenade_throw" );
    self notify( "weapon_switch_done" );
    self _meth_8155( %exposed_modern, 1, 0.2 );
    self _meth_8155( %exposed_aiming, 1 );
    self _meth_814C( var_0, 0.2 );
}

_ID41522( var_0, var_1 )
{
    var_0 endon( "death" );
    _unknown_19E0( var_1 );
    var_0._ID25254--;
}

_ID41523( var_0 )
{
    var_1 = self._ID1826;
    var_2 = _func_1A5();
    var_2 thread _unknown_1A52( 5 );
    var_2 endon( "watchGrenadeTowardsPlayerTimeout" );
    var_3 = self._ID470;
    var_4 = _unknown_1A5A();

    if ( !_func_02F( var_4 ) )
        return;

    _unknown_17D3( var_1, _func_0C4( _func_03D() + 5000, var_0 ) );
    var_5 = 62500;
    var_6 = 160000;

    if ( var_3 == "flash_grenade" )
    {
        var_5 = 810000;
        var_6 = 1690000;
    }

    var_7 = level._ID805;
    var_8 = var_4._ID740;

    for (;;)
    {
        wait 0.1;

        if ( !_func_02F( var_4 ) )
            break;

        if ( _func_0F5( var_4._ID740, var_8 ) < 400 )
        {
            var_9 = [];

            for ( var_10 = 0; var_10 < var_7.size; var_10++ )
            {
                var_11 = var_7[var_10];
                var_12 = _func_0F5( var_4._ID740, var_11._ID740 );

                if ( var_12 < var_5 )
                {
                    var_11 _unknown_1ABC( var_1, var_0 );
                    continue;
                }

                if ( var_12 < var_6 )
                    var_9[var_9.size] = var_11;
            }

            var_7 = var_9;

            if ( var_7.size == 0 )
                break;
        }

        var_8 = var_4._ID740;
    }
}

_ID17413( var_0, var_1 )
{
    var_2 = self;
    anim._ID37694 = undefined;

    if ( _func_03D() - var_2._ID21927 < 3000 )
        var_2._ID17424["double_grenade"] = _func_03D() + var_2._ID17476._ID27800;

    var_2._ID21927 = _func_03D();
    var_3 = var_2._ID17424[var_0._ID37755];
    var_2._ID17424[var_0._ID37755] = _func_0E6( var_1, var_3 );
}

_ID16306()
{
    self endon( "killanimscript" );
    self waittill( "grenade_fire",  var_0  );
    return var_0;
}

_ID41524( var_0 )
{
    wait(var_0);
    self notify( "watchGrenadeTowardsPlayerTimeout" );
}

_ID3582( var_0, var_1 )
{
    self _meth_801D( var_0, var_1 );
    thread _unknown_1B7B( var_0, var_1 );
    return var_1;
}

_ID10628( var_0, var_1 )
{
    self endon( "stop grenade check" );
    self waittill( "killanimscript" );

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID25557 ) )
    {
        self._ID465 = self._ID25557;
        self._ID25557 = undefined;
    }

    self _meth_802A( var_0, var_1 );
}

_ID25479( var_0 )
{
    var_1 = _func_11F( self._ID65 );
    var_2 = _func_11E( self._ID65 );
    var_3 = _func_11D( self._ID65 );
    var_1 *= var_0[0];
    var_2 *= var_0[1];
    var_3 *= var_0[2];
    return var_1 + var_2 + var_3;
}

_ID17414( var_0, var_1 )
{
    level notify( "armoffset" );
    level endon( "armoffset" );
    var_0 = self._ID740 + _unknown_1BF5( var_0 );

    for (;;)
        wait 0.05;
}

_ID16304()
{
    var_0 = _func_0B8( 360 );
    var_1 = _func_0BA( 30, 75 );
    var_2 = _func_0BB( var_1 );
    var_3 = _func_0BC( var_1 );
    var_4 = _func_0BC( var_0 ) * var_3;
    var_5 = _func_0BB( var_0 ) * var_3;
    var_6 = _func_0BA( 100, 200 );
    var_7 = ( var_4, var_5, var_2 ) * var_6;
    return var_7;
}

_ID12146()
{
    var_0 = self _meth_818C( "tag_inhand" );
    var_1 = _unknown_1C55();
    self _meth_803A( var_0, var_1, 3 );
}

_ID22626()
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( self._ID381 || self._ID302 )
        return 0;

    var_0 = _unknown_1C99();

    if ( _func_02F( var_0 ) )
        return _unknown_1CBF( var_0 );

    return 0;
}

_ID16152()
{
    var_0 = self _meth_81FE();

    if ( !_func_02F( var_0 ) )
        return undefined;

    var_1 = animscripts\utility::_ID16178();

    if ( _func_02F( var_1 ) && var_0 == var_1 )
        return undefined;

    if ( _func_02F( self._ID8893 ) && var_0 == self._ID8893 )
        return undefined;

    if ( _func_02F( self.dontchangefloor ) && self.dontchangefloor )
    {
        var_2 = var_0._ID740 - self._ID740;

        if ( _func_0C3( var_2[2] ) > 140 )
            return undefined;
    }

    return var_0;
}

_ID39926( var_0 )
{
    var_1 = self._ID562;
    var_2 = self._ID561;
    self._ID562 = 0;
    self._ID561 = 0;

    if ( self _meth_8200( var_0 ) )
    {
        return 1;
        jump loc_1D38
    }

    self._ID562 = var_1;
    self._ID561 = var_2;
    return 0;
}

_ID33951()
{
    if ( level._ID2182[self._ID1194] > 0 && level._ID2182[self._ID1194] < level._ID2183 )
    {
        if ( _func_03D() - level._ID21879[self._ID1194] > 4000 )
            return 0;

        var_0 = level._ID21876[self._ID1194];
        var_1 = _func_02F( var_0 ) && _func_0F5( self._ID740, var_0._ID740 ) < 65536;

        if ( var_1 || _func_0F5( self._ID740, level._ID21878[self._ID1194] ) < 65536 && !_func_02F( self._ID322 ) || _func_0F5( self._ID322._ID740, level._ID21877[self._ID1194] ) < 262144 )
            return 1;
    }

    return 0;
}

_ID7411()
{
    if ( !_func_02F( level._ID21879[self._ID1194] ) )
        return 0;

    if ( _unknown_1DC5() )
        return 1;

    if ( _func_03D() - level._ID21879[self._ID1194] < level._ID2184 )
        return 0;

    if ( !_func_0D6( self._ID322 ) )
        return 0;

    if ( level._ID2182[self._ID1194] )
        level._ID2182[self._ID1194] = 0;

    var_0 = _func_02F( self._ID2177 ) && self._ID2177;

    if ( !var_0 && _func_0DD( self._ID1194 ) < _func_0DD( self._ID322._ID1194 ) )
        return 0;

    return 1;
}

_ID39079( var_0 )
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( self._ID381 )
        return 0;

    if ( self._ID199 == "ambush" || self._ID199 == "ambush_nodes_only" )
        return 0;

    if ( !self _meth_8169( self._ID322._ID740 ) )
        return 0;

    if ( _unknown_1FC0() )
        return 0;

    if ( !_unknown_1E74() )
        return 0;

    self _meth_8203( var_0 );

    if ( self _meth_8205() )
    {
        self._ID562 = 0;
        self._ID561 = 0;
        self._ID7._ID22753 = 1;

        if ( level._ID2182[self._ID1194] == 0 )
        {
            level._ID21879[self._ID1194] = _func_03D();
            level._ID21876[self._ID1194] = self;
        }

        level._ID21878[self._ID1194] = self._ID740;
        level._ID21877[self._ID1194] = self._ID322._ID740;
        level._ID2182[self._ID1194]++;
        return 1;
    }

    return 0;
}

_ID10209( var_0 )
{
    self endon( "death" );
    wait 0.5;
    var_1 = "" + anim._ID4714;
    _func_020( var_1, 5, var_0, 16, 64, self._ID1194 );
    anim._ID4717[anim._ID4717.size] = var_1;

    if ( anim._ID4717.size >= 10 )
    {
        var_2 = [];

        for ( var_3 = 1; var_3 < anim._ID4717.size; var_3++ )
            var_2[var_2.size] = anim._ID4717[var_3];

        _func_01F( anim._ID4717[0] );
        anim._ID4717 = var_2;
    }

    anim._ID4714++;

    if ( anim._ID4714 > 10 )
        anim._ID4714 = anim._ID4714 - 20;
}

_ID40025( var_0, var_1, var_2 )
{
    if ( var_0 > var_1 && var_0 < var_2 )
        return 1;

    return 0;
}

_ID16322()
{
    if ( !_func_02F( self._ID33810 ) )
        return 0;

    var_0 = self _meth_81C5()[1] - animscripts\utility::_ID16756( self._ID33810 );
    var_0 = _func_0F0( var_0 );
    return var_0;
}

_ID16321()
{
    if ( !_func_02F( self._ID33810 ) )
        return 0;

    var_0 = self _meth_81C5()[0] - _func_11A( self._ID33810 - self _meth_81C4() )[0];
    var_0 = _func_0F0( var_0 );
    return var_0;
}

_ID16517()
{
    if ( !_func_02F( self._ID322 ) )
        return 0;

    if ( _ID42237::_ID14385( "_cloaked_stealth_enabled" ) )
        var_0 = _unknown_213A( self._ID322 );
    else
        var_0 = self._ID322 _meth_809E();

    var_1 = var_0 - self _meth_809E();
    var_1 = _func_119( var_1 );
    var_2 = 360 - _func_11A( var_1 )[0];
    return _func_0F0( var_2 );
}

_ID16520( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = var_0 - self _meth_809E();
    var_1 = _func_119( var_1 );
    var_2 = 360 - _func_11A( var_1 )[0];
    return _func_0F0( var_2 );
}

_ID16518( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) || !_func_02F( var_1 ) )
        return 0;

    if ( _func_02F( self ) && animscripts\utility::_ID20915() )
    {
        var_2 = _func_11F( self._ID65 );
        var_3 = _func_124( var_2, var_0 - self._ID740, self._ID65[2] * -1 );
        var_0 = var_3 + self._ID740;
    }

    var_4 = var_0 - var_1;
    var_4 = _func_119( var_4 );
    var_5 = 360 - _func_11A( var_4 )[0];
    return _func_0F0( var_5 );
}

_ID41555()
{
    self._ID20879 = 0;
    self._ID21975 = -1;

    for (;;)
    {
        self waittill( "reload_start" );
        self._ID20879 = 1;
        self._ID21975 = _func_03D();
        _unknown_210A();
        self._ID20879 = 0;
    }
}

_ID41201()
{
    thread _unknown_212F( 4, "reloadtimeout" );
    self endon( "reloadtimeout" );
    self endon( "weapon_taken" );

    for (;;)
    {
        self waittill( "reload" );
        var_0 = self _meth_831C();

        if ( var_0 == "none" )
            break;

        if ( self _meth_82FB() >= _func_1B7( var_0 ) )
            break;
    }

    self notify( "reloadtimeout" );
}

_ID37733( var_0, var_1 )
{
    self endon( var_1 );
    wait(var_0);
    self notify( var_1 );
}

_ID7436()
{
    var_0 = self._ID322._ID740 - self._ID740;
    var_1 = _func_0F8( ( var_0[0], var_0[1], 0 ) );

    if ( self._ID470 == "flash_grenade" )
        return var_1 < 589824;

    if ( _func_02F( level._ID46221 ) && level._ID46221 )
        return var_1 >= 40000 && var_1 <= 1562500;
    else
        return 1;
}

_ID24161()
{
    self endon( "death" );

    if ( !_func_02F( level._ID24731 ) )
        self endon( "stop_monitoring_flash" );

    for (;;)
    {
        var_0 = undefined;
        var_1 = undefined;
        var_2 = undefined;
        var_3 = undefined;
        var_4 = undefined;
        self waittill( "flashbang",  var_4, var_3, var_2, var_0, var_1  );

        if ( _func_02F( self._ID14507 ) && self._ID14507 )
            continue;

        if ( _func_02F( self._ID31257 ) && self._ID31257 != 0 )
            continue;

        if ( _func_02F( self._ID25834 ) )
            continue;

        if ( _func_02F( self._ID1194 ) && _func_02F( var_4 ) && self._ID1194 == var_4 )
        {
            var_0 = 3 * var_0 - 0.75;

            if ( var_0 < 0 )
                continue;

            if ( _func_02F( self._ID37364 ) )
                continue;
        }

        var_5 = 0.2;

        if ( var_0 > 1 - var_5 )
            var_0 = 1.0;
        else
            var_0 /= 1 - var_5;

        var_6 = 4.5 * var_0;

        if ( var_6 < 0.25 )
            continue;

        self._ID14521 = var_4;

        if ( _func_02F( self._ID46520 ) && self._ID46520 )
            self _meth_814B();

        if ( _func_02F( var_3 ) && _func_1B3( var_3 ) )
            var_3 _ID42279::_ID39695( self );

        _ID42407::_ID14510( var_6 );
        self notify( "doFlashBanged",  var_1, var_3  );
    }
}

_ID20903()
{
    return animscripts\utility::_ID20902( self._ID834 );
}

_ID20910()
{
    return animscripts\utility::_ID20911( self._ID834 );
}

_ID20813()
{
    return _unknown_2329() || animscripts\utility::_ID39993();
}

_ID13949()
{
    return 1.5;
}

_ID28962()
{
    return _func_0BA( 1, 1.2 );
}

_ID16551( var_0 )
{
    if ( var_0.size == 0 )
        return undefined;

    if ( var_0.size == 1 )
        return var_0[0];

    if ( _func_02F( self._ID7._ID28496 ) && _func_0B7( 100 ) > 20 )
    {
        var_1 = var_0;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( var_2 == self._ID7._ID28496 )
            {
                if ( var_3 < var_0.size - 1 )
                    var_0[var_3] = var_0[var_0.size - 1];

                var_0[var_0.size - 1] = undefined;
                break;
            }
        }

        var_clear_2
    }

    return var_0[_func_0B7( var_0.size )];
}

_ID27650()
{
    var_0 = self _meth_80AF();
    var_1 = level._ID805;

    for ( var_9 = _func_1DA( var_1 ); _func_02F( var_9 ); var_9 = _func_1BF( var_1, var_9 ) )
    {
        var_2 = var_1[var_9];

        if ( !self _meth_81CA( var_2 ) )
            continue;

        var_3 = var_2 _meth_80AF();
        var_4 = _func_11A( var_0 - var_3 );
        var_5 = _func_11F( var_4 );
        var_6 = var_2 _meth_8346();
        var_7 = _func_11F( var_6 );
        var_8 = _func_0FB( var_5, var_7 );

        if ( var_8 < 0.805 )
            continue;

        if ( _ID42237::_ID8201() && var_8 >= 0.996 )
            continue;

        return 1;
    }

    var_clear_8
    var_clear_0
    return 0;
}

_ID15797( var_0 )
{
    var_1 = self _meth_81CD( var_0 );
    var_2 = var_0 _meth_809E() - var_0._ID740;
    return var_1 + var_2;
}
