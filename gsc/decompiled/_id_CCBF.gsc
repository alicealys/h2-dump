// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "luxurysedan", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_luxurysedan", "vehicle_luxurysedan_destroy" );
    maps\_vehicle::build_deathmodel( "vehicle_luxurysedan_test", "vehicle_luxurysedan_destroy" );
    maps\_vehicle::build_deathmodel( "vehicle_luxurysedan_viewmodel", "vehicle_luxurysedan_destroy" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    maps\_vehicle::build_attach_models( ::set_attached_models );
    maps\_vehicle::build_drive( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
}

init_local()
{

}

set_vehicle_anims( var_0 )
{
    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[0].idle = %luxurysedan_driver_idle;
    return var_0;
}

set_attached_models()
{
    var_0 = [];

    if ( isdefined( self.vtclassname ) && issubstr( self.vtclassname, "script_vehicle_luxurysedan_viewmodel" ) )
    {
        var_0["attach_exterior"] = spawnstruct();
        var_0["attach_exterior"].tag = "body_animate_jnt";
        var_0["attach_exterior"].model = "vehicle_luxurysedan_2009_viewmodel_interior";
        var_0["attach_exterior"]._id_BA89 = "tag_origin";
    }

    return var_0;
}
