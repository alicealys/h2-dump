// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID4484( var_0, var_1 )
{

}

_ID4517()
{
    if ( _func_02F( level._ID1374._ID40630 ) )
        return;

    if ( !_func_02F( level._ID1374._ID40630 ) )
        level._ID1374._ID40630 = _func_1A5();

    var_0 = _unknown_0B51();
    var_0._ID19821 = _func_03D();
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
    _ID42475::_ID34640( "snd_register_vehicle", ::_unknown_0175 );
    _ID42475::_ID34640( "snd_start_vehicle", ::_unknown_0186 );
    _ID42475::_ID34640( "snd_stop_vehicle", ::_unknown_01B3 );
    _unknown_0547( "distance2d", ::_unknown_0A03 );
    _unknown_0553( "distance", ::_unknown_0A15 );
    _unknown_055E( "throttle", ::_unknown_0A26 );
    _unknown_0569( "speed", ::_unknown_0A38 );
    _unknown_0574( "relative_speed", ::_unknown_0A49 );
    _unknown_0580( "doppler", ::_unknown_0A74 );
    _unknown_058B( "doppler_exaggerated", ::_unknown_0A88 );
    _unknown_0596( "doppler_subtle", ::_unknown_0A9D );
    _unknown_05A1( "speed_mph", ::_unknown_0A80 );
    _unknown_05AD( "acceleration_g", ::_unknown_0A95 );
    _ID4568( "jerk_gps", ::_unknown_0AA6 );
    _unknown_05C3( "pitch", ::_unknown_0AFC );
    _unknown_05CE( "yaw", ::_unknown_0B0C );
    _unknown_05DA( "pitch_roll_max", ::_unknown_0B1C );
    _unknown_05E5( "degrees_from_upright", ::_unknown_0B31 );
    _unknown_05F0( "jetbike_thrust", ::_unknown_0B42 );
    _unknown_05FB( "jetbike_drag", ::_unknown_0B50 );
    _unknown_0607( "jetbike_anti_slip", ::_unknown_0B5F );
    _unknown_0612( "jetbike_total_repulsor", ::_unknown_0B6D );
    _unknown_061D( "jetbike_height", ::_unknown_0B7C );
    _unknown_0628( "hovertank_anti_slip_magnitude", ::_unknown_0BB0 );
    _unknown_0634( "hovertank_anti_slip_direction", ::_unknown_0BBE );
    _unknown_063F( "hovertank_auto_yaw_magnitude", ::_unknown_0BD0 );
    _unknown_064A( "hovertank_auto_yaw_direction", ::_unknown_0BDE );
    _unknown_0655( "hovertank_repulsor_front_left", ::_unknown_0BF0 );
    _unknown_0661( "hovertank_repulsor_front_right", ::_unknown_0BFE );
    _unknown_066C( "hovertank_repulsor_back_left", ::_unknown_0C0D );
    _unknown_0677( "hovertank_repulsor_back_right", ::_unknown_0C1B );
    _unknown_0682( "hovertank_throttle_magnitude", ::_unknown_0C2D );
    _unknown_068E( "hovertank_throttle_direction", ::_unknown_0C3B );
    _unknown_0699( "hovertank_uprighting", ::_unknown_0C4A );
    _unknown_06A4( "hovertank_turret_yaw", ::_unknown_0C67 );
    _unknown_06AF( "hovertank_turret_pitch", ::_unknown_0C63 );
    _unknown_06BB( "diveboat_throttle", ::_unknown_0C92 );
    _unknown_06C6( "diveboat_drag", ::_unknown_0CB4 );
    _unknown_06D1( "diveboat_drag_with_mph", ::_unknown_0CC3 );
    _unknown_06DC( "player_pdrone_look", ::_unknown_0CD9 );
    _unknown_06E8( "steering", ::_unknown_0BB3 );
}

_ID34641( var_0, var_1 )
{
    var_2 = _unknown_0DA4();
    var_2._ID28451[var_0] = var_1;
}

