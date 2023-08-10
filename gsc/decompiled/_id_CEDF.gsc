// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

_id_B11B( var_0, var_1 )
{
    common_scripts\_destructible::destructible_create( "vehicle_motorcycle_" + var_0, "body_animate_jnt", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 128, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 0 );
    common_scripts\_destructible::destructible_sound( "motorcycle_explode" );
    common_scripts\_destructible::destructible_explode( 3000, 4000, 128, 50, 300 );
    common_scripts\_destructible::destructible_anim( var_1, #animtree, "setanimknob", undefined, undefined, "vehicle_motorcycle_destroy_" + var_0 );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_motorcycle_" + var_0 + "_destroy", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "front_wheel", "vehicle_motorcycle_01_front_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    common_scripts\_destructible::destructible_part( "rear_wheel", "vehicle_motorcycle_01_rear_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
}
