// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

main( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "laatpv_minigun";

    _ID42411::_ID6255( "laatpv_minigun", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_laatpv", "vehicle_laatpv_destroyed" );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/explosions/vehicle_explosion_laatpv_minigun", "tag_deathfx", "car_explode", undefined, undefined, undefined, 0 );
    _ID42411::_ID6220( %latvee_50cal_driving_idle_forward, %latvee_50cal_driving_idle_backward, 10 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6207( 1 );

    if ( !isdefined( var_3 ) )
        var_3 = "minigun_laatpv";

    _ID42411::_ID6261( var_3, "tag_turret", "weapon_suburban_minigun_no_doors", undefined, undefined, 0.2, 20, -14 );
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

    self hidepart( "tag_blood" );
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 5; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy0";
    var_0[3]._ID34225 = "tag_guy1";
    var_0[4]._ID34225 = "tag_passenger";
    var_0[0]._ID5174 = 0;
    var_0[0]._ID19302 = %latvee_idle_frontl;
    var_0[1]._ID19302 = %latvee_idle_frontr;
    var_0[2]._ID19302 = %latvee_idle_backl;
    var_0[3]._ID19302 = %latvee_idle_backr;
    var_0[0]._ID16491 = %latvee_driver_climb_out;
    var_0[1]._ID16491 = %latvee_passenger_out_r;
    var_0[2]._ID16491 = %latvee_passenger_out_l;
    var_0[3]._ID16491 = %latvee_passenger_out_r;
    var_0[4]._ID16491 = %latvee_turret_2_passenger;
    var_0[4]._ID13393 = "tag_guy1";
    var_0[4]._ID16495 = %latvee_passenger_out_r;
    var_0[4]._ID16496 = "tag_guy1";
    var_0[0]._ID16341 = %latvee_mount_frontl;
    var_0[1]._ID16341 = %roadkill_laatpv_mount_frontr;
    var_0[2]._ID16341 = %latvee_mount_backl;
    var_0[3]._ID16341 = %latvee_mount_backr;
    var_0[4]._ID16341 = %latvee_mount_frontr;
    var_0[4]._ID23512 = 0;
    var_0[4]._ID26295 = ::_ID53160;
    return var_0;
}

_ID53160( var_0, var_1, var_2, var_3 )
{
    _ID47213( var_3 );
    var_4 = %latvee_passenger_2_turret;
    var_1 playsound( "laatpv_npc_to_ggun" );
    var_1 animscripts\laatpv_turret\common::_ID17564( var_0, var_2, var_3, var_4 );
}
#using_animtree("vehicles");

_ID47213( var_0 )
{
    var_0 useanimtree( #animtree );
    var_0._ID26298 = %latvee_passenger_2_turret_minigun;
    var_0._ID39335 = %latvee_turret_2_passenger_minigun;
}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %uaz_driver_exit_into_run_door;
    var_0[1]._ID40152 = %uaz_passenger_exit_into_run_door;
    var_0[2]._ID40152 = %uaz_rear_driver_exit_into_run_door;
    var_0[3]._ID40152 = %uaz_passenger2_exit_into_run_door;
    var_0[0]._ID40147 = %latvee_mount_frontl_door;
    var_0[1]._ID40147 = %roadkill_laatpv_mount_frontr_door;
    var_0[2]._ID40147 = %latvee_mount_backl_door;
    var_0[3]._ID40147 = %latvee_mount_backr_door;
    var_0[4]._ID40147 = %latvee_mount_frontr_door;
    var_0[0]._ID40154 = "laatpv_door_open";
    var_0[1]._ID40154 = "laatpv_door_open";
    var_0[2]._ID40154 = "laatpv_door_open";
    var_0[3]._ID40154 = "laatpv_door_open";
    var_0[4]._ID40154 = "laatpv_door_open";
    var_0[0]._ID40149 = "laatpv_door_close";
    var_0[1]._ID40149 = "laatpv_door_close";
    var_0[2]._ID40149 = "laatpv_door_close";
    var_0[3]._ID40149 = "laatpv_door_close";
    var_0[4]._ID40149 = "laatpv_door_close";
    return var_0;
}

_ID39488()
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
