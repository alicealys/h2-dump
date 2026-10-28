// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    precachemodel( "vehicle_m60a1_bridge" );
    maps\_vehicle::build_template( "bridge_layer", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_bridge_layer", "vehicle_laatpv_destroyed" );
    maps\_vehicle::build_drive( %abrams_movement, %abrams_movement_backwards, 10 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/explosions/vehicle_explosion_laatpv", "tag_deathfx", "car_explode" );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
}

init_local()
{
    var_0 = spawn( "script_model", ( 0, 0, 0 ) );
    var_0 setmodel( "vehicle_m60a1_bridge" );
    var_0 linkto( self, "tag_bridge_attach", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    self._id_BC77 = var_0;
}
