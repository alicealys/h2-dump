// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID53674()
{
    _ID42475::_ID34575( "snd_register_vehicle", "blackhawk", ::_unknown_001F );
}

_ID45754()
{
    if ( _func_02F( self._ID34561 ) )
    {
        wait 1.0;
        _unknown_0036( 1.0 );
    }

    var_0 = _func_1A5();
    var_0._ID28452 = "blackhawk";
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
}

_ID46674( var_0 )
{
    if ( _func_02F( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
    }
}

_ID52062()
{
    _ID42471::_ID4495( "blackhawk" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "h1r_blackhawk_engine_far_lp" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "blackhawk_engine_far_vel2vol" );
    _ID42471::_ID4486( "pitch", "blackhawk_engine_far_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 0.65, 0.3 );
    _ID42471::_ID4486( "pitch", "blackhawk_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "h1r_blackhawk_engine_close_lp" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "blackhawk_engine_close_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 0.65, 0.3 );
    _ID42471::_ID4486( "pitch", "blackhawk_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4493( "h1r_blackhawk_start_rev", "blackhawk_start_rev_duck" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "blackhawk_start_rev_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4493( "h1r_blackhawk_pass_by", "blackhawk_pass_by_duck_envelope" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "pitch", "blackhawk_pass_by_vel2pch" );
    _ID42471::_ID4486( "volume", "blackhawk_pass_by_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_hover", ::_unknown_02F5, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fly", ::_unknown_0324, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fly_from_hover", ::_unknown_0345, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4485( "h1r_blackhawk_start_rev" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_distant", ::_unknown_03A1, [ "distance2d" ] );
    _ID42471::_ID4483( "h1r_blackhawk_engine_far_lp" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_flyby", ::_unknown_039D, [ "speed", "distance2d", "relative_speed" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4485( "h1r_blackhawk_pass_by" );
    _ID42471::_ID4505();
    _ID42471::_ID4504();
    _ID42471::_ID4496( 0.25, 0.5 );
    _ID42471::_ID4498( "engine_oneshots", "state_fly", "to_state_fly", 50, 1.0 );
    _ID42471::_ID4497( "state_hover" );
    _ID42471::_ID4487( "state_fly", "to_state_fly_from_hover" );
    _ID42471::_ID4487( "state_distant", "to_state_distant" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_distant" );
    _ID42471::_ID4487( "state_hover", "to_state_hover" );
    _ID42471::_ID4487( "state_fly", "to_state_fly" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_fly", 0.05 );
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
    _ID42471::_ID4480( "blackhawk_engine_far_vel2vol", [ [ 0, 1.0 ], [ 10, 1.0 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "blackhawk_engine_close_vel2vol", [ [ 0, 1.0 ], [ 20, 1.0 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "blackhawk_engine_far_vel2pch", [ [ 0, 0.9 ], [ 10, 1.0 ], [ 20, 1.1 ] ] );
    _ID42471::_ID4480( "blackhawk_start_rev_duck", [ [ 0.0, 1.0 ], [ 0.25, 1.0 ], [ 0.3, 0.7 ], [ 0.7, 1.0 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4480( "blackhawk_start_rev_vel2vol", [ [ 0.0, 0.0 ], [ 3.0, 0.3 ], [ 5.0, 0.7 ], [ 8.0, 0.8 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "blackhawk_pass_by_duck_envelope", [ [ 0.0, 1.0 ], [ 0.15, 1.0 ], [ 0.3, 0.5 ], [ 0.5, 0.55 ], [ 0.6, 1.0 ] ] );
    _ID42471::_ID4480( "blackhawk_pass_by_vel2vol", [ [ 0.0, 0.0 ], [ 9.06, 0.0 ], [ 15.1, 0.7 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "blackhawk_pass_by_vel2pch", [ [ 0.0, 0.9 ], [ 15.1, 1.0 ], [ 150.0, 1.1 ] ] );
    _ID42471::_ID4480( "blackhawk_doppler2pch", [ [ 0.0, 0.0 ], [ 2.0, 2.0 ] ] );
    _ID42471::_ID4511();
}

_ID53316( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID11124( var_3 );

    if ( var_2 < 1.1 && var_4 < 3000 )
        return 1;

    return 0;
}

_ID48874( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID11124( var_3 );

    if ( var_2 >= 1.1 && var_4 < 3000 )
        return 1;

    return 0;
}

_ID44561( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = var_0["relative_speed"];
    var_5 = var_0["speed"];

    if ( !_func_02F( var_1._ID14624 ) )
    {
        var_1._ID14624 = _func_1A5();
        var_1._ID14624._ID28476 = var_3;
        var_1._ID14624._ID28479 = 0;
    }
    else
    {
        var_6 = var_3 - var_1._ID14624._ID28476;
        var_7 = var_4 * 63360 / 3600;

        if ( var_6 < 0 && var_5 >= 15.1 && var_3 <= var_7 * 2.1 )
            var_2 = 1;

        var_1._ID14624._ID28476 = var_3;
        var_1._ID14624._ID28479 = var_6;
    }

    return var_2;
}

_ID51918( var_0, var_1 )
{
    var_2 = var_0["distance2d"];
    var_3 = _ID42471::_ID11124( var_2 );

    if ( var_3 >= 3000 )
        return 1;

    return 0;
}