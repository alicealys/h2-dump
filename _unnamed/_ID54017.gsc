// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{

}

_ID54010()
{
    var_0 = _func_1A2( "mortar", "targetname" );
    var_1 = -1;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        var_0[var_2] _unknown_048B();

    if ( !_func_02F( level._ID53380 ) )
        _ID42237::_ID13138( "level.mortar not defined. define in level script" );

    level waittill( "start_mortars" );

    for (;;)
    {
        wait(1 + _func_0B8( 2 ));
        var_3 = _func_0B7( var_0.size );

        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {
            var_4 = var_2 + var_3 % var_0.size;
            var_5 = _func_0F3( level._ID794 _meth_809C(), var_0[var_4]._ID740 );
            var_6 = undefined;

            if ( _func_02F( level._ID388 ) )
                var_6 = _func_0F3( level._ID388._ID740, var_0[var_4]._ID740 );
            else
                var_6 = 360;

            if ( var_5 < 1600 && var_5 > 400 && var_6 > 350 && var_4 != var_1 )
            {
                var_0[var_4] _unknown_0550( 400, 300, 25, undefined, undefined, undefined, 0 );
                var_1 = var_4;

                if ( var_5 < 500 )
                    _ID46623::_ID616( 4 );

                break;
            }
        }
    }
}

_ID43484( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !_func_02F( var_0 ) )
        var_0 = 7;

    if ( !_func_02F( var_1 ) )
        var_1 = 2200;

    if ( !_func_02F( var_2 ) )
        var_2 = 300;

    if ( !_func_02F( level._ID50347 ) )
        level._ID50347 = 0;

    if ( !_func_02F( var_9 ) )
        var_9 = 0;

    var_11 = _func_1A2( "mortar", "targetname" );
    var_12 = -1;

    for ( var_13 = 0; var_13 < var_11.size; var_13++ )
    {
        if ( _func_02F( var_11[var_13]._ID1191 ) && var_9 == 0 )
            var_11[var_13] _unknown_059E();
    }

    if ( !_func_02F( level._ID53380 ) )
        _ID42237::_ID13138( "level.mortar not defined. define in level script" );

    if ( _func_02F( level._ID43231 ) )
        level waittill( level._ID43231 );

    for (;;)
    {
        if ( level._ID50347 != 0 )
            wait 1;

        while ( level._ID50347 == 0 )
        {
            if ( _func_02F( var_10 ) )
                wait(var_10 + _func_0B8( var_0 ) + _func_0B8( var_0 ));
            else
                wait(_func_0B8( var_0 ) + _func_0B8( var_0 ));

            var_14 = _func_0B7( var_11.size );

            for ( var_13 = 0; var_13 < var_11.size; var_13++ )
            {
                var_15 = var_13 + var_14 % var_11.size;
                var_16 = _func_0F3( level._ID794 _meth_809C(), var_11[var_15]._ID740 );

                if ( var_16 < var_1 && var_16 > var_2 && var_15 != var_12 )
                {
                    var_11[var_15] _unknown_0665( var_3, var_4, var_5, var_6, var_7, var_8, 0 );
                    var_12 = var_15;
                    break;
                }
            }
        }
    }
}

_ID46437()
{
    var_0 = [];
    var_1 = [];
    level._ID48347 = [];
    var_2 = _func_1A2( "script_model", "classname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( _func_02F( var_2[var_3]._ID31297 ) )
        {
            if ( !_func_02F( level._ID48347[var_2[var_3]._ID31297] ) )
                level._ID48347[var_2[var_3]._ID31297] = [];

            var_4 = _func_1A5();
            var_4._ID740 = var_2[var_3]._ID740;
            var_4._ID65 = var_2[var_3]._ID65;

            if ( _func_02F( var_2[var_3]._ID1193 ) )
                var_4._ID1193 = var_2[var_3]._ID1193;

            if ( _func_02F( var_2[var_3]._ID1191 ) )
                var_4._ID1191 = var_2[var_3]._ID1191;

            level._ID48347[var_2[var_3]._ID31297][level._ID48347[var_2[var_3]._ID31297].size] = var_4;
            var_2[var_3] _meth_80B7();
        }
    }

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_0[var_3] _meth_805A();
        var_0[var_3]._ID43056 = 0;
    }

    if ( !_func_02F( level._ID53380 ) )
        level._ID53380 = _func_155( "fx/explosions/artilleryExp_dirt_brown" );

    var_5 = _ID42237::_ID3296( _func_1A2( "trigger_multiple", "classname" ), _func_1A2( "trigger_radius", "classname" ) );

    for ( var_3 = 0; var_3 < var_5.size; var_3++ )
    {
        if ( _func_02F( var_5[var_3]._ID31297 ) )
        {
            if ( !_func_02F( level._ID48347[var_5[var_3]._ID31297] ) )
                level._ID48347[var_5[var_3]._ID31297] = [];

            var_1[var_1.size] = var_5[var_3];
        }
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_1[var_3]._ID50572 = 0;
        var_1[var_3] thread _unknown_04AC();
    }

    var_6 = undefined;

    for (;;)
    {
        level waittill( "mortarzone",  var_7  );

        if ( _func_02F( var_6 ) )
            var_6 notify( "wait again" );

        level._ID52723 = var_7._ID31297;
        var_7 thread _unknown_041F();
        var_6 = var_7;
    }
}

