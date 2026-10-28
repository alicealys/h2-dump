// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

#using_animtree("destructibles");

main()
{
    common_scripts\_destructible::destructible_create( "destructible_gaspump", "tag_origin", 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_splash_damage_scaler( 15 );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 150, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    common_scripts\_destructible::destructible_state( undefined, undefined, 250, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/fire/gas_pump_fire_damage", 0.4 );
    common_scripts\_destructible::destructible_sound( "gaspump01_flareup_med" );
    common_scripts\_destructible::destructible_loopsound( "gaspump01_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 300, undefined, 32, "no_melee" );
    common_scripts\_destructible::destructible_loopfx( "tag_death_fx", "fx/fire/gas_pump_fire_damage", 0.4 );
    common_scripts\_destructible::destructible_loopsound( "gaspump01_fire_med" );
    common_scripts\_destructible::destructible_healthdrain( 12, 0.2, 210, "allies" );
    common_scripts\_destructible::destructible_sound( "gaspump01_flareup_med" );
    common_scripts\_destructible::destructible_loopfx( "tag_fx", "fx/fire/gas_pump_fire_handle", 0.0 );
    common_scripts\_destructible::destructible_anim( %gaspump01_hose, #animtree, "setanimknob", undefined, undefined, "gaspump01_hose" );
    common_scripts\_destructible::destructible_state( undefined, undefined, 400, undefined, 5, "no_melee" );
    common_scripts\_destructible::destructible_fx( "tag_death_fx", "fx/explosions/gas_pump_exp", 0 );
    common_scripts\_destructible::destructible_sound( "gaspump01_explode" );
    common_scripts\_destructible::destructible_explode( 6000, 8000, 210, 50, 300 );
    common_scripts\_destructible::destructible_state( undefined, "furniture_gaspump01_destroyed", undefined, undefined, "no_melee" );
    common_scripts\_destructible::destructible_part( "tag_panel_front01", "furniture_gaspump01_panel01", 80, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_front02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_front03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_sound( "exp_gaspump_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_panel_front03", "fx/props/electricbox4_explode" );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_back01", "furniture_gaspump01_panel01", 110, undefined, undefined, undefined, 1.0, 1.0, undefined, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_back02", "furniture_gaspump01_panel02", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_physics();
    common_scripts\_destructible::destructible_part( "tag_panel_back03", "furniture_gaspump01_panel03", 40, undefined, undefined, undefined, 1.0, 1.0 );
    common_scripts\_destructible::destructible_sound( "exp_gaspump_sparks" );
    common_scripts\_destructible::destructible_fx( "tag_panel_back03", "fx/props/electricbox4_explode" );
    common_scripts\_destructible::destructible_physics();
}
