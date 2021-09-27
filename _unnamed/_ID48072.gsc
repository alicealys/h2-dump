// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    var_3 = "pavelow";
    _ID45641::_ID616( var_0, var_3, var_2 );
    _ID42411::_ID6204( ::_unknown_005F, ::_unknown_002B );
    _ID42411::_ID6206( ::_unknown_010A );
    _ID42411::_ID6262( ::_unknown_00F8 );
    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID26026 = _func_0F3( self _meth_818C( "tag_origin" ), self _meth_818C( "tag_ground" ) );
    self._ID31066 = 0;
}
#using_animtree("vehicles");

_ID32509( var_0 )
{
    var_0[1]._ID40152 = %ch46_doors_open;
    var_0[1]._ID40153 = 0;
    var_0[1]._ID40147 = %ch46_doors_close;
    var_0[1]._ID40148 = 0;
    var_0[1]._ID40154 = "pavelow_door_open";
    var_0[1]._ID40149 = "pavelow_door_close";
    var_0[1]._ID10179 = _func_067( %ch46_doors_open ) - 1.7;
    var_0[2]._ID10179 = _func_067( %ch46_doors_open ) - 1.7;
    var_0[3]._ID10179 = _func_067( %ch46_doors_open ) - 1.7;
    var_0[4]._ID10179 = _func_067( %ch46_doors_open ) - 1.7;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID19302[0] = %seaknight_pilot_idle;
    var_0[0]._ID19302[1] = %seaknight_pilot_switches;
    var_0[0]._ID19302[2] = %seaknight_pilot_twitch;
    var_0[0]._ID19329[0] = 1000;
    var_0[0]._ID19329[1] = 400;
    var_0[0]._ID19329[2] = 200;
    var_0[0]._ID5174 = 0;
    var_0[5]._ID5174 = 0;
    var_0[1]._ID19302 = %ch46_unload_1_idle;
    var_0[2]._ID19302 = %ch46_unload_2_idle;
    var_0[3]._ID19302 = %ch46_unload_3_idle;
    var_0[4]._ID19302 = %ch46_unload_4_idle;
    var_0[5]._ID19302[0] = %seaknight_copilot_idle;
    var_0[5]._ID19302[1] = %seaknight_copilot_switches;
    var_0[5]._ID19302[2] = %seaknight_copilot_twitch;
    var_0[5]._ID19329[0] = 1000;
    var_0[5]._ID19329[1] = 400;
    var_0[5]._ID19329[2] = 200;
    var_0[0]._ID34225 = "tag_detach";
    var_0[1]._ID34225 = "tag_detach";
    var_0[2]._ID34225 = "tag_detach";
    var_0[3]._ID34225 = "tag_detach";
    var_0[4]._ID34225 = "tag_detach";
    var_0[5]._ID34225 = "tag_detach";
    var_0[1]._ID16491 = %ch46_unload_1;
    var_0[2]._ID16491 = %ch46_unload_2;
    var_0[3]._ID16491 = %ch46_unload_3;
    var_0[4]._ID16491 = %ch46_unload_4;
    var_0[1]._ID16341 = %ch46_load_1;
    var_0[2]._ID16341 = %ch46_load_2;
    var_0[3]._ID16341 = %ch46_load_3;
    var_0[4]._ID16341 = %ch46_load_4;
    return var_0;
}

_ID39488()
{
    var_0 = [];
    var_0["passengers"] = [];
    var_0["passengers"][var_0["passengers"].size] = 1;
    var_0["passengers"][var_0["passengers"].size] = 2;
    var_0["passengers"][var_0["passengers"].size] = 3;
    var_0["passengers"][var_0["passengers"].size] = 4;
    var_0["default"] = var_0["passengers"];
    return var_0;
}

_ID32221()
{
    var_0 = [];

    if ( _func_02F( self._ID40791 ) && _func_125( self._ID40791, "script_vehicle_pavelow_cutscene" ) )
    {
        var_0["attach_interior"] = _func_1A5();
        var_0["attach_interior"]._ID1067 = "body_animate_jnt";
        var_0["attach_interior"]._ID669 = "h2_pavelow_cutscene_interior";
    }

    var_1 = _func_1D9( var_0 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        _func_14C( var_0[var_1[var_2]]._ID669 );

    return var_0;
}