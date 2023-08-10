// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "toy_airconditioner", "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( %ex_airconditioner_fan, #animtree, "setanimknob", undefined, undefined, "ex_airconditioner_fan" );
    common_scripts\_destructible::destructible_loopsound( "airconditioner_running_loop" );
    common_scripts\_destructible::destructible_state( "tag_origin", "com_ex_airconditioner", 300 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/airconditioner_ex_explode", undefined );
    common_scripts\_destructible::destructible_sound( "airconditioner_burst" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 32, 48 );
    common_scripts\_destructible::destructible_state( undefined, "com_ex_airconditioner_dam", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", "com_ex_airconditioner_fan", undefined, undefined, undefined, undefined, 1.0, 1.0 );
}
