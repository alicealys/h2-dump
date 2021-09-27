// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID24356( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = level._ID35897 + "_playerstart";

    var_1 = _ID42237::_ID16638( var_0, "targetname" );

    if ( _func_02F( var_1 ) )
        _ID42407::_ID37441( var_1 );
}

_ID35071( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    var_4 = _func_1A2( var_1, "script_noteworthy" );
    var_5 = [];
    var_6 = 0;
    var_7 = [];
    var_8 = var_4;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];

        if ( _func_1A8( var_9 ) )
            var_5[var_5.size] = var_9;
    }

    var_clear_2
    var_clear_0
    var_11 = _ID42237::_ID16638( var_0, "targetname" );
    var_12 = 0;
    var_13 = var_5;

    for ( var_16 = _func_1DA( var_13 ); _func_02F( var_16 ); var_16 = _func_1BF( var_13, var_16 ) )
    {
        var_14 = var_13[var_16];
        var_15 = var_14 _ID42407::_ID35014( 1 );

        if ( var_2 )
            var_15 thread _ID42407::_ID29701();

        var_15 _meth_81D2( var_11._ID740, var_11._ID65 );
        var_15 _meth_81B2( var_15._ID740 );
        var_7 = _ID42237::_ID3293( var_7, var_15 );
        var_12++;

        if ( _func_02F( var_3 ) && var_12 >= var_3 )
            return var_7;
    }

    var_clear_3
    var_clear_0
    return var_7;
}

_ID33383( var_0, var_1 )
{
    self _meth_8139( 0 );
    self _meth_8328();
    self _meth_832A();
    self _meth_8121( 1 );
    self _meth_8122( 0 );
    self _meth_8123( 0 );
    self _meth_830F( 0 );
    _func_0DB( "ammoCounterHide", 1 );

    if ( _func_02F( var_0 ) && var_0 )
    {
        var_2 = 0;

        for ( var_3 = 0; self _meth_8188() != "stand"; var_3 += 0.05 )
        {
            self _meth_8189( "stand" );
            waittillframeend;
        }

        while ( self _meth_8135() || self _meth_8342() || self _meth_831C( 0 ) != "none" )
        {
            waittillframeend;
            var_3 += 0.05;
        }

        if ( _func_02F( var_1 ) && var_1 > var_3 )
            wait(var_1 - var_3);
    }
}

_ID33382()
{
    _func_0DB( "ammoCounterHide", 0 );
    self _meth_830F( 1 );
    self _meth_8123( 1 );
    self _meth_8122( 1 );
    self _meth_8121( 1 );
    self _meth_832B();
    self _meth_8329();
    self _meth_8139( 1 );
}

