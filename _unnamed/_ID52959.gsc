// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

_ID45339( var_0, var_1 )
{
    _ID42231::_ID10505( "vehicle_motorcycle_" + var_0, "body_animate_jnt", 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_death_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 200, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_death_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 100, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_death_fx", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10541( "fire_vehicle_flareup_med" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10528( 15, 0.25, 128, "allies" );
    _ID42231::_ID10548( undefined, undefined, 300, "player_only", 32, "no_melee" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 32, "no_melee" );
    _ID42231::_ID10517( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 0 );
    _ID42231::_ID10541( "motorcycle_explode" );
    _ID42231::_ID10512( 3000, 4000, 128, 50, 300 );
    _ID42231::_ID10493( var_1, #animtree, "setanimknob", undefined, undefined, "vehicle_motorcycle_destroy_" + var_0 );
    _ID42231::_ID10548( undefined, "vehicle_motorcycle_" + var_0 + "_destroy", undefined, 32, "no_melee" );
    _ID42231::_ID10535( "front_wheel", "vehicle_motorcycle_01_front_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
    _ID42231::_ID10535( "rear_wheel", "vehicle_motorcycle_01_rear_wheel_d", 20, undefined, undefined, "no_melee", undefined, 1.7 );
}
