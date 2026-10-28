// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_parkingmeter", "tag_meter", 120 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/parking_meter_coins", 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/props/parking_meter_coins_exploded", 1 );
    common_scripts\_destructible::destructible_sound( "exp_parking_meter_sweet" );
    common_scripts\_destructible::destructible_explode( 2800, 3000, 64, 0, 0 );
    common_scripts\_destructible::destructible_state( undefined, "com_parkingmeter_damaged", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_state( undefined, "com_parkingmeter_destroyed", undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_part( "tag_cap", "com_parkingmeter_cap", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