_ID34676( var_0 )
{
    var_1 = _unknown_0DB2();

    if ( _func_031( var_0 ) )
    {
        var_2 = var_0;
        var_0 = _func_1A5();
        var_0._ID28452 = var_2;
    }

    var_2 = var_0._ID28452;
    var_3 = _ID42463::_ID3891( var_1._ID10100, var_0._ID27556 );
    var_4 = _ID42463::_ID3891( var_1._ID10092, var_0._ID13811 );
    var_5 = _ID42463::_ID3891( var_1._ID10093, var_0._ID13816 );
    var_6 = _ID42463::_ID3891( var_1._ID10105, var_0._ID25468 );
    var_7 = _ID42463::_ID3891( undefined, var_0._ID19927 );
    self._ID34561 = thread _unknown_0821( var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID34684( var_0, var_1 )
{
    var_2 = self;
    var_3 = _unknown_0E1C();
    var_4 = var_2._ID34561;
    var_2._ID34561 = undefined;
    var_5 = var_4 _unknown_0E3E();
    var_6 = _ID42463::_ID3891( var_4._ID13816, var_5._ID18298._ID13816 );
    var_4._ID13816 = _ID42463::_ID3891( var_6, var_0 );
    var_1 = _ID42463::_ID3891( 0, var_1 );
    var_4 _ID42407::_ID10226( var_1, ::_unknown_0880, var_4._ID13816 );
}

_ID4503()
{
    var_0 = _ID42237::_ID35164();
    var_0._ID40646 = 1;
    return var_0;
}

_ID4560()
{
    return _func_02F( self._ID40646 ) && self._ID40646 == 1;
}

_ID4495( var_0, var_1 )
{
    var_2 = _unknown_0E7D();
    _unknown_0E8D( var_0 );
    _unknown_0E95( var_1 );
    var_2._ID40297 = self;
}

_ID4490( var_0, var_1, var_2 )
{
    var_3 = _unknown_0E98();
    self._ID22637 = _func_1A5();
    self._ID22637._ID22674 = [];
    self._ID22637._ID10143 = _func_1A5();
    self._ID22637._ID10143._ID13816 = _ID42463::_ID3891( var_3._ID10093, var_0 );
    self._ID22637._ID10143._ID34452 = _ID42463::_ID3891( var_3._ID10104, var_1 );
    self._ID22637._ID10143._ID34447 = _ID42463::_ID3891( var_3._ID10103, var_2 );
}

_ID4491( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( _func_0D3( var_0 ) )
        var_6 = var_0;
    else
        var_6 = [ var_0 ];

    var_1 = _ID42463::_ID3891( self._ID22637._ID10143._ID13816, var_1 );
    var_2 = _ID42463::_ID3891( self._ID22637._ID10143._ID34452, var_2 );
    var_3 = _ID42463::_ID3891( self._ID22637._ID10143._ID34447, var_3 );
    var_4 = _ID42463::_ID3891( var_0, var_4 );
    var_5 = _ID42463::_ID3891( "alias", var_5 );
    var_10 = _func_1A5();
    var_10._ID680 = var_4;
    var_10._ID13816 = var_1;
    var_10._ID3426 = var_5;
    var_10._ID3425 = var_6;
    var_10._ID28452 = _unknown_0F59();
    var_10._ID26244 = [];
    var_10 _unknown_05C8( var_2, var_3 );
    self._ID22637._ID22674[var_10._ID680] = var_10;
    self._ID22637._ID22651 = var_10;
}

_ID4568( var_0 )
{
    var_1 = undefined;

    if ( _func_02F( self._ID22637 ) && _func_02F( self._ID22637._ID22651 ) )
    {
        var_1 = self._ID22637._ID22651;

        if ( _func_02F( self._ID5030 ) )
        {

        }
    }
    else if ( _func_02F( self._ID25754 ) && _func_02F( self._ID25754._ID25760 ) )
        var_1 = self._ID25754._ID25760;
    else if ( _func_02F( self._ID5030 ) && _func_02F( self._ID5030._ID5032 ) )
        var_1 = self._ID5030._ID5032;

    return var_1;
}

_ID4567( var_0 )
{
    var_1 = undefined;
    var_2 = _unknown_0619( var_0 );

    if ( _func_02F( var_2 ) )
        var_1 = var_2._ID28163;

    return var_1;
}

_ID4569( var_0, var_1 )
{
    var_2 = _unknown_0FEE();
    self._ID26243 = _func_1A5();
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
    var_0 = _func_128( var_0 );
    var_3 = var_0;

    if ( !_func_031( var_3 ) )
        var_3 = "";

    var_4 = _unknown_069C( var_3 );
    var_3 = var_0;
    var_6 = _func_1A5();
    var_6._ID13114 = [];
    var_6._ID20094 = var_0;
    var_6._ID34452 = _ID42463::_ID3891( var_4._ID26243._ID34452, var_1 );
    var_6._ID34447 = _ID42463::_ID3891( var_4._ID26243._ID34447, _ID42463::_ID3891( var_1, var_2 ) );
    var_6._ID10098 = var_4._ID26243._ID26058;
    var_6._ID34452 = _unknown_0767( var_6._ID34452, 0.1, 0.1 );
    var_6._ID34447 = _unknown_077B( var_6._ID34447, 0.1, 0.1 );
    var_4._ID26244[var_3] = var_6;
    var_4._ID28163 = var_6;
}

_ID4502( var_0, var_1 )
{
    return var_1 * 1 - var_0 / var_0;
}

_ID4500( var_0, var_1 )
{
    return var_1 / var_0 + var_1;
}

_ID4499( var_0, var_1, var_2 )
{
    var_3 = _unknown_07A4( var_0, var_1 );
    var_4 = _unknown_07AF( var_3, var_2 );
    return var_4;
}

_ID4521( var_0, var_1, var_2 )
{
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _unknown_079B( var_4, var_1, var_2 );
        _unknown_07FE();
    }

    var_clear_2
    var_clear_0
}

_ID4486( var_0, var_1, var_2 )
{
    if ( _func_031( var_1 ) )
        var_2 = _ID42463::_ID3891( var_1, var_2 );

    var_3 = _unknown_0799( var_2 );
    var_4 = var_1;

    if ( !_func_031( var_4 ) )
        var_4 = "???";

    var_5 = _func_1A5();
    var_5._ID3424 = var_1;
    var_5._ID26058 = var_0;
    var_3._ID13114[var_2] = var_5;
}

_ID4510()
{
    var_0 = _unknown_07A6( "UNKNOWN param_map being terminated by AVM_end_param_map()" );

    if ( _func_02F( var_0 ) )
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
    var_1 = _unknown_1180();
    self._ID25754 = _func_1A5();
    self._ID25754._ID25765 = [];
    self._ID25754._ID10143 = _func_1A5();
    self._ID25754._ID10143._ID13816 = _ID42463::_ID3891( var_1._ID10093, var_0 );
}

_ID4493( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _unknown_11B3();
    var_1 = _ID42463::_ID3891( undefined, var_1 );
    var_2 = _ID42463::_ID3891( self._ID25754._ID10143._ID13816, var_2 );
    var_3 = _ID42463::_ID3891( 1, var_3 );
    var_4 = _ID42463::_ID3891( var_0, var_4 );
    var_5 = _ID42463::_ID3891( var_6._ID10091, var_5 );
    var_7 = var_4;

    if ( _func_031( var_4 ) )
        var_7 = [ var_4 ];

    var_11 = _func_1A5();
    var_11._ID680 = var_0;
    var_11._ID3425 = var_7;
    var_11._ID3426 = var_5;
    var_11._ID12215 = var_1;
    var_11._ID13816 = var_2;
    var_11._ID25759 = var_3;
    var_11._ID26244 = [];
    var_11._ID34524 = [];
    var_11 _unknown_0887();
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
    self._ID5030 = _func_1A5();
    self._ID5030._ID5033 = [];
    self._ID5030._ID10143 = _func_1A5();
    self._ID5030._ID10143._ID34452 = var_0;
    self._ID5030._ID10143._ID34447 = var_1;
}

_ID4489( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = _unknown_1283();
    var_6 = _func_1A5();
    var_6._ID25765 = [];
    var_6._ID22674 = [];
    var_6._ID28452 = _unknown_129D();
    var_6._ID26244 = [];
    var_6._ID680 = var_0;
    var_6._ID8419 = var_1;
    var_3 = _ID42463::_ID3891( self._ID5030._ID10143._ID34452, var_3 );
    var_4 = _ID42463::_ID3891( self._ID5030._ID10143._ID34447, var_4 );
    var_6 _unknown_0933( var_3, var_4 );
    self._ID5030._ID5033[var_6._ID680] = var_6;
    self._ID5030._ID5032 = var_6;

    if ( _func_0D3( var_2 ) )
        _unknown_09BC( var_2, self._ID5030._ID10143._ID34452, self._ID5030._ID10143._ID34447 );
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
    if ( _func_031( var_0 ) )
        var_0 = [ var_0 ];

    var_1 = var_0;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];
        var_3 = self._ID5030._ID5032;
        var_3._ID25765[var_2] = var_2;
    }

    var_clear_3
    var_clear_0
}

_ID4483( var_0 )
{
    var_1 = self._ID5030._ID5032;

    if ( !_func_02F( var_0 ) || var_0.size == 0 )
        var_0 = "none";

    if ( _func_031( var_0 ) )
    {
        if ( _func_128( var_0 ) == "all" )
            var_1._ID22674[0] = "all";
        else if ( _func_128( var_0 ) == "none" )
            var_1._ID22674[0] = "none";
        else
            var_1._ID22674[var_0] = var_0;
    }
    else
    {
        var_1._ID22674[0] = undefined;
        var_2 = var_0;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( var_3 != "all" && var_3 != "none" )
            {

            }

            var_1._ID22674[var_3] = var_3;
        }

        var_clear_2
        var_clear_0
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
    if ( _func_02F( var_0 ) )
        var_0 *= 1000;

    var_2 = _unknown_13ED();
    self._ID36188 = _func_1A5();
    self._ID36188._ID36190 = [];
    self._ID36188._ID10143 = _func_1A5();
    self._ID36188._ID10143._ID28609 = _ID42463::_ID3891( var_2._ID10101, var_1 );
    self._ID36188._ID10143._ID23607 = _ID42463::_ID3891( var_2._ID10106, var_0 );
}

