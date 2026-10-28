// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_B238( var_0 )
{
    common_scripts\_destructible::destructible_create( "vehicle_mack_truck_short_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 200, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 100, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_hood_fx", "fx/smoke/mack_truck_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_loopfx( "tag_gastank", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_sound( "mack_truck_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "mack_truck_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 15, 0.25, 300, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, "player_only", 32, "no_melee" );
    common_scripts\_destructible::destructible_loopsound( "mack_truck_fire_med" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_gastank", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    common_scripts\_destructible::destructible_fx( "tag_cab_fire", "fx/fire/firelp_med_pm" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/propane_large_exp", 0 );
    common_scripts\_destructible::destructible_sound( "mack_truck_explode" );
    common_scripts\_destructible::destructible_loopsound( "mack_truck_fire_med" );
    common_scripts\_destructible::destructible_explode( 8000, 10000, 512, 100, 400 );
    common_scripts\_destructible::destructible_state( undefined, "vehicle_mack_truck_short_" + var_0 + "_destroy", undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_part( "left_wheel_01_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
    common_scripts\_destructible::destructible_part( "left_wheel_02_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 81.0 );
    common_scripts\_destructible::destructible_part( "left_wheel_03_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
    common_scripts\_destructible::destructible_part( "tag_door_left_front", "vehicle_mack_truck_short_" + var_0 + "_door_lf", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_front_fx", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "mack_truck_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_back";
    common_scripts\_destructible::destructible_part( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_back_fx", "fx/props/car_glass_large" );
    common_scripts\_destructible::destructible_sound( "mack_truck_glass_break_large" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_left_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "mack_truck_glass_break_small" );
    common_scripts\_destructible::destructible_state( undefined );
    var_1 = "tag_glass_right_front";
    common_scripts\_destructible::destructible_part( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_state( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    common_scripts\_destructible::destructible_fx( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    common_scripts\_destructible::destructible_sound( "mack_truck_glass_break_small" );
    common_scripts\_destructible::destructible_state( undefined );
}
