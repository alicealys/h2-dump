// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID51150()
{
    level._ID52535["ai"] = _func_1A5();
    level._ID52535["ai"]._ID47398 = 3.0;
    level._ID52535["ai"]._ID49600 = 3.0;
    level._ID52535["ai"]._ID37298 = 300;
    level._ID52535["ai"]._ID52908 = 3500;
    level._ID52535["ai"]._ID54294 = 0;
    level._ID52535["ai"]._ID48135 = 300;
    level._ID52535["ai"]._ID43298 = 3;
    level._ID52535["ai"]._ID51251 = 10;
    level._ID52535["ai"]._ID53796 = 8.0;
    level._ID52535["ai"]._ID50505 = 15.0;
    level._ID52535["ai"]._ID44723 = 0.1;
    level._ID52535["ai"]._ID45945 = 0;
    level._ID52535["manual"] = _func_1A5();
    level._ID52535["manual"]._ID47398 = 4.0;
    level._ID52535["manual"]._ID49600 = 0.2;
    level._ID52535["manual"]._ID37298 = 0;
    level._ID52535["manual"]._ID52908 = 4500;
    level._ID52535["manual"]._ID54294 = 0;
    level._ID52535["manual"]._ID48135 = 200;
    level._ID52535["manual"]._ID43298 = 15;
    level._ID52535["manual"]._ID51251 = 25;
    level._ID52535["manual"]._ID53796 = 0.1;
    level._ID52535["manual"]._ID50505 = 0.4;
    level._ID52535["manual"]._ID44723 = 0.1;
    level._ID52535["manual"]._ID45945 = 1;
}

_ID48063()
{
    self._ID45980 = "ai";
    self._ID53756 = undefined;
    thread _unknown_01DA();
}

_ID49367( var_0 )
{
    self endon( "death" );
    self notify( "stryker_setmode_manual" );
    self endon( "stryker_setmode_manual" );
    self._ID45980 = "manual";
    self._ID53756 = var_0;
    thread _unknown_01FB();
    wait 20;
    thread _unknown_0314();
    thread _unknown_0329();
    thread _unknown_01F6();
}

_ID43251()
{
    self notify( "stryker_turret_think" );
    self endon( "stryker_turret_think" );
    self endon( "death" );
    thread _unknown_025C();

    for (;;)
    {
        var_0 = _unknown_0266();

        if ( !_func_02F( var_0 ) )
        {
            thread _unknown_0248();
            wait(level._ID52535[self._ID45980]._ID49600);
            _unknown_0278();
            continue;
        }

        _unknown_0311( var_0 );
        wait(level._ID52535[self._ID45980]._ID49600);
    }
}

_ID43880()
{
    self endon( "death" );
    self endon( "stop_scanning" );
    self._ID30808 = 1;
    var_0 = 0;

    for (;;)
    {
        var_1 = _func_11F( self._ID65 ) * 1000;

        if ( var_0 == 0 )
        {
            var_0 = 1;
            var_2 = _func_0B9( -1500, -200 );
        }
        else
        {
            var_0 = 0;
            var_2 = _func_0B9( 200, 1500 );
        }

        var_3 = _func_11E( self._ID65 ) * var_2;
        var_4 = self._ID740 + var_1 + var_3;
        var_4 = ( var_4[0], var_4[1], self._ID740[2] );
        self _meth_826B( var_4 );
        wait(_func_0BA( 2.0, 5.0 ));
    }
}

_ID52962()
{
    self _meth_826D();
    self._ID30808 = undefined;
    self notify( "stop_scanning" );
}

_ID51635()
{
    var_0 = self._ID740;

    if ( _func_02F( self._ID53756 ) )
        var_0 = self._ID53756;

    var_1 = level._ID52535[self._ID45980]._ID37298;
    var_2 = level._ID52535[self._ID45980]._ID52908;
    var_3 = level._ID52535[self._ID45980]._ID54294;
    var_4 = level._ID52535[self._ID45980]._ID48135;
    var_5 = level._ID52535[self._ID45980]._ID45945;
    var_6 = [];
    var_7 = _ID42237::_ID15698( self._ID31474 );
    var_8 = [];
    var_9 = [];
    var_10 = [];
    var_11 = [];

    if ( var_5 )
    {
        var_9 = level._ID40317[var_7];
        var_9 = _ID42237::_ID15566( var_0, var_9, undefined, undefined, var_4, var_3 );
        var_12 = _func_1A2( "destructible_vehicle", "targetname" );
        var_13 = var_12;

        for ( var_15 = _func_1DA( var_13 ); _func_02F( var_15 ); var_15 = _func_1BF( var_13, var_15 ) )
        {
            var_14 = var_13[var_15];

            if ( _func_02F( var_14._ID13610 ) )
                continue;

            var_10[var_10.size] = var_14;
        }

        var_clear_2
        var_clear_0
        var_12 = undefined;
        var_10 = _ID42237::_ID15566( var_0, var_10, undefined, undefined, var_4, var_3 );
    }

    var_11 = _func_0DE( var_7 );
    var_11 = _ID42237::_ID15566( var_0, var_11, undefined, undefined, var_2, var_1 );
    var_8 = _ID42237::_ID3296( var_8, var_9 );
    var_8 = _ID42237::_ID3296( var_8, var_10 );
    var_8 = _ID42237::_ID3296( var_8, var_11 );
    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;
    var_16 = var_8;

    for ( var_19 = _func_1DA( var_16 ); _func_02F( var_19 ); var_19 = _func_1BF( var_16, var_19 ) )
    {
        var_17 = var_16[var_19];

        if ( _func_02F( self._ID1205 ) && _func_0D6( var_17 ) )
        {
            var_18 = _func_10E( var_17 _meth_8184(), self._ID1205 );

            if ( var_18 <= -1000000 )
                continue;
        }

        if ( _func_02F( var_17._ID511 ) && var_17._ID511 == 1 )
            continue;

        if ( _func_0D4( var_17 ) )
        {
            if ( !_func_090( self _meth_818C( "tag_flash" ), var_17 _meth_80AF(), 0, self ) )
                continue;
        }

        return var_17;
    }

    var_clear_3
    var_clear_0
    return undefined;
}

