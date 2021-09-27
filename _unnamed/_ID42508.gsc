// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID28414()
{
    _func_14E( "turret_attackheli" );
    _func_14E( "missile_attackheli" );
    _unknown_0017();
    thread _unknown_002C();
}

_ID3619()
{
    if ( _func_03A( "sm_enable" ) && _func_039( "r_zfeather" ) != "0" )
        level._ID1426["_attack_heli_spotlight"] = _func_155( "fx/misc/hunted_spotlight_model" );
    else
        level._ID1426["_attack_heli_spotlight"] = _func_155( "fx/misc/spotlight_large" );
}

_ID521()
{
    if ( _func_02F( level._ID3642 ) )
        return;

    while ( !_func_02F( level._ID15361 ) )
        wait 0.05;

    if ( !_func_02F( level._ID8760 ) )
        level._ID8760 = [];

    if ( !_func_02F( level._ID8760["25"] ) )
        level._ID8760["25"] = _func_0BC( 25 );

    if ( !_func_02F( level._ID8760["35"] ) )
        level._ID8760["35"] = _func_0BC( 35 );

    if ( !_func_02F( level._ID3650 ) )
        level._ID3650 = 3500;

    if ( !_func_02F( level._ID3646 ) )
        level._ID3646 = 0;

    if ( !_func_02F( level._ID3644 ) )
        level._ID3644 = _func_0BC( 30 );

    level._ID3642 = 1;
    level._ID3647 = 3;
    level._ID3651 = 6;
    level._ID3648 = 3;

    switch ( level._ID15361 )
    {

    }

    case 3:
    case 2:
    case 1:
    case 0:
}

_ID35642( var_0 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "kill_heli";

    var_1 = _ID42411::_ID35196( var_0 );
    var_1 = _unknown_018C( var_1 );
    return var_1;
}

_ID4977( var_0, var_1 )
{
    var_0 endon( "death" );
    var_0 endon( "heli_players_dead" );

    if ( level._ID15361 == 0 || level._ID15361 == 1 )
    {
        var_2 = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, -20 ) );
        var_2 _meth_8053( var_0 );
        var_0 thread _ID42237::_ID10280( var_2 );
        var_3 = undefined;

        if ( level._ID15361 == 0 )
            var_3 = 2800;
        else
            var_3 = 2200;

        if ( !_func_02F( var_0._ID24819 ) )
        {
            var_0._ID3671 = _func_1A9( var_2, var_3, 10000, level._ID794 );

            if ( _ID42407::_ID20495() )
                var_0._ID3672 = _func_1A9( var_2, var_3, 10000, level._ID27742 );
        }
    }

    var_0 _meth_81C1();
    var_0._ID36137 = _func_06A( "script_origin", var_0._ID740 );
    var_0 thread _ID42237::_ID10280( var_0._ID36137 );

    if ( !_func_02F( var_0._ID7544 ) )
        var_0._ID7544 = 0;

    var_0._ID2738 = 1;
    var_0._ID14344 = 0;
    var_0._ID24481 = 1;
    var_0._ID20939 = 0;
    var_0._ID18383 = undefined;
    var_0 thread _unknown_0622();
    var_0 thread _unknown_0633();
    thread _unknown_035E( var_0, var_1 );
    var_0._ID39368 = undefined;
    var_0 _unknown_02F8();
    var_0 thread _unknown_02EB();

    switch ( var_0._ID1282 )
    {

    }

    var_0._ID13197 = var_0._ID37319;

    if ( _func_02F( var_0._ID31447 ) && var_0._ID31447 == 1 && !_func_02F( var_0._ID35464 ) )
        var_0 thread _unknown_0A04( undefined, 1 );

    var_0 thread _unknown_09C3();
    return var_0;
    case "littlebird_spotlight":
    case "ny_harbor_hind":
    case "hind_blackice":
    case "mi28":
    case "littlebird":
    case "mi17":
    case "hind":
    case "apache":
    default:
}

_ID10640()
{
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _ID42407::_ID1985( _ID42407::_ID41116, "death" );
    }

    var_clear_2
    var_clear_0
    _ID42407::_ID11232();
    self notify( "heli_players_dead" );
}

_ID18362()
{
    var_0 = undefined;
    var_1 = undefined;

    switch ( self._ID1282 )
    {

    }

    endswitch( 10 )  case "littlebird_spotlight" loc_434 case "nh90" loc_433 case "ny_harbor_hind" loc_435 case "hind_blackice" loc_43A case "mi28" loc_443 case "littlebird" loc_44F case "mi17" loc_44D case "hind" loc_44F case "apache" loc_45B default loc_467
    self._ID37319 = _func_06A( "script_origin", self._ID740 );
    self._ID37319._ID65 = self._ID65;
    self._ID37319._ID740 = self._ID740;
    var_2 = _func_1A5();
    var_2._ID337 = self._ID37319;
    var_2._ID409 = var_1;
    var_2._ID1251 = var_0;
    var_2 _ID42407::_ID38694();
    self._ID37319 _meth_8053( self );
    self._ID37319 thread _unknown_04E4( self );
    case "nh90":
    case "ny_harbor_hind":
    case "hind_blackice":
    case "mi28":
    case "hind":
    case "littlebird":
    case "mi17":
    case "apache":
    default:
}