_ID4498( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _func_02F( var_4 ) )
        var_4 *= 1000;

    var_5 = _func_1A5();
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
    if ( _func_02F( var_1 ) )
        var_1 *= 1000;

    var_3 = self._ID36188._ID17466;
    var_4 = var_3._ID680;
    var_5 = _func_1A5();
    var_5._ID680 = var_0;
    var_5._ID38684 = [];
    var_5._ID28609 = _ID42463::_ID3891( var_3._ID28609, var_2 );
    var_5._ID23607 = _ID42463::_ID3891( var_3._ID23607, var_1 );
    var_5._ID28452 = _unknown_14CD();
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
    if ( _func_031( var_0 ) )
        var_0 = _func_128( var_0 );

    var_4 = _unknown_151A();

    if ( !_func_02F( self._ID13110 ) )
        self._ID13110 = [];

    var_5 = _func_1A5();

    if ( _func_0D3( var_1 ) )
    {
        var_5._ID13109 = [];

        if ( _func_03A( "enableMW1GetArrayKeysAndForEach" ) != 0 )
        {
            for ( var_6 = 0; var_6 < var_1.size; var_6++ )
            {
                var_7 = var_1[var_6];
                var_5._ID13109[var_5._ID13109.size] = ( var_7[0], var_7[1], 0 );
            }
        }
        else
        {
            var_8 = var_1;

            for ( var_9 = _func_1DA( var_8 ); _func_02F( var_9 ); var_9 = _func_1BF( var_8, var_9 ) )
            {
                var_7 = var_8[var_9];
                var_5._ID13109[var_5._ID13109.size] = ( var_7[0], var_7[1], 0 );
            }

            var_clear_1
            var_clear_0
        }
    }
    else
        var_5._ID13112 = var_1;

    self._ID13110[var_0] = var_5;
}

_ID4511()
{
    var_0 = _unknown_15A5();
    self._ID8537 = [];
    var_1 = self._ID22637._ID22674;

    for ( var_8 = _func_1DA( var_1 ); _func_02F( var_8 ); var_8 = _func_1BF( var_1, var_8 ) )
    {
        var_2 = var_1[var_8];
        var_3 = var_8;
        var_4 = var_2;
        var_5 = var_4._ID26244;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];
            self._ID8537[var_7] = _unknown_15E6( var_7 );
        }

        var_clear_3
    }

    var_clear_7
    var_9 = self._ID25754._ID25765;

    for ( var_8 = _func_1DA( var_9 ); _func_02F( var_8 ); var_8 = _func_1BF( var_9, var_8 ) )
    {
        var_2 = var_9[var_8];
        var_10 = var_8;
        var_11 = var_2;
        var_12 = var_11._ID26244;

        for ( var_7 = _func_1DA( var_12 ); _func_02F( var_7 ); var_7 = _func_1BF( var_12, var_7 ) )
        {
            var_6 = var_12[var_7];
            self._ID8537[var_7] = _unknown_1631( var_7 );
        }

        var_clear_0
    }

    var_clear_3
    var_13 = self._ID5030._ID5033;

    for ( var_8 = _func_1DA( var_13 ); _func_02F( var_8 ); var_8 = _func_1BF( var_13, var_8 ) )
    {
        var_2 = var_13[var_8];
        var_14 = var_8;
        var_15 = var_2;
        var_16 = var_15._ID26244;

        for ( var_7 = _func_1DA( var_16 ); _func_02F( var_7 ); var_7 = _func_1BF( var_16, var_7 ) )
        {
            var_6 = var_16[var_7];
            self._ID8537[var_7] = _unknown_167F( var_7 );
        }

        var_clear_0
    }

    var_clear_3
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
    return _unknown_16B6();
}

_ID4519( var_0, var_1 )
{
    thread _unknown_0F59( var_0, var_1 );
}

_ID4574( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _unknown_16CC();
    var_4 = var_2 _unknown_1704();
    var_0 = _func_0EE( var_0, 0, 1 );
    var_1 = _func_0EE( _ID42463::_ID3891( 1, var_1 ), 0, 60 );
    var_5 = var_3;
    var_2 notify( var_5 );
    var_2 endon( var_5 );
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_2 _unknown_16FC() );
    var_4 endon( "death" );
    var_6 = _unknown_0FDA();
    var_7 = var_0 - var_2._ID23004;
    var_8 = _func_0E6( 1, var_1 / var_6 );
    var_9 = var_7 / var_8;

    for (;;)
    {
        if ( var_9 < 0 )
        {
            if ( var_2._ID23004 > var_0 )
                var_2._ID23004 = _func_0E6( 0, var_2._ID23004 + var_9 );
            else
                break;
        }
        else if ( var_9 > 0 )
        {
            if ( var_2._ID23004 < var_0 )
                var_2._ID23004 = _func_0C4( 1.0, var_2._ID23004 + var_9 );
            else
                break;
        }

        wait(var_6);
    }
}

_ID4515( var_0 )
{
    return _unknown_175E()._ID30432;
}

_ID4516()
{
    return 0.1;
}

_ID40667( var_0 )
{
    var_1 = 0;
    var_2 = _unknown_1770();

    if ( _func_031( var_0 ) )
    {
        var_3 = var_2._ID28453[var_0];

        if ( _func_02F( var_3 ) & _func_0D3( var_3._ID20107 ) )
            var_1 = var_3._ID20107.size;
    }
    else
    {
        var_4 = var_2._ID28453;

        for ( var_5 = _func_1DA( var_4 ); _func_02F( var_5 ); var_5 = _func_1BF( var_4, var_5 ) )
        {
            var_3 = var_4[var_5];

            if ( _func_0D3( var_3._ID20107 ) )
                var_1 += var_3._ID20107.size;
        }

        var_clear_1
        var_clear_0
    }

    return var_1;
}

_ID4529( var_0 )
{
    var_1 = _unknown_17C9();
    var_2 = var_1._ID28451[var_0];
    var_3 = _func_1A5();
    var_3._ID16938 = _func_1A5();
    var_3._ID39954 = _func_1A5();
    var_3._ID18298 = _func_1A5();
    var_3._ID20107 = [];
    var_3._ID18298._ID28452 = _ID42463::_ID3891( undefined, var_0 );
    var_3._ID18298._ID13811 = var_1._ID10092;
    var_3._ID18298._ID13816 = var_1._ID10093;
    var_3._ID18298._ID34980 = var_1._ID10105;
    var_3 [[ var_2 ]]();
    var_3 _unknown_114B();
    return var_3;
}

_ID4524()
{
    var_0 = _unknown_182C();
    var_0._ID28453[self._ID18298._ID28452] = self;
}

_ID40673()
{
    var_0 = _unknown_183D();
    var_0._ID28453[self._ID18298._ID28452] = undefined;
}

_ID4522()
{
    var_0 = _unknown_184D();
    var_0._ID28453[self._ID28452]._ID20107[self._ID20106] = self;
    var_0._ID30432++;
}

_ID4570()
{
    var_0 = _unknown_1867();
    var_0._ID28453[self._ID28452]._ID20107[self._ID20106] = undefined;
}

_ID4531( var_0 )
{
    var_1 = self._ID18298._ID28452 + "_" + _unknown_1165();

    if ( _func_02F( var_0 ) && var_0 == 1 )
        var_1 += "_player";

    return var_1;
}

_ID4518( var_0, var_1, var_2 )
{
    _unknown_18A7()._ID6663[var_0] = [ var_1, var_2 ];
}