_ID24255()
{
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];

        if ( !_func_02F( var_1._ID34789 ) )
        {
            var_1._ID34789 = var_1 _ID42313::_ID9200( "default", 1.75 );
            var_1._ID34789._ID499 = "center";
            var_1._ID34789._ID1284 = "top";
            var_1._ID34789._ID44 = "center";
            var_1._ID34789._ID45 = "top";
            var_1._ID34789._ID1331 = 0;
            var_1._ID34789._ID1339 = 20;
            var_1._ID34789 _meth_80D1( &"VARIABLE_SCOPE_SNIPER_ZOOM" );
            var_1._ID34789._ID55 = 0;
            var_1._ID34789._ID983 = 0.5;
            var_1._ID34789._ID408 = 1;
        }

        var_1._ID14854 = 1;
    }

    var_clear_2
    var_clear_0
    var_3 = 0;
    level._ID805[0]._ID34773 = "cg_playerFovScale0";

    if ( level._ID805.size == 2 )
        level._ID805[1]._ID34773 = "cg_playerFovScale1";

    var_4 = level._ID805;

    for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
    {
        var_1 = var_4[var_5];
        var_1 thread _unknown_039D();
        var_1 thread _unknown_03B6();
    }

    var_clear_1
    var_clear_0

    if ( !_func_02F( level._ID40039 ) )
        level._ID40039 = [];

    var_6 = undefined;
    var_7 = undefined;

    for (;;)
    {
        var_8 = 0;
        var_7 = var_6;
        var_6 = undefined;
        var_9 = level._ID40039;

        for ( var_13 = _func_1DA( var_9 ); _func_02F( var_13 ); var_13 = _func_1BF( var_9, var_13 ) )
        {
            var_10 = var_9[var_13];
            var_11 = level._ID805;

            for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
            {
                var_1 = var_11[var_12];

                if ( var_1 _meth_831C() == var_10 && _func_1A7( var_1 ) )
                {
                    var_8 = 1;
                    var_6 = var_1;
                    break;
                }
            }

            var_clear_2
            var_clear_1

            if ( var_8 )
                break;
        }

        var_clear_4
        var_clear_0

        if ( var_8 && !var_6 _meth_8341() && !var_6 _meth_8342() )
        {
            if ( var_6 _ID42407::_ID20652() && var_6 _meth_8349() )
            {
                var_6 _unknown_0434( var_3 );
                var_3 = 1;

                if ( _func_02F( level._ID40038 ) )
                {
                    var_14 = undefined;
                    var_15 = undefined;
                    var_16 = _func_11F( var_6 _meth_8346() );
                    var_17 = var_6._ID740;
                    var_18 = level._ID40038;

                    for ( var_22 = _func_1DA( var_18 ); _func_02F( var_22 ); var_22 = _func_1BF( var_18, var_22 ) )
                    {
                        var_19 = var_18[var_22];
                        var_20 = _func_11F( _func_11A( var_19 - var_17 ) );
                        var_21 = _func_0FB( var_16, var_20 );

                        if ( !_func_02F( var_14 ) || var_21 > var_15 )
                        {
                            var_14 = var_19;
                            var_15 = var_21;
                        }
                    }

                    var_clear_4
                    var_clear_0

                    if ( _func_02F( var_14 ) )
                        _func_0DB( "sm_sunShadowCenter", var_14 );
                }
            }
            else if ( var_3 )
            {
                var_3 = 0;

                if ( _func_02F( var_6 ) )
                    var_6 _unknown_04BD();

                _func_0DB( "sm_sunShadowCenter", "0 0 0" );
            }
        }
        else if ( var_3 )
        {
            var_3 = 0;

            if ( _func_02F( var_7 ) )
                var_7 _unknown_04DD();

            _func_0DB( "sm_sunShadowCenter", "0 0 0" );
        }

        wait 0.05;
    }
}

_ID39228( var_0 )
{
    self _meth_832A();
    _func_0DB( self._ID34773, self._ID14854 );
    self._ID34789._ID55 = 1;

    if ( !var_0 )
        level notify( "variable_sniper_hud_enter" );
}

_ID39222()
{
    level notify( "variable_sniper_hud_exit" );
    self _meth_832B();
    _func_0DB( self._ID34773, 1 );
    self._ID34789._ID55 = 0;
}

_ID24193()
{
    _func_00E( "mag_cycle", "+melee_zoom" );
    _func_00E( "mag_cycle", "+sprint_zoom" );

    for (;;)
    {
        self waittill( "mag_cycle" );

        if ( self._ID34789._ID55 )
        {
            if ( self._ID14854 == 0.5 )
            {
                self._ID14854 = 1;
                continue;
            }

            self._ID14854 = 0.5;
        }
    }
}

_ID11055()
{
    self waittill( "death" );
    _unknown_056F();
}

_ID10811( var_0, var_1, var_2, var_3, var_4 )
{
    level endon( "stop_reminders" );
    level endon( "missionfailed" );
    var_5 = undefined;

    if ( !_func_02F( var_3 ) )
        var_3 = 10;

    if ( !_func_02F( var_4 ) )
        var_4 = 20;

    while ( !_ID42237::_ID14385( var_1 ) )
    {
        var_6 = _func_0BA( var_3, var_4 );
        var_7 = _ID42237::_ID28945( var_2 );

        if ( _func_02F( var_5 ) && var_7 == var_5 )
        {
            continue;
            continue;
        }

        var_5 = var_7;
        wait(var_6);

        if ( !_ID42237::_ID14385( var_1 ) )
        {
            if ( _func_031( var_0 ) && var_0 == "radio" )
            {
                _unknown_0628();
                _ID42407::_ID28864( var_7 );
                _unknown_063D();
                continue;
            }

            _unknown_0638();
            var_0 _ID42407::_ID10805( var_7 );
            _unknown_064F();
        }
    }
}

_ID8609()
{
    if ( !_ID42237::_ID14396( "flag_conversation_in_progress" ) )
        _ID42237::_ID14400( "flag_conversation_in_progress" );

    _ID42237::_ID14426( "flag_conversation_in_progress" );
    _ID42237::_ID14402( "flag_conversation_in_progress" );
}

