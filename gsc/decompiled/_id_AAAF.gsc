// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_AE39::main();
    _id_D428::main();
    common_scripts\utility::add_destructible_type_function( "toy_airconditioner", _id_C3E8::main );
    common_scripts\utility::add_destructible_type_function( "toy_copier", _id_C6AE::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox2", _id_CE57::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "toy_filecabinet", _id_D0C6::main );
    common_scripts\utility::add_destructible_type_function( "toy_generator_on", destructible_scripts\toy_generator_on::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_01", _id_AEB7::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_02", _id_D519::main );
    common_scripts\utility::add_destructible_type_function( "toy_propane_tank02", _id_CB5B::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_mack_truck_short_snow", _id_D0E2::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_mig29_landed", _id_CA16::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_uaz_winter", _id_ACA4::main );
    _id_AFFA::main( "vehicle_bmp_winter", undefined, "script_vehicle_bmp_winter" );
    _id_AF1F::main( "vehicle_ch46e", undefined, "script_vehicle_ch46e" );
    _id_AF1F::main( "vehicle_ch46e_opened_door_interior_a", undefined, "script_vehicle_ch46e_opened_door_interior_a" );
    _id_BF20::main( "vehicle_cobra_helicopter_fly", undefined, "script_vehicle_cobra_helicopter_fly" );
    _id_AA81::main( "vehicle_mi24p_hind_chernobyl", undefined, "script_vehicle_hind_chernobyl" );
    vehicle_scripts\_mig29::main( "vehicle_mig29", "mig29", "script_vehicle_mig29" );
    vehicle_scripts\_mig29::main( "vehicle_mig29_desert", undefined, "script_vehicle_mig29_desert" );
    _id_AB91::main( "vehicle_snowmobile", "snowmobile", "script_vehicle_snowmobile" );
    _id_AB91::main( "vehicle_snowmobile", "snowmobile_player_coop", "script_vehicle_snowmobile_coop" );
    _id_AB91::main( "vehicle_snowmobile_alt", "snowmobile_player_coop", "script_vehicle_snowmobile_coop_alt" );
    _id_C878::main( "vehicle_snowmobile_alt", undefined, "script_vehicle_snowmobile_friendly" );
    _id_BB21::main( "vehicle_snowmobile", undefined, "script_vehicle_snowmobile_player" );
    _id_BB21::main( "vehicle_snowmobile_high_res", undefined, "script_vehicle_snowmobile_player_alt" );
    _id_AB91::main( "vehicle_snowmobile_tarmac", "snowmobile_tarmac", "script_vehicle_snowmobile_tarmac" );
    _id_C782::main( "vehicle_uaz_winter_destructible", "uaz", "script_vehicle_uaz_winter_destructible" );
}
