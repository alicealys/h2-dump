// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID4484( var_0, var_1 )
{

}

_ID4517()
{
    if ( isdefined( level._ID1374._ID40630 ) )
        return;

    if ( !isdefined( level._ID1374._ID40630 ) )
        level._ID1374._ID40630 = spawnstruct();

    var_0 = _ID4532();
    var_0._ID19821 = gettime();
    var_0._ID6663 = [];
    var_0._ID28451 = [];
    var_0._ID28453 = [];
    var_0._ID30432 = 0;
    var_0._ID10091 = "alias";
    var_0._ID10100 = 0;
    var_0._ID10092 = 1.0;
    var_0._ID10093 = 1.0;
    var_0._ID10106 = 0;
    var_0._ID10105 = ( 0, 0, 0 );
    var_0._ID10104 = 1.0;
    var_0._ID10103 = 1.0;
    var_0._ID10096 = "distance";
    var_0._ID10098 = "volume";
    var_0._ID10099 = 1.0;
    var_0._ID10101 = 50;
    _ID42475::_ID34640( "snd_register_vehicle", ::_ID34641 );
    _ID42475::_ID34640( "snd_start_vehicle", ::_ID34676 );
    _ID42475::_ID34640( "snd_stop_vehicle", ::_ID34684 );
    _ID4518( "distance2d", ::_ID20043 );
    _ID4518( "distance", ::_ID20042 );
    _ID4518( "throttle", ::_ID20058 );
    _ID4518( "speed", ::_ID20056 );
    _ID4518( "relative_speed", ::_ID20055 );
    _ID4518( "doppler", ::_ID20044 );
    _ID4518( "doppler_exaggerated", ::_ID20045 );
    _ID4518( "doppler_subtle", ::_ID20046 );
    _ID4518( "speed_mph", ::_ID20057 );
    _ID4518( "acceleration_g", ::_ID20040 );
    _ID4518( "jerk_gps", ::_ID20047 );
    _ID4518( "pitch", ::_ID20052 );
    _ID4518( "yaw", ::_ID20059 );
    _ID4518( "pitch_roll_max", ::_ID20053 );
    _ID4518( "degrees_from_upright", ::_ID20041 );
    _ID4518( "jetbike_thrust", ::_ID20050 );
    _ID4518( "jetbike_drag", ::_ID20049 );
    _ID4518( "jetbike_anti_slip", ::_ID20048 );
    _ID4518( "jetbike_total_repulsor", ::_ID20051 );
    _ID4518( "jetbike_height", ::_ID20054 );
    _ID4518( "hovertank_anti_slip_magnitude", ::_ID20078 );
    _ID4518( "hovertank_anti_slip_direction", ::_ID20077 );
    _ID4518( "hovertank_auto_yaw_magnitude", ::_ID20081 );
    _ID4518( "hovertank_auto_yaw_direction", ::_ID20080 );
    _ID4518( "hovertank_repulsor_front_left", ::_ID20084 );
    _ID4518( "hovertank_repulsor_front_right", ::_ID20085 );
    _ID4518( "hovertank_repulsor_back_left", ::_ID20082 );
    _ID4518( "hovertank_repulsor_back_right", ::_ID20083 );
    _ID4518( "hovertank_throttle_magnitude", ::_ID20089 );
    _ID4518( "hovertank_throttle_direction", ::_ID20088 );
    _ID4518( "hovertank_uprighting", ::_ID20092 );
    _ID4518( "hovertank_turret_yaw", ::_ID20091 );
    _ID4518( "hovertank_turret_pitch", ::_ID20090 );
    _ID4518( "diveboat_throttle", ::_ID20073 );
    _ID4518( "diveboat_drag", ::_ID20071 );
    _ID4518( "diveboat_drag_with_mph", ::_ID20072 );
    _ID4518( "player_pdrone_look", ::_ID20095 );
    _ID4518( "steering", ::_ID44854 );
}

_ID34641( var_0, var_1 )
{
    var_2 = _ID4532();
    var_2._ID28451[var_0] = var_1;
}