_ID16045()
{
    if ( _func_02F( self._ID39358 ) )
        return self._ID39358;

    _unknown_04E8();
    return self._ID39358;
}

_ID33336()
{
    self._ID39368 = "miniguns";
    self._ID23668 = 0;
    self._ID14343 = 0;

    if ( !_func_02F( self._ID23512 ) )
        return;

    self._ID39358 = self._ID23512;
    _ID42237::_ID3350( self._ID39358, ::_unknown_0AC3, self );
}

_ID18361( var_0 )
{
    var_0 _ID42237::_ID41098( "death", "crash_done" );

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID35681( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "kill_heli";

    var_2 = _ID42411::_ID35196( var_0 );
    var_2._ID36137 = _func_06A( "script_origin", var_2._ID740 );
    var_2 thread _ID42237::_ID10280( var_2._ID36137 );
    var_2._ID7544 = 1;
    var_2._ID2738 = 1;
    var_2._ID14344 = 0;
    var_2 thread _unknown_0869();
    var_2 thread _unknown_087A();
    thread _unknown_05A5( var_2, var_1 );
    return var_2;
}

_ID21276( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
    {
        var_0 = _ID42411::_ID35196( "kill_heli" );
        var_0._ID2738 = 1;
        var_0._ID14344 = 0;
        var_0 thread _unknown_0899();
        var_0 thread _unknown_08AA();
    }

    var_2 = undefined;

    if ( !_func_02F( var_0._ID31027 ) )
        var_2 = 40;
    else
        var_2 = var_0._ID31027;

    if ( !_func_02F( level._ID12881 ) )
        level._ID12881 = 0;

    if ( !_func_02F( level._ID8383 ) )
        level._ID8383 = 0;

    if ( !_func_02F( level._ID12880 ) )
        level._ID12880 = 0;

    level._ID3620 = undefined;
    var_3 = _func_1A2( "attack_heli_safe_volume", "script_noteworthy" );

    if ( var_3.size > 0 )
        level._ID3620 = var_3;

    if ( !level._ID12881 )
        thread _unknown_0AC6( var_0 );

    if ( !_func_02F( var_0._ID18452 ) )
    {
        switch ( var_0._ID1282 )
        {

        }

        _func_0AD( var_0, 1 );
    }

    var_0 thread _unknown_0ADD();
    var_0 thread _unknown_0B5D();
    var_0 endon( "death" );
    var_0 endon( "heli_players_dead" );
    var_0 endon( "returning_home" );
    var_0 _meth_8271( "turret_attackheli" );

    if ( !_func_02F( var_0._ID7544 ) )
        var_0._ID7544 = 0;

    if ( !var_0._ID7544 )
    {
        var_0 _meth_8264( 100 );

        if ( !_func_02F( var_0._ID11585 ) )
            var_0 waittill( "reached_dynamic_path_end" );
    }
    else
    {
        var_0 _meth_8264( 500 );
        var_0 waittill( "near_goal" );
    }

    var_0 thread _unknown_088E();

    if ( var_0._ID7544 )
    {
        var_0 thread _unknown_07A1( var_1, var_2 );
        return;
    }

    var_0 thread _unknown_07EA( var_2 );
    return;
    case "littlebird_spotlight":
    case "nh90":
    case "ny_harbor_hind":
    case "mi28":
    case "hind_blackice":
    case "littlebird":
    case "mi17":
    case "hind":
    case "apache":
    default:
}

_ID18348( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "attack_heli_circle_node";

    var_2 = _func_1A2( var_0, "targetname" );

    if ( !_func_02F( var_2 ) || var_2.size < 1 )
        var_2 = _ID42237::_ID16640( var_0, "targetname" );

    var_3 = self;
    var_3 endon( "stop_circling" );
    var_3 endon( "death" );
    var_3 endon( "returning_home" );
    var_3 endon( "heli_players_dead" );

    for (;;)
    {
        var_3 _meth_828D( var_1, var_1 / 4, var_1 / 4 );
        var_3 _meth_8264( 100 );
        var_4 = _ID42407::_ID15618( var_3._ID740 );
        var_5 = var_4._ID740;
        var_3 _meth_826F( var_4 );
        var_6 = _ID42237::_ID16182( var_5, var_2 );
        var_7 = _func_1A2( var_6._ID1191, "targetname" );

        if ( !_func_02F( var_7 ) || var_7.size < 1 )
            var_7 = _ID42237::_ID16640( var_6._ID1191, "targetname" );

        var_8 = var_7[_func_0B7( var_7.size )];
        var_3 _meth_8265( var_8._ID740, 1 );
        var_3 waittill( "near_goal" );

        if ( !_func_02F( var_4._ID20494 ) )
        {
            wait 1;
            wait(_func_0BA( 0.8, 1.3 ));
        }
    }
}

_ID18379( var_0 )
{
    self endon( "death" );
    var_1 = _func_1A2( "kill_heli_spot", "targetname" );
    var_2 = self;
    var_3 = _ID42237::_ID16182( var_2._ID740, var_1 );
    var_4 = var_3;
    var_2 endon( "death" );
    var_2 endon( "returning_home" );
    var_2 endon( "heli_players_dead" );
    var_5 = undefined;

    for (;;)
    {
        wait 0.05;

        if ( _func_02F( var_2.scripted_move_sfx ) )
            var_2 notify( "start_heli_scripted_move_sfx" );

        var_2 _meth_828D( var_0, var_0 / 2, var_0 / 10 );
        var_2 _meth_8264( 100 );
        var_6 = _ID42407::_ID15618( var_2._ID740 );
        var_7 = var_6._ID740;

        if ( var_3 == var_4 && var_2._ID20939 )
        {
            var_8 = _unknown_0C7E( var_2, var_3, var_1, var_6, var_7 );
            var_3 = _ID42237::_ID16182( var_7, var_8 );
        }

        var_2 _meth_8265( var_3._ID740, 1 );
        var_2._ID24481 = 1;
        var_6 = _ID42407::_ID15618( var_2._ID740 );

        if ( _func_02F( self._ID13197 ) && _func_02F( self._ID13197._ID170 ) && self._ID13197._ID170 == "script_origin" )
            var_5 = var_6;
        else if ( _func_02F( self._ID13197 ) )
            var_5 = self._ID13197;
        else
            var_5 = self._ID37319;

        var_2 _meth_826F( var_5 );
        var_2 waittill( "near_goal" );
        var_2._ID24481 = 0;

        if ( _func_02F( var_2.scripted_move_sfx ) )
            var_2 notify( "stop_heli_scripted_move_sfx" );

        if ( !_ID42407::_ID20495() )
        {
            if ( level._ID15361 == 0 || level._ID15361 == 1 )
            {
                while ( _unknown_0A81( var_2 ) )
                    wait 0.5;

                wait 3;
            }
        }

        var_6 = _ID42407::_ID15618( var_2._ID740 );
        var_7 = var_6._ID740;
        var_8 = _unknown_0D35( var_2, var_3, var_1, var_6, var_7 );
        var_8[var_8.size] = var_3;
        var_4 = var_3;
        var_9 = _ID42237::_ID16182( var_7, var_1 );
        var_10 = _ID42237::_ID16182( var_7, var_8 );
        var_11 = var_8;

        for ( var_13 = _func_1DA( var_11 ); _func_02F( var_13 ); var_13 = _func_1BF( var_11, var_13 ) )
        {
            var_12 = var_11[var_13];

            if ( var_6 _meth_81E4( var_12._ID740, var_2 ) != 1 )
            {
                var_8 = _ID42237::_ID3321( var_8, var_12 );
                continue;
            }
        }

        var_clear_4
        var_clear_2
        var_14 = _ID42237::_ID16182( var_7, var_8 );

        if ( var_8.size < 2 )
            var_3 = var_10;
        else if ( var_14 != var_9 )
            var_3 = var_14;
        else
        {
            var_15 = [];
            var_15[0] = var_14;
            var_8 = _ID42237::_ID15566( var_7, var_8, var_15, 2 );
            var_16 = _func_0B7( var_8.size );

            if ( _func_0B7( 100 ) > 50 )
                var_3 = var_8[var_16];
            else
                var_3 = var_9;
        }

        var_17 = _func_0BA( level._ID3648 - 0.5, level._ID3648 + 0.5 );
        _ID42237::_ID41123( "damage_by_player", var_17 );
    }
}

_ID27501( var_0 )
{
    if ( !level._ID794 _unknown_0EBC() )
        return 0;

    if ( !level._ID794 _meth_8349() )
        return 0;

    var_1 = level._ID794 _meth_80AF();

    if ( _func_090( var_1, var_0._ID740, 0, level._ID794 ) )
        return 1;

    return 0;
}

_ID18403()
{
    self endon( "stop_shooting" );
    self endon( "death" );
    self endon( "heli_players_dead" );
    thread _unknown_0C71();
    var_0 = level._ID3650 * level._ID3650;
    level._ID3645 = 0;

    while ( _func_02F( self ) )
    {
        wait(_func_0BA( 0.8, 1.3 ));

        if ( !_unknown_0C62() || !_unknown_0C60() )
        {
            var_1 = _unknown_0C87();

            if ( _func_1B3( var_1 ) )
                self._ID13197 = var_1;
        }

        if ( _unknown_0C75() && level._ID805.size > 1 )
        {
            var_2 = _ID42407::_ID15618( self._ID740 );

            if ( self._ID13197 != var_2 )
            {
                var_1 = _unknown_0CB0();

                if ( _func_1B3( var_1 ) )
                    self._ID13197 = var_1;
            }
        }

        if ( _unknown_0CA0() )
        {
            if ( !_unknown_0C93() || level._ID3645 == 1 )
            {
                var_1 = _unknown_0CDE();
                self._ID13197 = var_1;
            }
        }

        if ( _func_02F( self._ID18383 ) && _func_1B3( self._ID18383 ) )
            self._ID13197 = self._ID18383;
        else if ( !_unknown_0CDA() )
        {
            var_1 = _unknown_0D02();
            self._ID13197 = var_1;
        }

        if ( !_unknown_0CE8() )
            continue;

        if ( self._ID13197 _unknown_0F31( self ) )
            continue;

        if ( _unknown_0CFE() && _func_0F5( self._ID13197._ID740, self._ID740 ) > var_0 )
            continue;

        if ( self._ID39368 == "default" && _unknown_0D17() )
        {
            _unknown_0EDE( self._ID13197 );
            wait(_func_0BA( 0.8, 1.3 ));
            _unknown_0EEF( self._ID13197 );
            wait(_func_0BA( 0.8, 1.3 ));

            while ( _unknown_0F19( self._ID13197 ) && !self._ID13197 _unknown_0F8F( self ) )
            {
                _unknown_0E29();
                wait(_func_0BA( 2.0, 4.0 ));
            }

            continue;
        }

        if ( _func_1B3( self._ID13197 ) || _func_0D4( self._ID13197 ) )
            _unknown_0E4C();

        if ( _func_1B3( self._ID13197 ) )
            thread _unknown_0D62( self );

        _ID42237::_ID41123( "damage_by_player", level._ID3651 );
    }
}

_ID27441( var_0 )
{
    level notify( "player_is_heli_target" );
    level endon( "player_is_heli_target" );
    level._ID3645 = 1;
    var_0 _ID42237::_ID41123( "damage_by_player", level._ID3649 );
    level._ID3645 = 0;
}

_ID18347()
{
    if ( !_func_02F( self._ID13197 ) )
        return 0;

    var_0 = self._ID13197._ID740 + ( 0, 0, 32 );

    if ( _func_1B3( self._ID13197 ) )
        var_0 = self._ID13197 _meth_80AF();

    var_1 = self _meth_818C( "tag_flash" );
    var_2 = _func_090( var_1, var_0, 0, self );
    return var_2;
}

_ID18380()
{
    if ( !_func_02F( self._ID13197 ) )
        return 0;

    if ( _func_1B3( self._ID13197 ) )
        return 1;
    else
        return 0;
}

_ID18381()
{
    if ( !_func_02F( self._ID13197 ) )
        return 0;

    if ( !_func_1A7( self._ID13197 ) )
        return 0;

    if ( self._ID13197 == self._ID37319 )
        return 0;
    else
        return 1;
}

_ID18375()
{
    var_0 = _ID42306::_ID16258( level._ID3650, level._ID3644, 1, 1, 0, 1, level._ID3643 );

    if ( _func_02F( var_0 ) && _func_1B3( var_0 ) )
        var_0 = self._ID37319;

    if ( !_func_02F( var_0 ) )
        var_0 = self._ID37319;

    return var_0;
}

_ID18377()
{
    var_0 = _func_0DE( "allies" );
    var_1 = _ID42306::_ID16258( level._ID3650, level._ID3644, 1, 0, 0, 0, var_0 );

    if ( !_func_02F( var_1 ) )
        var_1 = self._ID37319;

    return var_1;
}

_ID18376()
{
    var_0 = _ID42306::_ID16258( level._ID3650, level._ID3644, 1, 1, 0, 1, level._ID805 );

    if ( !_func_02F( var_0 ) )
        var_0 = self._ID37319;

    return var_0;
}

_ID18392()
{
    if ( !_func_02F( self._ID31293 ) )
        return;

    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stop_shooting" );
    var_0 = undefined;
    var_1 = "turret_attackheli";
    var_2 = "missile_attackheli";
    var_3 = undefined;
    var_4 = undefined;
    var_5 = [];

    switch ( self._ID1282 )
    {

    }

    endswitch( 4 )  case "mi28" loc_F65 case "littlebird" loc_F81 case "apache" loc_F86 default loc_F94
    var_6 = -1;

    for (;;)
    {
        wait 0.05;
        self waittill( "fire_missiles",  var_7  );

        if ( !_func_1B3( var_7 ) )
            continue;

        var_8 = var_7;

        if ( !_unknown_0FE9( var_8 ) )
            continue;

        for ( var_9 = 0; var_9 < var_0; var_9++ )
        {
            var_6++;

            if ( var_6 >= var_5.size )
                var_6 = 0;

            self _meth_8271( var_2 );
            self._ID14344 = 1;
            var_10 = self _meth_8272( var_5[var_6], var_8 );
            var_10 thread _unknown_102E( var_4 );
            var_10 thread _unknown_1020();

            if ( var_9 < var_0 - 1 )
                wait(var_3);
        }

        self._ID14344 = 0;
        self _meth_8271( var_1 );
        wait 10;
    }

    case "mi28":
    case "apache":
    default:
}

_ID27504( var_0 )
{
    if ( self._ID24481 )
        return 0;
    else
        return 1;
}

_ID23704()
{
    if ( _func_0F5( self._ID740, level._ID794._ID740 ) > 9000000 )
        return;

    var_0 = self._ID740;

    while ( _func_02F( self ) )
    {
        var_0 = self._ID740;
        wait 0.1;
    }

    _func_192( 0.7, 1.5, var_0, 1600 );
    _ID42475::_ID34575( "start_missile_earthquake" );
}

_ID23745( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    wait(var_0);

    if ( _func_02F( self ) )
        self _meth_81E7();
}

_ID15677( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID805.size; var_1++ )
    {
        if ( var_0 != level._ID805[var_1] )
            return level._ID805[var_1];
    }

    return level._ID805[0];
}