_ID4547( var_0 )
{
    var_1 = self;
    var_2 = undefined;
    var_3 = var_1._ID36189;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2 = var_4[var_0];

        if ( _func_02F( var_2 ) )
            break;
    }

    var_clear_2
    var_clear_0
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
    var_3 = var_1._ID36188._ID36190;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_2 = var_4._ID36202[var_0];

        if ( _func_02F( var_2 ) )
            break;
    }

    var_clear_2
    var_clear_0
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
    var_6 = _func_1A5();
    var_6._ID39954 = _func_1A5();
    var_6._ID28452 = var_5 _unknown_1952();
    var_6._ID20106 = var_5 _unknown_1295( var_4 );
    var_6._ID40059 = var_0;
    var_6._ID13811 = var_1;
    var_6._ID13816 = var_2;
    var_6._ID34980 = var_3;
    var_6._ID27556 = var_4;
    var_6._ID22638 = 1.0;
    var_6._ID25755 = [];
    var_6._ID23004 = 1.0;
    var_6._ID22649 = [];
    var_7 = var_5._ID22637._ID22674;

    for ( var_10 = _func_1DA( var_7 ); _func_02F( var_10 ); var_10 = _func_1BF( var_7, var_10 ) )
    {
        var_8 = var_7[var_10];
        var_9 = _func_1A5();
        var_9._ID28749 = var_8;
        var_9._ID27010 = 0;
        var_9._ID9426 = var_6 _unknown_1427( var_8 );
        var_9._ID34524 = [];
        var_9._ID40767 = 1.0;
        var_6._ID22649[var_8._ID680] = var_9;
    }

    var_clear_3
    var_clear_0
    var_6._ID25757 = [];
    var_11 = var_5._ID25754._ID25765;

    for ( var_12 = _func_1DA( var_11 ); _func_02F( var_12 ); var_12 = _func_1BF( var_11, var_12 ) )
    {
        var_8 = var_11[var_12];
        var_9 = _func_1A5();
        var_9._ID28749 = var_8;
        var_9._ID9426 = var_6 _unknown_1475( var_8 );
        var_9._ID34524 = [];
        var_6._ID25757[var_8._ID680] = var_9;
    }

    var_clear_1
    var_clear_0
    var_6._ID5031 = [];
    var_13 = var_5._ID5030._ID5033;

    for ( var_14 = _func_1DA( var_13 ); _func_02F( var_14 ); var_14 = _func_1BF( var_13, var_14 ) )
    {
        var_8 = var_13[var_14];
        var_9 = _func_1A5();
        var_9._ID28749 = var_8;
        var_9._ID9426 = var_6 _unknown_14BD( var_8 );
        var_6._ID5031[var_8._ID680] = var_9;
    }

    var_clear_1
    var_clear_0
    var_6._ID36189 = [];
    var_15 = var_5._ID36188._ID36190;

    for ( var_21 = _func_1DA( var_15 ); _func_02F( var_21 ); var_21 = _func_1BF( var_15, var_21 ) )
    {
        var_16 = var_15[var_21];
        var_6._ID36189[var_21] = [];
        var_17 = var_16._ID36202;

        for ( var_20 = _func_1DA( var_17 ); _func_02F( var_20 ); var_20 = _func_1BF( var_17, var_20 ) )
        {
            var_18 = var_17[var_20];
            var_19 = _func_1A5();
            var_19._ID28749 = var_18;
            var_19._ID36040 = 0;
            var_6._ID36189[var_21][var_20] = var_19;
        }

        var_clear_4
    }

    var_clear_6

    if ( _func_02F( var_5._ID16938._ID20105 ) )
        var_6 [[ var_5._ID16938._ID20105 ]]( var_6._ID39954 );

    return var_6;
}

_ID4580( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = self;

    if ( var_6 _unknown_10E1() == 0 )
        var_6 _meth_8295();

    var_7 = _unknown_1B1E( var_0 );

    if ( !_func_02F( var_7 ) )
        var_7 = _unknown_1419( var_0 );

    var_8 = var_7 _unknown_149C( var_6, var_2, var_3, var_4, var_1 );
    var_8 _unknown_1455();
    var_8 thread _unknown_15F3();
    var_8 thread _unknown_173F( var_5 );
    var_6 thread _unknown_1596( var_8 );
    return var_8;
}

_ID4589( var_0 )
{
    if ( !_func_02F( self._ID20616 ) )
    {
        self._ID20616 = 1;
        var_1 = self;
        var_2 = var_1 _unknown_1B5E();
        var_3 = var_1 _unknown_1B61();
        var_0 = _func_0E6( 0.01, _ID42463::_ID3891( var_1._ID13816, var_0 ) );
        level notify( "msg_snd_vehicle_stop_" + var_3 );
        var_4 = var_1._ID22649;

        for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
        {
            var_5 = var_4[var_7];
            var_6 = _ID42463::_ID3891( var_5._ID28749._ID13816, var_0 );
            var_5 thread _unknown_1C8D( var_6 );
        }

        var_clear_3
        var_clear_0
        var_8 = var_1._ID25757;

        for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
        {
            var_9 = var_8[var_10];
            var_6 = _ID42463::_ID3891( var_9._ID28749._ID13816, var_0 );
            var_9 thread _unknown_1CBE( var_6 );
        }

        var_clear_2
        var_clear_0
        wait(var_0 + 0.05);
        var_1 _unknown_1513();
    }
}

_ID4564( var_0 )
{
    var_1 = var_0 _unknown_1BF2();
    level endon( "msg_snd_vehicle_stop_" + var_1 );
    self waittill( "death" );
    var_0 thread _unknown_1620();
}

_ID4528( var_0 )
{
    var_1 = self;
    var_2 = _func_1A5();
    var_2._ID34456 = [];
    var_2._ID26618 = [];
    var_3 = var_0._ID26244;

    for ( var_8 = _func_1DA( var_3 ); _func_02F( var_8 ); var_8 = _func_1BF( var_3, var_8 ) )
    {
        var_4 = var_3[var_8];
        var_2._ID34456[var_4._ID20094] = 0;
        var_5 = var_4._ID13114;

        for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
        {
            var_6 = var_5[var_7];

            if ( !_func_02F( var_2._ID26618[var_6._ID26058] ) )
                var_2._ID26618[var_6._ID26058] = 1.0;
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
    var_clear_0

    if ( !_func_02F( var_2._ID26618["volume"] ) )
        var_2._ID26618["volume"] = 1.0;

    if ( !_func_02F( var_2._ID26618["pitch"] ) )
        var_2._ID26618["pitch"] = 1.0;

    return var_2;
}

_ID40672( var_0 )
{
    var_1 = self;
    var_2 = var_0._ID34456;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_0._ID34456[var_4] = 0;
    }

    var_clear_2
    var_5 = var_0._ID26618;

    for ( var_4 = _func_1DA( var_5 ); _func_02F( var_4 ); var_4 = _func_1BF( var_5, var_4 ) )
    {
        var_3 = var_5[var_4];
        var_0._ID26618[var_4] = 1.0;
    }

    var_clear_0
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
    var_0 = _unknown_17C2();
    var_1 = var_0["volume"];

    if ( !_func_02F( var_1 ) )
        var_1 = 1.0;

    return var_1;
}

_ID4594()
{
    var_0 = self;
    var_1 = _unknown_1D2F();
    var_2 = _unknown_1D62();
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + _unknown_1D3E() );
    var_2 endon( "death" );
    var_3 = undefined;

    for (;;)
    {
        var_0 _ID4575();
        var_4 = var_0._ID22649;

        for ( var_7 = _func_1DA( var_4 ); _func_02F( var_7 ); var_7 = _func_1BF( var_4, var_7 ) )
        {
            var_5 = var_4[var_7];

            if ( var_5._ID27010 == 1 )
            {
                var_6 = var_5._ID28749._ID680;
                var_0 _unknown_189D( var_5, var_3 );
                var_0 _unknown_1917( var_5 );
            }
        }

        var_clear_4
        var_clear_2
        var_3 = _func_03D();
        var_8 = _func_0F4( var_0._ID40059._ID740, level._ID794._ID740 );

        if ( var_8 < 400 )
            var_9 = 1.0;
        else if ( var_8 > 1500 )
            var_9 = 10.0;
        else
            var_9 = 1.0 + 9.0 * var_8 - 400 / 1100;

        wait(0.1 * var_9);
    }
}

_ID4575( var_0, var_1 )
{
    var_2 = self;

    switch ( var_0._ID28749._ID3426 )
    {

    }

    case "soundevent":
    case "alias":
    case "damb":
    default:
}

