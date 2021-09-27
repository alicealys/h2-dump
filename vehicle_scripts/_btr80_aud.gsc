// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

snd_init_btr80()
{
    _ID42471::_ID4518( "about_to_stop", ::_unknown_013B );
    _ID42475::_ID34575( "snd_register_vehicle", "btr80", ::_unknown_003D );
}

snd_start_btr80()
{
    if ( _func_02F( self._ID34561 ) )
    {
        wait 1;
        _unknown_004E();
    }

    thread _unknown_0043();
    var_0 = _func_1A5();
    var_0._ID28452 = "btr80";
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
    thread _unknown_01BD();
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

snd_stop_btr80()
{
    if ( _func_02F( self._ID34561 ) )
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
    _ID42471::_ID4489( "to_state_idle_initial", ::_unknown_0283 );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_idle_from_rampdown", ::_unknown_02AC, [ "about_to_stop", "speed_mph" ] );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampup", ::_unknown_02DD, [ "about_to_stop", "speed_mph" ] );
    _ID42471::_ID4483( [ "btr80_idle", "btr80_engine_sustain" ] );
    _ID42471::_ID4485( [ "btr80_rampup" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampdown", ::_unknown_0326, [ "about_to_stop", "speed_mph" ] );
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
    return _func_02F( var_0._ID1732 );
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

    if ( _func_02F( var_1._ID28488 ) && var_4 > 1.0 && var_4 - var_1._ID28488 > 0.15 && var_3 <= 0.5 )
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

    if ( _func_02F( var_1._ID28488 ) && var_4 > 1.0 && var_4 - var_1._ID28488 < -0.15 || var_3 > 0.5 )
        var_2 = 1;

    var_1._ID28488 = var_4;
    return var_2;
}

snd_handle_treads()
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    var_0 = [ "TAG_WHEEL_FRONT_LEFT", "TAG_WHEEL_FRONT_RIGHT" ];
    var_1 = _func_06A( "script_origin", ( 0, 0, 0 ) );
    var_2 = [ "TAG_WHEEL_BACK_LEFT", "TAG_WHEEL_BACK_RIGHT" ];
    var_3 = _func_06A( "script_origin", self._ID740 );
    _unknown_0654( var_1, var_0 );
    _unknown_065A( var_3, var_2 );
    var_1 _meth_807C( "btr80_technical_treads" );
    var_3 _meth_807C( "btr80_technical_treads" );
    thread _unknown_065E( var_1, var_3 );
    thread _unknown_0693( var_1, var_3 );
}

monitor_treads_volume_and_pitch( var_0, var_1 )
{
    self endon( "death" );
    self endon( "snd_stop_vehicle" );
    var_2 = 0;

    for (;;)
    {
        var_2 = self _meth_8290();
        var_3 = _func_0EE( var_2 / 10, 0, 1 );
        var_0 _meth_8076( var_3 );
        var_1 _meth_8076( var_3 );
        wait 0.15;
    }
}

link_ent_between_wheels( var_0, var_1 )
{
    var_2 = var_1[0];
    var_3 = ( 0, 0, 0 );
    var_4 = var_1;

    for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
    {
        var_5 = var_4[var_6];
        var_3 += self _meth_818C( var_5 );
    }

    var_clear_2
    var_clear_0
    var_3 /= var_1.size;
    var_3 = _ID42407::_ID41812( var_3 );
    var_7 = self _meth_818C( var_2 );
    var_7 = _ID42407::_ID41812( var_7 );
    var_7 = var_3 - var_7;
    var_0 _meth_8053( self, var_2, var_7, ( 0, 0, 0 ) );
}

stop_treads_on_death( var_0, var_1 )
{
    _ID42237::_ID41098( "death", "snd_stop_vehicle" );
    var_0 _meth_80B2();
    var_1 _meth_80B2();
    wait 0.05;
    var_0 _meth_80B7();
    var_1 _meth_80B7();
}
