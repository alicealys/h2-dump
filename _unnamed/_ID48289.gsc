// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID53152()
{
    if ( !_func_02F( level._ID48408 ) )
        level._ID48408 = [];

    level._ID48408[self._ID39468] = self;

    if ( _func_02F( level._ID47489._ID45899 ) && !_func_02F( level._ID45535 ) )
    {
        level endon( "draw_target_end" );

        while ( _func_02F( level._ID49368 ) && level._ID49368 == _func_03D() )
            wait 0.05;

        level._ID49368 = _func_03D();

        if ( _func_1A7( self ) )
            _ID50736::_ID49591();
    }

    self waittill( "death" );
    level._ID48408[self._ID39468] = undefined;

    if ( !_func_02F( self ) )
        return;

    if ( _func_02F( self._ID49554 ) )
    {
        self._ID49554 = undefined;
        _func_0A3( self );
    }
}

_ID43601()
{
    if ( _func_02F( level._ID39406 ) )
        return level._ID39406;

    var_0 = _ID50736::_ID52892();
    return var_0;
}

_ID52286( var_0 )
{
    var_1 = level._ID805;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = _ID42237::_ID35164();
        var_3._ID740 = self._ID740;
        var_3._ID49526 = self;
        var_3 thread _ID50736::_ID53491( var_0, var_2 );
        var_2 _unknown_00EF( var_3 );
        var_2 thread _ID50736::_ID47394();
    }

    var_clear_3
    var_clear_0
}

_ID49607( var_0 )
{
    if ( !_func_02F( self._ID54358 ) )
        self._ID54358 = [];

    self._ID54358[self._ID54358.size] = var_0;
}

_ID51998()
{
    self _meth_8319( "remote_missile_detonator" );
    self._ID29480 = 4;
    thread _unknown_0160();
    _ID42237::_ID14388( "predator_missile_launch_allowed" );
    self _meth_8313( self._ID29480, "weapon", "remote_missile_detonator" );
}

_ID43344()
{
    level endon( "stop_uav_reload" );
    level endon( "special_op_terminated" );

    if ( _ID42237::_ID14385( "uav_reloading" ) )
    {
        if ( _func_02F( level._ID45535 ) )
            return;

        _ID50736::_ID52102();

        if ( _ID42237::_ID14385( "uav_collecting_stats" ) )
        {
            level waittill( "uav_collecting_stats" );
            _ID50736::_ID43560();
        }

        if ( _func_02F( level._ID45535 ) )
            return;

        level._ID45690 = undefined;

        if ( _ID42237::_ID14385( "uav_reloading" ) )
            level waittill( "uav_reloading" );

        if ( _func_02F( level._ID45535 ) )
            return;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            return;

        if ( self _meth_8303( self._ID49783 ) < 1 )
        {
            _ID50736::_ID50531();
            return;
        }

        _ID50736::_ID47106();
        thread _ID50736::_ID52135( "uav_online" );
        thread _ID50736::_ID44898();
    }
}

_ID43866()
{
    _ID50736::_ID47687( ::_unknown_01D2 );
}

_ID50583()
{
    _ID50736::_ID47687();
}

_ID44274()
{
    return _func_02F( level._ID54674 );
}
