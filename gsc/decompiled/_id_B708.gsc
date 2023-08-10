// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D3CA::main();
    _id_C340::main();
    common_scripts\utility::add_destructible_type_function( "toy_dt_mirror", _id_ADFC::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "toy_filecabinet", _id_D0C6::main );
    common_scripts\utility::add_destructible_type_function( "toy_light_ceiling_fluorescent", _id_CBE3::main );
    common_scripts\utility::add_destructible_type_function( "toy_locker_double", destructible_scripts\toy_locker_double::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_01", _id_AEB7::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_02", _id_D519::main );
    common_scripts\utility::add_destructible_type_function( "toy_propane_tank02", _id_CB5B::main );
    common_scripts\utility::add_destructible_type_function( "toy_tubetv_tv1", _id_B97E::main );
    common_scripts\utility::add_destructible_type_function( "toy_tv_flatscreen_wallmount_01", _id_CC8A::main );
    common_scripts\utility::add_destructible_type_function( "toy_tv_flatscreen_wallmount_02", _id_AD99::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_uaz_winter", _id_ACA4::main );
    _id_B596::main( "vehicle_f15", undefined, "script_vehicle_f15" );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_armed", undefined, "script_vehicle_littlebird_armed" );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench" );
    vehicle_scripts\_littlebird_player::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_player" );
}