_ID8610()
{
    _ID42237::_ID14388( "flag_conversation_in_progress" );
}

_ID3301( var_0, var_1 )
{
    var_2 = [];
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( !_func_02F( _ID42237::_ID3307( var_2, var_4 ) ) )
            var_2[var_2.size] = var_4;
    }

    var_clear_2
    var_clear_0
    var_6 = var_1;

    for ( var_7 = _func_1DA( var_6 ); _func_02F( var_7 ); var_7 = _func_1BF( var_6, var_7 ) )
    {
        var_4 = var_6[var_7];

        if ( !_func_02F( _ID42237::_ID3307( var_2, var_4 ) ) )
            var_2[var_2.size] = var_4;
    }

    var_clear_1
    var_clear_0
    return var_2;
}

_ID21733( var_0 )
{
    var_0 endon( "remove_laser_targeting_device" );
    var_0._ID22029 = undefined;
    var_0._ID21752 = 0;
    var_0 _meth_822C( "actionslot4", "dpad_laser_designator" );
    var_0 thread _unknown_0771();
    var_0 _meth_82E8( "use_laser", "+actionslot 4" );
    var_0 _meth_82E8( "fired_laser", "+attack" );
    var_0 _meth_82E8( "fired_laser", "+attack_akimbo_accessible" );
    var_0._ID21745 = 1;
    var_0._ID21746 = 20;
    var_0 childthread _unknown_07B2();

    for (;;)
    {
        var_0 waittill( "use_laser" );

        if ( var_0._ID21752 || !var_0._ID21745 || var_0 _unknown_079E() )
        {
            var_0 notify( "cancel_laser" );
            var_0 _meth_80BA();
            var_0._ID21752 = 0;
            var_0 _meth_830B( 1 );
            wait 0.2;
            var_0 _meth_813A( 1 );
            continue;
        }

        var_0 _meth_80B9();
        var_0 _meth_813A( 0 );
        var_0._ID21752 = 1;
        var_0 _meth_830B( 0 );
        var_0 thread _unknown_0813();
    }
}

_ID33949()
{
    var_0 = self _meth_831C();

    if ( var_0 == "rpg" )
        return 1;

    if ( _ID42237::_ID36698( var_0, "gl" ) )
        return 1;

    if ( _func_02F( level._ID21708 ) && _func_0D3( level._ID21708 ) )
    {
        var_1 = level._ID21708;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( var_0 == var_2 )
                return 1;
        }

        var_clear_2
        var_clear_0
    }

    if ( self _meth_8341() )
        return 1;

    if ( self _meth_8135() )
        return 1;

    return 0;
}

_ID7822()
{
    self waittill( "remove_laser_targeting_device" );
    self _meth_822C( "actionslot4", "none" );
    self notify( "cancel_laser" );
    self _meth_80BA();
    self._ID21752 = undefined;
    self _meth_813A( 1 );
    self _meth_830B( 1 );
}

_ID24187()
{
    for (;;)
    {
        if ( _unknown_086A() && _func_02F( self._ID21752 ) && self._ID21752 )
        {
            self notify( "use_laser" );
            wait 2.0;
        }

        wait 0.05;
    }
}

_ID21706()
{
    self endon( "cancel_laser" );

    for (;;)
    {
        self waittill( "fired_laser" );
        var_0 = _unknown_092E();
        var_1 = var_0["position"];
        var_2 = var_0["entity"];
        level notify( "laser_coordinates_received" );
        var_3 = undefined;

        if ( _func_02F( level._ID21734 ) && _func_02F( var_2 ) && _ID42237::_ID3303( level._ID21734, var_2 ) )
        {
            var_3 = var_2;
            level._ID21734 = _ID42237::_ID3321( level._ID21734, var_2 );
        }
        else
            var_3 = _unknown_0941( var_1 );

        if ( _func_02F( var_3 ) )
        {
            thread _unknown_0989( var_3 );
            level notify( "laser_target_painted" );
            wait 0.5;
            self notify( "use_laser" );
        }
    }
}

