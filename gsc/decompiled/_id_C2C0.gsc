// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main( var_0, var_1, var_2, var_3 )
{
    if ( var_0 == "vehicle_submarine_sdv" || var_0 == "vehicle_mini_sub_iw6" )
        maps\_vehicle::build_template( "submarine_sdv", var_0, var_1, var_2 );
    else
        maps\_vehicle::build_template( "blackshadow_730", var_0, var_1, var_2 );

    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( var_0 );
    maps\_vehicle::build_life( 999, 500, 1500 );

    if ( !isdefined( var_3 ) || !var_3 )
    {
        if ( var_0 == "vehicle_mini_sub_iw6" )
            maps\_vehicle::build_rumble( "subtle_tank_rumble", 0.05, 1.5, 900, 1, 1 );
    }

    maps\_vehicle::build_team( "allies" );
    level._effect["sdv_prop_wash_1"] = loadfx( "fx/water/sdv_prop_wash_2" );
    level._effect["sdv_headlights"] = loadfx( "fx/misc/spotlight_submarine_sdv" );
}

init_local()
{
    maps\_utility::ent_flag_init( "moving" );
    maps\_utility::ent_flag_init( "lights" );
    self.light_tag = common_scripts\utility::spawn_tag_origin();
    self.light_tag linkto( self, "TAG_BIG_LIGHT1", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _id_D0A3();
    thread _id_C457();
    thread _id_B2FC();
}

_id_C457()
{
    self endon( "sdv_done" );
    self endon( "death" );

    for (;;)
    {
        maps\_utility::ent_flag_wait( "moving" );
        thread maps\_utility::play_sound_on_tag( "sdv_start", "TAG_PROPELLER" );
        maps\_utility::delaythread( 1, maps\_utility::play_loop_sound_on_tag, "sdv_move_loop", "TAG_PROPELLER", 1 );

        if ( self.model == "vehicle_mini_sub_iw6" )
            thread _id_CD79();
        else
            playfxontag( common_scripts\utility::getfx( "sdv_prop_wash_1" ), self, "TAG_PROPELLER" );

        maps\_utility::ent_flag_waitopen( "moving" );

        if ( self.model == "vehicle_mini_sub_iw6" )
            thread _id_B3F1();
        else
            stopfxontag( common_scripts\utility::getfx( "sdv_prop_wash_1" ), self, "TAG_PROPELLER" );

        self notify( "stop soundsdv_move_loop" );
        thread maps\_utility::play_sound_on_tag( "sdv_stop", "TAG_PROPELLER" );
    }
}

_id_CD79()
{
    playfxontag( common_scripts\utility::getfx( "mini_sub_prop_wash" ), self, "j_propellerbottom" );
    waitframe();
    playfxontag( common_scripts\utility::getfx( "mini_sub_prop_wash" ), self, "j_propeller1_le" );
    playfxontag( common_scripts\utility::getfx( "mini_sub_prop_wash" ), self, "j_propeller1_ri" );
    waitframe();
}

_id_B3F1()
{
    stopfxontag( common_scripts\utility::getfx( "mini_sub_prop_wash" ), self, "j_propellerbottom" );
    waitframe();
    stopfxontag( common_scripts\utility::getfx( "mini_sub_prop_wash" ), self, "j_propeller1_le" );
    stopfxontag( common_scripts\utility::getfx( "mini_sub_prop_wash" ), self, "j_propeller1_ri" );
    waitframe();
}

_id_D0A3()
{
    common_scripts\utility::waittill_either( "sdv_done", "death" );
    stopfxontag( common_scripts\utility::getfx( "sdv_headlights" ), self.light_tag, "TAG_ORIGIN" );

    if ( isdefined( self ) && maps\_utility::ent_flag( "moving" ) )
    {
        stopfxontag( common_scripts\utility::getfx( "sdv_prop_wash_1" ), self, "TAG_PROPELLER" );
        self notify( "stop soundsdv_move_loop" );
    }

    var_0 = self.light_tag;
    wait 0.2;
    var_0 delete();
}

_id_B2FC()
{
    self endon( "sdv_done" );
    self endon( "death" );

    for (;;)
    {
        maps\_utility::ent_flag_wait( "lights" );
        playfxontag( common_scripts\utility::getfx( "sdv_headlights" ), self.light_tag, "TAG_ORIGIN" );
        maps\_utility::ent_flag_waitopen( "lights" );
        stopfxontag( common_scripts\utility::getfx( "sdv_headlights" ), self.light_tag, "TAG_ORIGIN" );
    }
}