_ID4563( var_0, var_1 )
{
    if ( var_0._ID28749._ID26244.size == 0 )
        return;

    var_2 = self;
    var_3 = _unknown_1E66();
    var_4 = var_0._ID28749;
    var_5 = var_0._ID9426;
    var_6 = _func_03D();
    var_1 = _ID42463::_ID3891( var_6 - 100, var_1 );
    var_5._ID26618 = [];
    var_7 = [];
    var_8 = var_3._ID8537;

    for ( var_10 = _func_1DA( var_8 ); _func_02F( var_10 ); var_10 = _func_1BF( var_8, var_10 ) )
    {
        var_9 = var_8[var_10];
        var_7[var_10] = var_2 [[ var_9 ]]();
    }

    var_clear_2
    var_11 = var_4._ID26244;

    for ( var_24 = _func_1DA( var_11 ); _func_02F( var_24 ); var_24 = _func_1BF( var_11, var_24 ) )
    {
        var_12 = var_11[var_24];
        var_13 = var_12._ID20094;
        var_14 = var_7[var_13];
        var_15 = var_5._ID34456[var_13];

        if ( var_14 > var_15 )
            var_16 = var_12._ID34452;
        else
            var_16 = var_12._ID34447;

        var_17 = var_6 - var_1 / 100.0;
        var_16 = 1.0 - _func_1F9( 1 - var_16, var_17 );
        var_18 = var_15 + var_16 * var_14 - var_15;
        var_19 = var_12._ID13114;

        for ( var_23 = _func_1DA( var_19 ); _func_02F( var_23 ); var_23 = _func_1BF( var_19, var_23 ) )
        {
            var_20 = var_19[var_23];
            var_21 = var_3._ID13110[var_23];
            var_22 = _func_255( var_18, var_21._ID13109 );

            if ( _func_02F( var_5._ID26618[var_20._ID26058] ) )
            {
                var_5._ID26618[var_20._ID26058] = var_5._ID26618[var_20._ID26058] * var_22;
                continue;
            }

            var_5._ID26618[var_20._ID26058] = var_22;
        }

        var_clear_5
        var_5._ID34456[var_13] = var_18;
    }

    var_clear_13
    var_clear_0
}

_ID4593()
{
    self._ID22638 = 1.0;
    var_0 = self._ID25755;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        self._ID22638 = self._ID22638 * var_1;
    }

    var_clear_2
    var_clear_0
}

_ID4592( var_0 )
{
    var_1 = self;
    var_2 = var_0._ID9426._ID26618;

    for ( var_7 = _func_1DA( var_2 ); _func_02F( var_7 ); var_7 = _func_1BF( var_2, var_7 ) )
    {
        var_3 = var_2[var_7];

        if ( var_7 == "volume" )
        {
            var_3 *= var_1._ID22638 * var_0._ID40767;

            if ( _func_02F( var_0._ID13795 ) )
            {
                var_0._ID13795 = _func_0C4( var_0._ID13795 + var_0._ID13793, 1.0 );
                var_3 *= var_0._ID13795;

                if ( var_0._ID13795 >= 1.0 )
                    var_0._ID13795 = undefined;
            }
        }

        var_4 = var_0._ID34524;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];
            var_5 _unknown_1FA4( var_7, var_3 );
        }

        var_clear_3
        var_clear_1
    }

    var_clear_5
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
    var_7 = _func_0E6( 1, var_2 / _unknown_1939() );
    var_8 = var_6 / var_7;
    var_3 thread _unknown_1C4E( var_4, var_5, var_8, _unknown_1946() );
}

_ID4576( var_0, var_1, var_2, var_3 )
{
    var_4 = self;
    var_5 = var_4 _unknown_20B9();
    var_6 = var_0._ID28749._ID680;
    var_4 notify( var_6 );
    var_4 endon( var_6 );
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_4 _unknown_20A4() );
    var_5 endon( "death" );

    for (;;)
    {
        if ( var_2 < 0 )
        {
            if ( var_0._ID40767 > var_1 )
                var_0._ID40767 = _func_0E6( 0, var_0._ID40767 + var_2 );
            else
                break;
        }
        else if ( var_2 > 0 )
        {
            if ( var_0._ID40767 < var_1 )
                var_0._ID40767 = _func_0C4( 1.0, var_0._ID40767 + var_2 );
            else
                break;
        }

        wait(var_3);
    }
}

_ID4561( var_0 )
{
    var_1 = self;
    var_2 = _unknown_2101();
    var_3 = var_2._ID36188._ID36190;

    for ( var_10 = _func_1DA( var_3 ); _func_02F( var_10 ); var_10 = _func_1BF( var_3, var_10 ) )
    {
        var_4 = var_3[var_10];
        var_5 = var_4._ID19926;

        if ( _func_0D3( var_0 ) )
            var_5 = var_0[var_10];

        var_6 = var_5[0];
        var_7 = var_5[1];
        var_8 = var_1._ID36189[var_10][var_6];
        var_9 = var_1._ID5031[var_7];
        var_1 _unknown_1C68( var_9 );
        var_1 thread _unknown_1D76( var_8, var_9, 1 );
    }

    var_clear_7
}

_ID4584( var_0, var_1, var_2 )
{
    var_3 = self;
    var_4 = var_3 _unknown_216D();
    var_5 = var_0._ID28749;
    var_6 = var_3 _unknown_21A7();
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + _unknown_2183() );
    var_6 endon( "death" );
    var_0._ID36040 = _func_03D();
    var_3 _unknown_1E54( var_0, var_1 );
    var_3 _unknown_1EE0( var_0, var_1 );
    var_3 _unknown_1F53( var_0, var_1 );

    if ( _func_02F( var_1._ID28749._ID19811 ) )
        var_3 [[ var_1._ID28749._ID19811 ]]( var_3._ID39954 );

    var_7 = undefined;
    var_8 = undefined;
    var_9 = undefined;
    var_10 = undefined;
    var_11 = undefined;
    var_12 = 1;

    for (;;)
    {
        if ( _func_02F( var_1._ID28749._ID19473 ) )
        {
            var_3 _unknown_1D12( var_1 );
            var_3 [[ var_1._ID28749._ID19473 ]]( var_1._ID9426._ID34456, var_3._ID39954 );
        }

        var_13 = var_5._ID38684;

        for ( var_23 = _func_1DA( var_13 ); _func_02F( var_23 ); var_23 = _func_1BF( var_13, var_23 ) )
        {
            var_14 = var_13[var_23];
            var_15 = var_14[0];
            var_16 = var_14[1];
            var_17 = var_14[2];
            var_18 = var_3 _unknown_1B73( var_15 );
            var_19 = var_3 _unknown_1B8D( var_16 );
            var_20 = var_18._ID28749;
            var_21 = var_19._ID28749;

            if ( _func_03D() - var_18._ID36040 < var_20._ID23607 )
                continue;

            var_3 _unknown_1D7C( var_19, var_11 );
            var_22 = var_3 _unknown_1F9E( var_18, var_19 );

            if ( _func_0D3( var_22 ) )
            {
                var_10 = var_22;
                var_22 = 1;
            }

            if ( var_22 )
            {
                if ( !_func_02F( var_7 ) || var_20._ID28609 > var_7._ID28749._ID28609 )
                {
                    var_7 = var_18;
                    var_8 = var_19;
                    var_9 = var_10;
                    var_10 = undefined;
                }
            }
        }

        var_clear_12
        var_clear_2

        if ( _func_02F( var_7 ) )
            break;

        var_12 = 0;
        var_11 = _func_03D();
        var_24 = _func_0F4( var_3._ID40059._ID740, level._ID794._ID740 );

        if ( var_24 < 400 )
            var_25 = 1.0;
        else if ( var_24 > 1500 )
            var_25 = 10.0;
        else
            var_25 = 1.0 + 9.0 * var_24 - 400 / 1100;

        wait(0.1 * var_25);
    }

    var_3 _unknown_2339( var_8, var_9 );
    var_26 = var_3 _unknown_2344( var_8 );
    var_27 = var_26.size > 0;
    var_3 thread _unknown_1FF7( var_1, var_27 );

    if ( var_12 && !var_2 )
    {

    }

    var_3 thread _unknown_1F49( var_7, var_8, 0 );
}

