// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "seaknight", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_ch46e" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6220( %sniper_escape_ch46_rotors, undefined, 0 );
    _ID42411::_ID6206( ::_ID32221 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6234( var_2, "cockpit_red_cargo02", "tag_light_cargo02", "fx/misc/aircraft_light_cockpit_red", "interior", 0.0 );
    _ID42411::_ID6234( var_2, "cockpit_blue_cockpit01", "tag_light_cockpit01", "fx/misc/aircraft_light_cockpit_blue", "interior", 0.1 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_red_blink", "running", 0.0 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", 0.3 );
    _ID42411::_ID6234( var_2, "wingtip_green1", "tag_light_L_wing1", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    _ID42411::_ID6234( var_2, "wingtip_green2", "tag_light_L_wing2", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    _ID42411::_ID6234( var_2, "wingtip_red1", "tag_light_R_wing1", "fx/misc/aircraft_light_wingtip_red", "running", 0.2 );
    _ID42411::_ID6234( var_2, "wingtip_red2", "tag_light_R_wing2", "fx/misc/aircraft_light_wingtip_red", "running", 0.0 );
    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID26026 = distance( self gettagorigin( "tag_origin" ), self gettagorigin( "tag_ground" ) );
    self._ID31066 = 0;
}

_ID32509( var_0 )
{
    var_0[1]._ID40152 = %ch46_doors_open;
    var_0[1]._ID40153 = 0;
    var_0[1]._ID40147 = %ch46_doors_close;
    var_0[1]._ID40148 = 0;
    var_0[1]._ID40154 = "seaknight_door_open";
    var_0[1]._ID40149 = "seaknight_door_close";
    var_0[1]._ID10179 = getanimlength( %ch46_doors_open ) - 1.7;
    var_0[2]._ID10179 = getanimlength( %ch46_doors_open ) - 1.7;
    var_0[3]._ID10179 = getanimlength( %ch46_doors_open ) - 1.7;
    var_0[4]._ID10179 = getanimlength( %ch46_doors_open ) - 1.7;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = spawnstruct();

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

    if ( isdefined( self._ID40791 ) && issubstr( self._ID40791, "vehicle_ch46e_opened_door_interior_a" ) )
    {
        var_0["attach_interior"] = spawnstruct();
        var_0["attach_interior"]._ID1067 = "body_animate_jnt";
        var_0["attach_interior"].model = "vehicle_ch46e_opened_door_interior_b";
    }

    foreach ( var_2 in var_0 )
        precachemodel( var_2.model );

    return var_0;
}