_ID44877( var_0 )
{
    if ( _func_0D4( var_0 ) )
    {
        var_1 = var_0 _meth_80AF();
        var_2 = var_1[2] - var_0._ID740[2];
        return ( 0, 0, var_2 );
    }

    if ( _func_02F( var_0._ID1282 ) )
    {
        if ( var_0 _ID42411::_ID20763() )
            return ( 0, 0, -80 );

        return ( 0, 0, 30 );
    }

    if ( _func_02F( var_0._ID10556 ) )
        return ( 0, 0, 30 );

    return ( 0, 0, 0 );
}

_ID48148( var_0 )
{
    self notify( "stryker_shoot_target" );
    self endon( "stryker_shoot_target" );

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = _unknown_052D( var_0 );
    self _meth_826C( var_0, var_1 );

    if ( self._ID53781 != var_0 )
        _ID42237::_ID41123( "turret_rotate_stopped", 1.0 );

    self._ID53781 = var_0;
    var_2 = _func_03D();

    while ( _func_02F( var_0 ) )
    {
        var_3 = _func_03D() - var_2;

        if ( var_3 >= level._ID52535[self._ID45980]._ID47398 * 1000 )
            return;

        _unknown_05B1( var_0, var_1 );
        wait(_func_0BA( level._ID52535[self._ID45980]._ID53796, level._ID52535[self._ID45980]._ID50505 ));
    }
}

_ID50254( var_0, var_1 )
{
    self notify( "stryker_fire_shots" );
    self endon( "stryker_fire_shots" );
    var_2 = _func_0B9( level._ID52535[self._ID45980]._ID43298, level._ID52535[self._ID45980]._ID51251 );

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        if ( _func_02F( var_0 ) && _func_02F( var_1 ) )
            self _meth_8272( "tag_flash", var_0, var_1, 0.0 );
        else
            self _meth_8272( "tag_flash", undefined, ( 0, 0, 0 ), 0.0 );

        wait(level._ID52535[self._ID45980]._ID44723);
    }
}

_ID52193()
{
    var_0 = [];
    var_0[var_0.size] = "arcadia_str_targdestroyed";
    var_0[var_0.size] = "arcadia_str_areasuppressed";
    var_0[var_0.size] = "arcadia_str_tasuppressed";

    if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1FB() )
        return;

    thread _ID42407::_ID28864( var_0[_func_0B7( var_0.size )] );
}

_ID45939()
{
    level endon( "golf_course_mansion" );
    level endon( "laser_coordinates_received" );
    level._ID51107 notify( "stryker_laser_reminder_dialog" );
    level._ID51107 endon( "stryker_laser_reminder_dialog" );
    level._ID51107 endon( "death" );

    for (;;)
    {
        wait(_func_0B9( 30, 60 ));

        if ( !_func_1A7( level._ID51107 ) )
            return;

        if ( _ID42237::_ID14385( "disable_stryker_dialog" ) || _func_1FB() )
            continue;

        if ( _ID42237::_ID14396( "no_living_enemies" ) && _ID42237::_ID14385( "no_living_enemies" ) )
            continue;

        thread maps\arcadia_code::_ID43423();
        var_0 = _func_0B7( 5 );

        switch ( var_0 )
        {

        }

        case 4:
        case 3:
        case 0:
        case 1:
        case 2:
    }
}

_ID49881()
{
    level endon( "golf_course_mansion" );
    self waittill( "death" );
    wait 1.5;
    level._ID388 thread _ID42259::_ID3108( level._ID388, "arcadia_fly_lostbadgerone" );
}

achievement_target_confirmed_init()
{
    level.achievementstrikerkill = 0;
    _ID42407::_ID1892( "axis", ::_unknown_07DE );
    thread _unknown_07FE();
}

achievement_target_confirmed_ai_spawned()
{
    level endon( "golf_course_mansion" );
    level endon( "achievement_striker_done" );
    level._ID51107 endon( "death" );
    self waittill( "death",  var_2, var_2, var_2  );

    if ( _func_02F( var_0 ) && var_0._ID170 == "script_vehicle_stryker50cal" )
    {
        if ( var_0._ID45980 == "manual" )
            level.achievementstrikerkill++;
    }
}

achievement_target_confirmed_manager()
{
    level endon( "golf_course_mansion" );
    level._ID51107 endon( "death" );

    while ( level.achievementstrikerkill < 80 )
        waittillframeend;

    _ID42407::_ID16864( "TARGET_CONFIRMED" );
    _ID42407::_ID29534( "axis", ::_unknown_084F );
    level notify( "achievement_striker_done" );
}