_ID34676( var_0 )
{
    var_1 = _ID4532();

    if ( isstring( var_0 ) )
    {
        var_2 = var_0;
        var_0 = spawnstruct();
        var_0._ID28452 = var_2;
    }

    var_2 = var_0._ID28452;
    var_3 = _ID42463::_ID3891( var_1._ID10100, var_0._ID27556 );
    var_4 = _ID42463::_ID3891( var_1._ID10092, var_0._ID13811 );
    var_5 = _ID42463::_ID3891( var_1._ID10093, var_0._ID13816 );
    var_6 = _ID42463::_ID3891( var_1._ID10105, var_0._ID25468 );
    var_7 = _ID42463::_ID3891( undefined, var_0._ID19927 );
    self._ID34561 = thread _ID4580( var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID34684( var_0, var_1 )
{
    var_2 = self;
    var_3 = _ID4532();
    var_4 = var_2._ID34561;
    var_2._ID34561 = undefined;
    var_5 = var_4 _ID4543();
    var_6 = _ID42463::_ID3891( var_4._ID13816, var_5._ID18298._ID13816 );
    var_4._ID13816 = _ID42463::_ID3891( var_6, var_0 );
    var_1 = _ID42463::_ID3891( 0, var_1 );
    var_4 _ID42407::_ID10226( var_1, ::_ID4589, var_4._ID13816 );
}

_ID4503()
{
    var_0 = _ID42237::_ID35164();
    var_0._ID40646 = 1;
    return var_0;
}

_ID4560()
{
    return isdefined( self._ID40646 ) && self._ID40646 == 1;
}

_ID4495( var_0, var_1 )
{
    var_2 = _ID4532();
    _ID4579( var_0 );
    _ID4573( var_1 );
    var_2._ID40297 = self;
}

_ID4490( var_0, var_1, var_2 )
{
    var_3 = _ID4532();
    self._ID22637 = spawnstruct();
    self._ID22637._ID22674 = [];
    self._ID22637._ID10143 = spawnstruct();
    self._ID22637._ID10143._ID13816 = _ID42463::_ID3891( var_3._ID10093, var_0 );
    self._ID22637._ID10143._ID34452 = _ID42463::_ID3891( var_3._ID10104, var_1 );
    self._ID22637._ID10143._ID34447 = _ID42463::_ID3891( var_3._ID10103, var_2 );
}

_ID4491( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( isarray( var_0 ) )
        var_6 = var_0;
    else
        var_6 = [ var_0 ];

    var_1 = _ID42463::_ID3891( self._ID22637._ID10143._ID13816, var_1 );
    var_2 = _ID42463::_ID3891( self._ID22637._ID10143._ID34452, var_2 );
    var_3 = _ID42463::_ID3891( self._ID22637._ID10143._ID34447, var_3 );
    var_4 = _ID42463::_ID3891( var_0, var_4 );
    var_5 = _ID42463::_ID3891( "alias", var_5 );
    var_10 = spawnstruct();
    var_10._ID680 = var_4;
    var_10._ID13816 = var_1;
    var_10._ID3426 = var_5;
    var_10._ID3425 = var_6;
    var_10._ID28452 = _ID4552();
    var_10._ID26244 = [];
    var_10 _ID4569( var_2, var_3 );
    self._ID22637._ID22674[var_10._ID680] = var_10;
    self._ID22637._ID22651 = var_10;
}

_ID4568( var_0 )
{
    var_1 = undefined;

    if ( isdefined( self._ID22637 ) && isdefined( self._ID22637._ID22651 ) )
    {
        var_1 = self._ID22637._ID22651;

        if ( isdefined( self._ID5030 ) )
        {

        }
    }
    else if ( isdefined( self._ID25754 ) && isdefined( self._ID25754._ID25760 ) )
        var_1 = self._ID25754._ID25760;
    else if ( isdefined( self._ID5030 ) && isdefined( self._ID5030._ID5032 ) )
        var_1 = self._ID5030._ID5032;

    return var_1;
}

_ID4567( var_0 )
{
    var_1 = undefined;
    var_2 = _ID4568( var_0 );

    if ( isdefined( var_2 ) )
        var_1 = var_2._ID28163;

    return var_1;
}

_ID4569( var_0, var_1 )
{
    var_2 = _ID4532();
    self._ID26243 = spawnstruct();
    var_3 = _ID42463::_ID3891( var_2._ID10104, self._ID26243._ID34452 );
    var_4 = _ID42463::_ID3891( var_2._ID10103, self._ID26243._ID34447 );
    self._ID26243._ID34452 = _ID42463::_ID3891( var_3, var_0 );
    self._ID26243._ID34447 = _ID42463::_ID3891( var_4, var_1 );
    self._ID26243._ID20094 = var_2._ID10096;
    self._ID26243._ID26058 = var_2._ID10098;
    self._ID26243._ID20093 = [];
}

_ID4494( var_0, var_1, var_2 )
{
    var_0 = tolower( var_0 );
    var_3 = var_0;

    if ( !isstring( var_3 ) )
        var_3 = "";

    var_4 = _ID4568( var_3 );
    var_3 = var_0;
    var_6 = spawnstruct();
    var_6._ID13114 = [];
    var_6._ID20094 = var_0;
    var_6._ID34452 = _ID42463::_ID3891( var_4._ID26243._ID34452, var_1 );
    var_6._ID34447 = _ID42463::_ID3891( var_4._ID26243._ID34447, _ID42463::_ID3891( var_1, var_2 ) );
    var_6._ID10098 = var_4._ID26243._ID26058;
    var_6._ID34452 = _ID4499( var_6._ID34452, 0.1, 0.1 );
    var_6._ID34447 = _ID4499( var_6._ID34447, 0.1, 0.1 );
    var_4._ID26244[var_3] = var_6;
    var_4._ID28163 = var_6;
}

_ID4502( var_0, var_1 )
{
    return var_1 * ( 1 - var_0 ) / var_0;
}

_ID4500( var_0, var_1 )
{
    return var_1 / ( var_0 + var_1 );
}

_ID4499( var_0, var_1, var_2 )
{
    var_3 = _ID4502( var_0, var_1 );
    var_4 = _ID4500( var_3, var_2 );
    return var_4;
}

_ID4521( var_0, var_1, var_2 )
{
    foreach ( var_4 in var_0 )
    {
        _ID4494( var_4, var_1, var_2 );
        _ID4510();
    }
}

_ID4486( var_0, var_1, var_2 )
{
    if ( isstring( var_1 ) )
        var_2 = _ID42463::_ID3891( var_1, var_2 );

    var_3 = _ID4567( var_2 );
    var_4 = var_1;

    if ( !isstring( var_4 ) )
        var_4 = "???";

    var_5 = spawnstruct();
    var_5._ID3424 = var_1;
    var_5._ID26058 = var_0;
    var_3._ID13114[var_2] = var_5;
}

_ID4510()
{
    var_0 = _ID4568( "UNKNOWN param_map being terminated by AVM_end_param_map()" );

    if ( isdefined( var_0 ) )
        var_0._ID28163 = undefined;
}

_ID4507()
{
    self._ID22637._ID22651 = undefined;
}

_ID4506()
{

}

_ID4492( var_0 )
{
    var_1 = _ID4532();
    self._ID25754 = spawnstruct();
    self._ID25754._ID25765 = [];
    self._ID25754._ID10143 = spawnstruct();
    self._ID25754._ID10143._ID13816 = _ID42463::_ID3891( var_1._ID10093, var_0 );
}

_ID4493( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID4532();
    var_1 = _ID42463::_ID3891( undefined, var_1 );
    var_2 = _ID42463::_ID3891( self._ID25754._ID10143._ID13816, var_2 );
    var_3 = _ID42463::_ID3891( 1, var_3 );
    var_4 = _ID42463::_ID3891( var_0, var_4 );
    var_5 = _ID42463::_ID3891( var_6._ID10091, var_5 );
    var_7 = var_4;

    if ( isstring( var_4 ) )
        var_7 = [ var_4 ];

    var_11 = spawnstruct();
    var_11._ID680 = var_0;
    var_11._ID3425 = var_7;
    var_11._ID3426 = var_5;
    var_11._ID12215 = var_1;
    var_11._ID13816 = var_2;
    var_11._ID25759 = var_3;
    var_11._ID26244 = [];
    var_11._ID34524 = [];
    var_11 _ID4569();
    self._ID25754._ID25765[var_11._ID680] = var_11;
    self._ID25754._ID25760 = var_11;
}

_ID4578( var_0 )
{
    var_1 = self._ID25754._ID25760;
    var_1._ID25761 = var_0;
}

_ID4509()
{
    self._ID25754._ID25760 = undefined;
}

_ID4508()
{

}

_ID4488( var_0, var_1 )
{
    self._ID5030 = spawnstruct();
    self._ID5030._ID5033 = [];
    self._ID5030._ID10143 = spawnstruct();
    self._ID5030._ID10143._ID34452 = var_0;
    self._ID5030._ID10143._ID34447 = var_1;
}

_ID4489( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _ID4532();
    var_6 = spawnstruct();
    var_6._ID25765 = [];
    var_6._ID22674 = [];
    var_6._ID28452 = _ID4552();
    var_6._ID26244 = [];
    var_6._ID680 = var_0;
    var_6._ID8419 = var_1;
    var_3 = _ID42463::_ID3891( self._ID5030._ID10143._ID34452, var_3 );
    var_4 = _ID42463::_ID3891( self._ID5030._ID10143._ID34447, var_4 );
    var_6 _ID4569( var_3, var_4 );
    self._ID5030._ID5033[var_6._ID680] = var_6;
    self._ID5030._ID5032 = var_6;

    if ( isarray( var_2 ) )
        _ID4521( var_2, self._ID5030._ID10143._ID34452, self._ID5030._ID10143._ID34447 );
}

_ID4482( var_0 )
{
    self._ID5030._ID5032._ID19811 = var_0;
}

_ID4481( var_0 )
{
    self._ID5030._ID5032._ID19473 = var_0;
}

_ID4485( var_0 )
{
    if ( isstring( var_0 ) )
        var_0 = [ var_0 ];

    foreach ( var_2 in var_0 )
    {
        var_3 = self._ID5030._ID5032;
        var_3._ID25765[var_2] = var_2;
    }
}

_ID4483( var_0 )
{
    var_1 = self._ID5030._ID5032;

    if ( !isdefined( var_0 ) || var_0.size == 0 )
        var_0 = "none";

    if ( isstring( var_0 ) )
    {
        if ( tolower( var_0 ) == "all" )
            var_1._ID22674[0] = "all";
        else if ( tolower( var_0 ) == "none" )
            var_1._ID22674[0] = "none";
        else
            var_1._ID22674[var_0] = var_0;
    }
    else
    {
        var_1._ID22674[0] = undefined;

        foreach ( var_3 in var_0 )
        {
            if ( var_3 != "all" && var_3 != "none" )
            {

            }

            var_1._ID22674[var_3] = var_3;
        }
    }
}

_ID4505()
{
    self._ID5030._ID5032 = undefined;
}

_ID4504()
{

}

_ID4496( var_0, var_1 )
{
    if ( isdefined( var_0 ) )
        var_0 *= 1000;

    var_2 = _ID4532();
    self._ID36188 = spawnstruct();
    self._ID36188._ID36190 = [];
    self._ID36188._ID10143 = spawnstruct();
    self._ID36188._ID10143._ID28609 = _ID42463::_ID3891( var_2._ID10101, var_1 );
    self._ID36188._ID10143._ID23607 = _ID42463::_ID3891( var_2._ID10106, var_0 );
}

_ID4498( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) )
        var_4 *= 1000;

    var_5 = spawnstruct();
    var_5._ID680 = var_0;
    var_5._ID19926 = [ var_1, var_2 ];
    var_5._ID28609 = _ID42463::_ID3891( self._ID36188._ID10143._ID28609, var_3 );
    var_5._ID23607 = _ID42463::_ID3891( self._ID36188._ID10143._ID23607, var_4 );
    var_5._ID36202 = [];
    self._ID36188._ID36190[var_0] = var_5;
    self._ID36188._ID17466 = var_5;
}