_ID16652( var_0 )
{
    if ( !_func_02F( level._ID21735 ) || level._ID21735.size == 0 )
        return undefined;

    var_1 = level._ID21735;

    for ( var_5 = _func_1DA( var_1 ); _func_02F( var_5 ); var_5 = _func_1BF( var_1, var_5 ) )
    {
        var_2 = var_1[var_5];
        var_3 = _func_0F4( var_0, var_2._ID740 );
        var_4 = var_0[2] - var_2._ID740[2];

        if ( !_func_02F( var_2._ID851 ) )
            continue;

        if ( !_func_02F( var_2._ID488 ) )
            continue;

        if ( var_3 <= var_2._ID851 && var_4 <= var_2._ID488 && var_4 >= 0 )
        {
            level._ID21735 = _ID42237::_ID3321( level._ID21735, var_2 );
            return _func_1A1( var_2._ID1191, "script_noteworthy" );
        }
    }

    var_clear_4
    var_clear_0
    return undefined;
}

_ID15795()
{
    var_0 = self _meth_80AF();
    var_1 = self _meth_8346();
    var_2 = _func_11F( var_1 );
    var_3 = var_0 + var_2 * 7000;
    var_4 = _func_06D( var_0, var_3, 1, self );
    var_5 = var_4["entity"];

    if ( _func_02F( var_5 ) )
        var_4["position"] = var_5._ID740;

    return var_4;
}

_ID21702( var_0 )
{
    level._ID794 endon( "remove_laser_targeting_device" );
    level._ID794._ID21745 = 0;
    self _meth_822C( "actionslot4", "dpad_killstreak_hellfire_missile_inactive" );
    _ID42407::_ID14543( "allies" );
    var_1 = level._ID794;
    wait 2.5;

    if ( !_func_02F( var_0._ID31259 ) )
        var_0._ID31259 = 99;

    wait 1;

    if ( _func_02F( var_0._ID31245 ) )
    {
        var_2 = _unknown_0ADB( "geo_before", var_0._ID31245 );

        if ( var_2.size > 0 )
            _ID42237::_ID3294( var_2, ::_meth_805A );

        var_3 = _unknown_0AF4( "geo_after", var_0._ID31245 );

        if ( var_3.size > 0 )
            _ID42237::_ID3294( var_3, ::_meth_8059 );
    }

    wait(level._ID794._ID21746);
    level._ID794._ID21745 = 1;
    self _meth_822C( "actionslot4", "dpad_laser_designator" );
}

_ID15754( var_0, var_1 )
{
    var_2 = _func_1A2( var_0, "targetname" );
    var_3 = [];
    var_4 = var_2;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];

        if ( _func_02F( var_5._ID31245 ) && var_5._ID31245 == var_1 )
            var_3[var_3.size] = var_5;
    }

    var_clear_2
    var_clear_0
    return var_3;
}

_ID22383( var_0, var_1, var_2, var_3, var_4 )
{
    return var_3 + var_0 - var_1 * var_4 - var_3 / var_2 - var_1;
}

_ID22384( var_0, var_1, var_2, var_3, var_4 )
{
    return _func_0EE( _unknown_0B9D( var_0, var_1, var_2, var_3, var_4 ), _func_0C4( var_3, var_4 ), _func_0E6( var_3, var_4 ) );
}

_ID10841()
{
    var_0 = _func_03D() * 0.001;

    if ( !_func_02F( self._ID10846 ) )
    {
        self._ID10846 = var_0;
        self._ID10845 = self._ID740;
        self._ID10847 = ( 0, 0, 0 );
        self._ID10844 = ( 0, 0, 0 );
        self._ID10843 = ( 0, 0, 0 );
        self._ID10842 = ( 0, 0, 0 );
        self._ID10849 = ( 0, 0, 0 );
        self._ID10848 = 0;
    }
    else if ( self._ID10846 != var_0 )
    {
        var_1 = var_0 - self._ID10846;
        self._ID10846 = var_0;
        self._ID10843 = self._ID10842 - self._ID10844 / var_1;
        self._ID10844 = self._ID10842;
        self._ID10842 = self._ID10849 - self._ID10847 / var_1;
        self._ID10847 = self._ID10849;
        self._ID10849 = self._ID740 - self._ID10845 / var_1;
        self._ID10845 = self._ID740;
        self._ID10848 = _func_0F6( self._ID10849 );
    }
}

_ID15680()
{
    _unknown_0C4B();
    return self._ID10848;
}

_ID15681()
{
    _unknown_0C53();
    return self._ID10849;
}

