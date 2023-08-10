// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "toy_generator", "tag_bounce", 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 75, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx2", "fx/smoke/generator_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx4", "fx/explosions/generator_spark_runner", 0.9 );
    common_scripts\_destructible::destructible_loopfx( "tag_fx3", "fx/explosions/generator_spark_runner", 0.6123 );
    common_scripts\_destructible::destructible_loopsound( "generator_spark_loop" );
    common_scripts\_destructible::destructible_healthdrain( 24, 0.2, 64, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/explosions/generator_explosion", 1 );
    common_scripts\_destructible::destructible_fx( "tag_fx", "fx/fire/generator_des_fire", 1 );
    common_scripts\_destructible::destructible_sound( "generator01_explode" );
    common_scripts\_destructible::destructible_explode( 7000, 8000, 128, 16, 50 );
    common_scripts\_destructible::destructible_anim( %generator_explode, #animtree, "setanimknob", undefined, undefined, "generator_explode" );
    common_scripts\_destructible::destructible_state( undefined, "machinery_generator_des", undefined, undefined, "no_melee" );
}