_ID4585( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_1._ID28749;

    if ( _func_02F( var_3._ID22674[0] ) )
    {
        if ( var_3._ID22674[0] == "all" )
        {
            var_4 = var_2._ID22649;

            for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
            {
                var_5 = var_4[var_6];
                var_5._ID40767 = 1.0;
            }

            var_clear_2
            var_clear_0
        }
    }
    else
    {
        var_7 = var_3._ID22674;

        for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
        {
            var_8 = var_7[var_9];
            var_5 = var_2._ID22649[var_8];
            var_5._ID40767 = 1.0;
        }

        var_clear_3
        var_clear_0
    }
}

_ID4588( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_0._ID28749._ID25765;
    var_4 = var_3;

    for ( var_13 = _func_1DA( var_4 ); _func_02F( var_13 ); var_13 = _func_1BF( var_4, var_13 ) )
    {
        var_5 = var_4[var_13];
        var_6 = var_2._ID25757[var_5];
        var_7 = var_6._ID28749._ID25759;

        if ( var_7 == 2 || var_7 == 1 && var_1 )
        {
            var_8 = var_6._ID34524;
            var_6._ID34524 = [];
            var_9 = var_6._ID28749._ID13816;
            var_10 = var_8;

            for ( var_12 = _func_1DA( var_10 ); _func_02F( var_12 ); var_12 = _func_1BF( var_10, var_12 ) )
            {
                var_11 = var_10[var_12];
                var_11 thread _unknown_24C7( var_9 );
            }

            var_clear_2
        }
    }

    var_clear_4
    var_clear_0
}

_ID40670( var_0 )
{
    var_1 = self;
    var_0 = _func_0E6( 0.01, _ID42463::_ID3891( 0.05, var_0 ) );

    switch ( var_1._ID28749._ID3426 )
    {

    }

    case "soundevent":
    case "alias":
    case "damb":
    default:
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
    var_3 = var_2 _unknown_24C4();
    var_4 = var_0._ID28749;
    var_5 = var_1._ID28749;
    var_6 = var_1._ID25758;

    if ( !_func_02F( var_6 ) )
        var_6 = var_5._ID25765;

    var_7 = var_6;

    for ( var_18 = _func_1DA( var_7 ); _func_02F( var_18 ); var_18 = _func_1BF( var_7, var_18 ) )
    {
        var_8 = var_7[var_18];
        var_9 = var_2._ID25757[var_8];
        var_10 = var_9._ID28749;
        var_11 = var_2 _unknown_255D( var_8 );
        var_12 = var_2 _unknown_256B( var_8 );

        if ( var_10._ID3426 == "alias" )
        {
            var_2 _unknown_203D( var_9 );

            for ( var_13 = 0; var_13 < var_10._ID3425.size; var_13++ )
            {
                var_14 = var_2 _unknown_2481( var_9, var_13 );
                var_15 = var_9._ID9426._ID26618;

                for ( var_17 = _func_1DA( var_15 ); _func_02F( var_17 ); var_17 = _func_1BF( var_15, var_17 ) )
                {
                    var_16 = var_15[var_17];
                    var_14 _unknown_24D7( var_17, var_16 );
                }

                var_clear_2

                if ( var_12 )
                    var_2 thread _unknown_22F3( var_9, var_14 );

                if ( var_11 == 1 || var_11 == 2 )
                    var_9._ID34524[var_13] = var_14;
            }

            var_2 thread _unknown_251D( var_9 );
        }
    }

    var_clear_6
    var_clear_0
}

_ID4526( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _unknown_25D2();
    var_4 = _unknown_1E79();
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_2 _unknown_25B4() );
    var_3 endon( "death" );
    wait(var_4);

    while ( _func_02F( var_1 ) )
    {
        var_2 _unknown_20E5( var_0 );

        if ( _func_02F( var_1 ) )
        {
            var_5 = var_0._ID9426._ID26618;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];
                var_1 _unknown_256D( var_7, var_6 );
            }

            var_clear_2
        }

        wait(var_4);
    }
}

_ID4586( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_2 _unknown_2608();
    var_4 = var_0._ID28749;
    var_5 = var_1._ID28749;
    var_6 = var_5._ID22674;

    if ( _func_02F( var_6[0] ) )
    {
        if ( var_6[0] == "all" )
        {
            var_7 = var_2._ID22649;

            for ( var_9 = _func_1DA( var_7 ); _func_02F( var_9 ); var_9 = _func_1BF( var_7, var_9 ) )
            {
                var_8 = var_7[var_9];
                _unknown_2138( var_8, 1 );
            }

            var_clear_2
        }
        else if ( var_6[0] == "none" )
        {
            var_10 = var_2._ID22649;

            for ( var_9 = _func_1DA( var_10 ); _func_02F( var_9 ); var_9 = _func_1BF( var_10, var_9 ) )
            {
                var_8 = var_10[var_9];
                _unknown_2165( var_8, 0 );
            }

            var_clear_2
        }
        else
        {

        }
    }
    else if ( var_6.size > 0 )
    {
        var_11 = [];
        var_12 = [];
        var_13 = var_2._ID22649;

        for ( var_9 = _func_1DA( var_13 ); _func_02F( var_9 ); var_9 = _func_1BF( var_13, var_9 ) )
        {
            var_8 = var_13[var_9];

            if ( _func_02F( var_6[var_9] ) )
            {
                var_11[var_9] = var_8;
                continue;
            }

            var_12[var_9] = var_8;
        }

        var_clear_2
        var_14 = var_11;

        for ( var_9 = _func_1DA( var_14 ); _func_02F( var_9 ); var_9 = _func_1BF( var_14, var_9 ) )
        {
            var_8 = var_14[var_9];
            _unknown_21C1( var_8, 1 );
        }

        var_clear_0
        var_15 = var_12;

        for ( var_9 = _func_1DA( var_15 ); _func_02F( var_9 ); var_9 = _func_1BF( var_15, var_9 ) )
        {
            var_8 = var_15[var_9];
            _unknown_21DF( var_8, 0 );
        }

        var_clear_0
    }
}

_ID20043()
{
    var_0 = _unknown_2728();
    return _func_0F4( var_0._ID740, level._ID794._ID740 );
}

_ID20042()
{
    var_0 = _unknown_273A();
    return _func_0F3( var_0._ID740, level._ID794._ID740 );
}

_ID20058()
{
    var_0 = _unknown_274C();
    return var_0 _meth_8294();
}

_ID44854()
{
    var_0 = _unknown_2756();
    return var_0 _meth_8293();
}

_ID20056()
{
    var_0 = _unknown_275F();
    var_1 = _func_0F6( var_0 _meth_8291() * 0.0568182 );
    return var_1;
}

_ID20055()
{
    var_0 = _ID20051();
    var_1 = var_0 _meth_8291();
    var_2 = level._ID794 _meth_8344();
    var_3 = var_1 - var_2;
    var_4 = _func_0F6( var_3 ) * 0.0568182;
    return var_4;
}

