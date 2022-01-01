// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID49539()
{
    _ID42471::_ID4518( "about_to_stop", ::_ID44306 );
    _ID42475::_ID34575( "snd_register_vehicle", "technical", ::_ID47512 );
}

_ID52009()
{
    if ( isdefined( self._ID34561 ) )
    {
        wait 1.0;
        _ID53737( 1.0 );
    }

    thread _ID34578();
    var_0 = spawnstruct();
    var_0._ID28452 = "technical";
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

        if ( !isdefined( self ) )
            return;
    }

    self._ID1732 = 1;
}

_ID53737( var_0 )
{
    if ( isdefined( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
    }
}

_ID47512()
{
    _ID42471::_ID4495( "technical" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "h1r_technical_idle" );
    _ID42471::_ID4494( "speed", 0.3, 0.1 );
    _ID42471::_ID4486( "volume", "technical_idle_vel2vol" );
    _ID42471::_ID4486( "pitch", "technical_idle_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "h1r_technical_engine" );
    _ID42471::_ID4494( "speed", 0.1, 0.65 );
    _ID42471::_ID4486( "volume", "technical_engine_vel2vol" );
    _ID42471::_ID4486( "pitch", "technical_engine_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "h1r_technical_treads" );
    _ID42471::_ID4494( "speed", 0.1, 0.65 );
    _ID42471::_ID4486( "volume", "technical_treads_vel2vol" );
    _ID42471::_ID4486( "pitch", "technical_treads_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_idle", ::_ID44117 );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4494( "speed" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "about_to_stop" );
    _ID42471::_ID4510();
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_engine", ::_ID47731 );
    _ID42471::_ID4483( "ALL" );
    _ID42471::_ID4494( "speed" );
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
    _ID42471::_ID4480( "technical_idle_vel2vol", [ [ 0.0, 1.0 ], [ 10.0, 0.0 ] ] );
    _ID42471::_ID4480( "technical_idle_vel2pch", [ [ 0.0, 1.0 ], [ 10.0, 1.25 ] ] );
    _ID42471::_ID4480( "technical_engine_vel2vol", [ [ 0.0, 0.0 ], [ 4.0, 0.1 ], [ 10.0, 1.0 ] ] );
    _ID42471::_ID4480( "technical_engine_vel2pch", [ [ 0.0, 0.8 ], [ 4.0, 1.0 ], [ 16.0, 1.1 ] ] );
    _ID42471::_ID4480( "technical_treads_vel2vol", [ [ 0.0, 0.0 ], [ 4.0, 0.4 ], [ 8.0, 1.0 ] ] );
    _ID42471::_ID4480( "technical_treads_vel2pch", [ [ 0.0, 0.8 ], [ 8.0, 1.0 ], [ 16.0, 1.1 ] ] );
    _ID42471::_ID4511();
}

_ID44306()
{
    var_0 = _ID42471::_ID4557();
    return isdefined( var_0._ID1732 );
}

_ID44117( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["about_to_stop"];

    if ( var_2 <= 0.1 || var_3 > 0.5 )
        return 1;

    return 0;
}

_ID47731( var_0, var_1 )
{
    var_2 = var_0["speed"];
    var_3 = var_0["about_to_stop"];

    if ( var_2 > 0.1 && var_3 <= 0.5 )
        return 1;

    return 0;
}
