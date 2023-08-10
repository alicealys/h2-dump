// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "toy_light_ceiling_fluorescent", "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/misc/light_fluorescent_blowout_runner" );
    common_scripts\_destructible::destructible_fx( "tag_swing_fx", "fx/misc/light_blowout_swinging_runner" );
    common_scripts\_destructible::destructible_explode( 20, 2000, 64, 40, 80 );
    common_scripts\_destructible::destructible_anim( %light_fluorescent_swing, #animtree, "setanimknob", undefined, 0, "light_fluorescent_swing" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 0 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 0 );
    common_scripts\_destructible::destructible_anim( %light_fluorescent_swing_02, #animtree, "setanimknob", undefined, 1, "light_fluorescent_swing_02" );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_fall", undefined, 1 );
    common_scripts\_destructible::destructible_sound( "fluorescent_light_bulb", undefined, 1 );
    common_scripts\_destructible::destructible_anim( %light_fluorescent_null, #animtree, "setanimknob", undefined, 2, "light_fluorescent_null" );
    common_scripts\_destructible::destructible_state( undefined, "me_lightfluohang_double_destroyed", undefined, undefined, "no_melee" );
}
