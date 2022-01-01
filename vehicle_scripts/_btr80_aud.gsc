// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

snd_init_btr80()
{
    _ID42471::_ID4518( "about_to_stop", ::btr80_input_callback_about_to_stop );
    _ID42475::_ID34575( "snd_register_vehicle", "btr80", ::snd_btr80_constructor );
}

snd_start_btr80()
{
    if ( isdefined( self._ID34561 ) )
    {
        wait 1;
        snd_stop_btr80();
    }

    thread _ID34578();
    var_0 = spawnstruct();
    var_0._ID28452 = "btr80";
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
    thread snd_handle_treads();
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

snd_stop_btr80()
{
    if ( isdefined( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle" );
        self notify( "snd_stop_vehicle" );
    }
}

snd_btr80_constructor()
{
    _ID42471::_ID4495( "btr80" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "btr80_idle" );
    _ID42471::_ID4494( "speed", 0.3, 0.1 );
    _ID42471::_ID4486( "volume", "btr80_idle_vel2vol" );
    _ID42471::_ID4486( "pitch", "btr80_idle_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "btr80_engine_sustain" );
    _ID42471::_ID4494( "speed", 0.1, 0.65 );
    _ID42471::_ID4486( "volume", "btr80_engine_vel2vol" );
    _ID42471::_ID4486( "pitch", "btr80_engine_vel2pch" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4493( "btr80_rampup", "btr80_rampup_duck", 0.4, 2 );
    _ID42471::_ID4509();
    _ID42471::_ID4493( "btr80_rampdown", "btr80_rampdown_duck", 0.4, 2 );
    _ID42471::_ID4509();
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_idle_initial", ::btr80_condition_callback_to_idle_initial );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_idle_from_rampdown", ::btr80_condition_callback_to_idle_from_rampdown, [ "about_to_stop", "speed_mph" ] );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampup", ::btr80_condition_callback_to_rampup, [ "about_to_stop", "speed_mph" ] );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4485( [ "btr80_rampup" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampdown", ::btr80_condition_callback_to_rampdown, [ "about_to_stop", "speed_mph" ] );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4485( [ "btr80_rampdown" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4504();
    _ID42471::_ID4496();
    _ID42471::_ID4498( "main_oneshots", "state_idle", "to_state_idle_initial", 50, 0.05 );
    _ID42471::_ID4497( "state_idle" );
    _ID42471::_ID4487( "state_rampup", "to_state_rampup" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_rampup" );
    _ID42471::_ID4487( "state_rampdown", "to_state_rampdown" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_rampdown" );
    _ID42471::_ID4487( "state_rampup", "to_state_rampup" );
    _ID42471::_ID4513();
    _ID42471::_ID4514();
    _ID42471::_ID4512();
    _ID42471::_ID4480( "btr80_idle_vel2vol", [ [ 0.0, 1.0 ], [ 6.0, 0.9 ], [ 10.0, 0.0 ] ] );
    _ID42471::_ID4480( "btr80_idle_vel2pch", [ [ 0.0, 1.0 ], [ 10.0, 1.2 ] ] );
    _ID42471::_ID4480( "btr80_engine_vel2vol", [ [ 0.0, 0.0 ], [ 4.0, 0.1 ], [ 10.0, 1.0 ] ] );
    _ID42471::_ID4480( "btr80_engine_vel2pch", [ [ 0.0, 0.8 ], [ 6.0, 1.0 ], [ 15.0, 1.1 ] ] );
    _ID42471::_ID4480( "btr80_rampdown_vel2vol", [ [ 0.0, 1.0 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4480( "btr80_rampup_vel2vol", [ [ 0.0, 1.0 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4480( "btr80_rampup_vel2pit", [ [ 0.0, 1.0 ], [ 40.0, 1.0 ] ] );
    _ID42471::_ID4480( "btr80_rampup_duck", [ [ 0.0, 1.0 ], [ 1.0, 0.0 ], [ 1.6, 0.0 ], [ 2.7, 1.0 ] ] );
    _ID42471::_ID4480( "btr80_rampdown_duck", [ [ 0.0, 1.0 ], [ 0.1, 0.0 ], [ 1.2, 1.0 ] ] );
    _ID42471::_ID4511();
}

btr80_input_callback_about_to_stop()
{
    var_0 = _ID42471::_ID4557();
    return isdefined( var_0._ID1732 );
}

btr80_condition_callback_to_idle_initial( var_0, var_1 )
{
    return 1;
}

btr80_condition_callback_to_idle_from_rampdown( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["speed_mph"];
    var_4 = _ID42471::_ID4557();

    if ( var_3 < 1.0 )
        var_2 = 1;

    return var_2;
}

btr80_condition_callback_to_rampup( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["about_to_stop"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( isdefined( var_1._ID28488 ) && var_4 > 1.0 && var_4 - var_1._ID28488 > 0.15 && var_3 <= 0.5 )
        var_2 = 1;

    var_1._ID28488 = var_4;
    return var_2;
}

btr80_condition_callback_to_rampdown( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["about_to_stop"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( isdefined( var_1._ID28488 ) && var_4 > 1.0 && var_4 - var_1._ID28488 < -0.15 || var_3 > 0.5 )
        var_2 = 1;

    var_1._ID28488 = var_4;
    return var_2;
}

snd_handle_treads()
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    var_0 = [ "TAG_WHEEL_FRONT_LEFT", "TAG_WHEEL_FRONT_RIGHT" ];
    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_2 = [ "TAG_WHEEL_BACK_LEFT", "TAG_WHEEL_BACK_RIGHT" ];
    var_3 = spawn( "script_origin", self._ID740 );
    link_ent_between_wheels( var_1, var_0 );
    link_ent_between_wheels( var_3, var_2 );
    var_1 playloopsound( "btr80_technical_treads" );
    var_3 playloopsound( "btr80_technical_treads" );
    thread monitor_treads_volume_and_pitch( var_1, var_3 );
    thread stop_treads_on_death( var_1, var_3 );
}

monitor_treads_volume_and_pitch( var_0, var_1 )
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    var_2 = 0;

    for (;;)
    {
        var_2 = self vehicle_getspeed();
        var_3 = clamp( var_2 / 10, 0, 1 );
        var_0 setvolume( var_3 );
        var_1 setvolume( var_3 );
        wait 0.15;
    }
}

link_ent_between_wheels( var_0, var_1 )
{
    var_2 = var_1[0];
    var_3 = ( 0, 0, 0 );

    foreach ( var_5 in var_1 )
        var_3 += self gettagorigin( var_5 );

    var_3 /= var_1.size;
    var_3 = _ID42407::_ID41812( var_3 );
    var_7 = self gettagorigin( var_2 );
    var_7 = _ID42407::_ID41812( var_7 );
    var_7 = var_3 - var_7;
    var_0 linkto( self, var_2, var_7, ( 0, 0, 0 ) );
}

stop_treads_on_death( var_0, var_1 )
{
    _ID42237::_ID41098( "death", "snd_stop_vehicle" );
    var_0 stopsounds();
    var_1 stopsounds();
    wait 0.05;
    var_0 delete();
    var_1 delete();
}
