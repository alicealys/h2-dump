// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_D428::main();
    common_scripts\utility::add_destructible_type_function( "toy_copier", _id_C6AE::main );
    common_scripts\utility::add_destructible_type_function( "toy_filecabinet", _id_D0C6::main );
    common_scripts\utility::add_destructible_type_function( "toy_generator", destructible_scripts\toy_generator::main );
    common_scripts\utility::add_destructible_type_function( "toy_generator_on", destructible_scripts\toy_generator_on::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashbin_01", _id_BB2E::main );
    _id_B596::main( "vehicle_f15", undefined, "script_vehicle_f15" );
}
