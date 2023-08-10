// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "toy_wall_fan", "tag_swivel", 0, undefined, 32 );
    common_scripts\_destructible::destructible_anim( %wall_fan_rotate, #animtree, "setanimknob", undefined, undefined, "wall_fan_rotate" );
    common_scripts\_destructible::destructible_loopsound( "wall_fan_fanning" );
    common_scripts\_destructible::destructible_state( "tag_wobble", "cs_wallfan1", 150 );
    common_scripts\_destructible::destructible_anim( %wall_fan_stop, #animtree, "setanimknob", undefined, undefined, "wall_fan_wobble" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/wallfan_explosion_dmg" );
    common_scripts\_destructible::destructible_sound( "wall_fan_sparks" );
    common_scripts\_destructible::destructible_state( "tag_wobble", "cs_wallfan1", 150, undefined, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/wallfan_explosion_des" );
    common_scripts\_destructible::destructible_sound( "wall_fan_break" );
    common_scripts\_destructible::destructible_state( undefined, "cs_wallfan1_dmg", undefined, undefined, "no_melee" );
}