_ID4497( var_0, var_1, var_2 )
{
    if ( isdefined( var_1 ) )
        var_1 *= 1000;

    var_3 = self._ID36188._ID17466;
    var_4 = var_3._ID680;
    var_5 = spawnstruct();
    var_5._ID680 = var_0;
    var_5._ID38684 = [];
    var_5._ID28609 = _ID42463::_ID3891( var_3._ID28609, var_2 );
    var_5._ID23607 = _ID42463::_ID3891( var_3._ID23607, var_1 );
    var_5._ID28452 = _ID4552();
    var_3._ID36202[var_0] = var_5;
    self._ID36188._ID17466._ID36199 = var_5;
}

_ID4487( var_0, var_1 )
{
    var_3 = self._ID36188._ID17466._ID36199;
    var_3._ID38684[var_3._ID38684.size] = [ var_0, var_1 ];
}

_ID4513()
{
    self._ID36188._ID17466._ID36199 = undefined;
}

_ID4514()
{
    self._ID36188._ID17466 = undefined;
}

_ID4512()
{

}

_ID4480( var_0, var_1 )
{
    if ( isstring( var_0 ) )
        var_0 = tolower( var_0 );

    var_4 = _ID4532();

    if ( !isdefined( self._ID13110 ) )
        self._ID13110 = [];

    var_5 = spawnstruct();

    if ( isarray( var_1 ) )
    {
        var_5._ID13109 = [];

        if ( getdvarint( "enableMW1GetArrayKeysAndForEach" ) != 0 )
        {
            for ( var_6 = 0; var_6 < var_1.size; var_6++ )
            {
                var_7 = var_1[var_6];
                var_5._ID13109[var_5._ID13109.size] = ( var_7[0], var_7[1], 0 );
            }
        }
        else
        {
            foreach ( var_7 in var_1 )
                var_5._ID13109[var_5._ID13109.size] = ( var_7[0], var_7[1], 0 );
        }
    }
    else
        var_5._ID13112 = var_1;

    self._ID13110[var_0] = var_5;
}

_ID4511()
{
    var_0 = _ID4532();
    self._ID8537 = [];

    foreach ( var_8, var_2 in self._ID22637._ID22674 )
    {
        var_3 = var_8;
        var_4 = var_2;

        foreach ( var_7, var_6 in var_4._ID26244 )
            self._ID8537[var_7] = _ID4536( var_7 );
    }

    foreach ( var_8, var_2 in self._ID25754._ID25765 )
    {
        var_10 = var_8;
        var_11 = var_2;

        foreach ( var_7, var_6 in var_11._ID26244 )
            self._ID8537[var_7] = _ID4536( var_7 );
    }

    foreach ( var_8, var_2 in self._ID5030._ID5033 )
    {
        var_14 = var_8;
        var_15 = var_2;

        foreach ( var_7, var_6 in var_15._ID26244 )
            self._ID8537[var_7] = _ID4536( var_7 );
    }

    var_0._ID40297 = undefined;
}

_ID4548()
{
    return self._ID23004;
}

_ID40668()
{
    return self._ID34561;
}

_ID40666()
{
    return _ID4542();
}

_ID4519( var_0, var_1 )
{
    thread _ID4574( var_0, var_1 );
}

_ID4574( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _ID4542();
    var_4 = var_2 _ID4557();
    var_0 = clamp( var_0, 0, 1 );
    var_1 = clamp( _ID42463::_ID3891( 1, var_1 ), 0, 60 );
    var_5 = var_3;
    var_2 notify( var_5 );
    var_2 endon( var_5 );
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_2 _ID4542() );
    var_4 endon( "death" );
    var_6 = _ID4516();
    var_7 = var_0 - var_2._ID23004;
    var_8 = max( 1, var_1 / var_6 );
    var_9 = var_7 / var_8;

    for (;;)
    {
        if ( var_9 < 0 )
        {
            if ( var_2._ID23004 > var_0 )
                var_2._ID23004 = max( 0, var_2._ID23004 + var_9 );
            else
                break;
        }
        else if ( var_9 > 0 )
        {
            if ( var_2._ID23004 < var_0 )
                var_2._ID23004 = min( 1.0, var_2._ID23004 + var_9 );
            else
                break;
        }

        wait(var_6);
    }
}

_ID4515( var_0 )
{
    return _ID4532()._ID30432;
}

_ID4516()
{
    return 0.1;
}

_ID40667( var_0 )
{
    var_1 = 0;
    var_2 = _ID4532();

    if ( isstring( var_0 ) )
    {
        var_3 = var_2._ID28453[var_0];

        if ( isdefined( var_3 ) & isarray( var_3._ID20107 ) )
            var_1 = var_3._ID20107.size;
    }
    else
    {
        foreach ( var_3 in var_2._ID28453 )
        {
            if ( isarray( var_3._ID20107 ) )
                var_1 += var_3._ID20107.size;
        }
    }

    return var_1;
}

_ID4529( var_0 )
{
    var_1 = _ID4532();
    var_2 = var_1._ID28451[var_0];
    var_3 = spawnstruct();
    var_3._ID16938 = spawnstruct();
    var_3._ID39954 = spawnstruct();
    var_3._ID18298 = spawnstruct();
    var_3._ID20107 = [];
    var_3._ID18298._ID28452 = _ID42463::_ID3891( undefined, var_0 );
    var_3._ID18298._ID13811 = var_1._ID10092;
    var_3._ID18298._ID13816 = var_1._ID10093;
    var_3._ID18298._ID34980 = var_1._ID10105;
    var_3 [[ var_2 ]]();
    var_3 _ID4524();
    return var_3;
}

_ID4524()
{
    var_0 = _ID4532();
    var_0._ID28453[self._ID18298._ID28452] = self;
}

_ID40673()
{
    var_0 = _ID4532();
    var_0._ID28453[self._ID18298._ID28452] = undefined;
}

_ID4522()
{
    var_0 = _ID4532();
    var_0._ID28453[self._ID28452]._ID20107[self._ID20106] = self;
    var_0._ID30432++;
}

