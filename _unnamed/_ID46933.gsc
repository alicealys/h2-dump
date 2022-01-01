// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "apache", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_apache" );
    _ID42411::_ID6216( "vehicle_apache_dark" );
    var_3 = [];
    var_3["vehicle_apache"] = "fx/explosions/helicopter_explosion_apache";
    var_3["vehicle_apache_dark"] = "fx/explosions/helicopter_explosion_apache_dark";
    var_4 = [];
    var_4["vehicle_apache"] = "fx/explosions/aerial_explosion_apache_mp";
    var_4["vehicle_apache_dark"] = "fx/explosions/aerial_explosion_apache_dark_mp";
    var_4["script_vehicle_apache"] = "fx/explosions/aerial_explosion_apache_mp";
    var_4["script_vehicle_apache_dark"] = "fx/explosions/aerial_explosion_apache_dark_mp";
    var_4["script_vehicle_apache_mg"] = "fx/explosions/aerial_explosion_apache_mp";
    _ID42411::_ID6220( %bh_rotors, undefined, 0 );
    var_5 = var_3[var_0];
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", "apache_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1, undefined );
    _ID42411::_ID6213( "fx/fire/fire_smoke_trail_L", "tag_engine_left", "apache_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1, undefined );
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine_left", "apache_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1, undefined );
    _ID42411::_ID6213( var_5, undefined, "apache_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    _ID42411::_ID6247( var_4[var_0], "tag_deathfx", "apache_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0, 5 );
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.05 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", 0.1 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", 0.25 );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6257( var_2, "default", "vfx/treadfx/heli_dust_default", 0 );
    _ID42411::_ID6253( "allies" );

    if ( isdefined( var_2 ) && issubstr( var_2, "_mg" ) )
        _ID42411::_ID6261( "apache_turret", "tag_turret", "vehicle_apache_mg", undefined, "auto_nonai", 0.0, 20, -14 );

    if ( !issubstr( var_2, "_berlin" ) )
    {
        precacheitem( "zippy_rockets_apache" );
        precacheitem( "zippy_rockets_apache_nodamage" );
    }

    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID31066 = 0;
    _ID42411::_ID40197( "running" );

    if ( issubstr( self._ID170, "_mg" ) )
    {
        self hidepart( "turret_animate_jnt" );
        self hidepart( "tag_turret" );
        self hidepart( "tag_barrel" );
        self hidepart( "barrel_animate_jnt" );
    }
}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID16493 = 1;
    return var_0;
}
