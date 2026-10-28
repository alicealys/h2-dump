// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    _id_AE39::main();
    _id_D42D::main();
    _id_AC70::main();
    common_scripts\utility::add_destructible_type_function( "toy_airconditioner", _id_C3E8::main );
    common_scripts\utility::add_destructible_type_function( "toy_ceiling_fan", _id_B265::main );
    common_scripts\utility::add_destructible_type_function( "toy_chicken_black_white", _id_C485::main );
    common_scripts\utility::add_destructible_type_function( "toy_chicken_white", _id_ADD9::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox2", _id_CE57::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_01", _id_AEB7::main );
    common_scripts\utility::add_destructible_type_function( "toy_oxygen_tank_02", _id_D519::main );
    common_scripts\utility::add_destructible_type_function( "toy_transformer_ratnest01", _id_CC56::main );
    common_scripts\utility::add_destructible_type_function( "toy_transformer_small01", _id_AE59::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashbin_02", _id_B9DA::main );
    common_scripts\utility::add_destructible_type_function( "toy_trashcan_metal_closed", _id_D11B::main );
    common_scripts\utility::add_destructible_type_function( "toy_tubetv_tv2", _id_C475::main );
    common_scripts\utility::add_destructible_type_function( "toy_water_collector", _id_B7EE::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_80s_hatch1_red", _id_AFC7::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_80s_wagon1_silv", _id_BA57::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_pickup", destructible_scripts\vehicle_pickup::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_small_hatch_blue", _id_D1A9::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_small_hatch_green", _id_B8C8::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_small_hatch_turq", _id_ACB6::main );
    _id_C4E9::main();
    _id_B92B::main();
    _id_A90E::main();
    _id_B910::main();
    _id_D1F2::main();
    _id_AD46::main();
    _id_C600::main();
    _id_BBC8::main( "vehicle_pavelow", undefined, "script_vehicle_pavelow" );
    _id_D597::main( "vehicle_pickup_technical", undefined, "script_vehicle_pickup_technical" );
    _id_D597::main( "vehicle_pickup_technical", "technical_physics", "script_vehicle_pickup_technical_physics" );
    _id_D597::main( "vehicle_pickup_technical", "technical_physics_high_accel", "script_vehicle_pickup_technical_physics_high_accel" );
}
