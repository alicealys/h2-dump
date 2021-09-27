// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _func_152( "stinger_lock_rumble" );
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 _unknown_0037();
    }

    var_clear_2
    var_clear_0
    var_3 = level._ID805;

    for ( var_4 = _func_1DA( var_3 ); _func_02F( var_4 ); var_4 = _func_1BF( var_3, var_4 ) )
    {
        var_1 = var_3[var_4];
        var_1 thread _unknown_0076();
        var_1 thread _unknown_0086();
    }

    var_clear_1
    var_clear_0
}

_ID43906()
{
    if ( !_func_02F( self._ID54388 ) )
        self._ID54388 = _func_1A5();

    self._ID54388._ID36427 = 0;
    self._ID54388._ID54493 = 0;
    self._ID54388._ID53306 = 0;
    self._ID54388._ID36445 = undefined;
    self notify( "stinger_irt_cleartarget" );
    self notify( "stop_lockon_sound" );
    self notify( "stop_locked_sound" );
    self._ID54388._ID53805 = undefined;
    self _meth_80B6( "stinger_lock_rumble" );
    self _meth_82F1();
    self _meth_82F2( 0 );
    self _meth_82AD( 0 );
    self _meth_8300( "stinger_clu_lock" );
    self _meth_8300( "stinger_clu_aquiring_lock" );
}

_ID50997()
{
    for (;;)
    {
        self waittill( "weapon_fired" );
        var_0 = self _meth_831C();

        if ( var_0 != "stinger" )
            continue;

        self notify( "stinger_fired" );
    }
}

_ID48623()
{
    self endon( "death" );

    for (;;)
    {
        while ( !_unknown_0193() )
            wait 0.05;

        thread _unknown_0137();

        while ( _unknown_01A4() )
            wait 0.05;

        self notify( "stinger_IRT_off" );
        _unknown_0113();
    }
}

_ID48040()
{
    self endon( "death" );
    self endon( "stinger_IRT_off" );
    var_0 = 2000;

    for (;;)
    {
        wait 0.05;

        if ( self._ID54388._ID53306 )
        {
            if ( !_unknown_01D7( self._ID54388._ID36445 ) )
            {
                _unknown_0143();
                continue;
            }

            thread _unknown_0267( "stinger_clu_lock", 0.75 );
            _unknown_0256( self._ID54388._ID36445 );
            _unknown_020C();
            continue;
        }

        if ( self._ID54388._ID54493 )
        {
            if ( !_unknown_020F( self._ID54388._ID36445 ) )
            {
                _unknown_017A();
                continue;
            }

            var_1 = _func_03D() - self._ID54388._ID36427;

            if ( var_1 < var_0 )
                continue;

            self notify( "stop_lockon_sound" );
            self._ID54388._ID53306 = 1;
            self _meth_82F0( self._ID54388._ID36445 );
            _unknown_02AA( self._ID54388._ID36445 );
            _unknown_0260();
            continue;
        }

        var_2 = _unknown_023D();

        if ( !_func_02F( var_2 ) )
            continue;

        self._ID54388._ID36445 = var_2;
        self._ID54388._ID36427 = _func_03D();
        self._ID54388._ID54493 = 1;
        thread _unknown_02F2( "stinger_clu_aquiring_lock", 0.6 );
    }
}

_ID50596()
{
    var_0 = _func_0AA();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _unknown_0292( var_0[var_2] ) )
            var_1[var_1.size] = var_0[var_2];
    }

    if ( var_1.size == 0 )
        return undefined;

    var_3 = var_1[0];

    if ( var_1.size > 1 )
    {

    }

    return var_3;
}

_ID44986( var_0 )
{
    return _func_0A7( var_0, self, 65, 60 );
}

_ID50273( var_0 )
{
    return _func_0A7( var_0, self, 65, 75 );
}

_ID48693( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( !_func_0AB( var_0 ) )
        return 0;

    if ( !_unknown_02DE( var_0 ) )
        return 0;

    return 1;
}

_ID45627()
{
    var_0 = self _meth_831C();

    if ( var_0 != "stinger" )
        return 0;

    if ( self _meth_834B() == 1.0 )
        return 1;

    return 0;
}

_ID50048()
{
    var_0 = 60;
    var_1 = 10;
    var_2 = 400;
    var_3 = ( 0, 1, 0 );
    var_4 = ( 1, 0, 0 );
    var_5 = [];
    var_5[0] = ( 0, 0, 80 );
    var_5[1] = ( -40, 0, 120 );
    var_5[2] = ( 40, 0, 120 );
    var_5[3] = ( -40, 0, 40 );
    var_5[4] = ( 40, 0, 40 );

    if ( _func_039( "missileDebugDraw" ) == "1" )
        var_6 = 1;
    else
        var_6 = 0;

    var_7 = self _meth_8346();
    var_8 = _func_11F( var_7 );
    var_9 = _func_11E( var_7 );
    var_10 = _func_11D( var_7 );
    var_11 = self._ID740 + ( 0, 0, var_0 ) + var_9 * var_1;
    var_12 = 0;

    for ( var_13 = 0; var_13 < var_5.size; var_13++ )
    {
        var_14 = var_11 + var_8 * var_2 + var_10 * var_5[var_13][2] + var_9 * var_5[var_13][0];
        var_15 = _func_06D( var_11, var_14, 0, undefined );

        if ( var_15["fraction"] < 1 )
        {
            var_12 = 1;

            if ( var_6 )
            {

            }
            else
                break;

            continue;
        }

        if ( var_6 )
        {

        }
    }

    self _meth_82AD( var_12 );
}

_ID49517( var_0 )
{
    var_1 = 1000;

    if ( !_func_02F( var_0 ) )
        return 0;

    var_2 = _func_0F4( self._ID740, var_0._ID740 );

    if ( var_2 < var_1 )
    {
        self._ID54388._ID52383 = 1;
        self _meth_82F2( 1 );
    }
    else
    {
        self._ID54388._ID52383 = 0;
        self _meth_82F2( 0 );
    }
}

_ID48639( var_0, var_1 )
{
    self endon( "stop_lockon_sound" );
    self endon( "death" );

    for (;;)
    {
        self _meth_82FF( var_0 );
        self _meth_80B4( "stinger_lock_rumble" );
        wait(var_1);
    }
}

_ID48662( var_0, var_1 )
{
    self endon( "stop_locked_sound" );
    self endon( "death" );

    if ( _func_02F( self._ID54388._ID53805 ) )
        return;

    self._ID54388._ID53805 = 1;

    for (;;)
    {
        self _meth_82FF( var_0 );
        self _meth_80B4( "stinger_lock_rumble" );
        wait(var_1 / 3);
        self _meth_80B4( "stinger_lock_rumble" );
        wait(var_1 / 3);
        self _meth_80B4( "stinger_lock_rumble" );
        wait(var_1 / 3);
        self _meth_80B6( "stinger_lock_rumble" );
    }

    self._ID54388._ID53805 = undefined;
}
