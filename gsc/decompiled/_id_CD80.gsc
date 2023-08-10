// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_C340::main();
    common_scripts\utility::add_destructible_type_function( "toy_dt_mirror", _id_ADFC::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "toy_locker_double", destructible_scripts\toy_locker_double::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_01", _id_AEB7::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_02", _id_D519::main );
    common_scripts\utility::add_destructible_type_function( "toy_propane_tank02", _id_CB5B::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_mack_truck_short_snow", _id_D0E2::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_uaz_winter", _id_ACA4::main );
    _id_CF03::main( "vehicle_bm21_mobile_cover_snow", "bm21_troops", "script_vehicle_bm21_mobile_cover_troops_snow" );
    _id_B3FB::main( "vehicle_btr80_snow", undefined, "script_vehicle_btr80_snow" );
    _id_B3FB::main( "vehicle_btr80_snow", "btr80_physics", "script_vehicle_btr80_snow_physics" );
    _id_D3BD::main( "vehicle_sa15_gauntlet", undefined, "script_vehicle_gauntlet" );
    _id_AA81::main( "vehicle_mi24p_hind_chernobyl", undefined, "script_vehicle_hind_chernobyl" );
    vehicle_scripts\_mi17::main( "vehicle_mi17_woodland_fly_cheap", undefined, "script_vehicle_mi17_woodland_fly_cheap" );
    _id_C782::main( "vehicle_uaz_winter_destructible", "uaz_physics", "script_vehicle_uaz_winter_physics" );
    _id_D04F::main( "vehicle_ucav", undefined, "script_vehicle_ucav" );
}
