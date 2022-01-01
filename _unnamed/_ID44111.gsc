// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _ID42475::_ID34575( "snd_register_vehicle", "snowmobile_player", ::_ID52595 );
}

_ID50252()
{
    if ( isdefined( self._ID34561 ) )
    {
        wait 1.0;
        _ID45992( 1.0 );
    }

    var_0 = spawnstruct();
    var_0._ID28452 = "snowmobile_player";
    self vehicle_turnengineoff();
    _ID42475::_ID34575( "snd_start_vehicle", var_0 );
    self waittill( "vehicle_mount" );
    _ID42476::_ID34518( "interior_vehicle" );
}

_ID45992( var_0 )
{
    if ( isdefined( self._ID34561 ) )
    {
        _ID42475::_ID34575( "snd_stop_vehicle", var_0 );
        self notify( "snd_stop_vehicle" );
        _ID42476::_ID34512( "interior_vehicle" );
    }
}

_ID52595()
{
    _ID42471::_ID4495( "snowmobile_player" );
    _ID42471::_ID4490();
    _ID42471::_ID4491( "snowmobile_player_idle", 2.0 );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_idle_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "snowmobile_player_idle_3d", 5.0 );
    _ID42471::_ID4507();
    _ID42471::_ID4491( "snowmobile_player_sustain", 1.0 );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_vel2vol" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_vel2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "steering" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_steer2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "snowmobile_player_sustain_high_speed", 1.0 );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_velhs2vol" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_velhs2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4494( "steering" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_steer2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4491( "snowmobile_player_wind_loop" );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_wind_vel2vol" );
    _ID42471::_ID4510();
    _ID42471::_ID4507();
    _ID42471::_ID4506();
    _ID42471::_ID4492( 0.5 );
    _ID42471::_ID4493( "snowmobile_player_start" );
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_rampup", "snowmobile_player_rampup_duck", 1, 2 );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_rampup_vel2vol" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_rampup_vel2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_reverse", "snowmobile_player_rampup_duck", 1, 2 );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_rampup_vel2vol" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_rampup_vel2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_reverse_rampdown", "snowmobile_player_rampup_duck", 1, 2 );
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_rampup_high_speed", undefined, 0.6, 2 );
    _ID42471::_ID4494( "speed_mph" );
    _ID42471::_ID4486( "volume", "snowmobile_player_rampup_vel2vol" );
    _ID42471::_ID4486( "pitch", "snowmobile_player_rampup_vel2pit" );
    _ID42471::_ID4510();
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_rampdown", "snowmobile_player_rampdown_duck", 0.6, 2 );
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_jumping", "snowmobile_player_jumping_duck", 1, 2 );
    _ID42471::_ID4509();
    _ID42471::_ID4493( "snowmobile_player_suspension", "snowmobile_player_suspension_duck", 1, 2 );
    _ID42471::_ID4509();
    _ID42471::_ID4508();
    _ID42471::_ID4488();
    _ID42471::_ID4489( "to_state_off_initial", ::_ID54632 );
    _ID42471::_ID4483( "snowmobile_player_idle_3d" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_off", ::_ID54632 );
    _ID42471::_ID4483( "NONE" );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_idle_from_off", ::_ID48452, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_idle_from_rampdown", ::_ID50212, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampup", ::_ID44602, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4485( [ "snowmobile_player_rampup" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_reverse", ::snowmobile_player_condition_callback_to_reverse, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4485( [ "snowmobile_player_reverse" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampup_high_speed", ::_ID48578, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4485( [ "snowmobile_player_rampup_high_speed" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampdown", ::_ID43193, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( "snowmobile_player_idle" );
    _ID42471::_ID4485( [ "snowmobile_player_rampdown" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampdown_from_reverse", ::snowmobile_player_condition_callback_to_rampdown_from_reverse, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( "snowmobile_player_idle" );
    _ID42471::_ID4485( [ "snowmobile_player_reverse_rampdown" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_rampdown_from_jump", ::_ID52112, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( "snowmobile_player_idle" );
    _ID42471::_ID4485( [ "snowmobile_player_rampdown" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_jumping", ::_ID52519, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4485( [ "snowmobile_player_jumping" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4489( "to_state_fullspeed", ::_ID45425, [ "throttle", "speed_mph" ] );
    _ID42471::_ID4483( [ "snowmobile_player_idle", "snowmobile_player_sustain", "snowmobile_player_wind_loop", "snowmobile_player_sustain_high_speed" ] );
    _ID42471::_ID4485( [ "snowmobile_player_suspension" ] );
    _ID42471::_ID4505();
    _ID42471::_ID4504();
    _ID42471::_ID4496();
    _ID42471::_ID4498( "engine_oneshots", "state_off", "to_state_off_initial", 50, 0.1 );
    _ID42471::_ID4497( "state_off" );
    _ID42471::_ID4487( "state_idle", "to_state_idle_from_off" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_idle" );
    _ID42471::_ID4487( "state_off", "to_state_off" );
    _ID42471::_ID4487( "state_rampup", "to_state_rampup" );
    _ID42471::_ID4487( "state_reverse", "to_state_reverse" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_rampup" );
    _ID42471::_ID4487( "state_off", "to_state_off" );
    _ID42471::_ID4487( "state_rampdown", "to_state_rampdown" );
    _ID42471::_ID4487( "state_jumping", "to_state_jumping" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_reverse" );
    _ID42471::_ID4487( "state_rampup", "to_state_rampup" );
    _ID42471::_ID4487( "state_rampdown", "to_state_rampdown_from_reverse" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_rampup_high_speed" );
    _ID42471::_ID4487( "state_off", "to_state_off" );
    _ID42471::_ID4487( "state_rampdown", "to_state_rampdown" );
    _ID42471::_ID4487( "state_jumping", "to_state_jumping" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_rampdown" );
    _ID42471::_ID4487( "state_off", "to_state_off" );
    _ID42471::_ID4487( "state_idle", "to_state_idle_from_rampdown" );
    _ID42471::_ID4487( "state_rampup", "to_state_rampup" );
    _ID42471::_ID4487( "state_rampup_high_speed", "to_state_rampup_high_speed" );
    _ID42471::_ID4487( "state_jumping", "to_state_jumping" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_jumping" );
    _ID42471::_ID4487( "state_rampdown", "to_state_rampdown_from_jump" );
    _ID42471::_ID4487( "state_fullspeed", "to_state_fullspeed" );
    _ID42471::_ID4513();
    _ID42471::_ID4497( "state_fullspeed" );
    _ID42471::_ID4487( "state_rampdown", "to_state_rampdown" );
    _ID42471::_ID4487( "state_jumping", "to_state_jumping" );
    _ID42471::_ID4513();
    _ID42471::_ID4514();
    _ID42471::_ID4512();
    _ID42471::_ID4480( "snowmobile_player_idle_vel2vol", [ [ 0.0, 1.0 ], [ 10.0, 0.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_vel2vol", [ [ 0.0, 0.0 ], [ 10.0, 0.6 ], [ 25.0, 1.0 ], [ 65.0, 1.0 ], [ 165.0, 0.5 ], [ 190.0, 0.1 ] ] );
    _ID42471::_ID4480( "snowmobile_player_vel2pit", [ [ 0.0, 0.85 ], [ 40.0, 1.05 ] ] );
    _ID42471::_ID4480( "snowmobile_player_velhs2vol", [ [ 0.0, 0.0 ], [ 60.0, 0.0 ], [ 165.0, 0.5 ], [ 190.0, 1.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_velhs2pit", [ [ 0.0, 0.85 ], [ 60.0, 0.85 ], [ 100.0, 1.05 ] ] );
    _ID42471::_ID4480( "snowmobile_player_wind_vel2vol", [ [ 0.0, 0.0 ], [ 65.0, 0.0 ], [ 155.0, 0.5 ], [ 190.0, 1.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_steer2pit", [ [ -1.0, 0.9 ], [ 0.0, 1.0 ], [ 1.0, 0.9 ] ] );
    _ID42471::_ID4480( "snowmobile_player_rampup_vel2vol", [ [ 0.0, 1.0 ], [ 1.0, 1.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_rampup_vel2pit", [ [ 0.0, 1.0 ], [ 40.0, 1.05 ] ] );
    _ID42471::_ID4480( "snowmobile_player_rampup_duck", [ [ 0.0, 1.0 ], [ 1.0, 0.0 ], [ 2.05, 0.0 ], [ 2.8, 1.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_rampdown_duck", [ [ 0.0, 1.0 ], [ 0.5, 0.0 ], [ 1.8, 1.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_jumping_duck", [ [ 0.0, 1.0 ], [ 0.5, 0.2 ], [ 3.0, 0.2 ], [ 4.0, 1.0 ] ] );
    _ID42471::_ID4480( "snowmobile_player_suspension_duck", [ [ 0.0, 1.0 ], [ 0.1, 1.0 ] ] );
    _ID42471::_ID4511();
}

_ID54632( var_0, var_1 )
{
    return 0;
}

_ID48452( var_0, var_1 )
{
    var_2 = _ID42471::_ID4557();

    if ( !isdefined( var_2._ID51615 ) )
        var_2._ID51615 = 0;

    return var_2._ID51615;
}

_ID50212( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( !isdefined( var_1._ID28490 ) || !isdefined( var_1._ID28488 ) )
        var_2 = 1;
    else if ( var_3 <= 0 && var_4 <= 1.0 && var_1._ID28488 > 1.0 )
        var_2 = 1;
    else if ( var_4 > -1.0 && var_4 < 1.0 && var_1._ID28488 > 1.0 || var_1._ID28488 < -1.0 )
        var_2 = 1;

    if ( var_2 )
    {
        var_1._ID28490 = var_3;
        var_1._ID28488 = var_4;
    }

    return var_2;
}

_ID44602( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( var_4 < 25 )
    {
        if ( isdefined( var_1._ID28490 ) && var_1._ID28490 <= var_3 && var_3 > 0 )
            var_2 = 1;
    }

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

snowmobile_player_condition_callback_to_reverse( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( var_4 < 25 )
    {
        if ( var_4 > 0 && var_5._ID1266 > 0 )
            var_2 = 1;
    }

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

_ID48578( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( isdefined( var_1._ID28490 ) && var_1._ID28490 <= var_3 && var_3 > 0 && var_4 >= 25 )
        var_2 = 1;

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

_ID43193( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( isdefined( var_1._ID28490 ) && var_1._ID28490 > 0 && var_3 <= 0 && var_4 > 1.0 )
        var_2 = 1;

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

snowmobile_player_condition_callback_to_rampdown_from_reverse( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( var_4 > 0 && var_5._ID1266 <= 0 )
        var_2 = 1;

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

_ID52112( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( isdefined( var_1._ID28490 ) && var_3 <= 0 && var_4 > 1.0 )
        var_2 = 1;

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

_ID52519( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( !isdefined( var_1._ID43079 ) )
        var_1._ID43079 = 0;

    if ( _ID20551( var_5 ) )
    {
        var_6 = vectornormalize( anglestoup( var_5._ID65 ) ) * -1;
        var_7 = bullettrace( var_5._ID740, var_5._ID740 + var_6 * 500, 0, self );

        if ( var_7["fraction"] >= 0.04 )
        {
            var_2 = 1;
            var_1._ID28490 = var_3;
            var_1._ID28488 = var_4;
            var_1._ID43079 = gettime();
        }
    }

    return var_2;
}

_ID45425( var_0, var_1 )
{
    var_2 = 0;
    var_3 = var_0["throttle"];
    var_4 = var_0["speed_mph"];
    var_5 = _ID42471::_ID4557();

    if ( _ID20551( var_5 ) )
        return var_2;

    if ( isdefined( var_1._ID28490 ) && var_1._ID28490 <= var_3 && var_3 > 0 )
        var_2 = 1;

    var_1._ID28490 = var_3;
    var_1._ID28488 = var_4;
    return var_2;
}

_ID20551( var_0 )
{
    return isdefined( var_0._ID13251 ) && isdefined( var_0._ID13251["jump"]["driver"] ) && var_0._ID13251["jump"]["driver"] == 1;
}
