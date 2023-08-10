// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    common_scripts\_destructible::destructible_create( "toy_filecabinet", "tag_origin", 120 );
    common_scripts\_destructible::destructible_fx( "tag_drawer_lower", "fx/props/filecabinet_dam", 1 );
    common_scripts\_destructible::destructible_sound( "exp_filecabinet" );
    common_scripts\_destructible::destructible_state( undefined, "com_filecabinetblackclosed_dam", 20, undefined, undefined, "splash" );
    common_scripts\_destructible::destructible_fx( "tag_drawer_upper", "fx/props/filecabinet_des", 1 );
    common_scripts\_destructible::destructible_sound( "exp_filecabinet" );
    common_scripts\_destructible::destructible_physics( "tag_drawer_upper", ( 50, -10, 5 ) );
    common_scripts\_destructible::destructible_state( undefined, "com_filecabinetblackclosed_des", undefined, undefined, undefined, undefined, undefined, 0 );
    common_scripts\_destructible::destructible_part( "tag_drawer_upper", "com_filecabinetblackclosed_drawer", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