_ID20057()
{
    var_0 = _unknown_2791();

    if ( _func_02F( var_0._ID13910 ) )
        return var_0._ID13910;

    return var_0 _ID42366::_ID15680() * 0.0568182;
}

_ID20040()
{
    var_0 = _unknown_27AD();
    return _func_0F6( var_0 _ID42366::_ID15678() ) * 0.00125;
}

_ID20047()
{
    var_0 = _unknown_27BF();
    return _func_0F6( var_0 _ID42366::_ID15679() ) * 0.00125;
}

_ID20044()
{
    var_0 = _unknown_27D1();
    return _func_254( var_0._ID740, var_0 _meth_8291(), level._ID794._ID740, level._ID794 _meth_8344() );
}

_ID20045()
{
    var_0 = _unknown_27EB();
    return _func_254( var_0._ID740, var_0 _meth_8291(), level._ID794._ID740, level._ID794 _meth_8344(), 2, 5 );
}

_ID20046()
{
    var_0 = _unknown_2808();
    return _func_254( var_0._ID740, var_0 _meth_8291(), level._ID794._ID740, level._ID794 _meth_8344(), 1, 0.5 );
}

_ID4501( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( !_func_02F( var_4 ) )
        var_4 = 1;

    if ( !_func_02F( var_5 ) )
        var_5 = 1;

    if ( !_func_02F( var_6 ) )
        var_6 = 13397;

    if ( var_4 != 1 )
    {
        var_7 = var_1 - var_3;
        var_8 = _func_119( var_7 );
        var_9 = var_2 - var_0;
        var_10 = var_8 * _func_0FB( var_8, var_9 );
        var_11 = var_9 - var_10;
        var_2 = var_0 + var_10 + var_11 / var_4;
    }

    var_12 = _func_119( var_0 - var_2 );
    var_13 = _func_0FB( var_1, var_12 );
    var_14 = _func_0FB( var_3, var_12 );
    var_15 = var_6 + var_14 / var_6 + var_13;
    var_15 = _func_1F9( var_15, var_5 );
    var_15 = _func_0EE( var_15, 0.1, 1.99 );
    return var_15;
}

_ID20052()
{
    var_0 = _unknown_289D();
    var_1 = var_0._ID65[0];
    return var_1;
}

_ID20059()
{
    var_0 = _unknown_28AC();
    var_1 = var_0._ID65[1];
    return var_1;
}

_ID20053()
{
    var_0 = _unknown_28BB();
    return _func_0E6( _func_0C3( _func_0F0( var_0._ID65[0] ) ), _func_0C3( _func_0F0( var_0._ID65[2] ) ) );
}

_ID20041()
{
    var_0 = _unknown_28D8();
    return _func_0BF( _func_11D( var_0._ID65 )[2] );
}

_ID20050()
{
    var_0 = _unknown_28E9();
    return var_0 _meth_845D();
}

_ID20049()
{
    var_0 = _unknown_28F3();
    return var_0 _meth_845E();
}

_ID20048()
{
    var_0 = _unknown_28FD();
    return var_0 _meth_845F();
}

_ID20051()
{
    var_0 = _unknown_2906();
    return var_0 _meth_8460();
}

_ID20054()
{
    var_0 = 0;
    var_1 = _unknown_2912();
    var_2 = 0.1;

    if ( _unknown_2859() )
    {
        if ( !_func_02F( var_1._ID2964 ) )
            var_1._ID2964 = 0;

        var_3 = _func_03D();

        if ( var_3 > var_1._ID2964 + var_2 )
        {
            var_1._ID2964 = var_3;
            var_4 = _func_06D( var_1._ID740, var_1._ID740 - ( 0, 0, 360 ), 0 );
            var_1._ID2965 = var_4["fraction"];

            if ( !_func_02F( var_1._ID2965 ) )
                var_1._ID2965 = 0;
        }

        var_0 = _func_0EE( var_1._ID2965, 0, 1.0 );
    }

    return var_0;
}

_ID20076()
{
    var_0 = _unknown_2981();
    return var_0 _meth_8484();
}

_ID20078()
{
    var_0 = _unknown_2820();
    return var_0[0];
}

_ID20077()
{
    var_0 = _unknown_2829();
    return var_0[1];
}

_ID20079()
{
    var_0 = _unknown_299D();
    return var_0 _meth_8486();
}

_ID20081()
{
    var_0 = _unknown_2846();
    return var_0[0];
}

_ID20080()
{
    var_0 = _unknown_284F();
    return var_0[1];
}

_ID20086()
{
    var_0 = _unknown_29BA();
    return var_0 _meth_8483();
}

_ID20084()
{
    var_0 = _unknown_286C();
    return var_0[0];
}

_ID20085()
{
    var_0 = _unknown_2875();
    return var_0[1];
}

_ID20082()
{
    var_0 = _unknown_287F();
    return var_0[2];
}

_ID20083()
{
    var_0 = _unknown_2888();
    return var_0[3];
}

_ID20087()
{
    var_0 = _unknown_29EA();
    return var_0 _meth_8482();
}

_ID20089()
{
    var_0 = _unknown_28AC();
    return var_0[0];
}

_ID20088()
{
    var_0 = _unknown_28B5();
    return var_0[1];
}

_ID20092()
{
    var_0 = _unknown_2A06();
    return var_0 _meth_8485();
}

_ID20090()
{
    var_0 = _unknown_2A10();
    var_1 = var_0._ID39235 _meth_8488();
    var_1 = _func_0C3( var_1 );
    var_1 = _func_0EE( var_1, 0, 90 );
    var_1 = _unknown_29E4( var_1, 0, 90 );
    var_2 = level._ID794 _meth_8318();
    var_3 = _func_0C3( var_2[0] );
    return 0;
}

_ID20091()
{
    var_0 = _unknown_2A3C();
    var_1 = var_0._ID39235 _meth_8487();
    var_1 = _func_0C3( var_1 );
    var_2 = var_0._ID39235 _meth_8488();
    var_2 = _func_0C3( var_2 );
    var_3 = _func_0F7( ( var_1, var_2, 0 ) );
    var_3 = _func_0EE( var_3, 0, 135 );
    var_4 = _unknown_2A22( var_3, 0, 135 );
    var_5 = level._ID794 _meth_8318();
    var_6 = _func_0F7( var_5 );
    return var_4 * var_6;
}

_ID20073()
{
    var_0 = _unknown_2A7B();

    if ( _func_02F( level._ID3674._ID11156 ) && level._ID3674._ID11156 == 1 )
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
    var_0 = _unknown_2ABE();
    var_1 = var_0 _meth_8527();
    return var_1;
}

_ID20072()
{
    var_0 = _unknown_29C9();
    var_1 = _unknown_28BF();
    var_2 = var_1 + _func_0C3( var_0 ) * 0.1;
    return var_1 + _func_0C3( var_0 ) * 0.1;
}

_ID20095()
{
    var_0 = level._ID794 _meth_8318();
    var_1 = _func_0C3( var_0[0] );
    var_2 = _func_0C3( var_0[1] );

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
    var_5 = var_2 _unknown_2A57( var_3, var_1 );

    if ( _func_031( var_5 ) )
    {
        var_6 = var_2 _unknown_2B21();
        var_4 = _func_06A( "script_origin", var_6._ID740 );
        var_4 _meth_8053( var_6, "tag_origin", var_2._ID34980, ( 0, 0, 0 ) );
        var_4 _meth_8076( 0 );
        var_4 _ID42494::_ID34605( var_5, "sound_done" );
        var_4 thread _unknown_2A8F( "sound_done" );
    }

    return var_4;
}

