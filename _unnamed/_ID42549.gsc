// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "mig29", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0044 );
    _ID42411::_ID6216( "vehicle_mig29_desert" );
    _ID42411::_ID6216( "vehicle_av8b_harrier_jet" );
    _unknown_0225( "mig29_engine", "fx/fire/jet_afterburner_cliffhanger" );
    _unknown_0231( "mig29_afterburner", "fx/fire/jet_afterburner_ignite" );
    _unknown_023D( "mig29_contrail", "fx/smoke/jet_contrail" );
    _unknown_0249( "mig29_contrail_02", "fx/smoke/jet_contrail_02" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6231();
}

_ID19731()
{
    _ID42407::_ID10226( 0.05, ::_unknown_00DE );
    thread _unknown_011D();
    thread _unknown_012C();
}

_ID32509( var_0 )
{
    var_1 = "rope_test";
    _func_14C( var_1 );
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = _func_1A5();

    return var_0;
}

_ID27206()
{
    if ( _ID42407::_ID13023( "engineeffects" ) )
        self notify( "stop_engineeffects" );

    self endon( "death" );
    self endon( "stop_engineeffects" );
    _ID42407::_ID13024( "engineeffects" );
    _ID42407::_ID13025( "engineeffects" );
    var_0 = _ID42237::_ID16299( "mig29_engine" );
    thread _unknown_016F();

    for (;;)
    {
        _ID42407::_ID13027( "engineeffects" );
        _func_157( var_0, self, "tag_engine_right" );
        _func_157( var_0, self, "tag_engine_left" );
        _ID42407::_ID13031( "engineeffects" );
        _func_158( var_0, self, "tag_engine_left" );
        _func_158( var_0, self, "tag_engine_right" );
    }
}

_ID47604()
{
    self endon( "death" );
    self waittill( "stop_engineeffects" );
    var_0 = _ID42237::_ID16299( "mig29_engine" );
    _func_158( var_0, self, "tag_engine_left" );
    _func_158( var_0, self, "tag_engine_right" );
    _ID42407::_ID13021( "engineeffects", 1 );
}

_ID27173()
{
    _func_157( level._ID1426["mig29_afterburner"], self, "tag_engine_right" );
    _func_157( level._ID1426["mig29_afterburner"], self, "tag_engine_left" );
}

_ID27195()
{
    if ( _ID42407::_ID13023( "contrails" ) )
        self notify( "stop_contrails" );

    self endon( "death" );
    self endon( "stop_contrails" );
    _ID42407::_ID13024( "contrails" );
    _ID42407::_ID13025( "contrails" );
    thread _unknown_0266();

    for (;;)
    {
        _ID42407::_ID13027( "contrails" );
        _func_157( _ID42237::_ID16299( "mig29_contrail" ), self, "tag_right_wingtip" );
        _func_157( _ID42237::_ID16299( "mig29_contrail_02" ), self, "tag_left_wingtip" );
        _ID42407::_ID13031( "contrails" );
        _func_158( _ID42237::_ID16299( "mig29_contrail" ), self, "tag_right_wingtip" );
        _func_158( _ID42237::_ID16299( "mig29_contrail_02" ), self, "tag_left_wingtip" );
    }
}

_ID52960()
{
    self endon( "death" );
    self waittill( "stop_contrails" );
    _func_158( _ID42237::_ID16299( "mig29_contrail" ), self, "tag_right_wingtip" );
    _func_158( _ID42237::_ID16299( "mig29_contrail_02" ), self, "tag_left_wingtip" );
    _ID42407::_ID13021( "contrails", 1 );
}

_ID27861( var_0, var_1 )
{
    var_2 = _unknown_032C( var_0 );

    if ( var_2 )
        var_3 = 1;
    else
        var_3 = -1;

    var_4 = _ID42237::_ID14540( var_0._ID740 );
    var_5 = var_4 + _func_11F( _ID42237::_ID14539( var_0._ID65 ) ) * var_3 * 100000;
    var_6 = _func_0F2( var_4, var_5, level._ID794._ID740 );
    var_7 = _func_0F3( var_4, var_6 );
    var_8 = 3000;

    if ( _func_02F( var_1 ) && var_1 )
    {
        var_9 = var_0 _meth_8290();
        var_10 = var_9 * 63360 / 3600;
        var_8 = var_10 * 1.1;
    }

    if ( _func_02F( level._ID54594 ) )
        var_8 = level._ID54594;

    return var_7 < var_8;
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

_ID26746()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _unknown_03E7();
    var_0 thread _ID42237::_ID27000( "veh_mig29_dist_loop" );
    var_1 = 0;
    var_2 = undefined;

    if ( _func_02F( self._ID31388 ) )
    {
        var_3 = _func_129( self._ID31388, ":, " );
        var_4 = var_3;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5 == "play_additional_sound" )
            {
                var_1 = 1;
                continue;
            }

            if ( var_5 == "stop_sound_on_death" )
            {
                var_2 = 1;
                continue;
            }
        }

        var_clear_2
        var_clear_0
    }

    var_0 thread _unknown_0479( var_1, var_2 );

    while ( _unknown_043B( var_0 ) )
        wait 0.05;

    wait 0.5;
    var_0 thread _ID42237::_ID27077( "veh_mig29_sonic_boom" );
    var_0 waittill( "reached_end_node" );
    var_0 _unknown_0563( "veh_mig29_dist_loop" );
    var_0 _meth_80B7();
}