_ID15678()
{
    _unknown_0C5B();
    return self._ID10842;
}

_ID15679()
{
    _unknown_0C64();
    return self._ID10843;
}

_ID34028( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_0 ) )
        _func_0DB( "g_friendlyNameDist", var_0 );
    else
        _func_0DB( "g_friendlyNameDist", 15000 );

    if ( _func_02F( var_1 ) )
        _func_0DB( "compass", var_1 );
    else
        _func_0DB( "compass", "1" );

    if ( _func_02F( var_2 ) )
        _func_0DB( "ammoCounterHide", var_2 );
    else
        _func_0DB( "ammoCounterHide", "0" );

    if ( _func_02F( var_3 ) )
        _func_0DB( "actionSlotsHide", var_3 );
    else
        _func_0DB( "actionSlotsHide", "0" );

    if ( _func_02F( var_4 ) )
        _func_0DB( "hud_showStance", var_4 );
    else
        _func_0DB( "hud_showStance", "1" );
}

_ID18534( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_0 ) )
        _func_0DB( "g_friendlyNameDist", var_0 );
    else
        _func_0DB( "g_friendlyNameDist", 0 );

    if ( _func_02F( var_1 ) )
        _func_0DB( "compass", var_1 );
    else
        _func_0DB( "compass", "0" );

    if ( _func_02F( var_2 ) )
        _func_0DB( "ammoCounterHide", var_2 );
    else
        _func_0DB( "ammoCounterHide", "1" );

    if ( _func_02F( var_3 ) )
        _func_0DB( "actionSlotsHide", var_3 );
    else
        _func_0DB( "actionSlotsHide", "1" );

    if ( _func_02F( var_4 ) )
        _func_0DB( "hud_showStance", var_4 );
    else
        _func_0DB( "hud_showStance", "0" );
}

_ID10918( var_0 )
{
    _unknown_0DF0();
}

_ID12484( var_0 )
{
    _unknown_0DC8();
}

_ID17918( var_0, var_1, var_2 )
{
    level._ID794 endon( "death" );
    level endon( "missionfailed" );

    if ( _func_02F( var_2 ) && _func_031( var_2 ) )
        level endon( var_2 );

    if ( !_func_02F( var_0 ) || !_func_031( var_0 ) )
        return;

    if ( !_func_02F( var_1 ) || !_func_031( var_1 ) || !_ID42237::_ID14396( var_0 ) )
        return;

    var_3 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_3 ) )
        var_3 = _func_1A1( var_1, "script_noteworthy" );

    if ( !_func_02F( var_3 ) )
        return;

    var_3 _meth_8077( 0 );

    for (;;)
    {
        _ID42237::_ID14413( var_0 );
        var_3 _meth_8077( 1 );
        _ID42237::_ID14426( var_0 );
        var_3 _meth_8077( 0 );
        wait 0.05;
    }
}

_ID28249( var_0, var_1 )
{
    level._ID794 endon( "death" );
    level endon( "missionfailed" );

    if ( !_func_02F( var_0 ) || !_func_031( var_0 ) )
        return;

    if ( !_func_02F( var_1 ) || !_func_031( var_1 ) || !_ID42237::_ID14396( var_0 ) )
        return;

    var_2 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_2 ) )
        var_2 = _func_1A1( var_1, "script_noteworthy" );

    if ( !_func_02F( var_2 ) )
        return;

    var_2 _meth_8077( 0 );
    _ID42237::_ID14413( var_0 );
    var_2 _meth_8077( 1 );
}

_ID28248( var_0, var_1 )
{
    level._ID794 endon( "death" );
    level endon( "missionfailed" );

    if ( !_func_02F( var_0 ) || !_func_031( var_0 ) )
        return;

    if ( !_func_02F( var_1 ) || !_func_031( var_1 ) || !_ID42237::_ID14396( var_0 ) )
        return;

    var_2 = _func_1A1( var_1, "targetname" );

    if ( !_func_02F( var_2 ) )
        var_2 = _func_1A1( var_1, "script_noteworthy" );

    if ( !_func_02F( var_2 ) )
        return;

    _ID42237::_ID14413( var_0 );
    var_2 _meth_8077( 0 );
}

_ID22818()
{
    if ( !_func_02F( level._ID12411 ) )
        level._ID12411 = [];

    level._ID12411 = _ID42237::_ID3293( level._ID12411, self );
    self waittill( "death" );
    level._ID12411 = _ID42237::_ID3321( level._ID12411, self );
}

