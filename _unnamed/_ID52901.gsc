// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID53457()
{
    _ID42475::_ID34575( "snd_register_vehicle", "hind", ::_unknown_001F );
}

_ID49962()
{
    if ( _func_02F( self._ID34561 ) )
    {
        wait 1.0;
        _unknown_0036( 1.0 );
    }

    var_0 = _func_1A5();
    var_0._ID28452 = "hind";
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
}

_ID54593( var_0 )
{
    if ( _func_02F( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
    }
}

_ID53885()
{
    _ID42471::_ID4495( "hind" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "hind_engine_low" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "hind_engine_far_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 1.0, 1.0 );
    _ID42471::_ID4486( "pitch", "hind_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "hind_idle_low" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "hind_engine_close_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "doppler", 1.0, 1.0 );
    _ID42471::_ID4486( "pitch", "hind_doppler2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4493( "h1r_hind_start_rev", "hind_start_rev_duck" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "hind_start_rev_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4493( "h1r_hind_pass_by", "hind_pass_by_duck_envelope" );
    _ID42471::_ID4509();
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_hover", ::_unknown_029B, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fly", ::_unknown_02C9, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fly_from_hover", ::_unknown_02EA, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4485( "h1r_hind_start_rev" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_distant", ::_unknown_0341, [ "distance2d" ] );
    _ID42471::_ID4483( "hind_engine_low" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_flyby", ::_unknown_033C, [ "speed", "distance2d" ] );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4485( "h1r_hind_pass_by" );
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
    _ID42471::_ID4480( "hind_engine_far_vel2vol", [ [ 0, 1.0 ], [ 10, 1.0 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "hind_engine_close_vel2vol", [ [ 0, 0.5 ], [ 20, 0.8 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "hind_engine_far_vel2pch", [ [ 0, 0.8 ], [ 10, 1.0 ], [ 20, 1.1 ] ] );
    _ID42471::_ID4480( "hind_start_rev_duck", [ [ 0.0, 1.0 ], [ 0.25, 1.0 ], [ 0.3, 0.7 ], [ 0.7, 1.0 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4480( "hind_start_rev_vel2vol", [ [ 0.0, 0.0 ], [ 3.0, 0.3 ], [ 5.0, 0.7 ], [ 8.0, 0.8 ], [ 150.0, 1.0 ] ] );
    _ID42471::_ID4480( "hind_pass_by_duck_envelope", [ [ 0.0, 1.0 ], [ 0.15, 1.0 ], [ 0.3, 0.5 ], [ 0.5, 0.55 ], [ 0.6, 1.0 ] ] );
    _ID42471::_ID4480( "hind_doppler2pch", [ [ 0.0, 0.0 ], [ 2.0, 2.0 ] ] );
    _ID42471::_ID4511();
}

_ID50934( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID11124( var_3 );
    return var_2 < 1.1 && var_4 < 3000;
}

_ID45867( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["distance2d"];
    var_4 = _ID42471::_ID11124( var_3 );
    return var_2 >= 1.1 && var_4 < 3000;
}

_ID53564( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["distance2d"];
    var_4 = var_0["speed"];

    if ( _func_02F( level._ID52712 ) && level._ID52712 )
        return 0;

    if ( !_func_02F( var_1._ID14624 ) )
    {
        var_1._ID14624 = _func_1A5();
        var_1._ID14624._ID28476 = var_3;
    }
    else
    {
        var_5 = var_3 - var_1._ID14624._ID28476;
        var_6 = var_4 * 63360 / 60 / 60;
        var_7 = var_6 * 1.8;
        var_2 = var_5 < 0 && var_3 <= var_7 && var_4 >= 20.1;
        var_1._ID14624._ID28476 = var_3;
    }

    return var_2;
}

_ID47415( var_0, var_1 )
{
    var_2 = var_0["distance2d"];
    var_3 = _ID42471::_ID11124( var_2 );
    return var_3 >= 3000;
}