_ID45032( var_0, var_1 )
{
    self endon( "death" );
    self endon( "reached_end_node" );

    while ( !_unknown_0453( self, 1 ) )
        wait 0.05;

    thread _ID42407::_ID27080( "veh_mig29_passby", undefined, var_1 );

    if ( var_0 )
        thread _ID42407::_ID27080( "veh_mig29_passby_layer", undefined, var_1 );
}

_ID26738()
{
    _unknown_05B3( "plane_bomb_explosion1", "fx/explosions/airlift_explosion_large" );
    _unknown_05BF( "plane_bomb_explosion2", "fx/explosions/tanker_explosion" );
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _unknown_051A();
    var_1 = _func_1A2( self._ID31273, "script_linkname" );
    var_1 = _ID42237::_ID15566( self._ID740, var_1, undefined, var_1.size );
    var_2 = 0;
    wait(_func_0BA( 0.3, 0.8 ));

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_2++;

        if ( var_2 == 3 )
            var_2 = 1;

        var_1[var_3] thread _ID42407::_ID27079( "airstrike_explosion" );
        var_4 = "plane_bomb_explosion" + var_2;
        var_5 = level._ID1426[var_4];

        if ( _func_02F( level._ID47910 ) && _func_02F( level._ID47910[var_4] ) )
            var_5 = level._ID47910[var_4];

        _func_156( var_5, var_1[var_3]._ID740 );
        wait(_func_0BA( 0.3, 1.2 ));
    }
}

_ID26737()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    var_1 = var_0;
    var_1 thread _unknown_05E1();
    var_2 = _func_06A( "script_model", var_1._ID740 - ( 0, 0, 100 ) );
    var_2._ID65 = var_1._ID65;
    var_2 _meth_80B8( "projectile_cbu97_clusterbomb" );
    var_3 = _func_11F( var_1._ID65 ) * 2;
    var_4 = _func_11D( var_1._ID65 ) * -0.2;
    var_5 = [];

    for ( var_6 = 0; var_6 < 3; var_6++ )
        var_5[var_6] = var_3[var_6] + var_4[var_6] / 2;

    var_5 = ( var_5[0], var_5[1], var_5[2] );
    var_5 *= 7000;
    var_2 _meth_82BC( var_5, 2.0 );
    wait 1.2;
    var_7 = _func_06A( "script_model", var_2._ID740 );
    var_7 _meth_80B8( "tag_origin" );
    var_7._ID740 = var_2._ID740;
    var_7._ID65 = var_2._ID65;
    wait 0.05;
    var_2 _meth_80B7();
    var_2 = var_7;
    var_8 = var_2._ID740;
    var_9 = var_2._ID65;
    _func_157( level._ID2462, var_2, "tag_origin" );
    wait 1.6;
    var_10 = 12;
    var_11 = 5;
    var_12 = 55;
    var_13 = var_12 - var_11 / var_10;

    for ( var_6 = 0; var_6 < var_10; var_6++ )
    {
        var_14 = _func_11F( var_9 + ( var_12 - var_13 * var_6, _func_0B7( 10 ) - 5, 0 ) );
        var_15 = var_8 + var_14 * 10000;
        var_16 = _func_06D( var_8, var_15, 0, undefined );
        var_17 = var_16["position"];
        _func_18F( var_17 + ( 0, 0, 16 ), 512, 400, 30 );

        if ( var_6 % 3 == 0 )
        {
            thread _ID42237::_ID27077( "airstrike_explosion", var_17 );
            _func_1CD( "artillery_rumble", var_17 );
            _func_192( 0.7, 0.75, var_17, 1000 );
        }

        wait(0.75 / var_10);
    }

    wait 1.0;
    var_2 _meth_80B7();
}

_ID36556( var_0 )
{
    self notify( "stop sound" + var_0 );
}

_ID54545( var_0, var_1 )
{
    if ( !_func_02F( level._ID46712 ) )
        level._ID46712 = [];

    level._ID46712[var_0] = var_1;
}

_ID48528( var_0, var_1 )
{
    if ( _func_02F( level._ID46712 ) && _func_02F( level._ID46712[var_0] ) )
        var_1 = level._ID46712[var_0];

    level._ID1426[var_0] = _func_155( var_1 );
}
