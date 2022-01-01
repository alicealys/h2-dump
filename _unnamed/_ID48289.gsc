// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID53152()
{
    if ( !isdefined( level._ID48408 ) )
        level._ID48408 = [];

    level._ID48408[self._ID39468] = self;

    if ( isdefined( level._ID47489._ID45899 ) && !isdefined( level._ID45535 ) )
    {
        level endon( "draw_target_end" );

        while ( isdefined( level._ID49368 ) && level._ID49368 == gettime() )
            wait 0.05;

        level._ID49368 = gettime();

        if ( isalive( self ) )
            _ID50736::_ID49591();
    }

    self waittill( "death" );
    level._ID48408[self._ID39468] = undefined;

    if ( !isdefined( self ) )
        return;

    if ( isdefined( self._ID49554 ) )
    {
        self._ID49554 = undefined;
        target_remove( self );
    }
}

_ID43601()
{
    if ( isdefined( level._ID39406 ) )
        return level._ID39406;

    var_0 = _ID50736::_ID52892();
    return var_0;
}

_ID52286( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        var_3 = _ID42237::_ID35164();
        var_3._ID740 = self._ID740;
        var_3._ID49526 = self;
        var_3 thread _ID50736::_ID53491( var_0, var_2 );
        var_2 _ID49607( var_3 );
        var_2 thread _ID50736::_ID47394();
    }
}

_ID49607( var_0 )
{
    if ( !isdefined( self._ID54358 ) )
        self._ID54358 = [];

    self._ID54358[self._ID54358.size] = var_0;
}

_ID51998()
{
    self giveweapon( "remote_missile_detonator" );
    self._ID29480 = 4;
    thread _ID43866();
    _ID42237::_ID14388( "predator_missile_launch_allowed" );
    self setactionslot( self._ID29480, "weapon", "remote_missile_detonator" );
}

_ID43344()
{
    level endon( "stop_uav_reload" );
    level endon( "special_op_terminated" );

    if ( _ID42237::_ID14385( "uav_reloading" ) )
    {
        if ( isdefined( level._ID45535 ) )
            return;

        _ID50736::_ID52102();

        if ( _ID42237::_ID14385( "uav_collecting_stats" ) )
        {
            level waittill( "uav_collecting_stats" );
            _ID50736::_ID43560();
        }

        if ( isdefined( level._ID45535 ) )
            return;

        level._ID45690 = undefined;

        if ( _ID42237::_ID14385( "uav_reloading" ) )
            level waittill( "uav_reloading" );

        if ( isdefined( level._ID45535 ) )
            return;

        if ( !_ID42237::_ID14385( "uav_enabled" ) )
            return;

        if ( self getweaponammoclip( self._ID49783 ) < 1 )
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
    _ID50736::_ID47687( ::_ID43344 );
}

_ID50583()
{
    _ID50736::_ID47687();
}

_ID44274()
{
    return isdefined( level._ID54674 );
}
