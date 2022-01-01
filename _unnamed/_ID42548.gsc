// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "mi17_noai", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_mi17_woodland" );
    _ID42411::_ID6216( "vehicle_mi17_woodland_fly" );
    _ID42411::_ID6216( "vehicle_mi17_woodland_fly_cheap" );
    var_3 = [];
    var_3["vehicle_mi17_woodland"] = "fx/explosions/helicopter_explosion_mi17_woodland";
    var_3["vehicle_mi17_woodland_fly"] = "fx/explosions/helicopter_explosion_mi17_woodland_low";
    var_3["vehicle_mi17_woodland_fly_cheap"] = "fx/explosions/helicopter_explosion_mi17_woodland_low";
    var_3["vehicle_mi-28_flying"] = "fx/explosions/helicopter_explosion_mi17_woodland_low";
    _ID42411::_ID6213( "vfx/fire/fire_helicopter_engine", "tag_engine_right", undefined, 1, undefined, undefined, 1.05, 1 );
    _ID42411::_ID6213( "vfx/fire/fire_helicopter_engine", "tag_engine_left", undefined, 1, 1.05, undefined, 1.05, 1 );
    _ID42411::_ID6213( "vfx/explosion/vehicle_mi17_flames_crashing_runner", "tag_deathfx", "mi17_helicopter_dying_loop", 1, 1.05, 1, 0.0, 1 );
    _ID42411::_ID6213( "vfx/explosion/vehicle_mi17_smoke_crashing_runner", "tag_deathfx", undefined, 1, 1.05, undefined, 3.5, 1 );
    _ID42411::_ID6213( "vfx/explosion/vehicle_mi17_aerial_explosion", "tag_deathfx", "mi17_helicopter_hit", undefined, undefined, undefined, 0.05, 1 );
    _ID42411::_ID6213( "vfx/explosion/vehicle_mi17_aerial_second_explosion", "tag_deathfx", "mi17_helicopter_secondary_exp", undefined, undefined, undefined, 3.5, 1 );
    _ID42411::_ID6213( var_3[var_0], undefined, "mi17_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    _ID42411::_ID6220( %mi17_heli_rotors, undefined, 0 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "tank_rumble", 0.15, 4.5, 600, 1, 1 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6234( var_2, "cockpit_blue_cargo01", "tag_light_cargo01", "fx/misc/aircraft_light_cockpit_red", "interior", 0.0 );
    _ID42411::_ID6234( var_2, "cockpit_blue_cockpit01", "tag_light_cockpit01", "fx/misc/aircraft_light_cockpit_blue", "interior", 0.1 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", 0.0 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", 0.3 );
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0.0 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.0 );
    _ID42411::_ID6232();
    _ID47509();
}

_ID19731()
{
    self._ID26026 = distance( self gettagorigin( "tag_origin" ), self gettagorigin( "tag_ground" ) );
    self._ID13954 = 710;
    self._ID31066 = 0;
    _ID42411::_ID40197( "running" );
    _ID42411::_ID40197( "interior" );
}

_ID47509()
{
    var_0 = spawnstruct();
    var_0._ID3197 = [];
    var_0._ID3197 = _ID42237::_ID3293( var_0._ID3197, %mi17_heli_hitreact_flyin_01 );
    var_0._ID3197 = _ID42237::_ID3293( var_0._ID3197, %mi17_heli_hitreact_flyin_02 );
    var_0._ID53560 = 1;
    _ID42411::_ID6212( var_0 );
    var_1 = spawnstruct();
    var_1._ID3197 = [];
    var_1._ID3197 = _ID42237::_ID3293( var_1._ID3197, %mi17_heli_hitreact_front );
    var_1._ID3197 = _ID42237::_ID3293( var_1._ID3197, %mi17_heli_hitreact_rear );
    var_1._ID3197 = _ID42237::_ID3293( var_1._ID3197, %mi17_heli_hitreact_left );
    var_1._ID3197 = _ID42237::_ID3293( var_1._ID3197, %mi17_heli_hitreact_right );
    var_1._ID47124 = 1;
    var_1._ID53560 = 1;
    _ID42411::_ID6212( var_1, "unloading" );
    var_2 = spawnstruct();
    var_2._ID3197 = [];
    var_2._ID3197 = _ID42237::_ID3293( var_2._ID3197, %mi17_heli_hitreact_left );
    var_2._ID3197 = _ID42237::_ID3293( var_2._ID3197, %mi17_heli_hitreact_right );
    var_2._ID47124 = 1;
    var_2._ID53560 = 1;
    _ID42411::_ID6212( var_2, "unloaded" );
}
