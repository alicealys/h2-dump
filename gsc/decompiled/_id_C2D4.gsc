// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "policecar", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_destructible( "vehicle_policecar_lapd_destructible", "vehicle_policecar" );
    maps\_vehicle::build_destructible( "vehicle_policecar_russia_destructible", "vehicle_policecar_russia" );
    maps\_vehicle::build_deathmodel( "vehicle_policecar_lapd_destructible", "vehicle_policecar_lapd_destroy" );
    maps\_vehicle::build_deathmodel( "vehicle_policecar_russia_destructible", "vehicle_policecar_russia_destroy" );
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
    var_0[0].vehicle_getoutanim = %uaz_driver_exit_into_stand_door;
    var_0[1].vehicle_getoutanim = %uaz_passenger_exit_into_stand_door;
    var_0[2].vehicle_getoutanim = %uaz_rear_driver_exit_into_stand_door;
    var_0[3].vehicle_getoutanim = %uaz_passenger2_exit_into_stand_door;
    var_0[0].vehicle_getoutanim_clear = 0;
    var_0[1].vehicle_getoutanim_clear = 0;
    var_0[2].vehicle_getoutanim_clear = 0;
    var_0[3].vehicle_getoutanim_clear = 0;
    var_0[0].vehicle_getinanim = %uaz_driver_enter_from_huntedrun_door;
    var_0[1].vehicle_getinanim = %uaz_passenger_enter_from_huntedrun_door;
    var_0[2].vehicle_getinanim = %uaz_rear_driver_enter_from_huntedrun_door;
    var_0[3].vehicle_getinanim = %uaz_passenger2_enter_from_huntedrun_door;
    var_0[0].vehicle_getinsound = "truck_door_open";
    var_0[1].vehicle_getinsound = "truck_door_open";
    var_0[2].vehicle_getinsound = "truck_door_open";
    var_0[3].vehicle_getinsound = "truck_door_open";
    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 6; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_passenger";
    var_0[2].sittag = "tag_guy0";
    var_0[3].sittag = "tag_guy1";
    var_0[0].idle = %uaz_driver_idle_drive;
    var_0[1].idle = %uaz_passenger_idle_drive;
    var_0[2].idle = %uaz_rear_driver_idle;
    var_0[3].idle = %uaz_passenger2_idle;
    var_0[0].getout = %uaz_driver_exit_into_stand;
    var_0[1].getout = %uaz_passenger_exit_into_stand;
    var_0[2].getout = %uaz_rear_driver_exit_into_stand;
    var_0[3].getout = %uaz_passenger2_exit_into_stand;
    var_0[0].getin = %uaz_driver_enter_from_huntedrun;
    var_0[1].getin = %uaz_passenger_enter_from_huntedrun;
    var_0[2].getin = %uaz_rear_driver_enter_from_huntedrun;
    var_0[3].getin = %uaz_passenger2_enter_from_huntedrun;
    return var_0;
}