_ID49860()
{
    var_0 = [];
    var_1 = _func_03D();
    var_2 = 0;

    if ( _func_02F( self._ID31481 ) )
    {
        level notify( "timed barrage" );
        var_1 = _func_03D() + self._ID31481 * 1000;
        var_2 = 1;
    }

    if ( _func_02F( self._ID31413 ) )
        var_3 = self._ID31413;
    else
        var_3 = 0;

    if ( _func_02F( self._ID31121 ) && _func_02F( self._ID31120 ) )
        var_4 = 1;
    else
        var_4 = 0;

    var_5 = 0;
    var_6 = 2;
    var_7 = 4;
    var_8 = 0;

    while ( level._ID48347[self._ID31297].size > 0 && level._ID52723 == self._ID31297 || var_2 )
    {
        if ( var_4 )
            wait(_func_0B8( self._ID31120 - self._ID31121 ) + self._ID31121);
        else if ( var_8 )
        {
            if ( var_5 < var_7 )
            {
                wait(_func_0B8( 0.5 ));
                var_5++;
            }
            else
            {
                var_5 = 0;
                var_7 = 2 + _func_0B7( 4 );
                var_8 = 0;
                continue;
            }
        }
        else if ( var_5 < var_6 )
        {
            var_9 = _func_0B8( 2 ) + 1;
            wait(var_9);
            var_5++;
        }
        else
        {
            var_5 = 0;
            var_8 = 1;
            var_6 = _func_0B7( 2 ) + 3;
            continue;
        }

        var_10 = [];
        var_11 = _func_0B7( level._ID48347[self._ID31297].size );

        if ( _func_0B7( 100 ) < 75 )
        {
            var_12 = _func_11F( level._ID794._ID65 );
            var_13 = [];

            for ( var_14 = 0; var_14 < level._ID48347[self._ID31297].size; var_14++ )
            {
                if ( var_3 > 0 && _func_0F3( level._ID794._ID740, level._ID48347[self._ID31297][var_14]._ID740 ) > var_3 )
                    continue;

                if ( _unknown_05DE( level._ID48347[self._ID31297][var_14], var_0 ) )
                    continue;

                var_15 = _func_119( level._ID48347[self._ID31297][var_14]._ID740 - level._ID794._ID740 );

                if ( _func_0FB( var_12, var_15 ) > 0.3 )
                    var_13[var_13.size] = var_14;
            }

            if ( var_13.size > 0 )
                var_11 = var_13[_func_0B7( var_13.size )];
        }

        if ( var_0.size > 3 )
            var_0 = [];

        var_0[var_0.size] = level._ID48347[self._ID31297][var_11];
        level._ID48347[self._ID31297][var_11] thread _unknown_063F();

        if ( var_2 && _func_03D() > var_1 )
        {
            if ( _func_02F( self._ID1191 ) )
            {
                var_16 = _func_1A1( self._ID1191, "targetname" );

                if ( _func_02F( var_16 ) )
                {
                    var_16 notify( "trigger" );
                    level notify( "timed barrage finished" );
                }
            }

            break;
        }
    }
}

_ID54387( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_0 == var_1[var_2] )
            return 1;
    }

    return 0;
}

_ID45991()
{
    if ( _func_02F( self._ID1193 ) && _func_02F( level._ID51089[self._ID1193] ) )
        level thread [[ level._ID51089[self._ID1193] ]]( self );
    else
        thread _unknown_09BA( undefined, undefined, undefined, undefined, undefined, undefined, 1 );

    self waittill( "mortar" );

    if ( _func_02F( self._ID1191 ) )
    {
        var_0 = _func_1A1( self._ID1191, "targetname" );

        if ( _func_02F( var_0 ) )
            var_0 notify( "trigger" );
    }
}

