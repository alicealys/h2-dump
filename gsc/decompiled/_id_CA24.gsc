// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D428::main();
    common_scripts\utility::add_destructible_type_function( "toy_generator_on", destructible_scripts\toy_generator_on::main );
    common_scripts\utility::add_destructible_type_function( "toy_mailbox2_black", _id_B95D::main );
    common_scripts\utility::add_destructible_type_function( "toy_recyclebin_01", _id_BB45::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashbin_01", _id_BB2E::main );
    _id_C6DD::main();
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench" );
}
