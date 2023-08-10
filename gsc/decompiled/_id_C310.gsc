// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "swat_van", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( var_0, "h2_vehicle_russian_swat_van_destroy" );
    maps\_vehicle::build_deathfx( "fx/explosions/huge_vehicle_explosion", "TAG_DEATHFX", "car_explode", undefined, undefined, undefined, 0 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_swat_van_back", "TAG_CARGO_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_swat_van", "TAG_CAB_FIRE", undefined, undefined, undefined, undefined, 0 );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_swat_van_addon", "TAG_CAB_FIRE", undefined, undefined, undefined, undefined, 0 );
    maps\_vehicle::build_radiusdamage( ( 0, 0, 32 ), 300, 200, 100, 0 );
    maps\_vehicle::build_drive( %uaz_driving_idle_forward, %uaz_driving_idle_backward, 10 );
    maps\_vehicle::build_deathquake( 1, 1.6, 800 );
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "axis" );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
}

init_local()
{

}

set_vehicle_anims( var_0 )
{
    var_0[0].vehicle_getoutanim = %russian_swat_van_driver_getout_door;
    var_0[0].vehicle_getoutsoundtag = "front_door_left_jnt";
    var_0[0].vehicle_getoutanim_clear = 1;
    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 1; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[0].idle = %russian_swat_van_driver_idle;
    var_0[0].getout = %russian_swat_van_driver_getout;
    return var_0;
}