_ID26968( var_0, var_1, var_2, var_3 )
{
    var_4 = _func_1A5();
    var_4._ID15195 = _ID42237::_ID16299( var_0 );
    var_4._ID337 = var_1;
    var_4._ID1067 = var_2;

    if ( _func_02F( var_3 ) && var_3 )
    {
        var_4._ID1139 = _ID42237::_ID35164();
        var_4._ID1139 _meth_8053( var_1, var_4._ID1067, ( 0, 0, 0 ), ( 0, 0, 0 ) );
        _func_157( var_4._ID15195, var_4._ID1139, "tag_origin" );
        _unknown_107B( var_4 );
    }
    else
        _func_157( var_4._ID15195, var_4._ID337, var_4._ID1067 );

    return var_4;
}

_ID21271( var_0 )
{
    thread _unknown_1099( var_0 );
}

_ID21272( var_0 )
{
    var_0._ID337 waittill( "death" );
    _unknown_10B1( var_0 );
}

_ID21270( var_0 )
{
    if ( _func_02F( var_0._ID1139 ) )
    {
        _func_159( var_0._ID15195, var_0._ID1139, "tag_origin" );
        var_0._ID1139 _ID42237::_ID10192( 0.05, ::_meth_80B7 );
        var_0._ID1139 = undefined;
        var_0._ID337 = undefined;
    }
    else if ( _func_02F( var_0._ID337 ) )
    {
        _func_159( var_0._ID15195, var_0._ID337, var_0._ID1067 );
        var_0._ID337 = undefined;
    }
}

_ID18629( var_0, var_1 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 200;

    return _unknown_113B( var_0, self._ID740, undefined, var_1, undefined, self );
}

_ID18628( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    return _unknown_1162( var_0, var_1, var_2, var_3, 0, var_4, var_5 );
}

_ID18625( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID42237::_ID35164();

    if ( !_func_02F( var_1 ) )
    {
        if ( _func_02F( var_5 ) )
            var_1 = var_5._ID740;
        else
            var_1 = self._ID740;
    }

    var_6._ID740 = var_1;
    return var_6 _unknown_119D( var_0, "tag_origin", var_2, var_3, 1, var_4, var_5 );
}

_ID18619( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = _func_1B0( level._ID794 );
    var_7._ID44 = "center";
    var_7._ID45 = "middle";
    var_7._ID393 = 3;
    var_7._ID392 = "buttonprompt";
    var_7._ID812 = 1;

    if ( _func_02F( self ) )
    {
        if ( _func_02F( var_1 ) )
            var_7 _meth_80D4( self, var_1 );
        else
            var_7 _meth_80D4( self );
    }

    var_8 = _unknown_126C( var_0 );
    var_7 _meth_80D1( var_8 );
    var_7._ID493 = 1;
    var_7._ID983 = -1;
    var_7._ID55 = 1;

    if ( !_func_02F( var_5 ) || !var_5 )
        var_7 thread _unknown_1254( self, var_1, level._ID794, var_2, var_3, var_6 );

    var_7._ID25316 = self;

    if ( _func_02F( var_4 ) && var_4 )
        var_7._ID10331 = 1;

    return var_7;
}

_ID30769( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    self endon( "death" );
    var_0 endon( "death" );

    if ( !_func_02F( var_3 ) )
        var_3 = _func_03A( "player_useradius" );

    if ( !_func_02F( var_4 ) )
        var_4 = 0;

    var_6 = 0;
    self._ID393 = 2;
    self._ID392 = "buttonprompt";

    for (;;)
    {
        if ( _func_02F( var_1 ) )
            var_6 = _func_0F3( var_0 _meth_818C( var_1 ), var_2 _meth_80AF() );
        else
            var_6 = _func_0F3( var_0, var_2 _meth_80AF() );

        if ( var_4 != 0 && var_6 > var_4 )
            self._ID55 = 0;
        else if ( var_3 != 0 && var_6 > var_3 )
        {
            if ( var_4 - var_3 > 0 )
                self._ID55 = 1 - var_6 - var_3 / var_4 - var_3 * 0.3;
            else
                self._ID55 = 0.3;
        }
        else if ( _func_02F( var_5 ) && _func_02F( var_5._ID170 ) && _func_125( var_5._ID170, "trigger" ) )
        {
            var_7 = var_2 _meth_852A();

            if ( _func_02F( var_7 ) && var_7 == var_5 )
                self._ID55 = 1;
            else
                self._ID55 = 0.3;
        }
        else
            self._ID55 = 1;

        waittillframeend;
    }
}