_ID46019()
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( _func_02F( level._ID52723 ) && level._ID52723 == self._ID31297 )
            continue;

        level notify( "mortarzone",  self  );
        self waittill( "wait again" );
    }
}

_ID52063()
{
    level._ID53999 = _func_1A2( "mortartrigger", "targetname" );
    level._ID48347 = _func_1A2( "script_origin", "classname" );

    for ( var_0 = 0; var_0 < level._ID48347.size; var_0++ )
    {
        if ( _func_02F( level._ID48347[var_0]._ID31297 ) )
            level._ID48347[var_0] _unknown_0A06();
    }

    level._ID51054 = -1;

    if ( !_func_02F( level._ID53380 ) )
        _ID42237::_ID13138( "level.mortar not defined. define in level script" );

    for ( var_0 = 0; var_0 < level._ID53999.size; var_0++ )
        thread _unknown_07A7( var_0 );
}

_ID54459( var_0 )
{
    var_1 = _func_1A2( level._ID53999[var_0]._ID1191, "targetname" );

    for (;;)
    {
        if ( level._ID794 _meth_80B0( level._ID53999[var_0] ) )
        {
            var_2 = _func_0B7( var_1.size );

            while ( var_2 == level._ID51054 )
            {
                var_2 = _func_0B7( var_1.size );
                wait 0.1;
            }

            var_1[var_2] _unknown_0AA5( undefined, undefined, undefined, undefined, undefined, undefined, 0 );
            level._ID51054 = var_2;
        }

        wait(_func_0B8( 3 ) + _func_0B8( 4 ));
    }
}

_ID49310( var_0 )
{
    var_1 = [];
    var_2 = undefined;
    var_3 = [];
    var_4 = _ID42237::_ID16640( "mortar_bunker", "targetname" );
    var_5 = _func_1A2( "mortar_bunker", "targetname" );

    if ( _func_02F( var_5 ) && var_5.size > 0 )
        var_2 = _ID42407::_ID3317( var_4, var_5 );
    else
        var_2 = var_4;

    for ( var_6 = 0; var_6 < var_2.size; var_6++ )
    {
        if ( !_func_02F( var_2[var_6]._ID31297 ) )
            continue;

        var_7 = -1;
        var_8 = _func_0C1( var_2[var_6]._ID31297 );

        for ( var_9 = 0; var_9 < var_1.size; var_9++ )
        {
            if ( var_8 != var_3[var_9] )
                continue;

            var_7 = var_9;
            break;
        }

        if ( var_7 == -1 )
        {
            var_1[var_1.size] = [];
            var_3[var_3.size] = var_8;
            var_7 = var_1.size - 1;
        }

        var_1[var_7][var_1[var_7].size] = var_2[var_6];
    }

    for ( var_6 = 0; var_6 < var_1.size; var_6++ )
        thread _unknown_0910( var_1[var_6], var_4, var_0 );

    wait 0.05;
    _ID42237::_ID3350( _func_1A2( "mortar_on", "targetname" ), ::_unknown_0B0D, "on" );
    _ID42237::_ID3350( _func_1A2( "mortar_off", "targetname" ), ::_unknown_0B22, "off" );
}

_ID49791( var_0, var_1, var_2 )
{
    var_3 = undefined;
    var_4 = undefined;

    if ( _func_02F( level._ID50985 ) )
        var_3 = level._ID50985;
    else
        var_3 = 5;

    if ( _func_02F( level._ID50128 ) )
        var_4 = level._ID50128;
    else
        var_4 = 7;

    var_5 = _func_0C1( var_0[0]._ID31297 );

    for (;;)
    {
        level waittill( "start_mortars " + var_5 );
        thread _unknown_09A1( var_0, var_3, var_4, var_5, var_1, var_2 );
    }
}

