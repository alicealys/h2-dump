// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

_ID43388( var_0, var_1 )
{
    _ID42231::_ID10505( var_0, "tag_body", 250, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined, undefined, 200, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 100, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10541( "fire_vehicle_flareup_med" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10528( 12, 0.2, 210, "allies" );
    _ID42231::_ID10548( undefined, undefined, 300, "player_only", 32, "no_melee" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 32, "no_melee" );
    _ID42231::_ID10517( "tag_death_fx", "fx/explosions/small_vehicle_explosion", 1 );
    _ID42231::_ID10541( "car_explode" );
    _ID42231::_ID10512( 4000, 5000, 300, 50, 300 );
    _ID42231::_ID10493( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    _ID42231::_ID10548( undefined, "vehicle_suburban_destroyed" + var_1, undefined, 32, "no_melee" );
    _ID42231::_ID10535( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10503();
    _ID42231::_ID10535( "right_wheel_01_jnt", "vehicle_suburban_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10503();
    _ID42231::_ID10535( "left_wheel_02_jnt", "vehicle_suburban_wheel_rf", 20, undefined, undefined, "no_melee", undefined, 2.3 );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10503();
    _ID42231::_ID10535( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10503();
    _ID42231::_ID10535( "tag_door_left_back", "vehicle_suburban_door_lb" + var_1, undefined, undefined, undefined, undefined, 1.0, 1.0 );
    var_2 = "tag_glass_front";
    _ID42231::_ID10535( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_large" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_back";
    _ID42231::_ID10535( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_large" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_center_glass";
    _ID42231::_ID10535( var_2, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_large" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_left_front";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_right_front";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_left_back";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_right_back";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2 + "_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_left_back_02";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_left_back_02_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_glass_right_back_02";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_right_back_02_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( undefined );
    var_2 = "tag_light_left_front";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, 0.5 );
    _ID42231::_ID10517( var_2, "fx/props/car_glass_headlight" );
    _ID42231::_ID10541( "veh_glass_break_small" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( var_2 + "_d" );
    var_2 = "tag_light_right_front";
    _ID42231::_ID10535( var_2, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_2 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( var_2, "fx/props/car_glass_headlight" );
    _ID42231::_ID10541( "veh_glass_break_small" );
    _ID42231::_ID10503();
    _ID42231::_ID10548( var_2 + "_d" );
}
