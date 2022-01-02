// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

main()
{
    _ID42231::_ID10505( "vehicle_mig29_landed", "TAG_ORIGIN", 250, undefined, 32, "splash" );
    _ID42231::_ID10544( 11 );
    _ID42231::_ID10531( "TAG_front_fire", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10531( "TAG_rear_fire", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 200, undefined, 32, "splash" );
    _ID42231::_ID10531( "TAG_front_fire", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10531( "TAG_rear_fire", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 100, undefined, 32, "splash" );
    _ID42231::_ID10531( "TAG_front_fire", "fx/smoke/airplane_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10531( "TAG_rear_fire", "fx/smoke/airplane_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10541( "fire_vehicle_flareup_med" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10528( 15, 0.25, 512, "allies" );
    _ID42231::_ID10548( undefined, undefined, 300, "player_only", 32, "splash" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 32, "splash" );
    _ID42231::_ID10517( "TAG_FX", "fx/explosions/vehicle_explosion_mig29", 0 );
    _ID42231::_ID10541( "car_explode" );
    _ID42231::_ID10512( 8000, 10000, 512, 50, 300 );
    _ID42231::_ID10493( %vehicle_mig29_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_mig29_destroy" );
    _ID42231::_ID10548( undefined, "vehicle_mig29_v2_dest", undefined, 32, "splash" );
    _ID42231::_ID10535( "TAG_COCKPIT", "vehicle_mig29_dest_cockpit", 40, undefined, undefined, undefined, undefined, 1.0 );
}