_ID52197( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    level endon( "start_mortars " + var_3 );
    level endon( "stop_mortars " + var_3 );
    var_6 = undefined;
    var_7 = 262144;
    var_8 = 0.16;
    var_9 = 0.46;
    var_10 = 1.5;
    var_11 = 2.75;
    var_12 = 1250;
    var_13 = var_8;
    var_14 = var_10;

    for (;;)
    {
        if ( var_4.size >= 3 )
        {
            var_15 = _func_1C0( var_4, level._ID794._ID740 );
            var_16 = _func_0B7( 3 );
            var_17 = var_15[var_16];
        }
        else
            var_17 = _ID42237::_ID16182( level._ID794._ID740, var_4 );

        if ( !_func_02F( level._ID49353 ) )
            _ID42237::_ID27077( "mortar_incoming_bunker", var_17._ID740 );

        thread _ID42237::_ID27077( "exp_artillery_underground", var_17._ID740 );
        _ID42237::_ID3350( var_0, ::_unknown_0A8C );

        if ( _func_02F( var_6 ) )
        {
            var_18 = var_6 / var_7;
            var_13 = _ID42407::_ID22382( var_18, var_8, var_9 );
            var_14 = _ID42407::_ID22382( var_18, var_10, var_11 );
        }
        else
        {
            var_13 = _func_0BA( var_8, var_9 );
            var_14 = _func_0BA( var_10, var_11 );
        }

        if ( !_func_02F( level._ID51139 ) )
            _func_192( var_13, var_14, var_17._ID740, var_12 );

        level notify( "mortar_hit" );

        if ( _func_02F( var_5 ) )
        {
            var_6 = undefined;
            var_6 = _unknown_0ADC( var_5, var_1, var_2 );
        }
        else
            wait(_func_0BA( var_1, var_2 ));

        var_0 = _ID42237::_ID3332( var_0 );
    }
}

bunker_style_mortar_wait_next_hit( var_0, var_1, var_2 )
{
    level endon( "timeout" );
    level thread _ID42407::_ID37742( _func_0BA( var_1, var_2 ) );
    level waittill( var_1,  var_3  );
    return var_3;
}

_ID50032( var_0, var_1 )
{
    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( level._ID48681 ) && _unknown_0C26( level._ID48681 ) == 0 )
        return;

    if ( _func_02F( level._ID50380 ) )
        var_2 = level._ID50380;
    else
        var_2 = 1024;

    var_3 = var_2 * var_2;
    var_4 = _func_0F5( level._ID794._ID740, self._ID740 );

    if ( var_4 > var_3 )
        return;

    if ( _func_02F( self._ID170 ) && self._ID170 == "trigger_radius" )
    {
        if ( !level._ID794 _meth_80B0( self ) && _func_0F3( level._ID794._ID740, self._ID740 ) < level._ID50592 )
        {
            _func_18F( self._ID740, self._ID851, 500, 500 );
            self _meth_80B7();
            return;
        }
    }
    else
    {
        _func_156( level._ID1426["mortar"][self._ID31220], self._ID740 );

        if ( var_4 < 262144 )
            thread _ID42237::_ID27077( "emt_single_ceiling_debris", self._ID740 );
    }
}

_ID53823()
{
    var_0 = [];
    var_1 = [];
    var_2 = _ID42407::_ID16641( "mortar", "targetname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( !_func_02F( var_2[var_3]._ID31297 ) )
            continue;

        var_4 = -1;
        var_5 = _func_0C1( var_2[var_3]._ID31297 );

        for ( var_6 = 0; var_6 < var_0.size; var_6++ )
        {
            if ( var_5 != var_1[var_6] )
                continue;

            var_4 = var_6;
            break;
        }

        if ( var_4 == -1 )
        {
            var_0[var_0.size] = [];
            var_1[var_1.size] = var_5;
            var_4 = var_0.size - 1;
        }

        var_0[var_4][var_0[var_4].size] = var_2[var_3];
    }

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        thread _unknown_0CAD( var_0[var_3] );

    wait 0.05;
    _ID42237::_ID3350( _func_1A2( "mortar_on", "targetname" ), ::_unknown_0D9A, "on" );
    _ID42237::_ID3350( _func_1A2( "mortar_off", "targetname" ), ::_unknown_0DAF, "off" );
}

_ID44349( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = undefined;

    if ( _func_02F( level._ID50985 ) )
        var_2 = level._ID50985;
    else
        var_2 = 0.5;

    if ( _func_02F( level._ID50128 ) )
        var_3 = level._ID50128;
    else
        var_3 = 3;

    var_1 = _func_0C1( var_0[0]._ID31297 );

    for (;;)
    {
        level waittill( "start_mortars " + var_1 );
        level thread _unknown_0D40( var_0, var_1, var_2, var_3 );

        if ( _func_02F( level._ID54377 ) )
            return;
    }
}