_ID25091()
{
    self notify( "notify_disable_thread" );
    self endon( "notify_disable_thread" );
    self endon( "death" );
    self endon( "heli_players_dead" );

    for (;;)
    {
        self waittill( "disable_turret" );
        self._ID2738 = 0;
    }
}

_ID25095()
{
    self notify( "notify_enable_thread" );
    self endon( "notify_enable_thread" );
    self endon( "death" );
    self endon( "heli_players_dead" );

    for (;;)
    {
        self waittill( "enable_turret" );
        self._ID2738 = 1;
    }
}

_ID14263()
{
    switch ( self._ID39368 )
    {

    }

    case "miniguns":
    case "default":
    default:
}

_ID16163( var_0 )
{
    var_1 = undefined;

    if ( !_func_1B3( var_0 ) )
    {
        var_1 = level._ID3642;
        return var_1;
    }

    switch ( level._ID15361 )
    {

    }

    return var_1;
    case 3:
    case 2:
    case 1:
    case 0:
}

_ID14270( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    wait(var_0);

    if ( !_func_1B3( self._ID13197 ) )
        return;

    self notify( "fire_missiles",  self._ID13197  );
}

_ID39255( var_0, var_1, var_2 )
{
    thread _unknown_1231( _func_0BA( 0.2, 2 ) );

    for ( var_3 = 0; var_3 < var_1; var_3++ )
    {
        self _meth_826C( var_0, _ID42237::_ID28976( 50 ) + ( 0, 0, 32 ) );

        if ( self._ID2738 && !self._ID14344 )
            self _meth_8272();

        wait(var_2);
    }
}

