// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

main( var_0, var_1, var_2 )
{
    maps\_vehicle::build_template( "bmp", var_0, var_1, var_2 );
    maps\_vehicle::build_localinit( ::init_local );
    maps\_vehicle::build_destructible( "vehicle_bmp_dsty", "vehicle_bmp_winter" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp", "vehicle_bmp_dsty" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_winter", "vehicle_bmp_woodland_dsty" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_woodland", "vehicle_bmp_woodland_dsty" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_woodland_low", "vehicle_bmp_dsty_low" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_woodland_jeepride", "vehicle_bmp_dsty" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_desert", "vehicle_bmp_dsty" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_thermal", "vehicle_bmp_thermal_dsty" );
    maps\_vehicle::build_deathmodel( "vehicle_bmp_low", "vehicle_bmp_dsty_low" );
    var_3 = [];
    var_3["vehicle_bmp"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_winter"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_woodland"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_woodland_jeepride"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_woodland_low"] = "fx/explosions/vehicle_explosion_bmp_low";
    var_3["vehicle_bmp_desert"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_thermal"] = "fx/explosions/large_vehicle_explosion_IR";
    var_3["vehicle_bmp_low"] = "fx/explosions/vehicle_explosion_bmp_low";
    maps\_vehicle::build_drive( %bmp_movement, %bmp_movement_backwards, 10 );

    if ( issubstr( var_0, "_low" ) )
        maps\_vehicle::build_turret( "bmp_turret2", "tag_turret2", "vehicle_bmp_machine_gun_low" );
    else
        maps\_vehicle::build_turret( "bmp_turret2", "tag_turret2", "vehicle_bmp_machine_gun" );

    maps\_vehicle::build_radiusdamage( ( 0.0, 0.0, 53.0 ), 512, 300, 20, 0 );
    maps\_vehicle::build_treadfx();
    maps\_vehicle::build_life( 999, 500, 1500 );
    maps\_vehicle::build_team( "axis" );
    maps\_vehicle::build_aianims( ::setanims, ::set_vehicle_anims );
    maps\_vehicle::build_frontarmor( 0.33 );
    maps\_vehicle::build_bulletshield( 1 );
    maps\_vehicle::build_grenadeshield( 1 );
}

init_local()
{
    maps\_utility::ent_flag_init( "no_riders_until_unload" );
}

set_vehicle_anims( var_0 )
{
    var_0[0].vehicle_getoutanim = %bmp_doors_open;
    var_0[0].vehicle_getoutanim_clear = 0;
    return var_0;
}
#using_animtree("generic_human");

setanims()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0].sittag = "tag_guy1";
    var_0[1].sittag = "tag_guy2";
    var_0[2].sittag = "tag_guy3";
    var_0[3].sittag = "tag_guy4";
    var_0[0].idle = %bmp_idle_1;
    var_0[1].idle = %bmp_idle_2;
    var_0[2].idle = %bmp_idle_3;
    var_0[3].idle = %bmp_idle_4;
    var_0[0].getout = %bmp_exit_1;
    var_0[1].getout = %bmp_exit_2;
    var_0[2].getout = %bmp_exit_3;
    var_0[3].getout = %bmp_exit_4;
    var_0[0].getin = %latvee_driver_climb_in;
    var_0[1].getin = %latvee_passenger_in_l;
    var_0[2].getin = %latvee_passenger_in_r;
    var_0[3].getin = %latvee_passenger_in_r;
    return var_0;
}