_ID43447( var_0, var_1, var_2, var_3 )
{
    level endon( "start_mortars " + var_1 );
    level endon( "stop_mortars " + var_1 );

    if ( _func_02F( level._ID50380 ) )
        var_4 = level._ID50380;
    else
        var_4 = 300;

    var_5 = _func_06A( "trigger_radius", ( 0, 0, 0 ), 0, var_4, 256 );
    thread _unknown_0DDE( var_5, var_1 );

    for (;;)
    {
        for (;;)
        {
            wait 0.05;
            var_6 = _func_0B7( var_0.size );

            if ( _func_02F( var_0[var_6]._ID51567 ) )
                continue;

            var_7 = _func_0F3( level._ID794._ID740, var_0[var_6]._ID740 );

            if ( var_7 < var_4 )
                continue;

            if ( _func_02F( level._ID47286 ) && level._ID47286.size > 0 )
            {
                var_5._ID740 = var_0[var_6]._ID740;

                if ( _unknown_0E35( level._ID47286, var_5 ) )
                    continue;
            }

            if ( !_func_02F( level._ID44303 ) && var_7 > 1000 )
                continue;

            if ( _func_02F( level._ID43436 ) && var_7 > level._ID43436 )
                continue;

            if ( _func_02F( level._ID48681 ) && var_0[var_6] _unknown_0E81( level._ID48681 ) == 0 )
                continue;

            break;
        }

        if ( _func_02F( level._ID50708 ) && level._ID50708 == 1 )
            return;

        var_0[var_6] thread _unknown_0EB3();
        wait(var_2 + _func_0B8( var_3 - var_2 ));
    }
}

_ID51669( var_0, var_1 )
{
    level waittill( "stop_mortars " + var_1 );
    var_0 _meth_80B7();
}

_ID47414( var_0, var_1 )
{
    var_2 = level._ID47286;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_1A7( var_3 ) )
            continue;

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3 _meth_80B0( var_1 ) )
            return 1;
    }

    var_clear_2
    var_clear_0
    return 0;
}

_ID44980( var_0 )
{
    var_1 = level._ID794 _meth_80AF();
    var_2 = ( 0, 0, 0 );

    if ( _func_02F( level._ID49598 ) )
        var_2 = level._ID49598;

    var_3 = _ID42237::_ID41802( var_1, level._ID794 _meth_8346() + var_2, self._ID740, var_0 );
    return var_3;
}

_ID44507( var_0, var_1 )
{
    if ( !_func_02F( level._ID50184 ) )
        level._ID50184 = 250;

    if ( !_func_02F( level._ID49801 ) )
        level._ID49801 = 1250;

    if ( !_func_02F( var_0 ) )
        var_0 = 0;

    thread _unknown_0F9C();

    if ( !var_0 )
        _ID42237::_ID27077( level._ID30909["mortar"]["incomming"] );

    if ( _func_02F( var_1 ) )
        thread _ID42237::_ID27077( var_1 );
    else
        thread _ID42237::_ID27077( level._ID30909["mortar"][self._ID31220] );

    _func_190( 1 );
    _func_18F( self._ID740, level._ID50184, 150, 50 );
    _func_190( 0 );
    _func_156( level._ID1426["mortar"][self._ID31220], self._ID740 );

    if ( _func_02F( level._ID53514 ) )
        _func_192( 0.3, 1, level._ID794._ID740, 2000 );

    if ( _func_03A( "bog_camerashake" ) > 0 )
    {
        if ( level._ID794 _meth_831C() == "dragunov" && level._ID794 _meth_834B() > 0.8 )
            return;

        _func_192( 0.25, 0.75, self._ID740, level._ID49801 );
    }
}

_ID50131()
{
    self._ID51567 = 1;
    wait(3 + _func_0B8( 2 ));
    self._ID51567 = undefined;
}

_ID52092( var_0 )
{
    self waittill( "trigger" );

    if ( var_0 == "on" )
        _unknown_106E( self._ID31297 );
    else if ( var_0 == "off" )
        _unknown_1081( self._ID31297 );
}

_ID43738( var_0 )
{
    level notify( "start_mortars " + var_0 );
}

_ID49923( var_0 )
{
    level notify( "stop_mortars " + var_0 );
}

_ID48266( var_0 )
{
    if ( !_func_02F( level._ID50592 ) )
        level._ID50592 = 512;

    if ( !_func_02F( level._ID48681 ) )
        level._ID48681 = _func_0BC( 35 );

    level notify( "start_mortars " + var_0 );
}

_ID43788( var_0 )
{
    level waittill( "mortar_hit" );
    level notify( "stop_mortars " + var_0 );
}

_ID43196( var_0 )
{
    level notify( "stop_mortars " + var_0 );
}

_ID52166( var_0 )
{
    self waittill( "trigger" );

    if ( var_0 == "on" )
        _unknown_10F0( self._ID31297 );
    else if ( var_0 == "off" )
        _unknown_110A( self._ID31297 );
}