_ID39283( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self notify( "firing_miniguns" );
    self endon( "firing_miniguns" );
    var_3 = _unknown_0F35();
    _ID42237::_ID3350( var_3, ::_unknown_1302, var_0, self );

    if ( !self._ID23668 )
    {
        self._ID14343 = 1;
        thread _ID42407::_ID27080( "littlebird_gatling_spinup", "tag_flash" );
        wait 2.1;
        thread _ID42407::_ID27001( "littlebird_minigun_spinloop", "tag_flash" );
    }

    self._ID23668 = 1;

    if ( !_func_02F( var_2 ) )
        var_2 = 3;

    var_4 = 0.5;

    if ( var_4 > var_2 )
        var_4 = var_2;

    if ( var_4 > 0 )
        wait(_func_0BA( var_4, var_2 ));

    _unknown_1325( var_0, var_1 );
    var_3 = _unknown_0F8E();
    _ID42237::_ID3294( var_3, ::_meth_80EA );
    thread _unknown_1386( var_0 );
    self notify( "stopping_firing" );
}

_ID23663( var_0, var_1 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( _func_1B3( var_0 ) )
        self endon( "cant_see_player" );

    var_2 = _unknown_0FBF();
    _ID42237::_ID3294( var_2, ::_meth_80E9 );
    wait(_func_0BA( 1, 2 ));

    if ( _func_1B3( var_0 ) )
        thread _unknown_138B( var_0 );

    if ( _func_1B3( var_0 ) )
    {
        var_3 = _func_0BA( 0.5, 3 );
        thread _unknown_1336( var_3 );
    }

    wait(var_1);
}

