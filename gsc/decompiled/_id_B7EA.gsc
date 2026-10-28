// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "coupe", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_destructible( "vehicle_coupe_gold_destructible", "vehicle_coupe_gold" );
    maps\_vehicle::build_destructible( "vehicle_coupe_gray_destructible", "vehicle_coupe_gray" );
    maps\_vehicle::build_radiusdamage( ( 0, 0, 32 ), 300, 200, 100, 0 );
    maps\_vehicle::build_drive( %uaz_driving_idle_forward, %uaz_driving_idle_backward, 10 );
    maps\_vehicle::build_deathquake( 1, 1.6, 500 );
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
    var_0[0].vehicle_getoutanim = %uaz_driver_exit_into_stand_door;
    var_0[1].vehicle_getoutanim = %uaz_passenger_exit_into_stand_door;
    var_0[0].vehicle_getoutanim_clear = 0;
    var_0[1].vehicle_getoutanim_clear = 0;
    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[0].idle = %luxurysedan_driver_idle;
    var_0[0].death = %luxurysedan_driver_idle;
    var_0[1].sittag = "tag_passenger";
    var_0[1].idle = %uaz_passenger_idle_drive;
    var_0[1].death = %uaz_passenger_idle_drive;
    var_0[0].getout = %h2_civ_car_driver_out_l;
    var_0[1].getout = %latvee_passenger_out_r;
    return var_0;
}
