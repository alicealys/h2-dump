// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\utility::add_destructible_type_function( "toy_copier", _id_C6AE::main );
    common_scripts\utility::add_destructible_type_function( "toy_electricbox4", destructible_scripts\toy_electricbox4::main );
    common_scripts\utility::add_destructible_type_function( "toy_filecabinet", _id_D0C6::main );
    common_scripts\utility::add_destructible_type_function( "toy_firehydrant", _id_C576::main );
    common_scripts\utility::add_destructible_type_function( "toy_newspaper_stand_blue", _id_B4E0::main );
    common_scripts\utility::add_destructible_type_function( "toy_newspaper_stand_red", _id_C95E::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_policecar", _id_AA16::main );
    common_scripts\utility::add_destructible_type_function( "vehicle_van_white", _id_CBE4::main );
    _id_B3FB::main( "vehicle_btr80_low", undefined, "script_vehicle_btr80_low" );
    vehicle_scripts\_mi17::main( "vehicle_mi17_woodland_fly_cheap", undefined, "script_vehicle_mi17_woodland_fly_cheap" );
    _id_D59F::main( "vehicle_mi-28_flying_low", undefined, "script_vehicle_mi28_flying_low" );
    vehicle_scripts\_mig29::main( "vehicle_mig29_desert", undefined, "script_vehicle_mig29_low" );
}