_ID4570()
{
    var_0 = _ID4532();
    var_0._ID28453[self._ID28452]._ID20107[self._ID20106] = undefined;
}

_ID4531( var_0 )
{
    var_1 = self._ID18298._ID28452 + "_" + _ID4515();

    if ( isdefined( var_0 ) && var_0 == 1 )
        var_1 += "_player";

    return var_1;
}

_ID4518( var_0, var_1, var_2 )
{
    _ID4532()._ID6663[var_0] = [ var_1, var_2 ];
}

_ID4547( var_0 )
{
    var_1 = self;
    var_2 = undefined;

    foreach ( var_4 in var_1._ID36189 )
    {
        var_2 = var_4[var_0];

        if ( isdefined( var_2 ) )
            break;
    }

    return var_2;
}

_ID4533( var_0 )
{
    var_1 = self;
    return var_1._ID5031[var_0];
}

_ID4556( var_0 )
{
    var_1 = self;
    var_2 = undefined;

    foreach ( var_4 in var_1._ID36188._ID36190 )
    {
        var_2 = var_4._ID36202[var_0];

        if ( isdefined( var_2 ) )
            break;
    }

    return var_2;
}

_ID4534( var_0 )
{
    var_1 = self;
    return var_1._ID5030._ID5033[var_0];
}

_ID4527( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = self;
    var_6 = spawnstruct();
    var_6._ID39954 = spawnstruct();
    var_6._ID28452 = var_5 _ID4552();
    var_6._ID20106 = var_5 _ID4531( var_4 );
    var_6._ID40059 = var_0;
    var_6._ID13811 = var_1;
    var_6._ID13816 = var_2;
    var_6._ID34980 = var_3;
    var_6._ID27556 = var_4;
    var_6._ID22638 = 1.0;
    var_6._ID25755 = [];
    var_6._ID23004 = 1.0;
    var_6._ID22649 = [];

    foreach ( var_8 in var_5._ID22637._ID22674 )
    {
        var_9 = spawnstruct();
        var_9._ID28749 = var_8;
        var_9._ID27010 = 0;
        var_9._ID9426 = var_6 _ID4528( var_8 );
        var_9._ID34524 = [];
        var_9._ID40767 = 1.0;
        var_6._ID22649[var_8._ID680] = var_9;
    }

    var_6._ID25757 = [];

    foreach ( var_8 in var_5._ID25754._ID25765 )
    {
        var_9 = spawnstruct();
        var_9._ID28749 = var_8;
        var_9._ID9426 = var_6 _ID4528( var_8 );
        var_9._ID34524 = [];
        var_6._ID25757[var_8._ID680] = var_9;
    }

    var_6._ID5031 = [];

    foreach ( var_8 in var_5._ID5030._ID5033 )
    {
        var_9 = spawnstruct();
        var_9._ID28749 = var_8;
        var_9._ID9426 = var_6 _ID4528( var_8 );
        var_6._ID5031[var_8._ID680] = var_9;
    }

    var_6._ID36189 = [];

    foreach ( var_21, var_16 in var_5._ID36188._ID36190 )
    {
        var_6._ID36189[var_21] = [];

        foreach ( var_20, var_18 in var_16._ID36202 )
        {
            var_19 = spawnstruct();
            var_19._ID28749 = var_18;
            var_19._ID36040 = 0;
            var_6._ID36189[var_21][var_20] = var_19;
        }
    }

    if ( isdefined( var_5._ID16938._ID20105 ) )
        var_6 [[ var_5._ID16938._ID20105 ]]( var_6._ID39954 );

    return var_6;
}

_ID4580( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = self;

    if ( var_6 _ID4560() == 0 )
        var_6 vehicle_turnengineoff();

    var_7 = _ID4551( var_0 );

    if ( !isdefined( var_7 ) )
        var_7 = _ID4529( var_0 );

    var_8 = var_7 _ID4527( var_6, var_2, var_3, var_4, var_1 );
    var_8 _ID4522();
    var_8 thread _ID4594();
    var_8 thread _ID4561( var_5 );
    var_6 thread _ID4564( var_8 );
    return var_8;
}

_ID4589( var_0 )
{
    if ( !isdefined( self._ID20616 ) )
    {
        self._ID20616 = 1;
        var_1 = self;
        var_2 = var_1 _ID4543();
        var_3 = var_1 _ID4542();
        var_0 = max( 0.01, _ID42463::_ID3891( var_1._ID13816, var_0 ) );
        level notify( "msg_snd_vehicle_stop_" + var_3 );

        foreach ( var_5 in var_1._ID22649 )
        {
            var_6 = _ID42463::_ID3891( var_5._ID28749._ID13816, var_0 );
            var_5 thread _ID4530( var_6 );
        }

        foreach ( var_9 in var_1._ID25757 )
        {
            var_6 = _ID42463::_ID3891( var_9._ID28749._ID13816, var_0 );
            var_9 thread _ID4530( var_6 );
        }

        wait(var_0 + 0.05);
        var_1 _ID4570();
    }
}

_ID4564( var_0 )
{
    var_1 = var_0 _ID4542();
    level endon( "msg_snd_vehicle_stop_" + var_1 );
    self waittill( "death" );
    var_0 thread _ID4589();
}

_ID4528( var_0 )
{
    var_1 = self;
    var_2 = spawnstruct();
    var_2._ID34456 = [];
    var_2._ID26618 = [];

    foreach ( var_4 in var_0._ID26244 )
    {
        var_2._ID34456[var_4._ID20094] = 0;

        foreach ( var_6 in var_4._ID13114 )
        {
            if ( !isdefined( var_2._ID26618[var_6._ID26058] ) )
                var_2._ID26618[var_6._ID26058] = 1.0;
        }
    }

    if ( !isdefined( var_2._ID26618["volume"] ) )
        var_2._ID26618["volume"] = 1.0;

    if ( !isdefined( var_2._ID26618["pitch"] ) )
        var_2._ID26618["pitch"] = 1.0;

    return var_2;
}

_ID40672( var_0 )
{
    var_1 = self;

    foreach ( var_4, var_3 in var_0._ID34456 )
        var_0._ID34456[var_4] = 0;

    foreach ( var_4, var_3 in var_0._ID26618 )
        var_0._ID26618[var_4] = 1.0;
}

_ID4537()
{
    return self._ID9426._ID34456;
}

_ID4545()
{
    return self._ID9426._ID26618;
}

_ID4546()
{
    var_0 = _ID4545();
    var_1 = var_0["volume"];

    if ( !isdefined( var_1 ) )
        var_1 = 1.0;

    return var_1;
}

_ID4594()
{
    var_0 = self;
    var_1 = _ID4543();
    var_2 = _ID4557();
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + _ID4542() );
    var_2 endon( "death" );
    var_3 = undefined;

    for (;;)
    {
        var_0 _ID4593();

        foreach ( var_5 in var_0._ID22649 )
        {
            if ( var_5._ID27010 == 1 )
            {
                var_6 = var_5._ID28749._ID680;
                var_0 _ID4563( var_5, var_3 );
                var_0 _ID4592( var_5 );
            }
        }

        var_3 = gettime();
        var_8 = distance2d( var_0._ID40059._ID740, level._ID794._ID740 );

        if ( var_8 < 400 )
            var_9 = 1.0;
        else if ( var_8 > 1500 )
            var_9 = 10.0;
        else
            var_9 = 1.0 + 9.0 * ( var_8 - 400 ) / 1100;

        wait(0.1 * var_9);
    }
}

