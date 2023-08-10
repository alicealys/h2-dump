// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "laatpv_minigun";

    maps\_vehicle::build_template( "laatpv_minigun", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv", "vehicle_laatpv_destroyed" );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/explosions/vehicle_explosion_laatpv_minigun", "tag_deathfx", "car_explode", undefined, undefined, undefined, 0 );
    maps\_vehicle::build_drive( %latvee_50cal_driving_idle_forward, %latvee_50cal_driving_idle_backward, 10 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_unload_groups( ::unload_groups );
    maps\_vehicle::build_bulletshield( 1 );

    if ( !isdefined( var_3 ) )
        var_3 = "minigun_laatpv";

    maps\_vehicle::build_turret( var_3, "tag_turret", "weapon_suburban_minigun_no_doors", undefined, undefined, 0.2, 20, -14 );
}

init_local()
{
    if ( issubstr( self.vehicletype, "physics" ) )
    {
        var_0 = [];
        var_0["idle"] = %latvee_antennas_idle_movement;
        var_0["rot_l"] = %latvee_antenna_l_rotate_360;
        var_0["rot_r"] = %latvee_antenna_r_rotate_360;
        thread maps\_vehicle_code::humvee_antenna_animates( var_0 );
    }

    self hidepart( "tag_blood" );
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 5; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_passenger";
    var_0[2].sittag = "tag_guy0";
    var_0[3].sittag = "tag_guy1";
    var_0[4].sittag = "tag_passenger";
    var_0[0].bhasgunwhileriding = 0;
    var_0[0].idle = %latvee_idle_frontl;
    var_0[1].idle = %latvee_idle_frontr;
    var_0[2].idle = %latvee_idle_backl;
    var_0[3].idle = %latvee_idle_backr;
    var_0[0].getout = %latvee_driver_climb_out;
    var_0[1].getout = %latvee_passenger_out_r;
    var_0[2].getout = %latvee_passenger_out_l;
    var_0[3].getout = %latvee_passenger_out_r;
    var_0[4].getout = %latvee_turret_2_passenger;
    var_0[4].exittag = "tag_guy1";
    var_0[4].getout_secondary = %latvee_passenger_out_r;
    var_0[4].getout_secondary_tag = "tag_guy1";
    var_0[0].getin = %latvee_mount_frontl;
    var_0[1].getin = %roadkill_laatpv_mount_frontr;
    var_0[2].getin = %latvee_mount_backl;
    var_0[3].getin = %latvee_mount_backr;
    var_0[4].getin = %latvee_mount_frontr;
    var_0[4].mgturret = 0;
    var_0[4].passenger_2_turret_func = ::_id_CFA8;
    return var_0;
}

_id_CFA8( var_0, var_1, var_2, var_3 )
{
    _id_B86D( var_3 );
    var_4 = %latvee_passenger_2_turret;
    var_1 playsound( "laatpv_npc_to_ggun" );
    var_1 animscripts\laatpv_turret\common::guy_goes_directly_to_turret( var_0, var_2, var_3, var_4 );
}

#using_animtree("vehicles");

_id_B86D( var_0 )
{
    var_0 useanimtree( #animtree );
    var_0.passenger2turret_anime = %latvee_passenger_2_turret_minigun;
    var_0.turret2passenger_anime = %latvee_turret_2_passenger_minigun;
}

set_vehicle_anims( var_0 )
{
    var_0[0].vehicle_getoutanim = %uaz_driver_exit_into_run_door;
    var_0[1].vehicle_getoutanim = %uaz_passenger_exit_into_run_door;
    var_0[2].vehicle_getoutanim = %uaz_rear_driver_exit_into_run_door;
    var_0[3].vehicle_getoutanim = %uaz_passenger2_exit_into_run_door;
    var_0[0].vehicle_getinanim = %latvee_mount_frontl_door;
    var_0[1].vehicle_getinanim = %roadkill_laatpv_mount_frontr_door;
    var_0[2].vehicle_getinanim = %latvee_mount_backl_door;
    var_0[3].vehicle_getinanim = %latvee_mount_backr_door;
    var_0[4].vehicle_getinanim = %latvee_mount_frontr_door;
    var_0[0].vehicle_getoutsound = "laatpv_door_open";
    var_0[1].vehicle_getoutsound = "laatpv_door_open";
    var_0[2].vehicle_getoutsound = "laatpv_door_open";
    var_0[3].vehicle_getoutsound = "laatpv_door_open";
    var_0[4].vehicle_getoutsound = "laatpv_door_open";
    var_0[0].vehicle_getinsound = "laatpv_door_close";
    var_0[1].vehicle_getinsound = "laatpv_door_close";
    var_0[2].vehicle_getinsound = "laatpv_door_close";
    var_0[3].vehicle_getinsound = "laatpv_door_close";
    var_0[4].vehicle_getinsound = "laatpv_door_close";
    return var_0;
}

unload_groups()
{
    var_0 = [];
    var_1 = "passengers";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_1 = "passengers_and_gunner";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_1 = "all";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_1 = "passengers_and_driver";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0["default"] = var_0["all"];
    return var_0;
}
