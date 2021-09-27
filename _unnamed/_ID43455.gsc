// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID45624( var_0 )
{
    _ID42231::_ID10505( "vehicle_mack_truck_short_" + var_0, "tag_body", 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 200, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 100, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/mack_truck_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10531( "tag_gastank", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10541( "mack_truck_flareup_med" );
    _ID42231::_ID10532( "mack_truck_fire_med" );
    _ID42231::_ID10528( 15, 0.25, 300, "allies" );
    _ID42231::_ID10548( undefined, undefined, 300, "player_only", 32, "no_melee" );
    _ID42231::_ID10532( "mack_truck_fire_med" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_gastank", "fx/smoke/motorcycle_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10517( "tag_cab_fire", "fx/fire/firelp_med_pm" );
    _ID42231::_ID10517( "tag_death_fx", "fx/explosions/propane_large_exp", 0 );
    _ID42231::_ID10541( "mack_truck_explode" );
    _ID42231::_ID10532( "mack_truck_fire_med" );
    _ID42231::_ID10512( 8000, 10000, 512, 100, 400 );
    _ID42231::_ID10548( undefined, "vehicle_mack_truck_short_" + var_0 + "_destroy", undefined, 32, "no_melee" );
    _ID42231::_ID10535( "left_wheel_01_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
    _ID42231::_ID10535( "left_wheel_02_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 81.0 );
    _ID42231::_ID10535( "left_wheel_03_jnt", "vehicle_mack_truck_short_" + var_0 + "_wheel_lf", 20, undefined, undefined, "no_melee", undefined, 8.0 );
    _ID42231::_ID10535( "tag_door_left_front", "vehicle_mack_truck_short_" + var_0 + "_door_lf", undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_1 = "tag_glass_front";
    _ID42231::_ID10535( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_front_fx", "fx/props/car_glass_large" );
    _ID42231::_ID10541( "mack_truck_glass_break_large" );
    _ID42231::_ID10548( undefined );
    var_1 = "tag_glass_back";
    _ID42231::_ID10535( var_1, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_back_fx", "fx/props/car_glass_large" );
    _ID42231::_ID10541( "mack_truck_glass_break_large" );
    _ID42231::_ID10548( undefined );
    var_1 = "tag_glass_left_front";
    _ID42231::_ID10535( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "mack_truck_glass_break_small" );
    _ID42231::_ID10548( undefined );
    var_1 = "tag_glass_right_front";
    _ID42231::_ID10535( var_1, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_1 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "mack_truck_glass_break_small" );
    _ID42231::_ID10548( undefined );
}
