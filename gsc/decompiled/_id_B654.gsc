// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "antonov", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_antonov_fly" );
    _id_CA59( "antonov_engine", "fx/fire/jet_engine_anatov" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_rumble( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    maps\_vehicle::build_team( "allies" );
    var_3 = randomfloatrange( 0, 1 );
    maps\_vehicle::build_light( var_2, "wingtip_green", "TAG_LEFT_WINGTIP", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    maps\_vehicle::build_light( var_2, "wingtip_red", "TAG_RIGHT_WINGTIP", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    maps\_vehicle::build_light( var_2, "tail_red", "TAG_TAIL", "fx/misc/aircraft_light_white_blink", "running", var_3 );
    maps\_vehicle::build_light( var_2, "white_blink", "TAG_LIGHT_BELLY", "fx/misc/aircraft_light_red_blink", "running", var_3 );
}

init_local()
{
    thread playengineeffects();
    thread _id_A84E();
    maps\_utility::delaythread( 0.05, maps\_vehicle::vehicle_lights_on, "running" );
}

playengineeffects()
{
    self endon( "death" );
    self endon( "stop_engineeffects" );
    maps\_utility::ent_flag_init( "engineeffects" );
    maps\_utility::ent_flag_set( "engineeffects" );
    var_0 = common_scripts\utility::getfx( "antonov_engine" );

    for (;;)
    {
        maps\_utility::ent_flag_wait( "engineeffects" );
        playfxontag( var_0, self, "tag_engine_right" );
        playfxontag( var_0, self, "tag_engine_right_2" );
        playfxontag( var_0, self, "tag_engine_left" );
        playfxontag( var_0, self, "tag_engine_left_2" );
        maps\_utility::ent_flag_waitopen( "engineeffects" );
        stopfxontag( var_0, self, "tag_engine_left" );
        stopfxontag( var_0, self, "tag_engine_left_2" );
        stopfxontag( var_0, self, "tag_engine_right" );
        stopfxontag( var_0, self, "tag_engine_right_2" );
    }
}

#using_animtree("vehicles");

_id_A84E()
{
    level.scr_animtree["antonov"] = #animtree;
    level.scr_anim["antonov"]["close_hatch"] = %h2_antonov_door_close;
    self.animname = "antonov";
    maps\_anim::setanimtree();
    thread maps\_anim::anim_first_frame_solo( self, "close_hatch" );
}

_id_AEB1( var_0, var_1 )
{
    if ( !isdefined( level._id_B3D8 ) )
        level._id_B3D8 = [];

    level._id_B3D8[var_0] = var_1;
}

_id_CA59( var_0, var_1 )
{
    if ( isdefined( level._id_B3D8 ) && isdefined( level._id_B3D8[var_0] ) )
        var_1 = level._id_B3D8[var_0];

    level._effect[var_0] = loadfx( var_1 );
}
