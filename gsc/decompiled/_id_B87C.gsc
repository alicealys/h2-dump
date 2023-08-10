// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "ambulance", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_ambulance_russian" );
    maps\_vehicle::build_radiusdamage( ( 0, 0, 32 ), 300, 200, 100, 0 );
    maps\_vehicle::build_attach_models( ::set_attached_models );
    maps\_vehicle::build_drive( %ambulance_driving_idle_forward, %ambulance_driving_idle_backward, 10 );
    maps\_vehicle::build_deathquake( 1, 1.6, 500 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "axis" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
}

init_local()
{

}

set_vehicle_anims( var_0 )
{
    return var_0;
}

set_attached_models()
{
    var_0 = [];

    if ( isdefined( self.vtclassname ) && issubstr( self.vtclassname, "script_vehicle_ambulance_russian_airport" ) )
    {
        var_0["attach_exterior"] = spawnstruct();
        var_0["attach_exterior"].tag = "body_animate_jnt";
        var_0["attach_exterior"].model = "h2_vehicle_ambulance_russian_interior";
        var_0["attach_exterior"]._id_BA89 = "body_animate_jnt";
        precachemodel( "h2_vehicle_ambulance_russian_interior" );
    }

    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "TAG_DRIVER";
    var_0[1].sittag = "TAG_PASSENGER";
    var_0[0].idle = %uaz_driver_idle_drive;
    var_0[1].idle = %uaz_passenger_idle_drive;
    return var_0;
}
