// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("destructibles");

_ID616()
{
    _ID42231::_ID10505( "vehicle_laatpv", "tag_body", 400, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_whitesmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke", 0.4 );
    _ID42231::_ID10548( undefined, undefined, 200, undefined, 32, "no_melee" );
    _ID42231::_ID10531( "tag_hood_fx", "fx/smoke/car_damage_blacksmoke_fire", 0.4 );
    _ID42231::_ID10541( "fire_vehicle_flareup_med" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10528( 15, 0.25, 210, "allies" );
    _ID42231::_ID10548( undefined, undefined, 300, "player_only", 32, "no_melee" );
    _ID42231::_ID10532( "fire_vehicle_med" );
    _ID42231::_ID10548( undefined, undefined, 400, undefined, 32, "no_melee" );
    _ID42231::_ID10517( "tag_deathfx", "fx/explosions/vehicle_explosion_laatpv", 0 );
    _ID42231::_ID10541( "car_explode" );
    _ID42231::_ID10512( 4000, 5000, 210, 50, 300 );
    _ID42231::_ID10493( %vehicle_80s_sedan1_destroy, #animtree, "setanimknob", undefined, undefined, "vehicle_80s_sedan1_destroy" );
    _ID42231::_ID10548( undefined, "vehicle_laatpv_destroyed", undefined, 32, "no_melee" );
    _ID42231::_ID10535( "left_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_lf, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10535( "left_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_lb, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10535( "right_wheel_01_jnt", undefined, 20, undefined, undefined, "no_melee" );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_rf, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    _ID42231::_ID10535( "right_wheel_02_jnt", undefined, 20, undefined, undefined, "no_melee" );
    _ID42231::_ID10493( %vehicle_80s_sedan1_flattire_rb, #animtree, "setanim" );
    _ID42231::_ID10541( "veh_tire_deflate", "bullet" );
    var_0 = "tag_glass_front";
    _ID42231::_ID10535( var_0, undefined, 40, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_front_fx", "fx/props/car_glass_large" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10548( undefined );
    var_0 = "tag_glass_left_front";
    _ID42231::_ID10535( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_left_front_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10548( undefined );
    var_0 = "tag_glass_right_front";
    _ID42231::_ID10535( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_right_front_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10548( undefined );
    var_0 = "tag_glass_left_back";
    _ID42231::_ID10535( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_left_back_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10548( undefined );
    var_0 = "tag_glass_right_back";
    _ID42231::_ID10535( var_0, undefined, 20, undefined, undefined, undefined, undefined, undefined, 1 );
    _ID42231::_ID10548( var_0 + "_d", undefined, 60, undefined, undefined, undefined, 1 );
    _ID42231::_ID10517( "tag_glass_right_back_fx", "fx/props/car_glass_med" );
    _ID42231::_ID10541( "veh_glass_break_large" );
    _ID42231::_ID10548( undefined );
}
