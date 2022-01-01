// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "latvee", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_laatpv", "vehicle_laatpv_destroyed" );
    _ID42411::_ID6216( "vehicle_laatpv_blood", "vehicle_laatpv_destroyed" );
    _ID42411::_ID6216( "vehicle_laatpv_no_doors", "vehicle_laatpv_destroyed" );
    _ID42411::_ID6216( "vehicle_laatpv_viewmodel", "vehicle_laatpv_opentop_destroyed" );
    _ID42411::_ID6216( "vehicle_laatpv_viewmodel_01", "vehicle_laatpv_destroyed" );
    _ID42411::_ID6216( "vehicle_laatpv_opentop", "vehicle_laatpv_opentop_destroyed" );
    _ID42411::_ID6216( "vehicle_latvee_camo" );
    _ID42411::_ID6216( "vehicle_latvee_camo_50cal_doors" );
    _ID42411::_ID6216( "vehicle_latvee_camo_50cal_nodoors" );
    _ID42411::_ID6206( ::_ID32221 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6220( %latvee_50cal_driving_idle_forward, %latvee_50cal_driving_idle_backward, 10 );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "car_explode" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    var_3 = ::_ID32550;

    if ( isdefined( var_1 ) && issubstr( var_1, "open" ) )
        var_3 = ::opentop_anims;

    _ID42411::_ID6204( var_3, ::_ID32509 );
}

_ID32221()
{
    var_0 = [];

    if ( isdefined( self._ID40791 ) && issubstr( self._ID40791, "script_vehicle_laatpv_viewmodel_01" ) )
    {
        var_0["attach_exterior"] = spawnstruct();
        var_0["attach_exterior"]._ID1067 = "body_animate_jnt";
        var_0["attach_exterior"]._ID669 = "vehicle_laatpv_viewmodel_02";
        var_0["attach_exterior"]._ID47753 = "tag_origin";
    }

    return var_0;
}

_ID19731()
{
    if ( issubstr( self._ID1282, "physics" ) )
    {
        var_0 = [];
        var_0["idle"] = %latvee_antennas_idle_movement;
        var_0["rot_l"] = %latvee_antenna_l_rotate_360;
        var_0["rot_r"] = %latvee_antenna_r_rotate_360;
        thread _ID42413::_ID19207( var_0 );
    }

    if ( !issubstr( self._ID669, "opentop" ) && self _meth_844f( "tag_blood" ) != -1 )
        self hidepart( "tag_blood" );
}

_ID39488()
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

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %uaz_driver_exit_into_run_door;
    var_0[1]._ID40152 = %uaz_passenger_exit_into_run_door;
    var_0[2]._ID40152 = %uaz_rear_driver_exit_into_run_door;
    var_0[3]._ID40152 = %uaz_passenger2_exit_into_run_door;
    var_0[0]._ID40147 = %latvee_mount_frontl_door;
    var_0[1]._ID40147 = %latvee_mount_frontr_door;
    var_0[2]._ID40147 = %latvee_mount_backl_door;
    var_0[3]._ID40147 = %latvee_mount_backr_door;
    var_0[0]._ID40154 = "laatpv_door_open";
    var_0[1]._ID40154 = "laatpv_door_open";
    var_0[2]._ID40154 = "laatpv_door_open";
    var_0[3]._ID40154 = "laatpv_door_open";
    var_0[0]._ID40149 = "laatpv_door_close";
    var_0[1]._ID40149 = "laatpv_door_close";
    var_0[2]._ID40149 = "laatpv_door_close";
    var_0[3]._ID40149 = "laatpv_door_close";
    return var_0;
}
#using_animtree("generic_human");

opentop_anims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy0";
    var_0[3]._ID34225 = "tag_guy1";
    var_0[0]._ID5174 = 0;
    var_0[0]._ID19302 = %latvee_idle_frontl;
    var_0[1]._ID19302 = %latvee_idle_frontr;
    var_0[2]._ID19302 = %latvee_idle_backl;
    var_0[3]._ID19302 = %latvee_idle_backr;
    var_0[0]._ID16491 = %latvee_driver_climb_out;
    var_0[1]._ID16491 = %latvee_passenger_out_r;
    var_0[2]._ID16491 = %latvee_passenger_out_l;
    var_0[3]._ID16491 = %latvee_passenger_out_r;
    var_0[0]._ID16341 = %latvee_mount_frontl_nodoor;
    var_0[1]._ID16341 = %latvee_mount_frontr_nodoor;
    var_0[2]._ID16341 = %latvee_mount_backl_nodoor;
    var_0[3]._ID16341 = %latvee_mount_backr_nodoor;
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy0";
    var_0[3]._ID34225 = "tag_guy1";
    var_0[0]._ID5174 = 0;
    var_0[0]._ID19302 = %latvee_idle_frontl;
    var_0[1]._ID19302 = %latvee_idle_frontr;
    var_0[2]._ID19302 = %latvee_idle_backl;
    var_0[3]._ID19302 = %latvee_idle_backr;
    var_0[0]._ID16491 = %latvee_driver_climb_out;
    var_0[1]._ID16491 = %latvee_passenger_out_r;
    var_0[2]._ID16491 = %latvee_passenger_out_l;
    var_0[3]._ID16491 = %latvee_passenger_out_r;
    var_0[0]._ID16341 = %latvee_mount_frontl;
    var_0[1]._ID16341 = %latvee_mount_frontr;
    var_0[2]._ID16341 = %latvee_mount_backl;
    var_0[3]._ID16341 = %latvee_mount_backr;
    return var_0;
}