_ID4565( var_0 )
{
    self endon( "death" );
    self waittill( var_0 );

    if ( _func_02F( self ) )
        self _meth_80B7();
}

_ID4559()
{
    return _func_02F( self._ID27556 ) && self._ID27556;
}

_ID4553( var_0, var_1 )
{
    var_2 = self;
    var_3 = var_0._ID3425[_ID42463::_ID3891( 0, var_1 )];

    if ( _func_02F( var_3 ) && var_2 _unknown_2AD7() )
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

    }

    case "volume":
    case "pitch":
    default:
}

_ID4558( var_0 )
{
    var_1 = self;
    var_2 = var_0._ID28749;
    var_1 _unknown_2BA8( var_2._ID680 );
    var_1 _unknown_2B6B( var_0 );
    var_1 _unknown_2BBB( var_2._ID680 );
}

_ID4595( var_0 )
{
    var_1 = self;
    var_2 = var_1 _unknown_2BE1();
    var_3 = var_0._ID28749;
    level endon( "msg_snd_vehicle_stop" );
    level endon( "msg_snd_vehicle_stop_" + var_1 _unknown_2BF3() );
    var_1 _unknown_2C2F() endon( "death" );

    if ( _func_02F( var_3._ID12215 ) )
    {
        var_4 = var_2 _unknown_2C7C( var_3._ID12215 );
        var_5 = _ID42463::_ID3889( var_4 );
        var_6 = 0;
        var_7 = var_5[1];

        for ( var_8 = var_3._ID680; _unknown_2BFD( var_0._ID34524 ) && var_6 < var_7; var_6 += 0.1 )
        {
            var_9 = var_0 _unknown_26EC();
            var_10 = var_2 _unknown_2CB4( var_6, var_3._ID12215 );
            var_10 = 1.0 - var_9 * 1.0 - var_10;
            var_1 _unknown_2C41( var_8, var_10 );
            wait 0.1;
        }
    }
}

_ID4525( var_0 )
{
    var_1 = 0;
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( _func_02F( var_3 ) && !_func_02F( var_3._ID20616 ) )
        {
            var_1 = 1;
            break;
        }
    }

    var_clear_2
    var_clear_0
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
    return var_0 - var_1 / var_2 - var_1;
}

_ID4532()
{
    return level._ID1374._ID40630;
}

_ID4536( var_0 )
{
    return _unknown_2CC5()._ID6663[var_0][0];
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
    return _unknown_2D0B( self._ID28452 );
}

_ID4551( var_0 )
{
    var_1 = _unknown_2CFC();
    return var_1._ID28453[var_0];
}

_ID4541( var_0, var_1 )
{
    var_2 = undefined;
    var_3 = _unknown_2D0D();

    if ( _func_031( var_1 ) )
    {
        var_4 = _unknown_2D2E( var_1 );

        if ( _func_02F( var_4 ) )
            var_2 = var_4._ID20107[var_0];
    }
    else
    {
        var_5 = var_3._ID28453;

        for ( var_9 = _func_1DA( var_5 ); _func_02F( var_9 ); var_9 = _func_1BF( var_5, var_9 ) )
        {
            var_4 = var_5[var_9];
            var_6 = var_4._ID20107;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];

                if ( var_7._ID20106 == var_0 )
                {
                    var_2 = var_7;
                    break;
                }
            }

            var_clear_3
            var_clear_1
        }

        var_clear_4
        var_clear_0
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
    var_4 = _unknown_2DC6( var_3._ID28452 );
    var_5 = var_0._ID25758;

    if ( !_func_02F( var_5 ) )
        var_5 = var_3._ID25765;

    var_6 = var_5;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];

        if ( var_1 _unknown_2E3F( var_7 ) == 1 )
            var_2[var_7] = var_7;
    }

    var_clear_2
    var_clear_0
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

    if ( _func_031( var_0 ) )
        var_3 = var_1._ID25757[var_0]._ID28749;
    else
        var_3 = var_0._ID28749;

    var_2 = var_3._ID25761;

    if ( !_func_02F( var_2 ) )
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
    var_3 = var_2 _unknown_2EBD( var_1 );

    if ( _func_02F( var_3._ID13112 ) )
        var_4 = [[ var_3._ID13112 ]]( var_0 );
    else
        var_4 = _func_255( var_0, var_3._ID13109 );

    return var_4;
}

_ID4581( var_0 )
{
    var_1 = self;
    var_2 = var_1 _unknown_2E7B();
    var_3 = var_1 _unknown_2EB0();
    var_4 = var_0._ID28749;
    var_5 = var_2 _unknown_2E0A( var_4 );
    var_6 = var_1._ID34980;
    var_7 = var_0._ID28749._ID13816;
    var_8 = 1.0;
    var_0._ID13793 = 0.1 / var_7;
    var_0._ID13795 = 0;

    for ( var_9 = 0; var_9 < var_5; var_9++ )
    {
        var_10 = var_1 _unknown_2E32( var_4, var_9 );
        var_11 = _func_06A( "script_origin", var_3._ID740 );
        var_11 _meth_8053( var_3, "tag_origin", var_6, ( 0, 0, 0 ) );
        var_11 _meth_8076( 0 );
        var_11 _ID42494::_ID34625( var_10 );
        var_0._ID34524[var_10] = var_11;
    }
}

_ID4590( var_0 )
{
    var_1 = self;
    var_2 = var_0._ID34524;
    var_0._ID34524 = [];
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        var_4 thread _unknown_2FDE( var_0._ID28749._ID13816 );
    }

    var_clear_2
    var_clear_0
}

_ID4591( var_0 )
{
    var_1 = self;
    var_0 = _func_0E6( 0.05, _ID42463::_ID3891( 0.05, var_0 ) );

    if ( _func_02F( var_1 ) )
    {
        var_1._ID20616 = 1;
        var_1 _meth_8075( 0, var_0 );
        wait(var_0);

        if ( _func_02F( var_1 ) )
            var_1 _meth_80B3();

        wait 0.05;

        if ( _func_02F( var_1 ) )
            var_1 _meth_80B7();
    }
}

_ID40671( var_0 )
{
    var_1 = self;
    var_2 = var_1._ID22649;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_3 _unknown_3075( var_0 );
    }

    var_clear_2
    var_clear_0
    var_5 = var_1._ID25757;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        var_6 _unknown_3099( var_0 );
    }

    var_clear_2
    var_clear_0
}

_ID4530( var_0 )
{
    var_1 = self;

    switch ( var_1._ID28749._ID3426 )
    {

    }

    case "soundevent":
    case "alias":
    case "damb":
}

_ID40669()
{
    var_0 = self;
    var_1 = var_0._ID22649;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        switch ( var_2._ID28749._ID3426 )
        {

        }

        case "soundevent":
        case "alias":
        case "damb":
        default:
    }

    var_clear_2
    var_clear_0
    var_4 = var_0._ID25757;

    for ( var_9 = _func_1DA( var_4 ); _func_02F( var_9 ); var_9 = _func_1BF( var_4, var_9 ) )
    {
        var_5 = var_4[var_9];
        var_6 = var_5._ID34524;

        for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
        {
            var_7 = var_6[var_8];
            var_7 thread _unknown_3160( 0.05 );
        }

        var_clear_3
        var_clear_1
        var_5._ID34524 = [];
    }

    var_clear_5
    var_clear_0
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

    if ( _unknown_26BA() == 0 )
        var_0 = self _meth_8290();

    return var_0;
}
