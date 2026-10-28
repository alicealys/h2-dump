// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "gauntlet", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_sa15_gauntlet", "vehicle_sa15_gauntlet_destroy" );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "exp_armor_vehicle" );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "axis" );
    maps\_vehicle::build_idle( %sa15_turret_scanloop );
    maps\_vehicle::build_idle( %sa15_radar_spinloop );
    maps\_vehicle::build_bulletshield( 1 );
    maps\_vehicle::build_grenadeshield( 1 );
}

init_local()
{

}

set_vehicle_anims( var_0 )
{
    return var_0;
}

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 11; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].getout_delete = 1;
    return var_0;
}