_ID37313( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stopping_firing" );
    self notify( "tracking_player" );
    self endon( "tracking_player" );

    for (;;)
    {
        if ( !_unknown_142D( var_0 ) )
            break;

        wait 0.5;
    }

    wait(level._ID3652);
    self notify( "cant_see_player" );
}

_ID39284( var_0, var_1 )
{
    var_1 endon( "death" );
    var_1 endon( "heli_players_dead" );
    self notify( "miniguns_have_new_target" );
    self endon( "miniguns_have_new_target" );

    if ( !_func_1B3( var_0 ) && _func_0D4( var_0 ) && level._ID3646 == 0 )
    {
        var_2 = _func_06A( "script_origin", var_0._ID740 + ( 0, 0, 100 ) );
        var_2 _meth_8053( var_0 );
        thread _unknown_1457( var_2 );
        var_0 = var_2;
    }

    for (;;)
    {
        wait 0.5;
        self _meth_810F( var_0 );
    }
}

_ID23661( var_0 )
{
    _ID42237::_ID41098( "death", "miniguns_have_new_target" );
    var_0 _meth_80B7();
}

_ID23665( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "firing_miniguns" );

    if ( _func_1B3( var_0 ) )
        wait(_func_0BA( 3, 4 ));
    else
        wait(_func_0BA( 1, 2 ));

    thread _unknown_14BB();
    self._ID14343 = 0;
}

_ID23666()
{
    self notify( "stop soundlittlebird_minigun_spinloop" );
    self._ID23668 = 0;
    _ID42407::_ID27080( "littlebird_gatling_cooldown", "tag_flash" );
}

