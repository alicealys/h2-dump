// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_AE39::main();
    _id_CCBD::main();
    _id_AC70::main();
    common_scripts\utility::add_destructible_type_function( "toy_airconditioner", _id_C3E8::main );
    common_scripts\utility::add_destructible_type_function( "toy_ceiling_fan", _id_B265::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "toy_filecabinet", _id_D0C6::main );
    common_scripts\utility::add_destructible_type_function( "toy_firehydrant", _id_C576::main );
    common_scripts\utility::add_destructible_type_function( "toy_light_ceiling_fluorescent_single", _id_CD3E::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_01", _id_AEB7::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_02", _id_D519::main );
    common_scripts\utility::add_destructible_type_function( "toy_transformer_ratnest01", _id_CC56::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashbin_01", _id_BB2E::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashbin_02", _id_B9DA::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashcan_metal_closed", _id_D11B::main );
    common_scripts\utility::add_destructible_type_function( "toy_tubetv_tv1", _id_B97E::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_80s_sedan1_red", _id_CC79::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_80s_wagon1_yel", _id_CDAC::main );
    vehicle_scripts\_80s_hatch2::main( "vehicle_80s_hatch2_green_destructible_mp", undefined, "script_vehicle_80s_hatch2_green_destructible" );
    _id_B755::main( "vehicle_apache", undefined, "script_vehicle_apache" );
    _id_AFFA::main( "vehicle_bmp", undefined, "script_vehicle_bmp" );
    _id_B2EA::main( "vehicle_bridge_layer", undefined, "script_vehicle_bridge_layer" );
    _id_B596::main( "vehicle_f15", undefined, "script_vehicle_f15" );
    _id_C250::main( "vehicle_laatpv", "laatpv_minigun_physics", "script_vehicle_laatpv_minigun_physics" );
    _id_C250::main( "vehicle_laatpv", "laatpv_minigun_physics_player", "script_vehicle_laatpv_minigun_physics_player", "minigun_laatpv_player" );
    _id_ADB7::main( "vehicle_laatpv_opentop", "laatpv_opentop_physics", "script_vehicle_laatpv_opentop_physics" );
    _id_ADB7::main( "vehicle_laatpv", "laatpv_physics", "script_vehicle_laatpv_physics" );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_bench", undefined, "script_vehicle_littlebird_bench" );
    _id_B39F::main( "vehicle_m1a1_abrams", undefined, "script_vehicle_m1a1_abrams" );
    _id_D597::main( "vehicle_pickup_technical", "technical_physics", "script_vehicle_pickup_technical_physics" );
    _id_C8FA::main( "vehicle_stryker_desert", undefined, "script_vehicle_stryker_desert" );
    _id_C8FA::main( "vehicle_stryker_desert", "stryker_nophysics", "script_vehicle_stryker_desert_nophysics" );
}
