// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "pavelow_noai", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_008A );
    _ID42411::_ID6216( "vehicle_pavelow" );
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", "pavelow_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1, undefined );
    _ID42411::_ID6213( "fx/fire/fire_smoke_trail_L", "tag_engine_left", "pavelow_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1, undefined );
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_right", "pavelow_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1, undefined );
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_pavelow", undefined, "pavelow_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    _ID42411::_ID6247( "fx/explosions/aerial_explosion_pavelow_mp", "tag_deathfx", "pavelow_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6220( %bh_rotors, undefined, 0 );
    _ID42411::_ID6234( var_2, "cockpit_red_cargo02", "tag_light_cargo02", "fx/misc/aircraft_light_cockpit_red", "interior", 0.0 );
    _ID42411::_ID6234( var_2, "cockpit_blue_cockpit01", "tag_light_cockpit01", "fx/misc/aircraft_light_cockpit_blue", "interior", 0.1 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", 0.15 );
    _ID42411::_ID6234( var_2, "wingtip_green1", "tag_light_L_wing1", "fx/misc/aircraft_light_wingtip_green", "running", 0.3 );
    _ID42411::_ID6234( var_2, "wingtip_red1", "tag_light_R_wing1", "fx/misc/aircraft_light_wingtip_red", "running", 0.2 );
    _ID42411::_ID6234( var_2, "solid_tail", "tag_light_tail2", "fx/misc/aircraft_light_wingtip_red", "running", 0.25 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", 0.05 );
    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID26026 = _func_0F3( self _meth_818C( "tag_origin" ), self _meth_818C( "tag_ground" ) );
    self._ID31066 = 0;
    thread _ID42411::_ID40197( "running" );
}