_ID43532()
{
    level endon( "stop falling mortars" );
    _unknown_1152();
    wait(_func_0B8( 0.5 ) + _func_0B8( 0.5 ));

    for (;;)
    {
        if ( _func_0F3( level._ID794 _meth_809C(), self._ID740 ) < 600 )
        {
            _unknown_11AF( undefined, undefined, undefined, undefined, undefined, undefined, 0 );
            break;
        }

        wait 1;
    }

    wait(7 + _func_0B8( 20 ));

    for (;;)
    {
        if ( _func_0F3( level._ID794 _meth_809C(), self._ID740 ) < 1200 && _func_0F3( level._ID794 _meth_809C(), self._ID740 ) > 400 )
        {
            _unknown_11E5( undefined, undefined, undefined, undefined, undefined, undefined, 0 );
            wait(3 + _func_0B8( 14 ));
        }

        wait 1;
    }
}

_ID48357()
{
    self._ID43056 = 0;

    if ( _func_02F( self._ID1191 ) )
    {
        self._ID51579 = _func_1A2( self._ID1191, "targetname" );
        self._ID43056 = 1;
        jump loc_11E3
    }

    if ( !_func_02F( self._ID51579 ) )
    {

    }

    if ( _func_02F( self._ID31249 ) )
    {
        if ( _func_02F( self._ID31249 ) )
            self._ID52340 = _func_1A1( self._ID31249, "targetname" );
        else if ( _func_02F( self._ID51579 ) && _func_02F( self._ID51579[0]._ID1191 ) )
            self._ID52340 = _func_1A1( self._ID51579[0]._ID1191, "targetname" );

        if ( _func_02F( self._ID52340 ) )
            self._ID52340 _meth_805A();
    }
    else if ( _func_02F( self._ID43056 ) )
    {
        if ( _func_02F( self._ID51579 ) && _func_02F( self._ID51579[0]._ID1191 ) )
            self._ID52340 = _func_1A1( self._ID51579[0]._ID1191, "targetname" );

        if ( _func_02F( self._ID52340 ) )
            self._ID52340 _meth_805A();
    }
}

_ID43158( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _unknown_1312( undefined, var_6 );
    level notify( "mortar" );
    self notify( "mortar" );

    if ( !_func_02F( var_0 ) )
        var_0 = 256;

    if ( !_func_02F( var_1 ) )
        var_1 = 400;

    if ( !_func_02F( var_2 ) )
        var_2 = 25;

    _func_18F( self._ID740, var_0, var_1, var_2 );

    if ( _func_02F( self._ID43056 ) && self._ID43056 == 1 && _func_02F( self._ID51579 ) )
    {
        for ( var_7 = 0; var_7 < self._ID51579.size; var_7++ )
        {
            if ( _func_02F( self._ID51579[var_7] ) )
                self._ID51579[var_7] _meth_80B7();
        }
    }

    if ( _func_02F( self._ID52340 ) )
        self._ID52340 _meth_8059();

    self._ID43056 = 0;
    _unknown_1354( self._ID740, var_3, var_4, var_5, undefined, var_6 );
}

_ID50894( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0.15;

    if ( !_func_02F( var_2 ) )
        var_2 = 2;

    if ( !_func_02F( var_3 ) )
        var_3 = 850;

    thread _unknown_13A4( var_5 );

    if ( _func_02F( var_4 ) )
        _func_156( var_4, var_0 );
    else
        _func_156( level._ID53380, var_0 );

    _func_192( var_1, var_2, var_0, var_3 );

    if ( _func_02F( level._ID51181 ) )
        return;

    if ( _func_0F3( level._ID794._ID740, var_0 ) > 300 )
        return;

    level._ID51181 = 1;
    level notify( "shell shock player",  var_2 * 4  );
    _ID46623::_ID616( var_2 * 4 );
}

_ID52724( var_0 )
{
    if ( !_func_02F( level._ID45164 ) )
        level._ID45164 = -1;

    for ( var_1 = _func_0B7( 3 ) + 1; var_1 == level._ID45164; var_1 = _func_0B7( 3 ) + 1 )
    {

    }

    level._ID45164 = var_1;

    if ( !var_0 )
        self _meth_80A1( "mortar_explosion" + var_1 );
    else
        _ID42237::_ID27077( "mortar_explosion" + var_1, self._ID740 );
}

