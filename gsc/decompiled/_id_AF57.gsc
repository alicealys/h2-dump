// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "vehicle_laatpv", "tag_body", 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "fire_vehicle_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "fire_vehicle_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_deathfx", "fx/explosions/vehicle_explosion_laatpv", 0 );
    common_scripts\_destructible::destructible_sound( "car_explode" );
    common_scripts\_destructible::destructible_explode( 4000, 5000, 210, 50, 300 );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_laatpv_destroyed", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    common_scripts\_destructible::destructible_part( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_anim( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    common_scripts\_destructible::destructible_sound( "veh_tire_deflate", "bullet" );
    var_0 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_0, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_front_fx", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_glass_left_back";
    common_scripts\_destructible::destructible_part( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_0 = "tag_glass_right_back";
    common_scripts\_destructible::destructible_part( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "veh_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
}
