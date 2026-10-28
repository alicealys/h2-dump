// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_mack_truck_short_green", _id_B41C::main );
    _id_B3FB::main( "vehicle_btr80", "btr80_physics_boneyard", "script_vehicle_btr80_physics_boneyard" );
    _id_B008::main( "vehicle_ac130_low", "c130", "script_vehicle_c130" );
    _id_C250::main( "vehicle_laatpv", undefined, "script_vehicle_laatpv_minigun" );
    _id_ADB7::main( "vehicle_laatpv_opentop", "laatpv_physics", "script_vehicle_laatpv_opentop_boneyard_physics" );
    vehicle_scripts\_littlebird::main( "vehicle_little_bird_armed", undefined, "script_vehicle_littlebird_armed" );
    _id_BE7B::main( "vehicle_pickup_roobars", "truck_physics", "script_vehicle_pickup_roobars_physics" );
    _id_ADD8::main( "vehicle_suburban", undefined, "script_vehicle_suburban" );
    _id_D3FE::main( "vehicle_suburban_technical", undefined, "script_vehicle_suburban_minigun_technical" );
    _id_C782::main( "h2_vehicle_uaz_viewmodel", "uaz_physics", "script_vehicle_uaz_open_destructible" );
}
