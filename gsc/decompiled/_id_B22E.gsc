// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D428::main();
    common_scripts\utility::add_destructible_type_function( "toy_electricbox2", _id_CE57::main );
    common_scripts\utility::add_destructible_type_function( "toy_filecabinet", _id_D0C6::main );
    common_scripts\utility::add_destructible_type_function( "toy_generator", destructible_scripts\toy_generator::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashbin_02", _id_B9DA::main );
    common_scripts\utility::add_destructible_type_function( "toy_tubetv_tv1", _id_B97E::main );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_armed", undefined, "script_vehicle_littlebird_armed" );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench" );
    vehicle_scripts\_mi17::main( "vehicle_mi17_woodland_fly_cheap", undefined, "script_vehicle_mi17_woodland_fly_cheap" );
    _id_BBC8::main( "vehicle_pavelow", undefined, "script_vehicle_pavelow" );
    _id_BBC8::main( "h2_pavelow_cutscene", undefined, "script_vehicle_pavelow_cutscene" );
    _id_C782::main( "vehicle_uaz_hardtop", "uaz_physics", "script_vehicle_uaz_hardtop_physics" );
}
