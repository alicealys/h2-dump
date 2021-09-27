// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "bmp", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0085 );
    _ID42411::_ID6219( "vehicle_bmp_dsty", "vehicle_bmp_winter" );
    _ID42411::_ID6216( "vehicle_bmp", "vehicle_bmp_dsty" );
    _ID42411::_ID6216( "vehicle_bmp_winter", "vehicle_bmp_woodland_dsty" );
    _ID42411::_ID6216( "vehicle_bmp_woodland", "vehicle_bmp_woodland_dsty" );
    _ID42411::_ID6216( "vehicle_bmp_woodland_low", "vehicle_bmp_dsty_low" );
    _ID42411::_ID6216( "vehicle_bmp_woodland_jeepride", "vehicle_bmp_dsty" );
    _ID42411::_ID6216( "vehicle_bmp_desert", "vehicle_bmp_dsty" );
    _ID42411::_ID6216( "vehicle_bmp_thermal", "vehicle_bmp_thermal_dsty" );
    _ID42411::_ID6216( "vehicle_bmp_low", "vehicle_bmp_dsty_low" );
    var_3 = [];
    var_3["vehicle_bmp"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_winter"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_woodland"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_woodland_jeepride"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_woodland_low"] = "fx/explosions/vehicle_explosion_bmp_low";
    var_3["vehicle_bmp_desert"] = "fx/explosions/vehicle_explosion_bmp";
    var_3["vehicle_bmp_thermal"] = "fx/explosions/large_vehicle_explosion_IR";
    var_3["vehicle_bmp_low"] = "fx/explosions/vehicle_explosion_bmp_low";
    _ID42411::_ID6220( %bmp_movement, %bmp_movement_backwards, 10 );

    if ( _func_125( var_0, "_low" ) )
        _ID42411::_ID6261( "bmp_turret2", "tag_turret2", "vehicle_bmp_machine_gun_low" );
    else
        _ID42411::_ID6261( "bmp_turret2", "tag_turret2", "vehicle_bmp_machine_gun" );

    _ID42411::_ID6245( ( 0, 0, 53 ), 512, 300, 20, 0 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6204( ::_unknown_01BD, ::_unknown_01B2 );
    _ID42411::_ID6223( 0.33 );
    _ID42411::_ID6207( 1 );
    _ID42411::_ID6226( 1 );
}

_ID19731()
{
    _ID42407::_ID13024( "no_riders_until_unload" );
}

_ID32509( var_0 )
{
    var_0[0]._ID40152 = %bmp_doors_open;
    var_0[0]._ID40153 = 0;
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 4; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_guy1";
    var_0[1]._ID34225 = "tag_guy2";
    var_0[2]._ID34225 = "tag_guy3";
    var_0[3]._ID34225 = "tag_guy4";
    var_0[0]._ID19302 = %bmp_idle_1;
    var_0[1]._ID19302 = %bmp_idle_2;
    var_0[2]._ID19302 = %bmp_idle_3;
    var_0[3]._ID19302 = %bmp_idle_4;
    var_0[0]._ID16491 = %bmp_exit_1;
    var_0[1]._ID16491 = %bmp_exit_2;
    var_0[2]._ID16491 = %bmp_exit_3;
    var_0[3]._ID16491 = %bmp_exit_4;
    var_0[0]._ID16341 = %latvee_driver_climb_in;
    var_0[1]._ID16341 = %latvee_passenger_in_l;
    var_0[2]._ID16341 = %latvee_passenger_in_r;
    var_0[3]._ID16341 = %latvee_passenger_in_r;
    return var_0;
}
