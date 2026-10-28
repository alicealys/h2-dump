// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "latvee", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv", "vehicle_laatpv_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv_blood", "vehicle_laatpv_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv_no_doors", "vehicle_laatpv_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv_viewmodel", "vehicle_laatpv_opentop_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv_viewmodel_01", "vehicle_laatpv_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_laatpv_opentop", "vehicle_laatpv_opentop_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_latvee_camo" );
    maps\_vehicle::build_deathmodel( "vehicle_latvee_camo_50cal_doors" );
    maps\_vehicle::build_deathmodel( "vehicle_latvee_camo_50cal_nodoors" );
    maps\_vehicle::build_attach_models( ::set_attached_models );
    maps\_vehicle::build_unload_groups( ::unload_groups );
    maps\_vehicle::build_drive( %latvee_50cal_driving_idle_forward, %latvee_50cal_driving_idle_backward, 10 );
    maps\_vehicle::build_deathfx( "fx/explosions/large_vehicle_explosion", undefined, "car_explode" );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "allies" );
    var_3 = ::setanims;

    if ( isdefined( var_1 ) && issubstr( var_1, "open" ) )
        var_3 = ::opentop_anims;

    maps\_vehicle::build_aianims( var_3, ::set_vehicle_anims );
}

set_attached_models()
{
    var_0 = [];

    if ( isdefined( self.vtclassname ) && issubstr( self.vtclassname, "script_vehicle_laatpv_viewmodel_01" ) )
    {
        var_0["attach_exterior"] = spawnstruct();
        var_0["attach_exterior"].tag = "body_animate_jnt";
        var_0["attach_exterior"].model = "vehicle_laatpv_viewmodel_02";
        var_0["attach_exterior"]._id_BA89 = "tag_origin";
    }

    return var_0;
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

    if ( !issubstr( self.model, "opentop" ) && self _meth_844F( "tag_blood" ) != -1 )
        self hidepart( "tag_blood" );
}

unload_groups()
{
    var_0 = [];
    var_1 = "passengers";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_1 = "rear_driver_side";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 2;
    var_1 = "all";
    var_0[var_1] = [];
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0["default"] = var_0["all"];
    return var_0;
}

set_vehicle_anims( var_0 )
{
    var_0[0].vehicle_getoutanim = %uaz_driver_exit_into_run_door;
    var_0[1].vehicle_getoutanim = %uaz_passenger_exit_into_run_door;
    var_0[2].vehicle_getoutanim = %uaz_rear_driver_exit_into_run_door;
    var_0[3].vehicle_getoutanim = %uaz_passenger2_exit_into_run_door;
    var_0[0].vehicle_getinanim = %latvee_mount_frontl_door;
    var_0[1].vehicle_getinanim = %latvee_mount_frontr_door;
    var_0[2].vehicle_getinanim = %latvee_mount_backl_door;
    var_0[3].vehicle_getinanim = %latvee_mount_backr_door;
    var_0[0].vehicle_getoutsound = "laatpv_door_open";
    var_0[1].vehicle_getoutsound = "laatpv_door_open";
    var_0[2].vehicle_getoutsound = "laatpv_door_open";
    var_0[3].vehicle_getoutsound = "laatpv_door_open";
    var_0[0].vehicle_getinsound = "laatpv_door_close";
    var_0[1].vehicle_getinsound = "laatpv_door_close";
    var_0[2].vehicle_getinsound = "laatpv_door_close";
    var_0[3].vehicle_getinsound = "laatpv_door_close";
    return var_0;
}

#using_animtree("generic_human");

opentop_anims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_passenger";
    var_0[2].sittag = "tag_guy0";
    var_0[3].sittag = "tag_guy1";
    var_0[0].bhasgunwhileriding = 0;
    var_0[0].idle = %latvee_idle_frontl;
    var_0[1].idle = %latvee_idle_frontr;
    var_0[2].idle = %latvee_idle_backl;
    var_0[3].idle = %latvee_idle_backr;
    var_0[0].getout = %latvee_driver_climb_out;
    var_0[1].getout = %latvee_passenger_out_r;
    var_0[2].getout = %latvee_passenger_out_l;
    var_0[3].getout = %latvee_passenger_out_r;
    var_0[0].getin = %latvee_mount_frontl_nodoor;
    var_0[1].getin = %latvee_mount_frontr_nodoor;
    var_0[2].getin = %latvee_mount_backl_nodoor;
    var_0[3].getin = %latvee_mount_backr_nodoor;
    return var_0;
}

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_passenger";
    var_0[2].sittag = "tag_guy0";
    var_0[3].sittag = "tag_guy1";
    var_0[0].bhasgunwhileriding = 0;
    var_0[0].idle = %latvee_idle_frontl;
    var_0[1].idle = %latvee_idle_frontr;
    var_0[2].idle = %latvee_idle_backl;
    var_0[3].idle = %latvee_idle_backr;
    var_0[0].getout = %latvee_driver_climb_out;
    var_0[1].getout = %latvee_passenger_out_r;
    var_0[2].getout = %latvee_passenger_out_l;
    var_0[3].getout = %latvee_passenger_out_r;
    var_0[0].getin = %latvee_mount_frontl;
    var_0[1].getin = %latvee_mount_frontr;
    var_0[2].getin = %latvee_mount_backl;
    var_0[3].getin = %latvee_mount_backr;
    return var_0;
}