_ID4575( var_0, var_1 )
{
    var_2 = self;

    switch ( var_0._ID28749._ID3426 )
    {
        case "alias":
            if ( var_1 == 1 && var_0._ID27010 != 1 )
            {
                var_2 _ID4581( var_0 );
                var_0._ID27010 = 1;
            }
            else if ( var_1 == 0 && var_0._ID27010 != 0 )
            {
                var_2 _ID4590( var_0 );
                var_0._ID27010 = 0;
            }
            else
            {

            }

            break;
        case "soundevent":
            break;
        case "damb":
            break;
        default:
            break;
    }
}

_ID4563( var_0, var_1 )
{
    if ( var_0._ID28749._ID26244.size == 0 )
        return;

    var_2 = self;
    var_3 = _ID4543();
    var_4 = var_0._ID28749;
    var_5 = var_0._ID9426;
    var_6 = gettime();
    var_1 = _ID42463::_ID3891( var_6 - 100, var_1 );
    var_5._ID26618 = [];
    var_7 = [];

    foreach ( var_10, var_9 in var_3._ID8537 )
        var_7[var_10] = var_2 [[ var_9 ]]();

    foreach ( var_12 in var_4._ID26244 )
    {
        var_13 = var_12._ID20094;
        var_14 = var_7[var_13];
        var_15 = var_5._ID34456[var_13];

        if ( var_14 > var_15 )
            var_16 = var_12._ID34452;
        else
            var_16 = var_12._ID34447;

        var_17 = ( var_6 - var_1 ) / 100.0;
        var_16 = 1.0 - pow( 1 - var_16, var_17 );
        var_18 = var_15 + var_16 * ( var_14 - var_15 );

        foreach ( var_23, var_20 in var_12._ID13114 )
        {
            var_21 = var_3._ID13110[var_23];
            var_22 = _func_255( var_18, var_21._ID13109 );

            if ( isdefined( var_5._ID26618[var_20._ID26058] ) )
            {
                var_5._ID26618[var_20._ID26058] = var_5._ID26618[var_20._ID26058] * var_22;
                continue;
            }

            var_5._ID26618[var_20._ID26058] = var_22;
        }

        var_5._ID34456[var_13] = var_18;
    }
}

_ID4593()
{
    self._ID22638 = 1.0;

    foreach ( var_1 in self._ID25755 )
        self._ID22638 = self._ID22638 * var_1;
}

_ID4592( var_0 )
{
    var_1 = self;

    foreach ( var_7, var_3 in var_0._ID9426._ID26618 )
    {
        if ( var_7 == "volume" )
        {
            var_3 *= ( var_1._ID22638 * var_0._ID40767 );

            if ( isdefined( var_0._ID13795 ) )
            {
                var_0._ID13795 = min( var_0._ID13795 + var_0._ID13793, 1.0 );
                var_3 *= var_0._ID13795;

                if ( var_0._ID13795 >= 1.0 )
                    var_0._ID13795 = undefined;
            }
        }

        foreach ( var_5 in var_0._ID34524 )
            var_5 _ID4596( var_7, var_3 );
    }
}

_ID4520( var_0, var_1, var_2 )
{
    var_3 = self;
    var_4 = var_3._ID22649[var_0];
    var_5 = 1.0;

    if ( var_1 == 1 )
        var_5 = 0;

    var_2 = _ID42463::_ID3891( 0.05, var_2 );
    var_6 = var_5 - var_4._ID40767;
    var_7 = max( 1, var_2 / _ID4516() );
    var_8 = var_6 / var_7;
    var_3 thread _ID4576( var_4, var_5, var_8, _ID4516() );
}

_ID4576( var_0, var_1, var_2, var_3 )
{
    var_4 = self;
    var_5 = var_4 _ID4557();
    var_6 = var_0._ID28749._ID680;
    var_4 notify( var_6 );
    var_4 endon( var_6 );
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_4 _ID4542() );
    var_5 endon( "death" );

    for (;;)
    {
        if ( var_2 < 0 )
        {
            if ( var_0._ID40767 > var_1 )
                var_0._ID40767 = max( 0, var_0._ID40767 + var_2 );
            else
                break;
        }
        else if ( var_2 > 0 )
        {
            if ( var_0._ID40767 < var_1 )
                var_0._ID40767 = min( 1.0, var_0._ID40767 + var_2 );
            else
                break;
        }

        wait(var_3);
    }
}

_ID4561( var_0 )
{
    var_1 = self;
    var_2 = _ID4543();

    foreach ( var_10, var_4 in var_2._ID36188._ID36190 )
    {
        var_5 = var_4._ID19926;

        if ( isarray( var_0 ) )
            var_5 = var_0[var_10];

        var_6 = var_5[0];
        var_7 = var_5[1];
        var_8 = var_1._ID36189[var_10][var_6];
        var_9 = var_1._ID5031[var_7];
        var_1 _ID4563( var_9 );
        var_1 thread _ID4584( var_8, var_9, 1 );
    }
}

_ID4584( var_0, var_1, var_2 )
{
    var_3 = self;
    var_4 = var_3 _ID4543();
    var_5 = var_0._ID28749;
    var_6 = var_3 _ID4557();
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + _ID4542() );
    var_6 endon( "death" );
    var_0._ID36040 = gettime();
    var_3 _ID4585( var_0, var_1 );
    var_3 _ID4587( var_0, var_1 );
    var_3 _ID4586( var_0, var_1 );

    if ( isdefined( var_1._ID28749._ID19811 ) )
        var_3 [[ var_1._ID28749._ID19811 ]]( var_3._ID39954 );

    var_7 = undefined;
    var_8 = undefined;
    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;
    var_12 = 1;

    for (;;)
    {
        if ( isdefined( var_1._ID28749._ID19473 ) )
        {
            var_3 _ID4563( var_1 );
            var_3 [[ var_1._ID28749._ID19473 ]]( var_1._ID9426._ID34456, var_3._ID39954 );
        }

        foreach ( var_14 in var_5._ID38684 )
        {
            var_15 = var_14[0];
            var_16 = var_14[1];
            var_17 = var_14[2];
            var_18 = var_3 _ID4547( var_15 );
            var_19 = var_3 _ID4533( var_16 );
            var_20 = var_18._ID28749;
            var_21 = var_19._ID28749;

            if ( gettime() - var_18._ID36040 < var_20._ID23607 )
                continue;

            var_3 _ID4563( var_19, var_11 );
            var_22 = var_3 _ID4583( var_18, var_19 );

            if ( isarray( var_22 ) )
            {
                var_10 = var_22;
                var_22 = 1;
            }

            if ( var_22 )
            {
                if ( !isdefined( var_7 ) || var_20._ID28609 > var_7._ID28749._ID28609 )
                {
                    var_7 = var_18;
                    var_8 = var_19;
                    var_9 = var_10;
                    var_10 = undefined;
                }
            }
        }

        if ( isdefined( var_7 ) )
            break;

        var_12 = 0;
        var_11 = gettime();
        var_24 = distance2d( var_3._ID40059._ID740, level._ID794._ID740 );

        if ( var_24 < 400 )
            var_25 = 1.0;
        else if ( var_24 > 1500 )
            var_25 = 10.0;
        else
            var_25 = 1.0 + 9.0 * ( var_24 - 400 ) / 1100;

        wait(0.1 * var_25);
    }

    var_3 _ID4572( var_8, var_9 );
    var_26 = var_3 _ID4535( var_8 );
    var_27 = var_26.size > 0;
    var_3 thread _ID4588( var_1, var_27 );

    if ( var_12 && !var_2 )
    {

    }

    var_3 thread _ID4584( var_7, var_8, 0 );
}