_ID18626( var_0 )
{
    switch ( var_0 )
    {

    }

    endswitch( 40 )  case "pause" loc_140D case "flash" loc_1411 case "smoke" loc_1416 case "l2" loc_141B case "lb" loc_1421 case "ads" loc_141B case "l1" loc_1420 case "frag" loc_1424 case "r2" loc_1429 case "rb" loc_142F case "attack" loc_1432 case "r1" loc_1438 case "rt" loc_143D case "breath" loc_1441 case "ls" loc_1446 case "rs" loc_144A case "stance" loc_144D case "weapnext" loc_1451 case "gostand" loc_1455 case "activate" loc_1459 case "usereload" loc_145E case "use" loc_1463 case "lt" loc_1474 case "melee" loc_1474 case "start" loc_148B case "jump" loc_147A case "flashbang" loc_1494 case "y" loc_1486 case "b" loc_148C case "a" loc_148F case "x" loc_1492 case "up" loc_14B1 case "down" loc_14B8 case "grenade" loc_14AD case "right" loc_14C6 case "left" loc_14C9 case "reload" loc_14B2 case "crouch" loc_14BC case "sprint" loc_14C4 default loc_14E1
    case "pause":
    case "smoke":
    case "ads":
    case "l2":
    case "lb":
    case "l1":
    case "frag":
    case "r2":
    case "rb":
    case "attack":
    case "r1":
    case "rt":
    case "breath":
    case "ls":
    case "rs":
    case "stance":
    case "weapnext":
    case "gostand":
    case "activate":
    case "usereload":
    case "use":
    case "melee":
    case "lt":
    case "start":
    case "jump":
    case "flashbang":
    case "y":
    case "b":
    case "a":
    case "x":
    case "up":
    case "down":
    case "grenade":
    case "right":
    case "left":
    case "reload":
    case "crouch":
    case "sprint":
    default:
}

_ID18617()
{
    if ( _func_02F( self._ID10331 ) && self._ID10331 )
        self._ID25316 _meth_80B7();

    if ( _func_02F( self ) )
        self _meth_808F();
}

_ID18621( var_0, var_1 )
{
    while ( _func_02F( self ) )
    {
        var_2 = self._ID55;
        self _meth_808B( var_0 / 3 );
        self._ID55 = var_1;
        wait(var_0);

        if ( !_func_02F( self ) )
            return;

        self _meth_808B( var_0 / 3 );
        self._ID55 = var_2;
        wait(var_0);
    }
}

_ID6483( var_0, var_1, var_2, var_3 )
{
    self endon( var_2 );
    level._ID794 endon( var_2 );
    self endon( "death" );
    thread _ID42407::_ID18611( var_0 );
    var_4 = var_1 + "_button_mash_dynamic_hint";
    thread _unknown_15CE( var_2, var_4, var_1, var_3 );
    level._ID794 _meth_82E8( var_4, var_1 );

    if ( _func_02F( var_3 ) )
        level._ID794 _meth_82E8( var_4, var_3 );

    for (;;)
    {
        self waittill( var_4 );
        level._ID18694._ID55 = 0.2;
        level._ID18694 _meth_808B( 0.3 );
        level._ID18694._ID55 = 1;
        waittillframeend;
    }
}

_ID6497( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    _ID42237::_ID41069( self, var_0, level._ID794, var_0 );
    thread _ID42407::_ID18638();
    level._ID794 _meth_84AB( var_1, var_2 );

    if ( _func_02F( var_3 ) )
        level._ID794 _meth_84AB( var_1, var_3 );
}

_ID18620( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = ( 0, 0, 0 );

    self endon( "death" );
    var_7 = _ID42237::_ID35164();
    var_7._ID740 = self _meth_818C( var_0 );
    var_7._ID740 = var_7._ID740 + var_3;
    var_7 _meth_8053( self, var_0 );
    var_1 = var_7 _unknown_1564( var_1, "TAG_ORIGIN", var_4, var_5, 1, 1 );

    if ( _func_02F( var_6 ) )
        var_1._ID393 = var_6;

    var_1 thread _unknown_1669( 0.15, 0.1 );
    _ID42237::_ID41069( self, var_2, level._ID794, var_2 );
    var_1 _unknown_166F();
}