_ID23693( var_0 )
{
    var_1 = _func_11F( level._ID794._ID65 );
    var_2 = var_1 * 400;
    var_3 = var_2 + _ID42237::_ID28976( 50 );
    var_4 = _func_0B9( 10, 20 );
    var_5 = _func_1B6( "turret_attackheli" );

    for ( var_6 = 0; var_6 < var_4; var_6++ )
    {
        var_3 = var_2 + _ID42237::_ID28976( 50 );
        self _meth_826C( var_0, var_3 );

        if ( self._ID2738 )
            self _meth_8272();

        wait(var_5);
    }
}

_ID6739( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    var_1 = self _meth_818C( "tag_flash" );
    var_2 = ( 0, 0, 0 );

    if ( _func_1B3( var_0 ) )
        var_2 = var_0 _meth_80AF();
    else
        var_2 = var_0._ID740;

    if ( _func_090( var_1, var_2, 0, undefined ) )
        return 1;
    else
        return 0;
}

_ID15810( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_6 = _func_129( var_1._ID31273, " " );

    for ( var_7 = 0; var_7 < var_2.size; var_7++ )
    {
        for ( var_8 = 0; var_8 < var_6.size; var_8++ )
        {
            if ( var_2[var_7]._ID920 == var_6[var_8] )
                var_5[var_5.size] = var_2[var_7];
        }
    }

    var_9 = var_5;

    for ( var_11 = _func_1DA( var_9 ); _func_02F( var_11 ); var_11 = _func_1BF( var_9, var_11 ) )
    {
        var_10 = var_9[var_11];

        if ( var_10._ID740[2] < var_4[2] )
        {
            var_5 = _ID42237::_ID3321( var_5, var_10 );
            continue;
        }
    }

    var_clear_2
    var_clear_0
    return var_5;
}

_ID18356()
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "crashing" );
    self endon( "leaving" );
    self._ID257 = 0;
    self._ID31833 = undefined;

    for (;;)
    {
        self waittill( "damage",  var_4, var_3, var_2, var_1, var_0  );

        if ( !_func_02F( var_1 ) || !_func_1B3( var_1 ) )
            continue;

        self notify( "damage_by_player" );
        thread _unknown_1699();
        thread _unknown_16A9( var_1 );
    }
}

_ID18357()
{
    self notify( "taking damage" );
    self endon( "taking damage" );
    self endon( "death" );
    self endon( "heli_players_dead" );
    self._ID20939 = 1;
    wait 1;
    self._ID20939 = 0;
}

_ID6736( var_0 )
{
    self notify( "attacker_seen" );
    self endon( "attacker_seen" );
    self._ID31833 = var_0;
    self._ID18383 = var_0;
    wait(level._ID3647);
    self._ID18383 = undefined;
    self._ID31833 = undefined;
}

_ID20538( var_0 )
{
    if ( _func_02F( var_0._ID31833 ) )
    {
        if ( var_0._ID31833 == self )
            return 0;
    }

    if ( _func_02F( level._ID3620 ) )
    {
        var_1 = level._ID3620;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];

            if ( self _meth_80B0( var_2 ) )
                return 1;
        }

        var_clear_2
        var_clear_0
    }

    return 0;
}

_ID39696()
{
    if ( !_func_1B3( self ) )
        return;

    self._ID19130 _meth_80D3( "h2_damage_feedback", 50, 100 );
    self._ID19130._ID55 = 1;
    self._ID19130 _meth_808B( 1 );
    self._ID19130._ID55 = 0;
}

_ID39697()
{
    if ( !_func_1B3( self ) )
        return;

    self _meth_82FF( "player_feedback_hit_alert" );
}

_ID9600()
{
    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];
        var_1._ID19130 = _func_1B0( var_1 );
        var_1._ID19130._ID499 = "center";
        var_1._ID19130._ID1284 = "middle";
        var_1._ID19130._ID1331 = -12;
        var_1._ID19130._ID1339 = -12;
        var_1._ID19130._ID55 = 0;
        var_1._ID19130._ID72 = 1;
        var_1._ID19130 _meth_80D3( "damage_feedback", 24, 48 );
    }
}

_ID18358()
{
    self waittill( "death" );
    level notify( "attack_heli_destroyed" );
    level._ID12881 = 1;
    wait 15;
    level._ID12880 = 0;
}

_ID10737( var_0 )
{
    var_0 endon( "death" );
    var_0 endon( "heli_players_dead" );
    wait 30;

    if ( !level._ID12880 )
        return;

    _unknown_186A( "co_cf_cmd_heli_small_fire" );

    if ( !level._ID12880 )
        return;

    _unknown_1877( "co_cf_cmd_rpg_stinger" );
    wait 30;

    if ( !level._ID12880 )
        return;

    _unknown_1887( "co_cf_cmd_heli_wonders" );
}

_ID8382( var_0 )
{
    while ( level._ID8383 )
        wait 1;

    level._ID8383 = 1;
    level._ID794 _meth_80A1( var_0, "sounddone" );
    level._ID794 waittill( "sounddone" );
    wait 0.5;
    level._ID8383 = 0;
}