_ID4585( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_1._ID28749;

    if ( isdefined( var_3._ID22674[0] ) )
    {
        if ( var_3._ID22674[0] == "all" )
        {
            foreach ( var_5 in var_2._ID22649 )
                var_5._ID40767 = 1.0;
        }
    }
    else
    {
        foreach ( var_8 in var_3._ID22674 )
        {
            var_5 = var_2._ID22649[var_8];
            var_5._ID40767 = 1.0;
        }
    }
}

_ID4588( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_0._ID28749._ID25765;

    foreach ( var_5 in var_3 )
    {
        var_6 = var_2._ID25757[var_5];
        var_7 = var_6._ID28749._ID25759;

        if ( var_7 == 2 || var_7 == 1 && var_1 )
        {
            var_8 = var_6._ID34524;
            var_6._ID34524 = [];
            var_9 = var_6._ID28749._ID13816;

            foreach ( var_12, var_11 in var_8 )
                var_11 thread _ID4591( var_9 );
        }
    }
}

_ID40670( var_0 )
{
    var_1 = self;
    var_0 = max( 0.01, _ID42463::_ID3891( 0.05, var_0 ) );

    switch ( var_1._ID28749._ID3426 )
    {
        case "alias":
            foreach ( var_4, var_3 in var_1._ID34524 )
            {
                if ( isdefined( var_3 ) )
                {
                    var_3 scalepitch( 0, var_0 );
                    wait(var_0);

                    if ( isdefined( var_3 ) )
                        var_3 playrumbleonentity();
                }
            }

            break;
        case "soundevent":
            break;
        case "damb":
            break;
        default:
            break;
    }
}

_ID4583( var_0, var_1 )
{
    var_2 = 0;
    var_3 = self;
    var_2 = var_3 [[ var_1._ID28749._ID8419 ]]( var_1._ID9426._ID34456, var_3._ID39954 );
    return var_2;
}

_ID4587( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _ID4543();
    var_4 = var_0._ID28749;
    var_5 = var_1._ID28749;
    var_6 = var_1._ID25758;

    if ( !isdefined( var_6 ) )
        var_6 = var_5._ID25765;

    foreach ( var_8 in var_6 )
    {
        var_9 = var_2._ID25757[var_8];
        var_10 = var_9._ID28749;
        var_11 = var_2 _ID4549( var_8 );
        var_12 = var_2 _ID4550( var_8 );

        if ( var_10._ID3426 == "alias" )
        {
            var_2 _ID4563( var_9 );

            for ( var_13 = 0; var_13 < var_10._ID3425.size; var_13++ )
            {
                var_14 = var_2 _ID4582( var_9, var_13 );

                foreach ( var_17, var_16 in var_9._ID9426._ID26618 )
                    var_14 _ID4596( var_17, var_16 );

                if ( var_12 )
                    var_2 thread _ID4526( var_9, var_14 );

                if ( var_11 == 1 || var_11 == 2 )
                    var_9._ID34524[var_13] = var_14;
            }

            var_2 thread _ID4558( var_9 );
        }
    }
}

_ID4526( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _ID4557();
    var_4 = _ID4516();
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_2 _ID4542() );
    var_3 endon( "death" );
    wait(var_4);

    while ( isdefined( var_1 ) )
    {
        var_2 _ID4563( var_0 );

        if ( isdefined( var_1 ) )
        {
            foreach ( var_7, var_6 in var_0._ID9426._ID26618 )
                var_1 _ID4596( var_7, var_6 );
        }

        wait(var_4);
    }
}

_ID4586( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _ID4543();
    var_4 = var_0._ID28749;
    var_5 = var_1._ID28749;
    var_6 = var_5._ID22674;

    if ( isdefined( var_6[0] ) )
    {
        if ( var_6[0] == "all" )
        {
            foreach ( var_9, var_8 in var_2._ID22649 )
                _ID4575( var_8, 1 );
        }
        else if ( var_6[0] == "none" )
        {
            foreach ( var_9, var_8 in var_2._ID22649 )
                _ID4575( var_8, 0 );
        }
        else
        {

        }
    }
    else if ( var_6.size > 0 )
    {
        var_11 = [];
        var_12 = [];

        foreach ( var_9, var_8 in var_2._ID22649 )
        {
            if ( isdefined( var_6[var_9] ) )
            {
                var_11[var_9] = var_8;
                continue;
            }

            var_12[var_9] = var_8;
        }

        foreach ( var_9, var_8 in var_11 )
            _ID4575( var_8, 1 );

        foreach ( var_9, var_8 in var_12 )
            _ID4575( var_8, 0 );
    }
}

_ID20043()
{
    var_0 = _ID4557();
    return distance2d( var_0._ID740, level._ID794._ID740 );
}

_ID20042()
{
    var_0 = _ID4557();
    return distance( var_0._ID740, level._ID794._ID740 );
}

_ID20058()
{
    var_0 = _ID4557();
    return var_0 vehicle_getthrottle();
}

_ID44854()
{
    var_0 = _ID4557();
    return var_0 vehicle_getsteering();
}

_ID20056()
{
    var_0 = _ID4557();
    var_1 = length( var_0 vehicle_getvelocity() * 0.0568182 );
    return var_1;
}

_ID20055()
{
    var_0 = _ID4557();
    var_1 = var_0 vehicle_getvelocity();
    var_2 = level._ID794 getvelocity();
    var_3 = var_1 - var_2;
    var_4 = length( var_3 ) * 0.0568182;
    return var_4;
}

_ID20057()
{
    var_0 = _ID4557();

    if ( isdefined( var_0._ID13910 ) )
        return var_0._ID13910;

    return var_0 _ID42366::_ID15680() * 0.0568182;
}

_ID20040()
{
    var_0 = _ID4557();
    return length( var_0 _ID42366::_ID15678() ) * 0.00125;
}

_ID20047()
{
    var_0 = _ID4557();
    return length( var_0 _ID42366::_ID15679() ) * 0.00125;
}

_ID20044()
{
    var_0 = _ID4557();
    return _func_254( var_0._ID740, var_0 vehicle_getvelocity(), level._ID794._ID740, level._ID794 getvelocity() );
}

_ID20045()
{
    var_0 = _ID4557();
    return _func_254( var_0._ID740, var_0 vehicle_getvelocity(), level._ID794._ID740, level._ID794 getvelocity(), 2, 5 );
}

_ID20046()
{
    var_0 = _ID4557();
    return _func_254( var_0._ID740, var_0 vehicle_getvelocity(), level._ID794._ID740, level._ID794 getvelocity(), 1, 0.5 );
}

