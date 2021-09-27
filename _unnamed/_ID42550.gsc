// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "mig29_controllable", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0053 );
    _ID42411::_ID6216( "vehicle_mig29" );
    _ID42411::_ID6216( "vehicle_mig29_desert" );
    _ID42411::_ID6216( "vehicle_av8b_harrier_jet" );
    _ID42411::_ID6216( "vehicle_mig29_low" );
    _ID42411::_ID6257();
    level._ID1426["engineeffect"] = _func_155( "vfx/trail/jet_thruster_far" );
    level._ID1426["afterburner"] = _func_155( "vfx/fire/jet_afterburner_ignite" );
    level._ID1426["contrail"] = _func_155( "vfx/trail/jet_contrail" );
    _ID42411::_ID6213( "vfx/explosion/vehicle_generic_ai_explo_lrg_runner", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );

    if ( var_0 != "vehicle_av8b_harrier_jet" )
    {
        var_3 = _func_0BA( 0, 1 );
        _ID42411::_ID6234( var_2, "wingtip_green", "tag_left_wingtip", "vfx/lights/aircraft_light_wingtip_green", "running", var_3 );
        _ID42411::_ID6234( var_2, "wingtip_red", "tag_right_wingtip", "vfx/lights/aircraft_light_wingtip_red", "running", var_3 );
    }

    _ID42411::_ID6231();
}

_ID19731()
{
    thread _ID32509();
}

_ID32509( var_0 )
{
    var_1 = "rope_test";
    _func_14C( var_1 );
    return var_0;
}
#using_animtree("vehicles");

_ID21687()
{
    self _meth_811E( #animtree );
    self _meth_8155( %mig_landing_gear_up );
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
    self endon( "death" );
    self endon( "stop_engineeffects" );
    _ID42407::_ID13024( "engineeffects" );
    _ID42407::_ID13025( "engineeffects" );
    var_0 = _ID42237::_ID16299( "engineeffect" );

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

_ID27173()
{
    _func_157( level._ID1426["afterburner"], self, "tag_engine_right" );
    _func_157( level._ID1426["afterburner"], self, "tag_engine_left" );
}

_ID27195()
{
    _func_157( level._ID1426["contrail"], self, "tag_right_wingtip" );
    _func_157( level._ID1426["contrail"], self, "tag_left_wingtip" );
}

_ID27861( var_0 )
{
    var_1 = _unknown_0238( var_0 );

    if ( var_1 )
        var_2 = 1;
    else
        var_2 = -1;

    var_3 = _ID42237::_ID14540( var_0._ID740 );
    var_4 = var_3 + _func_11F( _ID42237::_ID14539( var_0._ID65 ) ) * var_2 * 100000;
    var_5 = _func_0F2( var_3, var_4, level._ID794._ID740 );
    var_6 = _func_0F3( var_3, var_5 );

    if ( var_6 < 3000 )
        return 1;
    else
        return 0;
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

_ID26746( var_0, var_1 )
{
    _unknown_02D0( "veh_mig29_dist_loop", "veh_mig29_sonic_boom" );
}

_ID26747( var_0, var_1 )
{
    self waittill( "trigger",  var_2  );
    var_2 endon( "death" );
    thread _unknown_02E1();
    var_2 thread _ID42237::_ID27000( var_0 );

    while ( _unknown_02DD( var_2 ) )
        wait 0.05;

    wait 0.5;
    var_2 thread _ID42237::_ID27077( var_1 );
    var_2 waittill( "reached_end_node" );
    var_2 _unknown_03CA( var_0 );
    var_2 _meth_80B7();
}

_ID26738()
{
    level._ID1426["plane_bomb_explosion1"] = _func_155( "vfx/ambient_explosion_midair_runner_single" );
    level._ID1426["plane_bomb_explosion2"] = _func_155( "vfx/ambient_explosion_midair_runner_single" );
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    thread _unknown_035A();
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
        _func_156( level._ID1426["plane_bomb_explosion" + var_2], var_1[var_3]._ID740 );
        wait(_func_0BA( 0.3, 1.2 ));
    }
}

_ID26737()
{
    self waittill( "trigger",  var_0  );
    var_0 endon( "death" );
    var_1 = var_0;
    var_1 thread _unknown_03FD();
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
