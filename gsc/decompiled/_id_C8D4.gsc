// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "toy_ceiling_fan_blades01", "tag_origin", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( %me_fanceil1_spin, #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin" );
    common_scripts\_destructible::destructible_state( "tag_origin", "h2_us_ceiling_fan_blades_01_animated", 150 );
    common_scripts\_destructible::destructible_anim( %me_fanceil1_spin_stop, #animtree, "setanimknob", undefined, undefined, "me_fanceil1_spin_stop" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/h2_us_ceiling_fan_01_dest" );
    common_scripts\_destructible::destructible_sound( "ceiling_fan_blades" );
    common_scripts\_destructible::destructible_explode( 1000, 2000, 32, 5, 32 );
    common_scripts\_destructible::destructible_state( undefined, "h2_us_ceiling_fan_blades_01_dest_animated", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_fx", undefined, 150, undefined, undefined, undefined, 1.0 );
}
