// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID53301()
{
    _ID42475::_ID34575( "snd_register_vehicle", "mi28", ::_unknown_001F );
}

_ID48477()
{
    if ( _func_02F( self._ID34561 ) )
    {
        wait 1.0;
        _unknown_0036( 1.0 );
    }

    var_0 = _func_1A5();
    var_0._ID28452 = "mi28";
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
}

_ID47184( var_0 )
{
    if ( _func_02F( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
    }
}

_ID46308()
{
    _ID42471::_ID4495( "mi28" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "havoc_engine_dist_loop" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "mi28_dist_towards_vel2vol" );
    _ID42471::_ID4486( "pitch", "mi28_dist_towards_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 0.65, 0.3 );
    _ID42471::_ID4486( "pitch", "mi28_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "havoc_engine_high" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "mi28_close_towards_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 0.65, 0.3 );
    _ID42471::_ID4486( "pitch", "mi28_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "havoc_idle_high" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "mi28_close_towards_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 0.65, 0.3 );
    _ID42471::_ID4486( "pitch", "mi28_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4493( "h1r_havoc_start_rev", "mi28_windup_duck" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "mi28_by_windup_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4493( "h1r_havoc_pass_by", "mi28_flyby_duck_envelope" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "pitch", "mi28_flyby_vel2pch" );
    _ID42471::_ID4486( "volume", "mi28_flyby_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_hover", ::_unknown_0357, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fly", ::_unknown_0386, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fly_from_hover", ::_unknown_03A7, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4485( "h1r_havoc_start_rev" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_distant", ::_unknown_0415, [ "distance2d" ] );
    _ID42471::_ID4483( "havoc_engine_dist_loop" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_flyby", ::_unknown_03FB, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4485( "h1r_havoc_pass_by" );
    _ID42471::_ID4505();
    _ID42471::_ID4504();
    _ID42471::_ID4496( 0.25, 0.5 );
    _ID42471::_ID4498( "engine_oneshots", "state_fly", "to_state_fly", 50, 1.0 );
    _ID42471::_ID4497( "state_hover" );
    _ID42471::_ID4487( "state_fly", "to_state_fly_from_hover" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_distant" );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_fly", "to_state_fly" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_fly" );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_flyby", "to_state_flyby" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_flyby", 7.0 );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_fly", "to_state_fly" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4513();
    _ID42471::_ID4514();
    _ID42471::_ID4512();
    _ID42471::_ID4480( "mi28_dist_towards_vel2vol", [ [ 0, 1.0 ], [ 10, 1.0 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "mi28_close_towards_vel2vol", [ [ 0, 1.0 ], [ 20, 1.0 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "mi28_dist_towards_vel2pch", [ [ 0, 0.8 ], [ 10, 1.0 ], [ 20, 1.1 ] ] );
    _ID42471::_ID4480( "mi28_windup_duck", [ [ 0.0, 1.0 ], [ 0.25, 1.0 ], [ 0.3, 0.7 ], [ 0.7, 1.0 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4480( "mi28_by_windup_vel2vol", [ [ 0.0, 0.0 ], [ 3.0, 0.3 ], [ 5.0, 0.7 ], [ 8.0, 0.8 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "mi28_flyby_duck_envelope", [ [ 0.0, 1.0 ], [ 0.15, 1.0 ], [ 0.3, 0.5 ], [ 0.5, 0.55 ], [ 0.6, 1.0 ] ] );
    _ID42471::_ID4480( "mi28_flyby_vel2vol", [ [ 0.0, 0.0 ], [ 16.08, 0.0 ], [ 20.1, 0.5 ], [ 40.2, 0.8 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "mi28_flyby_vel2pch", [ [ 0.0, 0.8 ], [ 20.1, 1.0 ], [ 150.0, 1.1 ] ] );
    _ID42471::_ID4480( "mi28_doppler2pch", [ [ 0.0, 0.0 ], [ 2.0, 2.0 ] ] );
    _ID42471::_ID4511();
}

_ID47904( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID11124( var_3 );

    if ( var_2 < 1.1 && var_4 < 3000 )
        return 1;

    return 0;
}

_ID50091( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID11124( var_3 );

    if ( var_2 >= 1.1 && var_4 < 3000 )
        return 1;

    return 0;
}

_ID50763( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = var_0["speed"];

    if ( !_func_02F( var_1._ID14624 ) )
    {
        var_1._ID14624 = _func_1A5();
        var_1._ID14624._ID28476 = var_3;
        var_1._ID14624._ID28479 = 0;
    }
    else
    {
        var_5 = var_3 - var_1._ID14624._ID28476;
        var_6 = var_4 * 63360 / 3600;

        if ( var_5 < 0 && var_3 <= var_6 * 2.1 && var_4 >= 20.1 )
        {
            var_7 = _ID42471::_ID4557();

            if ( _unknown_0797( var_7 ) )
                var_2 = 1;
        }

        var_1._ID14624._ID28476 = var_3;
        var_1._ID14624._ID28479 = var_5;
    }

    return var_2;
}

_ID27862( var_0 )
{
    var_1 = _func_11F( _ID42237::_ID14539( var_0._ID65 ) );
    var_2 = _func_119( _ID42237::_ID14540( level._ID794._ID740 ) - var_0._ID740 );
    var_3 = _func_0FB( var_1, var_2 );

    if ( var_3 > 0 )
        return 1;
    else
        return 0;
}

_ID43106( var_0, var_1 )
{
    var_2 = var_0["distance2d"];
    var_3 = _ID42471::_ID11124( var_2 );

    if ( var_3 >= 3000 )
        return 1;

    return 0;
}
