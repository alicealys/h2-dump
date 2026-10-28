// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "suburban_minigun", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_deathmodel( "vehicle_suburban_minigun_viewmodel", "vehicle_suburban_technical_destroyed" );
    maps\_vehicle::build_deathmodel( "vehicle_suburban_technical", "vehicle_suburban_technical_destroyed" );
    maps\_vehicle::build_deathfx( "fx/fire/firelp_med_pm", "TAG_CAB_FIRE", "fire_metal_medium", undefined, undefined, 1, 0 );
    maps\_vehicle::build_deathfx( "fx/explosions/vehicle_explosion_suburban_minigun", "TAG_DEATH_FX", "explo_metal_rand" );
    maps\_vehicle::build_drive( %technical_driving_idle_forward, %technical_driving_idle_backward, 10 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 3000, 500, 3000 );
    maps\_vehicle::build_team( "allies" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_unload_groups( ::unload_groups );
    maps\_vehicle::build_turret( "suburban_minigun", "tag_turret", "weapon_suburban_minigun", undefined, "sentry", 0.2 );
    maps\_vehicle::build_bulletshield( 1 );
    maps\_vehicle::build_radiusdamage( ( 0, 0, 32 ), 300, 200, 0, 0 );
}

init_local()
{

}

set_vehicle_anims( var_0 )
{
    var_0[0].vehicle_getoutanim = %suburban_dismount_frontl_door;
    var_0[1].vehicle_getoutanim = %suburban_dismount_frontr_door;
    var_0[2].vehicle_getoutanim = %suburban_dismount_backl_door;
    var_0[3].vehicle_getoutanim = %suburban_dismount_backr_door;
    var_0[0].vehicle_getoutsound = "suburban_door_open_fl";
    var_0[1].vehicle_getoutsound = "suburban_door_open_fr";
    var_0[2].vehicle_getoutsound = "suburban_door_open_bl";
    var_0[3].vehicle_getoutsound = "suburban_door_open_br";
    return var_0;
}

#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 7; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_driver";
    var_0[1].sittag = "tag_passenger";
    var_0[2].sittag = "tag_guy1";
    var_0[3].sittag = "tag_guy2";
    var_0[4].sittag = "tag_guy3";
    var_0[5].sittag = "tag_guy4";
    var_0[6].sittag = "tag_guy_turret";
    var_0[0].idle = %suburban_idle_frontl;
    var_0[1].idle = %suburban_idle_frontr;
    var_0[2].idle = %suburban_idle_backl;
    var_0[3].idle = %suburban_idle_backr;
    var_0[4].idle = %latvee_passenger_idle_r;
    var_0[5].idle = %latvee_passenger_idle_l;
    var_0[0].getout = %suburban_dismount_frontl;
    var_0[1].getout = %suburban_dismount_frontr;
    var_0[2].getout = %suburban_dismount_backl;
    var_0[3].getout = %suburban_dismount_backr;
    var_0[4].getout = %latvee_passenger_out_l;
    var_0[5].getout = %latvee_passenger_out_r;
    var_0[6].getout = %latvee_turret_2_passenger;
    var_0[6].exittag = "tag_passenger";
    var_0[6].getout_secondary = %latvee_passenger_out_r;
    var_0[6].getout_secondary_tag = "tag_passenger";
    var_0[0].getin = %latvee_driver_climb_in;
    var_0[1].getin = %latvee_passenger_in_r;
    var_0[2].getin = %latvee_passenger_in_r;
    var_0[3].getin = %latvee_passenger_in_l;
    var_0[4].getin = %latvee_passenger_in_l;
    var_0[5].getin = %latvee_passenger_in_r;
    var_0[6].getin = %latvee_passenger_in_r;
    var_0[6].mgturret = 0;
    return var_0;
}

unload_groups()
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