_ID4501( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !isdefined( var_4 ) )
        var_4 = 1;

    if ( !isdefined( var_5 ) )
        var_5 = 1;

    if ( !isdefined( var_6 ) )
        var_6 = 13397;

    if ( var_4 != 1 )
    {
        var_7 = var_1 - var_3;
        var_8 = vectornormalize( var_7 );
        var_9 = var_2 - var_0;
        var_10 = var_8 * vectordot( var_8, var_9 );
        var_11 = var_9 - var_10;
        var_2 = var_0 + var_10 + var_11 / var_4;
    }

    var_12 = vectornormalize( var_0 - var_2 );
    var_13 = vectordot( var_1, var_12 );
    var_14 = vectordot( var_3, var_12 );
    var_15 = ( var_6 + var_14 ) / ( var_6 + var_13 );
    var_15 = pow( var_15, var_5 );
    var_15 = clamp( var_15, 0.1, 1.99 );
    return var_15;
}

_ID20052()
{
    var_0 = _ID4557();
    var_1 = var_0._ID65[0];
    return var_1;
}

_ID20059()
{
    var_0 = _ID4557();
    var_1 = var_0._ID65[1];
    return var_1;
}

_ID20053()
{
    var_0 = _ID4557();
    return max( abs( angleclamp180( var_0._ID65[0] ) ), abs( angleclamp180( var_0._ID65[2] ) ) );
}

_ID20041()
{
    var_0 = _ID4557();
    return acos( anglestoup( var_0._ID65 )[2] );
}

_ID20050()
{
    var_0 = _ID4557();
    return var_0 _meth_845d();
}

_ID20049()
{
    var_0 = _ID4557();
    return var_0 _meth_845e();
}

_ID20048()
{
    var_0 = _ID4557();
    return var_0 _meth_845f();
}

_ID20051()
{
    var_0 = _ID4557();
    return var_0 _meth_8460();
}

_ID20054()
{
    var_0 = 0;
    var_1 = _ID4557();
    var_2 = 0.1;

    if ( _ID4559() )
    {
        if ( !isdefined( var_1._ID2964 ) )
            var_1._ID2964 = 0;

        var_3 = gettime();

        if ( var_3 > var_1._ID2964 + var_2 )
        {
            var_1._ID2964 = var_3;
            var_4 = bullettrace( var_1._ID740, var_1._ID740 - ( 0, 0, 360 ), 0 );
            var_1._ID2965 = var_4["fraction"];

            if ( !isdefined( var_1._ID2965 ) )
                var_1._ID2965 = 0;
        }

        var_0 = clamp( var_1._ID2965, 0, 1.0 );
    }

    return var_0;
}

_ID20076()
{
    var_0 = _ID4557();
    return var_0 _meth_8484();
}

_ID20078()
{
    var_0 = _ID20076();
    return var_0[0];
}

_ID20077()
{
    var_0 = _ID20076();
    return var_0[1];
}

_ID20079()
{
    var_0 = _ID4557();
    return var_0 _meth_8486();
}

_ID20081()
{
    var_0 = _ID20079();
    return var_0[0];
}

_ID20080()
{
    var_0 = _ID20079();
    return var_0[1];
}

_ID20086()
{
    var_0 = _ID4557();
    return var_0 _meth_8483();
}

_ID20084()
{
    var_0 = _ID20086();
    return var_0[0];
}

_ID20085()
{
    var_0 = _ID20086();
    return var_0[1];
}

_ID20082()
{
    var_0 = _ID20086();
    return var_0[2];
}

_ID20083()
{
    var_0 = _ID20086();
    return var_0[3];
}

_ID20087()
{
    var_0 = _ID4557();
    return var_0 _meth_8482();
}

_ID20089()
{
    var_0 = _ID20087();
    return var_0[0];
}

_ID20088()
{
    var_0 = _ID20087();
    return var_0[1];
}

_ID20092()
{
    var_0 = _ID4557();
    return var_0 _meth_8485();
}

_ID20090()
{
    var_0 = _ID4557();
    var_1 = var_0._ID39235 _meth_8488();
    var_1 = abs( var_1 );
    var_1 = clamp( var_1, 0, 90 );
    var_1 = _ID4566( var_1, 0, 90 );
    var_2 = level._ID794 getnormalizedcameramovement();
    var_3 = abs( var_2[0] );
    return 0;
}

_ID20091()
{
    var_0 = _ID4557();
    var_1 = var_0._ID39235 _meth_8487();
    var_1 = abs( var_1 );
    var_2 = var_0._ID39235 _meth_8488();
    var_2 = abs( var_2 );
    var_3 = length2d( ( var_1, var_2, 0 ) );
    var_3 = clamp( var_3, 0, 135 );
    var_4 = _ID4566( var_3, 0, 135 );
    var_5 = level._ID794 getnormalizedcameramovement();
    var_6 = length2d( var_5 );
    return var_4 * var_6;
}

_ID20073()
{
    var_0 = _ID4557();

    if ( isdefined( level._ID3674._ID11156 ) && level._ID3674._ID11156 == 1 )
    {
        level._ID3674._ID11158 = level._ID3674._ID11158 * 0.94;
        return level._ID3674._ID11158;
    }
    else
    {
        var_1 = var_0 _meth_8526();

        if ( var_1 != 0 )
            level._ID3674._ID11158 = var_1;

        return var_1;
    }
}

_ID20071()
{
    var_0 = _ID4557();
    var_1 = var_0 _meth_8527();
    return var_1;
}

_ID20072()
{
    var_0 = _ID20071();
    var_1 = _ID20057();
    var_2 = var_1 + abs( var_0 ) * 0.1;
    return var_1 + abs( var_0 ) * 0.1;
}

_ID20095()
{
    var_0 = level._ID794 getnormalizedcameramovement();
    var_1 = abs( var_0[0] );
    var_2 = abs( var_0[1] );

    if ( var_1 > var_2 )
        return var_1;
    else
        return var_2;
}

_ID4582( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_0._ID28749;
    var_4 = undefined;
    var_5 = var_2 _ID4553( var_3, var_1 );

    if ( isstring( var_5 ) )
    {
        var_6 = var_2 _ID4557();
        var_4 = spawn( "script_origin", var_6._ID740 );
        var_4 linkto( var_6, "tag_origin", var_2._ID34980, ( 0, 0, 0 ) );
        var_4 setvolume( 0 );
        var_4 _ID42494::_ID34605( var_5, "sound_done" );
        var_4 thread _ID4565( "sound_done" );
    }

    return var_4;
}

_ID4565( var_0 )
{
    self endon( "death" );
    self waittill( var_0 );

    if ( isdefined( self ) )
        self delete();
}

_ID4559()
{
    return isdefined( self._ID27556 ) && self._ID27556;
}

_ID4553( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_0._ID3425[_ID42463::_ID3891( 0, var_1 )];

    if ( isdefined( var_3 ) && var_2 _ID4559() )
        var_3 += "_plr";

    return var_3;
}

_ID4554( var_0 )
{
    return var_0._ID3425.size;
}

_ID4596( var_0, var_1 )
{
    switch ( var_0 )
    {
        case "volume":
            self setvolume( var_1, 0.1 );
            break;
        case "pitch":
            self setpitch( var_1, 0.1 );
            break;
        default:
            break;
    }
}

_ID4558( var_0 )
{
    var_1 = self;
    var_2 = var_0._ID28749;
    var_1 _ID4523( var_2._ID680 );
    var_1 _ID4595( var_0 );
    var_1 _ID4571( var_2._ID680 );
}