_ID39982()
{
    var_0 = self _meth_831C();

    if ( !_func_02F( var_0 ) )
        return 0;

    if ( _func_125( _func_128( var_0 ), "rpg" ) )
        return 1;

    if ( _func_125( _func_128( var_0 ), "stinger" ) )
        return 1;

    if ( _func_125( _func_128( var_0 ), "at4" ) )
        return 1;

    return 0;
}

_ID18408( var_0 )
{
    _ID42237::_ID41068( "death", "crash_done", "turn_off_spotlight" );
    self._ID35464 = undefined;

    if ( _func_02F( self ) )
        _func_158( _ID42237::_ID16299( "_attack_heli_spotlight" ), self, var_0 );
}

_ID18409( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    var_1 = self._ID37319;

    if ( _func_02F( var_0 ) )
        var_1 = var_0;

    var_1._ID1193 = "original_ent";
    self._ID22137 = _func_06A( "script_origin", var_1._ID740 );
    self._ID22137._ID740 = var_1._ID740;
    self._ID22137._ID65 = var_1._ID65;
    self._ID22137._ID1193 = "left_ent";
    self._ID29985 = _func_06A( "script_origin", var_1._ID740 );
    self._ID29985._ID740 = var_1._ID740;
    self._ID29985._ID65 = var_1._ID65;
    self._ID29985._ID1193 = "right_ent";
    var_2 = _func_1A5();
    var_2._ID337 = self._ID22137;
    var_2._ID893 = 250;
    var_2 _ID42407::_ID38694();
    self._ID22137 _meth_8053( self );
    var_3 = _func_1A5();
    var_3._ID337 = self._ID29985;
    var_3._ID893 = -250;
    var_3 _ID42407::_ID38694();
    self._ID29985 _meth_8053( self );
    var_4 = [];
    var_4[0] = var_1;
    var_4[1] = self._ID22137;
    var_4[2] = self._ID29985;
    level._ID35465 = var_4;
    self._ID35475 = var_1;
}

_ID18410()
{
    if ( _func_02F( level._ID35465 ) )
    {
        var_0 = level._ID35465;

        for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
        {
            var_1 = var_0[var_2];

            if ( _func_02F( var_1 ) )
                var_1 _meth_80B7();
        }

        var_clear_2
        var_clear_0
    }
}

_ID18406( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( self._ID1282 != "littlebird" )
        return;

    thread _unknown_1AB3( var_0 );
    var_1 = undefined;

    for (;;)
    {
        wait 0.05;

        switch ( self._ID1282 )
        {

        }

        endswitch( 3 )  case "littlebird_spotlight" loc_1AC4 case "littlebird" loc_1ACA default loc_1AD1

        if ( _func_02F( var_1 ) )
        {
            self _meth_826C( var_1, ( 0, 0, 0 ) );
            case "littlebird":
            default:
        }
    }
}

_ID18416( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    _unknown_1A98();
    _ID42237::_ID3350( level._ID35465, ::_unknown_1B3B, self );

    if ( _func_02F( var_0 ) )
        self thread [[ var_0 ]]();
    else
    {
        for (;;)
        {
            wait(_func_0BA( 1, 3 ));

            if ( _unknown_17E1() && !_unknown_1B47() )
            {
                self._ID35475 = self._ID13197;
                continue;
            }

            var_1 = _func_0B7( level._ID35465.size );
            self._ID37319 = level._ID35465[var_1];
            self._ID35475 = self._ID37319;
        }
    }
}

_ID41805()
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( !_func_02F( self._ID13197 ) )
        return 0;

    if ( !_func_1B3( self._ID13197 ) )
        return 0;

    var_0 = self._ID13197;
    var_1 = _ID42237::_ID41802( var_0 _meth_80AF(), var_0 _meth_8346(), self._ID740, level._ID8760["35"] );
    return var_1;
}

