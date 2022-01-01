// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "c130", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_ac130_low" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.05 );
    _ID42411::_ID6234( var_2, "tail_red", "tag_light_tail", "fx/misc/aircraft_light_white_blink", "running", 0.05 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_red_blink", "running", 1.0 );
}

_ID19731()
{
    _ID42411::_ID40197( "running" );
    self hidepart( "tag_25mm" );
    self hidepart( "tag_40mm" );
    self hidepart( "tag_105mm" );
}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = spawnstruct();

    return var_0;
}