_ID53348( var_0, var_1 )
{
    var_2 = _func_03D();

    if ( !_func_02F( level._ID44002 ) )
        level._ID44002 = var_2;
    else if ( var_2 - level._ID44002 < 1000 )
    {
        wait 1;
        return;
    }
    else
        level._ID44002 = var_2;

    if ( !_func_02F( var_0 ) )
        var_0 = _func_0B7( 3 ) + 1;

    if ( var_0 == 1 )
    {
        if ( var_1 )
            thread _ID42237::_ID27077( "mortar_incoming1", self._ID740 );
        else
            self _meth_80A1( "mortar_incoming1" );

        wait 0.82;
    }
    else if ( var_0 == 2 )
    {
        if ( var_1 )
            thread _ID42237::_ID27077( "mortar_incoming2", self._ID740 );
        else
            self _meth_80A1( "mortar_incoming2" );

        wait 0.42;
    }
    else
    {
        if ( var_1 )
            thread _ID42237::_ID27077( "mortar_incoming3", self._ID740 );
        else
            self _meth_80A1( "mortar_incoming3" );

        wait 1.3;
    }
}

_ID54499()
{
    level._ID53599 = [];
    level._ID53139 = [];
    level._ID52853 = [];
    level._ID51912 = [];
    level._ID47466 = [];
    level._ID50776 = [];
    level._ID46892 = [];
    level._ID49326 = [];
}

_ID46417( var_0, var_1, var_2 )
{
    level._ID53139[var_0] = var_1;
    level._ID53599[var_0] = var_2;
}

_ID51413( var_0, var_1, var_2, var_3 )
{
    level._ID52853[var_0] = var_1;
    level._ID47466[var_0] = var_2;
    level._ID51912[var_0] = var_3;
}

_ID44165( var_0, var_1, var_2, var_3 )
{
    level._ID50776[var_0] = var_1;
    level._ID46892[var_0] = var_2;
    level._ID49326[var_0] = var_3;
}

_ID44679( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = -1;
    var_8 = var_5;
    var_9 = var_4;
    _unknown_158B( var_0, 300, 2200 );

    if ( !_func_02F( var_1 ) )
        var_1 = 7;

    if ( !_func_02F( var_2 ) )
        var_2 = 1;

    if ( !_func_02F( var_3 ) )
        var_3 = 0;

    if ( !_func_02F( var_6 ) )
        var_6 = 0;

    if ( _func_02F( level._ID46621 ) && _func_02F( level._ID46621[var_0] ) )
        level endon( level._ID46621[var_0] );

    if ( !_func_02F( level._ID51933 ) || !_func_02F( level._ID51933[var_0] ) )
        level._ID51933[var_0] = 0;

    var_10 = _func_1A2( var_0, "targetname" );

    for ( var_11 = 0; var_11 < var_10.size; var_11++ )
    {
        if ( _func_02F( var_10[var_11]._ID1191 ) && !var_6 )
            var_10[var_11] _unknown_1523();
    }

    if ( _func_02F( level._ID50595 ) && _func_02F( level._ID50595[var_0] ) )
        level waittill( level._ID50595[var_0] );

    for (;;)
    {
        while ( !level._ID51933[var_0] )
        {
            for ( var_12 = 0; var_12 < var_2; var_12++ )
            {
                if ( !_func_02F( var_5 ) )
                    var_8 = level._ID53599[var_0];

                if ( !_func_02F( var_4 ) )
                    var_9 = level._ID53139[var_0];

                var_13 = _func_0B7( var_10.size );

                for ( var_11 = 0; var_11 < var_10.size; var_11++ )
                {
                    var_14 = var_11 + var_13 % var_10.size;
                    var_15 = _func_0F3( level._ID794 _meth_809C(), var_10[var_14]._ID740 );

                    if ( var_15 < var_8 && var_15 > var_9 && var_14 != var_7 )
                    {
                        var_10[var_14]._ID50121 = var_9;
                        var_10[var_14] _unknown_171D( var_0 );
                        var_7 = var_14;
                        break;
                    }
                }

                var_7 = -1;

                if ( _func_02F( level._ID54371 ) && _func_02F( level._ID54371[var_0] ) )
                {
                    wait(level._ID54371[var_0]);
                    continue;
                }

                wait(_func_0B8( var_1 ) + _func_0B8( var_1 ));
            }

            if ( _func_02F( level._ID44702 ) && _func_02F( level._ID44702[var_0] ) )
            {
                wait(level._ID44702[var_0]);
                continue;
            }

            wait(_func_0B8( var_3 ) + _func_0B8( var_3 ));
        }

        wait 0.05;
    }
}