_ID4595( var_0 )
{
    var_1 = self;
    var_2 = var_1 _ID4543();
    var_3 = var_0._ID28749;
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_1 _ID4542() );
    var_1 _ID4557() endon( "death" );

    if ( isdefined( var_3._ID12215 ) )
    {
        var_4 = var_2 _ID4538( var_3._ID12215 );
        var_5 = _ID42463::_ID3889( var_4 );
        var_6 = 0;
        var_7 = var_5[1];

        for ( var_8 = var_3._ID680; _ID4525( var_0._ID34524 ) && var_6 < var_7; var_6 += 0.1 )
        {
            var_9 = var_0 _ID4546();
            var_10 = var_2 _ID4562( var_6, var_3._ID12215 );
            var_10 = 1.0 - var_9 * ( 1.0 - var_10 );
            var_1 _ID4577( var_8, var_10 );
            wait 0.1;
        }
    }
}

_ID4525( var_0 )
{
    var_1 = 0;

    foreach ( var_3 in var_0 )
    {
        if ( isdefined( var_3 ) && !isdefined( var_3._ID20616 ) )
        {
            var_1 = 1;
            break;
        }
    }

    return var_1;
}

_ID4523( var_0 )
{
    self._ID25755[var_0] = 1.0;
}

_ID4571( var_0 )
{
    self._ID25755[var_0] = undefined;
}

_ID4577( var_0, var_1 )
{
    self._ID25755[var_0] = var_1;
}

_ID4566( var_0, var_1, var_2 )
{
    return ( var_0 - var_1 ) / ( var_2 - var_1 );
}

_ID4532()
{
    return level._ID1374._ID40630;
}

_ID4536( var_0 )
{
    return _ID4532()._ID6663[var_0][0];
}

_ID4552()
{
    return self._ID18298._ID28452;
}

_ID4579( var_0 )
{
    self._ID18298._ID28452 = var_0;
}

_ID4573( var_0 )
{
    self._ID16938._ID20105 = var_0;
}

_ID4542()
{
    return self._ID20106;
}

_ID4544()
{
    return self._ID28452;
}

_ID4543()
{
    return _ID4551( self._ID28452 );
}

_ID4551( var_0 )
{
    var_1 = _ID4532();
    return var_1._ID28453[var_0];
}

_ID4541( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = _ID4532();

    if ( isstring( var_1 ) )
    {
        var_4 = _ID4551( var_1 );

        if ( isdefined( var_4 ) )
            var_2 = var_4._ID20107[var_0];
    }
    else
    {
        foreach ( var_4 in var_3._ID28453 )
        {
            foreach ( var_7 in var_4._ID20107 )
            {
                if ( var_7._ID20106 == var_0 )
                {
                    var_2 = var_7;
                    break;
                }
            }
        }
    }

    return var_2;
}

_ID4557()
{
    return self._ID40059;
}

_ID4555()
{
    return self._ID34561;
}

_ID4539()
{
    return self._ID18298._ID13811;
}

_ID4540()
{
    return self._ID18298._ID13816;
}

_ID4572( var_0, var_1 )
{
    var_0._ID25758 = var_1;
}

_ID4535( var_0 )
{
    var_1 = self;
    var_2 = [];
    var_3 = var_0._ID28749;
    var_4 = _ID4551( var_3._ID28452 );
    var_5 = var_0._ID25758;

    if ( !isdefined( var_5 ) )
        var_5 = var_3._ID25765;

    foreach ( var_7 in var_5 )
    {
        if ( var_1 _ID4549( var_7 ) == 1 )
            var_2[var_7] = var_7;
    }

    return var_2;
}

_ID4549( var_0 )
{
    var_1 = self;
    var_2 = var_1._ID25757[var_0]._ID28749;
    return var_2._ID25759;
}

_ID4550( var_0 )
{
    var_1 = self;
    var_2 = 0;

    if ( isstring( var_0 ) )
        var_3 = var_1._ID25757[var_0]._ID28749;
    else
        var_3 = var_0._ID28749;

    var_2 = var_3._ID25761;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    return var_2;
}

_ID4538( var_0 )
{
    return self._ID13110[var_0];
}

_ID4562( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _ID4538( var_1 );

    if ( isdefined( var_3._ID13112 ) )
        var_4 = [[ var_3._ID13112 ]]( var_0 );
    else
        var_4 = _func_255( var_0, var_3._ID13109 );

    return var_4;
}

_ID4581( var_0 )
{
    var_1 = self;
    var_2 = var_1 _ID4543();
    var_3 = var_1 _ID4557();
    var_4 = var_0._ID28749;
    var_5 = var_2 _ID4554( var_4 );
    var_6 = var_1._ID34980;
    var_7 = var_0._ID28749._ID13816;
    var_8 = 1.0;
    var_0._ID13793 = 0.1 / var_7;
    var_0._ID13795 = 0;

    for ( var_9 = 0; var_9 < var_5; var_9++ )
    {
        var_10 = var_1 _ID4553( var_4, var_9 );
        var_11 = spawn( "script_origin", var_3._ID740 );
        var_11 linkto( var_3, "tag_origin", var_6, ( 0, 0, 0 ) );
        var_11 setvolume( 0 );
        var_11 _ID42494::_ID34625( var_10 );
        var_0._ID34524[var_10] = var_11;
    }
}

_ID4590( var_0 )
{
    var_1 = self;
    var_2 = var_0._ID34524;
    var_0._ID34524 = [];

    foreach ( var_4 in var_2 )
        var_4 thread _ID4591( var_0._ID28749._ID13816 );
}

_ID4591( var_0 )
{
    var_1 = self;
    var_0 = max( 0.05, _ID42463::_ID3891( 0.05, var_0 ) );

    if ( isdefined( var_1 ) )
    {
        var_1._ID20616 = 1;
        var_1 scalepitch( 0, var_0 );
        wait(var_0);

        if ( isdefined( var_1 ) )
            var_1 playrumbleonentity();

        wait 0.05;

        if ( isdefined( var_1 ) )
            var_1 delete();
    }
}

_ID40671( var_0 )
{
    var_1 = self;

    foreach ( var_3 in var_1._ID22649 )
        var_3 _ID4530( var_0 );

    foreach ( var_6 in var_1._ID25757 )
        var_6 _ID4530( var_0 );
}

_ID4530( var_0 )
{
    var_1 = self;

    switch ( var_1._ID28749._ID3426 )
    {
        case "alias":
            foreach ( var_4, var_3 in var_1._ID34524 )
            {
                var_3 _ID4591( var_0 );
                var_1._ID34524[var_4] = undefined;
            }

            break;
        case "soundevent":
            break;
        case "damb":
            break;
    }
}

_ID40669()
{
    var_0 = self;

    foreach ( var_2 in var_0._ID22649 )
    {
        switch ( var_2._ID28749._ID3426 )
        {
            case "alias":
                var_2._ID34524 thread _ID4591( 0.05 );
                var_2._ID34524 = [];
                continue;
            case "soundevent":
                continue;
            case "damb":
                continue;
            default:
                continue;
        }
    }

    foreach ( var_5 in var_0._ID25757 )
    {
        foreach ( var_7 in var_5._ID34524 )
            var_7 thread _ID4591( 0.05 );

        var_5._ID34524 = [];
    }
}

_ID39469( var_0 )
{
    return var_0 * 0.0277778;
}

_ID41910( var_0 )
{
    return var_0 * 36;
}

_ID11124( var_0 )
{
    return var_0 * 0.0277778;
}

_ID41909( var_0 )
{
    return var_0 * 36;
}

_ID4597()
{
    var_0 = 0;

    if ( _ID4560() == 0 )
        var_0 = self vehicle_getspeed();

    return var_0;
}
