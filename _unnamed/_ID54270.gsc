// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "suburban_minigun", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_suburban_minigun_viewmodel", "vehicle_suburban_technical_destroyed" );
    _ID42411::_ID6216( "vehicle_suburban_technical", "vehicle_suburban_technical_destroyed" );
    _ID42411::_ID6213( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    _ID42411::_ID6213( "fx/explosions/vehicle_explosion_suburban_minigun", "TAG_DEATH_FX", "explo_metal_rand" );
    _ID42411::_ID6220( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 3000, 500, 3000 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6261( "suburban_minigun", "tag_turret", "weapon_suburban_minigun", undefined, "sentry", 0.2 );
    _ID42411::_ID6207( 1 );
    _ID42411::_ID6245( ( 0, 0, 32 ), 300, 200, 0, 0 );
}

_ID19731()
{

}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %suburban_dismount_frontl_door;
    var_0[1]._ID40152 = %suburban_dismount_frontr_door;
    var_0[2]._ID40152 = %suburban_dismount_backl_door;
    var_0[3]._ID40152 = %suburban_dismount_backr_door;
    var_0[0]._ID40154 = "suburban_door_open_fl";
    var_0[1]._ID40154 = "suburban_door_open_fr";
    var_0[2]._ID40154 = "suburban_door_open_bl";
    var_0[3]._ID40154 = "suburban_door_open_br";
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 7; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    var_0[2]._ID34225 = "tag_guy1";
    var_0[3]._ID34225 = "tag_guy2";
    var_0[4]._ID34225 = "tag_guy3";
    var_0[5]._ID34225 = "tag_guy4";
    var_0[6]._ID34225 = "tag_guy_turret";
    var_0[0]._ID19302 = %suburban_idle_frontl;
    var_0[1]._ID19302 = %suburban_idle_frontr;
    var_0[2]._ID19302 = %suburban_idle_backl;
    var_0[3]._ID19302 = %suburban_idle_backr;
    var_0[4]._ID19302 = %latvee_passenger_idle_r;
    var_0[5]._ID19302 = %latvee_passenger_idle_l;
    var_0[0]._ID16491 = %suburban_dismount_frontl;
    var_0[1]._ID16491 = %suburban_dismount_frontr;
    var_0[2]._ID16491 = %suburban_dismount_backl;
    var_0[3]._ID16491 = %suburban_dismount_backr;
    var_0[4]._ID16491 = %latvee_passenger_out_l;
    var_0[5]._ID16491 = %latvee_passenger_out_r;
    var_0[6]._ID16491 = %latvee_turret_2_passenger;
    var_0[6]._ID13393 = "tag_passenger";
    var_0[6]._ID16495 = %latvee_passenger_out_r;
    var_0[6]._ID16496 = "tag_passenger";
    var_0[0]._ID16341 = %latvee_driver_climb_in;
    var_0[1]._ID16341 = %latvee_passenger_in_r;
    var_0[2]._ID16341 = %latvee_passenger_in_r;
    var_0[3]._ID16341 = %latvee_passenger_in_l;
    var_0[4]._ID16341 = %latvee_passenger_in_l;
    var_0[5]._ID16341 = %latvee_passenger_in_r;
    var_0[6]._ID16341 = %latvee_passenger_in_r;
    var_0[6]._ID23512 = 0;
    return var_0;
}

_ID39488()
{
    var_0 = [];
    var_0["passengers"] = [];
    var_0["all"] = [];
    var_0["everyone"] = [];
    var_1 = "passengers";
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_1 = "all";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_1 = "everyone";
    var_0[var_1][var_0[var_1].size] = 0;
    var_0[var_1][var_0[var_1].size] = 1;
    var_0[var_1][var_0[var_1].size] = 2;
    var_0[var_1][var_0[var_1].size] = 3;
    var_0[var_1][var_0[var_1].size] = 4;
    var_0[var_1][var_0[var_1].size] = 5;
    var_0[var_1][var_0[var_1].size] = 6;
    var_0["default"] = var_0["all"];
    return var_0;
}