_ID27167( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( !_func_02F( var_6 ) )
        var_6 = 1;

    var_8 = undefined;

    if ( _func_02F( var_2 ) || _func_02F( var_3 ) || _func_02F( var_4 ) || _func_02F( var_5 ) )
    {
        var_8 = [];
        var_8["top"] = var_2;
        var_8["left"] = var_3;
        var_8["bottom"] = var_4;
        var_8["right"] = var_5;
    }

    var_9 = [];
    var_9["add"] = 0;
    var_9["blend"] = 1;
    var_9["blend_add"] = 2;
    var_9["screen_add"] = 3;
    var_9["multiply"] = 4;
    var_9["replace"] = 5;

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    var_10 = var_9[var_1];
    var_11 = _func_03A( "cg_cinematicfullscreen" );
    _func_0DB( "cg_cinematicfullscreen", 0 );
    var_12 = [];

    if ( _func_02F( var_8 ) )
    {
        var_12["top"] = _func_033( "ui_videolog_pos_top" );
        var_12["left"] = _func_033( "ui_videolog_pos_left" );
        var_12["bottom"] = _func_033( "ui_videolog_pos_bottom" );
        var_12["right"] = _func_033( "ui_videolog_pos_right" );
        _func_032( "ui_videolog_pos_top", var_8["top"] );
        _func_032( "ui_videolog_pos_left", var_8["left"] );
        _func_032( "ui_videolog_pos_bottom", var_8["bottom"] );
        _func_032( "ui_videolog_pos_right", var_8["right"] );
    }

    _func_032( "ui_videolog", 1 );
    var_13 = _func_033( "ui_videolog_blendfunc" );
    _func_032( "ui_videolog_blendfunc", var_10 );
    _func_032( "ui_videolog_blur_bkgrnd", var_6 );

    if ( !_func_02F( var_7 ) )
        var_7 = level._ID1632._ID10132;

    _func_05B( var_0, 0, var_7, 1 );

    while ( !_func_05F() )
        waittillframeend;

    while ( _func_05F() )
        waittillframeend;

    _func_032( "ui_videolog", 0 );
    _func_032( "ui_videolog_blendfunc", var_13 );
    _func_0DB( "cg_cinematicfullscreen", var_11 );

    if ( _func_02F( var_8 ) )
    {
        _func_032( "ui_videolog_pos_top", var_12["top"] );
        _func_032( "ui_videolog_pos_left", var_12["left"] );
        _func_032( "ui_videolog_pos_bottom", var_12["bottom"] );
        _func_032( "ui_videolog_pos_right", var_12["right"] );
    }
}

_ID36566()
{
    if ( _func_05F() )
        _func_060();
}

_ID26800( var_0, var_1, var_2 )
{
    _ID42237::_ID14400( "chyron_video_done" );
    var_3 = _func_1B0( level._ID794 );
    var_3 _meth_80D3( "black", 1280, 720 );
    var_3._ID499 = "fullscreen";
    var_3._ID1284 = "fullscreen";
    var_3._ID55 = 1;
    var_3._ID408 = 0;
    _func_05B( var_0 );
    var_4 = _func_03A( "cg_cinematicCanPause", 0 );
    _func_0DB( "cg_cinematicCanPause", 1 );

    while ( !_func_05F() )
        waittillframeend;

    while ( _func_05F() )
        waittillframeend;

    _ID42237::_ID14402( "chyron_video_done" );

    if ( _func_02F( var_1 ) )
        wait(var_1);

    if ( _func_02F( var_2 ) )
    {
        var_3 _meth_808B( var_2 );
        var_3._ID55 = 0;
        wait(var_2);
    }

    _func_0DB( "cg_cinematicCanPause", var_4 );
    var_3 _meth_808F();
}

_ID28189( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_2 ) )
        var_2 = level._ID794;

    return _func_0FB( _func_119( var_0 - var_2 _meth_80AF() ), _func_11F( var_2 _meth_8346() ) ) > _func_0BC( var_1 );
}

_ID13078( var_0, var_1, var_2, var_3 )
{
    return _unknown_19E8( var_0._ID740, _func_0C0( _func_0BD( 0.5 * var_2 ) * var_3 / 320.0 ), var_1 );
}
