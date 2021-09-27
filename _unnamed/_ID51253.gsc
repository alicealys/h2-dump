// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45689()
{
    _ID42471::_ID4518( "about_to_stop", ::_unknown_0107 );
    _ID42475::_ID34575( "snd_register_vehicle", "m1a1", ::_unknown_003E );
}

_ID54500()
{
    if ( _func_02F( self._ID34561 ) )
    {
        wait 1.0;
        _unknown_0055( 1.0 );
    }

    thread _unknown_004A();
    var_0 = _func_1A5();
    var_0._ID28452 = "m1a1";
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
}

_ID34578()
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    self waittill( "about_to_stop",  var_0  );

    if ( var_0 > 1.0 )
    {
        wait(var_0 - 1.0);

        if ( !_func_02F( self ) )
            return;
    }

    self._ID1732 = 1;
}

_ID48664( var_0 )
{
    if ( _func_02F( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
    }
}

_ID54697()
{
    _ID42471::_ID4495( "m1a1" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "m1a1_abrams_idle_close_loop" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "m1a1_idle_vel2vol" );
    _ID42471::_ID4486( "pitch", "m1a1_idle_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "m1a1_abrams_engine_close_loop" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "m1a1_engine_vel2vol" );
    _ID42471::_ID4486( "pitch", "m1a1_engine_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "m1a1_abrams_engine_treads_loop" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "m1a1_treads_vel2vol" );
    _ID42471::_ID4486( "pitch", "m1a1_treads_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "m1a1_abrams_engine_treads_loop_2" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4486( "volume", "m1a1_treads_vel2vol" );
    _ID42471::_ID4486( "pitch", "m1a1_treads_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_idle", ::_unknown_027B );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4494( "speed", 1.0, 1.0 );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "about_to_stop" );
    _ID42471::_ID4510();
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_engine", ::_unknown_02BE );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4494( "speed", 1.0, 1.0 );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "about_to_stop" );
    _ID42471::_ID4510();
    _ID42471::_ID4505();
    _ID42471::_ID4504();
    _ID42471::_ID4496();
    _ID42471::_ID4498( "main_oneshots", "state_idle", "to_state_idle", 50, 0.1 );
    _ID42471::_ID4497( "state_idle" );
    _ID42471::_ID4487( "state_engine", "to_state_engine" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_engine", 1.0 );
    _ID42471::_ID4487( "state_idle", "to_state_idle" );
    _ID42471::_ID4513();
    _ID42471::_ID4514();
    _ID42471::_ID4512();
    _ID42471::_ID4480( "m1a1_idle_vel2vol", [ [ 0.0, 1.0 ], [ 8.0, 0.0 ] ] );
    _ID42471::_ID4480( "m1a1_idle_vel2pch", [ [ 0.0, 1.0 ], [ 2.5, 1.25 ] ] );
    _ID42471::_ID4480( "m1a1_engine_vel2vol", [ [ 0.0, 0.0 ], [ 5.0, 0.7 ], [ 8.0, 1.0 ] ] );
    _ID42471::_ID4480( "m1a1_engine_vel2pch", [ [ 0.0, 0.8 ], [ 8.0, 1.0 ], [ 10.0, 1.1 ] ] );
    _ID42471::_ID4480( "m1a1_treads_vel2vol", [ [ 0.0, 0.0 ], [ 5.0, 0.7 ], [ 8.0, 1.0 ] ] );
    _ID42471::_ID4480( "m1a1_treads_vel2pch", [ [ 0.0, 0.8 ], [ 8.0, 1.2 ] ] );
    _ID42471::_ID4511();
}

_ID50589()
{
    var_0 = _ID42471::_ID4557();
    return _func_02F( var_0._ID1732 );
}

_ID48647( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["about_to_stop"];

    if ( var_2 <= 0.01 || var_3 > 0.5 )
        return 1;

    return 0;
}

_ID45838( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["about_to_stop"];

    if ( var_2 > 0.01 && var_3 < 0.5 )
        return 1;

    return 0;
}