_ID18407( var_0 )
{
    var_0 _ID42237::_ID41098( "death", "crash_done" );

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID22457( var_0 )
{
    var_1 = self;
    var_1 _ID42413::_ID39304( "manual" );

    if ( _func_02F( var_0._ID37319 ) )
        var_1 _meth_810F( var_0._ID37319 );

    var_1 _meth_806C( "manual" );
    var_0 waittill( "death" );

    if ( _func_02F( var_0._ID14343 ) && var_0._ID14343 == 1 )
        thread _unknown_1A4E();
}

_ID3618()
{
    _ID42237::_ID41098( "death", "crash_done" );

    if ( _func_02F( self._ID3671 ) )
        _func_1AD( self._ID3671 );

    if ( _func_02F( self._ID3672 ) )
        _func_1AD( self._ID3672 );
}

_ID18360( var_0 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stop_default_heli_missiles" );
    self._ID28408 = undefined;

    while ( _func_02F( self ) )
    {
        wait 0.05;
        var_1 = undefined;
        var_2 = undefined;
        var_3 = undefined;
        self._ID28408 = undefined;
        var_4 = undefined;

        if ( _func_02F( self._ID9504 ) && _func_02F( self._ID9504._ID1191 ) )
            var_4 = _ID42407::_ID16261( self._ID9504._ID1191, "targetname" );

        if ( _func_02F( var_4 ) && _func_02F( var_4._ID31273 ) )
            self._ID28408 = _ID42407::_ID16261( var_4._ID31273, "script_linkname" );

        if ( _func_02F( self._ID28408 ) )
        {
            var_1 = self._ID28408;
            var_2 = var_1._ID31429;
            var_3 = var_1._ID916;
            var_4 waittill( "trigger" );
        }
        else
            _ID42237::_ID41068( "near_goal", "goal" );

        if ( _func_02F( var_1 ) )
            thread _unknown_1D77( var_1, var_2, var_3, var_0 );
    }
}

_ID18359()
{
    self notify( "stop_default_heli_missiles" );
}

_ID18413( var_0, var_1, var_2 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = "tag_barrel";

    if ( !_func_02F( var_1 ) )
        var_1 = 0;

    if ( !_func_02F( var_2 ) )
        var_2 = 0;

    _func_157( _ID42237::_ID16299( "_attack_heli_spotlight" ), self, var_0 );
    self._ID35464 = 1;
    thread _unknown_1C67( var_0 );

    if ( var_2 )
        self _meth_826C( level._ID794 );
    else if ( var_1 )
    {
        self endon( "death" );
        self endon( "heli_players_dead" );
        var_3 = self _meth_818C( "tag_origin" );

        if ( !_func_02F( self._ID37319 ) )
            _unknown_174A();

        self _meth_826C( self._ID37319 );
        thread _unknown_1CF8();
    }
}

_ID18412()
{
    self notify( "turn_off_spotlight" );
}

_ID18415()
{
    self endon( "death" );
    self endon( "heli_players_dead" );
    self endon( "stop_spotlight_random_targets" );

    if ( !_func_02F( self._ID37319 ) )
        thread _unknown_1779();

    if ( !_func_02F( self._ID22137 ) )
        thread _unknown_1D48();

    while ( _func_02F( self ) )
    {
        wait 0.05;
        self _meth_826C( self._ID37319, ( 0, 0, 0 ) );
    }
}

_ID18414()
{
    self notify( "stop_spotlight_random_targets" );
}

_ID18368( var_0, var_1, var_2, var_3 )
{
    self endon( "death" );
    self endon( "heli_players_dead" );

    if ( _func_02F( self._ID10149 ) )
        var_4 = self._ID10149;
    else
        var_4 = "turret_attackheli";

    var_5 = "missile_attackheli";

    if ( _func_02F( var_3 ) )
        var_5 = var_3;

    var_6 = undefined;
    var_7 = [];
    self _meth_8271( var_4 );

    if ( !_func_02F( var_1 ) )
        var_1 = 1;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_0._ID170 ) )
    {
        if ( !_func_02F( self._ID12232 ) )
        {
            self._ID12232 = _func_06A( "script_origin", var_0._ID740 );
            thread _ID42237::_ID10280( self._ID12232 );
        }

        self._ID12232._ID740 = var_0._ID740;
        var_0 = self._ID12232;
    }

    switch ( self._ID1282 )
    {

    }

    var_8 = -1;

    for ( var_9 = 0; var_9 < var_1; var_9++ )
    {
        var_8++;

        if ( var_8 >= var_7.size )
            var_8 = 0;

        self _meth_8271( var_5 );
        self._ID14344 = 1;
        var_10 = self _meth_8272( var_7[var_8], var_0 );
        var_10 thread _unknown_1BF1();

        if ( var_9 < var_1 - 1 )
            wait(var_2);
    }

    self._ID14344 = 0;
    self _meth_8271( var_4 );
    case "hind_battle":
    case "mi28":
    case "littlebird":
    case "apache":
    default:
}

_ID5478()
{
    self waittill( "trigger",  var_0  );
    var_1 = _ID42237::_ID16640( self._ID1191, "targetname" );
    var_1 = _ID42407::_ID3311( var_1 );
    _unknown_2029( var_0, var_1 );
}

_ID5479()
{
    self waittill( "trigger",  var_0  );
    var_1 = _ID42407::_ID15811();
    var_1 = _ID42407::_ID3311( var_1 );
    _unknown_2043( var_0, var_1 );
}

_ID5477( var_0, var_1 )
{
    var_2 = [];
    var_2[0] = "tag_missile_right";
    var_2[1] = "tag_missile_left";

    if ( level._ID912 == "roadkill" )
    {
        var_2[0] = "tag_flash_2";
        var_2[1] = "tag_flash_11";
    }

    if ( var_0._ID1282 == "cobra" )
    {
        var_2[0] = "tag_store_L_1_a";
        var_2[1] = "tag_store_R_1_a";
    }

    var_3 = [];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_3[var_4] = _func_06A( "script_origin", var_1[var_4]._ID740 );
        var_0 _meth_8271( "littlebird_FFAR" );
        var_0 _meth_826C( var_3[var_4] );
        var_5 = var_0 _meth_8272( var_2[var_4 % var_2.size], var_3[var_4], ( 0, 0, 0 ) );

        if ( _func_02F( var_5 ) )
            var_5 _ID42237::_ID10192( 1, ::_meth_81E7 );

        wait(_func_0BA( 0.2, 0.3 ));
    }

    wait 2;
    var_6 = var_3;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_7 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}
