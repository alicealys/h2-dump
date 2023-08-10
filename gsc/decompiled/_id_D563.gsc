// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_D44C( var_0 )
{
    common_scripts\_destructible::destructible_create( "toy_oxygen_tank_" + var_0, "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 64, "allies" );
    common_scripts\_destructible::destructible_loopsound( "oxygen_tank_leak_loop" );
    common_scripts\_destructible::destructible_fx( "tag_cap", "fx/props/oxygen_tank" + var_0 + "_cap" );
    common_scripts\_destructible::destructible_loopfx( "tag_cap", "fx/distortion/oxygen_tank_leak", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, "machinery_oxygen_tank" + var_0 + "_dam", 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/oxygen_tank" + var_0 + "_explosion", 0 );
    common_scripts\_destructible::destructible_sound( "oxygen_tank_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 150, 16, 150 );
    common_scripts\_destructible::destructible_state( undefined, "machinery_oxygen_tank" + var_0 + "_des", undefined, undefined, "no_melee" );
}