_ID52980( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _unknown_1708( var_0, 256, 25, 400 );
    _unknown_171D( var_0, 0.15, 2, 850 );

    if ( !_func_02F( var_1 ) )
        var_1 = level._ID52853[var_0];

    if ( !_func_02F( var_2 ) )
        var_2 = level._ID47466[var_0];

    if ( !_func_02F( var_3 ) )
        var_3 = level._ID51912[var_0];

    if ( !_func_02F( var_4 ) )
        var_4 = level._ID50776[var_0];

    if ( !_func_02F( var_5 ) )
        var_5 = level._ID46892[var_0];

    if ( !_func_02F( var_6 ) )
        var_6 = level._ID49326[var_0];

    _unknown_18C7( var_0 );
    level notify( "explosion",  var_0  );
    var_7 = 1;
    var_8 = undefined;
    var_9 = self;

    if ( _func_02F( self._ID50121 ) && _func_0F3( level._ID794._ID740, self._ID740 ) < self._ID50121 )
    {
        var_10 = _func_1A2( var_0, "targetname" );

        for ( var_11 = 0; var_11 < var_10.size; var_11++ )
        {
            var_12 = _func_0F3( level._ID794 _meth_809C(), var_10[var_11]._ID740 );

            if ( var_12 > self._ID50121 )
            {
                if ( !_func_02F( var_8 ) || var_12 < var_8 )
                {
                    var_8 = var_12;
                    var_9 = var_10[var_11];
                }
            }
        }

        if ( !_func_02F( var_8 ) )
            var_7 = 0;
    }

    if ( var_7 )
        _func_18F( var_9._ID740, var_1, var_3, var_2 );

    if ( _func_02F( var_9._ID43056 ) && var_9._ID43056 == 1 && _func_02F( var_9._ID51579 ) )
    {
        for ( var_13 = 0; var_13 < var_9._ID51579.size; var_13++ )
        {
            if ( _func_02F( var_9._ID51579[var_13] ) )
                var_9._ID51579[var_13] _meth_80B7();
        }
    }

    if ( _func_02F( var_9._ID52340 ) )
        var_9._ID52340 _meth_8059();

    var_9._ID43056 = 0;
    var_9 _unknown_192A( var_0, var_4, var_5, var_6 );
}

_ID45326( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_1 ) )
        var_1 = 0.15;

    if ( !_func_02F( var_2 ) )
        var_2 = 2;

    if ( !_func_02F( var_3 ) )
        var_3 = 850;

    _unknown_1970( var_0 );
    var_4 = self._ID740;
    _func_156( level._ID1426[var_0], var_4 );
    _func_192( var_1, var_2, var_4, var_3 );

    if ( _func_0F3( level._ID794._ID740, var_4 ) > 300 )
        return;

    level._ID51181 = 1;
    level notify( "shell shock player",  var_2 * 4  );
    _ID46623::_ID616( var_2 * 4 );
}

_ID47097( var_0 )
{
    if ( !_func_02F( level._ID50458 ) )
        level._ID50458 = 0;

    for ( var_1 = _func_0B7( 3 ) + 1; var_1 == level._ID50458; var_1 = _func_0B7( 3 ) + 1 )
    {

    }

    level._ID50458 = var_1;

    if ( level._ID50659[var_0] == "mortar" )
    {
        switch ( var_1 )
        {

        }

        return;
    }

    if ( level._ID50659[var_0] == "artillery" )
    {
        switch ( var_1 )
        {

        }

        return;
    }

    if ( level._ID50659[var_0] == "bomb" )
    {
        switch ( var_1 )
        {

        }

        return;
    }

    return;
    return;
    case 3:
    case 2:
    case 1:
    case 3:
    case 2:
    case 1:
    case 3:
    case 2:
    case 1:
}

_ID46877( var_0, var_1 )
{
    if ( !_func_02F( level._ID48515 ) )
        level._ID48515 = -1;

    for ( var_1 = _func_0B7( 4 ) + 1; var_1 == level._ID48515; var_1 = _func_0B7( 4 ) + 1 )
    {

    }

    level._ID48515 = var_1;

    if ( level._ID50659[var_0] == "mortar" )
    {
        switch ( var_1 )
        {

        }

        return;
    }

    if ( level._ID50659[var_0] == "artillery" )
    {
        switch ( var_1 )
        {

        }

        return;
    }

    if ( level._ID50659[var_0] == "bomb" )
    {
        switch ( var_1 )
        {

        }

        return;
    }

    return;
    return;
    case 1:
    case 2:
    case 3:
    default:
    case 1:
    case 2:
    case 3:
    default:
    case 1:
    case 2:
    case 3:
    default:
}
