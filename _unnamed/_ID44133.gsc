// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID48317( var_0 )
{
    if ( !_func_02F( var_0 ) || !var_0 )
    {
        if ( self _meth_834B() < 1.0 )
            return 0;
    }
    else if ( self _meth_834B() == 0 )
        return 0;

    var_1 = self _meth_831C();

    if ( !_func_125( var_1, "javelin" ) )
        return 0;

    return 1;
}

_ID44048( var_0 )
{
    return _func_0A6( var_0, self, 25, 60, 30 );
}

_ID53167( var_0 )
{
    return _func_0A6( var_0, self, 25, 90, 45 );
}

_ID47869()
{
    self notify( "javelin_clu_cleartarget" );
    self notify( "stop_lockon_sound" );
    level._ID46685 = 0;
    level._ID43589 = 0;
    level._ID46942 = 0;
    level._ID50431 = undefined;
    self _meth_82F1();
    self _meth_82F2( 0 );
    self _meth_82AD( 0 );
    _func_032( "ui_javelin_lock_status", 0 );
}

_ID47169()
{
    var_0 = _func_0AA();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( _unknown_00A0( var_0[var_2] ) )
            var_1[var_1.size] = var_0[var_2];

        _func_0A5( var_0[var_2], "javelin_hud_target_offscreen" );
    }

    if ( var_1.size == 0 )
        return undefined;

    var_3 = var_1[0];

    if ( var_1.size > 1 )
    {

    }

    return var_3;
}

_ID48693( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( !_func_0AB( var_0 ) )
        return 0;

    if ( !_unknown_00E1( var_0 ) )
        return 0;

    return 1;
}

_ID49517( var_0 )
{
    var_1 = 1000;

    if ( !_func_02F( var_0 ) )
        return 0;

    var_2 = _func_0F4( self._ID740, var_0._ID740 );

    if ( var_2 < var_1 )
        self _meth_82F2( 1 );
    else
        self _meth_82F2( 0 );
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

_ID53472()
{
    self endon( "death" );
    self endon( "javelin_clu_off" );

    for (;;)
    {
        wait 0.05;
        var_0 = self _meth_82FB();

        if ( !var_0 )
        {
            _unknown_0219();
            continue;
        }

        if ( level._ID46942 )
        {
            if ( !_unknown_024C( level._ID50431 ) )
            {
                _unknown_022E();
                continue;
            }

            _unknown_0265( level._ID50431 );
            _unknown_0275();
            continue;
        }

        if ( level._ID43589 )
        {
            if ( !_unknown_026E( level._ID50431 ) )
            {
                _unknown_0250();
                continue;
            }

            var_1 = _func_03D() - level._ID46685;

            if ( var_1 < level._ID50957 )
                continue;

            self notify( "stop_lockon_sound" );
            level._ID46942 = 1;
            wait 0.2;
            self _meth_82F0( level._ID50431 );
            self _meth_82FF( "javelin_clu_lock" );
            _unknown_02B3( level._ID50431 );
            _unknown_02C4();
            _func_032( "ui_javelin_lock_status", 2 );
            continue;
        }

        var_2 = _unknown_02AA();

        if ( !_func_02F( var_2 ) )
            continue;

        level._ID50431 = var_2;
        level._ID46685 = _func_03D();
        level._ID43589 = 1;
        _func_032( "ui_javelin_lock_status", 1 );
        self _meth_82EF( var_2 );
        thread _unknown_03E4( "javelin_clu_aquiring_lock", 0.6 );
    }
}

_ID52367()
{
    self endon( "death" );
    childthread _unknown_03C6();
    childthread _unknown_03D1();
    childthread _unknown_03BE();

    for (;;)
    {
        while ( !_unknown_02C8() )
            wait 0.05;

        thread _unknown_0374();

        while ( _unknown_02D8() )
            wait 0.05;

        self notify( "javelin_clu_off" );
        _unknown_0304();
    }
}

_ID51658()
{
    for (;;)
    {
        while ( !_unknown_02F4( 1 ) )
            wait 0.05;

        self _meth_82D5();

        while ( _unknown_0306( 1 ) )
            wait 0.05;

        self _meth_82D6();
    }
}

_ID49123()
{
    for (;;)
    {
        wait 0.05;
        _unknown_0371();
    }
}

_ID45956()
{
    for (;;)
    {
        self waittill( "damage" );
        _func_032( "ui_shake", 300 );
    }
}

_ID49257()
{
    for (;;)
    {
        level waittill( "earthquake" );
        _func_032( "ui_shake", 500 );
    }
}

_ID521()
{
    level._ID50957 = 2000;
    _func_032( "ui_javelin", 1 );
    _func_14F( "javelin_hud_target_offscreen" );
    _ID42237::_ID3350( level._ID805, ::_unknown_0379 );
    _func_0DB( "vehHudTargetSize", 30 );
    _func_0DB( "vehHudTargetScreenEdgeClampBufferLeft", 95 );
    _func_0DB( "vehHudTargetScreenEdgeClampBufferRight", 95 );
    _func_0DB( "vehHudTargetScreenEdgeClampBufferTop", 139 );
    _func_0DB( "vehHudTargetScreenEdgeClampBufferBottom", 134 );
    _func_0DB( "vehHudTargetingCornerLockTime", level._ID50957 / 1000 );
    _ID42237::_ID3350( level._ID805, ::_unknown_0484 );
}

_ID48639( var_0, var_1 )
{
    self endon( "stop_lockon_sound" );

    for (;;)
    {
        self _meth_82FF( var_0 );
        wait(var_1);
    }
}
