// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "stryker50cal", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_stryker_config2", "vehicle_stryker_config2_destroyed" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    maps\_vehicle::build_drive( %stryker_movement, %stryker_movement_backwards, 10 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_mainturret();
    maps\_vehicle::build_frontarmor( 0.33 );
    maps\_vehicle::build_rumble( "stryker_rumble", 0.11, 4.5, 700, 1, 1 );
}

init_local()
{

}

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].getout_delete = 1;
    return var_0;
}
