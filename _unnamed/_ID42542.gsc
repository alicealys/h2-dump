// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID3283( var_0, var_1 )
{
    return issubstr( var_0, "armed" ) || issubstr( var_1, "armed" );
}
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    if ( _ID3283( var_0, var_2 ) )
        _ID42508::_ID28414();

    if ( issubstr( var_2, "bench" ) )
    {
        precachemodel( "vehicle_sentinel_littlebird_benchleft" );
        precachemodel( "vehicle_sentinel_littlebird_benchright" );
    }

    _ID42411::_ID6255( "littlebird", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_ID19731 );
    _ID42411::_ID6216( "vehicle_little_bird_armed" );
    _ID42411::_ID6216( "vehicle_little_bird_bench" );

    if ( issubstr( var_2, "kva" ) || issubstr( var_2, "atlas" ) || issubstr( var_2, "sentinel" ) )
        _ID42411::_ID6220( %mil_helicopter_littlebird_ai_rotors, undefined, 0, 3.0 );
    else
        _ID42411::_ID6220( %mi28_rotors, undefined, 0, 3.0 );

    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine", "littlebird_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1 );
    _ID42411::_ID6213( "vfx/trail/trail_fire_smoke_l", "tag_engine", "littlebird_helicopter_dying_loop", 1, 0.05, 1, 0.5, 1 );
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_secondary_small", "tag_engine", undefined, undefined, undefined, undefined, 2.5, 1 );
    _ID42411::_ID6213( "vfx/explosion/vehicle_littlebird_explosion_a", undefined, "littlebird_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    _ID42411::_ID6247( "vfx/explosion/vehicle_littlebird_explosion_a", "tag_deathfx", "littlebird_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0 );
    _ID42411::_ID6217( 0.8, 1.6, 2048 );
    _ID42411::_ID6257( var_2, "default", "vfx/treadfx/heli_dust_default", undefined, "h1r_default_helicopter_wind" );
    _ID42411::_ID6233( 799 );
    _ID42411::_ID6253( "axis" );
    _ID42411::_ID6237();
    _ID42411::_ID6262( ::_ID39488 );
    _ID42411::_ID6204( ::_ID32550, ::_ID32509 );
    var_3 = randomfloatrange( 0, 1 );
    _ID42411::_ID6234( var_2, "white_blink", "TAG_LIGHT_BELLY", "vfx/lights/aircraft_light_white_blink", "running", var_3 );
    _ID42411::_ID6234( var_2, "red_blink1", "TAG_LIGHT_TAIL1", "vfx/lights/aircraft_light_red_blink", "running", var_3 );
    _ID42411::_ID6234( var_2, "red_blink2", "TAG_LIGHT_TAIL2", "vfx/lights/aircraft_light_red_blink", "running", var_3 );
    _ID42411::_ID6234( var_2, "headlight_nose", "tag_light_nose", "vfx/lights/headlight_gaz", "headlights", 0.0 );

    if ( level._ID912 == "af_chase" )
        _ID42411::_ID6248( "chopper_ride_rumble", 3, 3, 1000, 1, 1 );

    var_4 = "littlebird_gunpod";

    if ( level._ID912 == "gulag" )
        var_4 += "_gulag";

    _ID42411::_ID6261( var_4, "TAG_MINIGUN_ATTACH_LEFT", "vehicle_little_bird_minigun_left", undefined, undefined, undefined, -15 );
    _ID42411::_ID6261( var_4, "TAG_MINIGUN_ATTACH_RIGHT", "vehicle_little_bird_minigun_right", undefined, undefined, undefined, -15 );
    _ID42411::_ID6232();
    _ID42544::_ID19728();
}

_ID19731()
{
    self endon( "death" );
    self._ID26026 = distance( self gettagorigin( "tag_origin" ), self gettagorigin( "tag_ground" ) );
    self._ID31066 = 0;
    self._ID11571 = 1;
    self._ID40203 = 6;
    thread _ID42544::_ID22452();
    thread _ID3562();
    thread _ID42411::_ID40197( "running" );

    if ( issubstr( self._ID170, "sentinel" ) )
        self hidepart( "main_rotor_static_jnt" );

    waitframe;

    if ( !_ID3283( self._ID669, self._ID170 ) )
    {
        _ID42411::_ID23509();

        foreach ( var_1 in self._ID23512 )
            var_1 hide();
    }

    thread _ID42543::_ID17848();
    self._ID12396 = ::_ID22449;
    _ID42407::_ID1868( ::_ID22448 );
}

_ID33989()
{
    if ( issubstr( self._ID170, "sentinel" ) )
    {
        self hidepart( "main_rotor_static_jnt" );
        self showpart( "main_rotor_jnt" );
    }
}

_ID34035()
{
    if ( issubstr( self._ID170, "sentinel" ) )
    {
        self showpart( "main_rotor_static_jnt" );
        self hidepart( "main_rotor_jnt" );
    }
}

_ID3562()
{
    switch ( self._ID170 )
    {
        case "script_vehicle_littlebird_sentinel_bench":
        case "script_vehicle_littlebird_atlas_bench":
            self attach( "vehicle_sentinel_littlebird_benchleft", "TAG_BENCH_ATTACH_LEFT" );
            self attach( "vehicle_sentinel_littlebird_benchright", "TAG_BENCH_ATTACH_RIGHT" );
            break;
        default:
            break;
    }
}

_ID32509( var_0 )
{
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    level._ID30895["generic"]["stage_littlebird_right"] = %little_bird_premount_guy3;
    level._ID30895["generic"]["stage_littlebird_left"] = %little_bird_premount_guy3;
    var_0 = [];

    for ( var_1 = 0; var_1 < 8; var_1++ )
        var_0[var_1] = spawnstruct();

    var_0[0]._ID34225 = "tag_pilot1";
    var_0[1]._ID34225 = "tag_pilot2";
    var_0[2]._ID34225 = "tag_detach_right";
    var_0[3]._ID34225 = "tag_detach_right";
    var_0[4]._ID34225 = "tag_detach_right";
    var_0[5]._ID34225 = "tag_detach_left";
    var_0[6]._ID34225 = "tag_detach_left";
    var_0[7]._ID34225 = "tag_detach_left";
    var_0[0]._ID19302[0] = %h2_helicopter_pilot1_idle;
    var_0[0]._ID19302[1] = %h2_helicopter_pilot1_twitch_clickpannel;
    var_0[0]._ID19302[2] = %h2_helicopter_pilot1_twitch_lookoutside;
    var_0[0]._ID19302[3] = %h2_helicopter_pilot1_twitch_lookback;
    var_0[0]._ID19329[0] = 500;
    var_0[0]._ID19329[1] = 100;
    var_0[0]._ID19329[2] = 100;
    var_0[0]._ID19329[3] = 100;
    var_0[1]._ID19302[0] = %h2_helicopter_pilot2_idle;
    var_0[1]._ID19302[1] = %h2_helicopter_pilot2_twitch_clickpannel;
    var_0[1]._ID19302[2] = %h2_helicopter_pilot2_twitch_lookoutside;
    var_0[1]._ID19302[3] = %h2_helicopter_pilot2_twitch_radio;
    var_0[1]._ID19329[0] = 450;
    var_0[1]._ID19329[1] = 100;
    var_0[1]._ID19329[2] = 100;
    var_0[1]._ID19329[3] = 100;
    var_0[2]._ID19302[0] = %little_bird_casual_idle_guy1;
    var_0[3]._ID19302[0] = %little_bird_casual_idle_guy3;
    var_0[4]._ID19302[0] = %little_bird_casual_idle_guy2;
    var_0[5]._ID19302[0] = %little_bird_casual_idle_guy1;
    var_0[6]._ID19302[0] = %little_bird_casual_idle_guy3;
    var_0[7]._ID19302[0] = %little_bird_casual_idle_guy2;
    var_0[2]._ID19329[0] = 100;
    var_0[3]._ID19329[0] = 166;
    var_0[4]._ID19329[0] = 122;
    var_0[5]._ID19329[0] = 177;
    var_0[6]._ID19329[0] = 136;
    var_0[7]._ID19329[0] = 188;
    var_0[2]._ID19302[1] = %little_bird_aim_idle_guy1;
    var_0[3]._ID19302[1] = %little_bird_aim_idle_guy3;
    var_0[4]._ID19302[1] = %little_bird_aim_idle_guy2;
    var_0[5]._ID19302[1] = %little_bird_aim_idle_guy1;
    var_0[7]._ID19302[1] = %little_bird_aim_idle_guy2;
    var_0[2]._ID19329[1] = 200;
    var_0[3]._ID19329[1] = 266;
    var_0[4]._ID19329[1] = 156;
    var_0[5]._ID19329[1] = 277;
    var_0[7]._ID19329[1] = 288;
    var_0[2]._ID19303 = %little_bird_alert_idle_guy1;
    var_0[3]._ID19303 = %little_bird_alert_idle_guy3;
    var_0[4]._ID19303 = %little_bird_alert_idle_guy2;
    var_0[5]._ID19303 = %little_bird_alert_idle_guy1;
    var_0[6]._ID19303 = %little_bird_alert_idle_guy3;
    var_0[7]._ID19303 = %little_bird_alert_idle_guy2;
    var_0[2]._ID19304 = %little_bird_alert_2_aim_guy1;
    var_0[3]._ID19304 = %little_bird_alert_2_aim_guy3;
    var_0[4]._ID19304 = %little_bird_alert_2_aim_guy2;
    var_0[5]._ID19304 = %little_bird_alert_2_aim_guy1;
    var_0[6]._ID19304 = %little_bird_alert_2_aim_guy3;
    var_0[7]._ID19304 = %little_bird_alert_2_aim_guy2;
    var_0[2]._ID16491 = %little_bird_dismount_guy1;
    var_0[3]._ID16491 = %little_bird_dismount_guy3;
    var_0[4]._ID16491 = %little_bird_dismount_guy2;
    var_0[5]._ID16491 = %little_bird_dismount_guy1;
    var_0[6]._ID16491 = %little_bird_dismount_guy3;
    var_0[7]._ID16491 = %little_bird_dismount_guy2;
    var_0[2]._ID22458 = 1;
    var_0[3]._ID22458 = 1;
    var_0[4]._ID22458 = 1;
    var_0[5]._ID22458 = 1;
    var_0[6]._ID22458 = 1;
    var_0[7]._ID22458 = 1;
    var_0[2]._ID16341 = %little_bird_mount_guy1;
    var_0[2]._ID16342 = "mount_finish";
    var_0[3]._ID16341 = %little_bird_mount_guy3;
    var_0[3]._ID16342 = "mount_finish";
    var_0[4]._ID16341 = %little_bird_mount_guy2;
    var_0[4]._ID16342 = "mount_finish";
    var_0[5]._ID16341 = %little_bird_mount_guy1;
    var_0[5]._ID16342 = "mount_finish";
    var_0[6]._ID16341 = %little_bird_mount_guy3;
    var_0[6]._ID16342 = "mount_finish";
    var_0[7]._ID16341 = %little_bird_mount_guy2;
    var_0[7]._ID16342 = "mount_finish";
    var_0[2]._ID16343 = _ID42412::_ID17567;
    var_0[3]._ID16343 = _ID42412::_ID17567;
    var_0[4]._ID16343 = _ID42412::_ID17567;
    var_0[5]._ID16343 = _ID42412::_ID17567;
    var_0[6]._ID16343 = _ID42412::_ID17567;
    var_0[7]._ID16343 = _ID42412::_ID17567;
    var_0[2]._ID28338 = %little_bird_aim_2_prelanding_guy1;
    var_0[3]._ID28338 = %little_bird_aim_2_prelanding_guy3;
    var_0[4]._ID28338 = %little_bird_aim_2_prelanding_guy2;
    var_0[5]._ID28338 = %little_bird_aim_2_prelanding_guy1;
    var_0[6]._ID28338 = %little_bird_aim_2_prelanding_guy3;
    var_0[7]._ID28338 = %little_bird_aim_2_prelanding_guy2;
    var_0[2]._ID28339 = %little_bird_prelanding_idle_guy1;
    var_0[3]._ID28339 = %little_bird_prelanding_idle_guy3;
    var_0[4]._ID28339 = %little_bird_prelanding_idle_guy2;
    var_0[5]._ID28339 = %little_bird_prelanding_idle_guy1;
    var_0[6]._ID28339 = %little_bird_prelanding_idle_guy3;
    var_0[7]._ID28339 = %little_bird_prelanding_idle_guy2;
    var_0[0]._ID5174 = 0;
    var_0[1]._ID5174 = 0;
    return var_0;
}

_ID39488()
{
    var_0 = [];
    var_0["first_guy_left"] = [];
    var_0["first_guy_right"] = [];
    var_0["left"] = [];
    var_0["right"] = [];
    var_0["passengers"] = [];
    var_0["default"] = [];
    var_0["first_guy_left"][0] = 5;
    var_0["first_guy_right"][0] = 2;
    var_0["stage_guy_left"][0] = 7;
    var_0["stage_guy_right"][0] = 4;
    var_0["left"][var_0["left"].size] = 5;
    var_0["left"][var_0["left"].size] = 6;
    var_0["left"][var_0["left"].size] = 7;
    var_0["right"][var_0["right"].size] = 2;
    var_0["right"][var_0["right"].size] = 3;
    var_0["right"][var_0["right"].size] = 4;
    var_0["passengers"][var_0["passengers"].size] = 2;
    var_0["passengers"][var_0["passengers"].size] = 3;
    var_0["passengers"][var_0["passengers"].size] = 4;
    var_0["passengers"][var_0["passengers"].size] = 5;
    var_0["passengers"][var_0["passengers"].size] = 6;
    var_0["passengers"][var_0["passengers"].size] = 7;
    var_0["default"] = var_0["passengers"];
    return var_0;
}

_ID22448( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    if ( var_4 == "MOD_ENERGY" && isdefined( self._ID12396 ) )
        self thread [[ self._ID12396 ]]( var_1, var_4 );
}

_ID22449( var_0, var_1 )
{
    self endon( "death" );
    self endon( "in_air_explosion" );
    self notify( "emp_death" );
    _ID42411::_ID40196( "all" );
    self._ID40270 = 1;
    var_2 = self vehicle_getvelocity();
    var_3 = 250;

    if ( isdefined( level._ID15815 ) )
        var_4 = [[ level._ID15815 ]]();
    else
    {
        var_5 = ( self._ID740[0] + var_2[0] * 5, self._ID740[1] + var_2[1] * 5, self._ID740[2] - 2000 );
        var_4 = bullettrace( self._ID740, var_5, 0, self )["position"];
    }

    self notify( "newpath" );
    self notify( "deathspin" );
    thread _ID22446();
    var_6 = 1000;
    self vehicle_setspeed( var_6, 40, 1000 );
    self neargoalnotifydist( var_3 );
    self setvehgoalpos( var_4, 0 );
    thread _ID22447( var_4, var_3, var_6 );
    _ID42237::_ID41068( "goal", "near_goal" );
    self notify( "stop_crash_loop_sound" );
    self notify( "crash_done" );
    self._ID2831 = 1;
    self._ID12571 = 1;
    _ID42413::_ID40179( var_0, var_1 );

    if ( getdvar( "mapname" ) == "lab" )
        _ID7379();

    self kill( self._ID740, var_0 );
}

_ID7379()
{
    if ( !isdefined( level._ID29884 ) )
        level._ID29884 = 0;

    level._ID29884++;

    if ( level._ID29884 >= 10 )
        _ID42407::_ID16864( "LEVEL_10A" );
}

_ID22446()
{
    self endon( "crash_done" );
    self clearlookatent();
    self setyawspeed( 400, 100, 100 );

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        var_0 = randomintrange( 90, 120 );
        self settargetyaw( self._ID65[1] + var_0 );
        wait 0.5;
    }
}

_ID22447( var_0, var_1, var_2 )
{
    self endon( "crash_done" );
    self clearlookatent();
    self setyawspeed( 400, 100, 100 );
    var_3 = 400;
    var_4 = 100;
    var_5 = undefined;
    var_6 = 90 * randomintrange( -2, 3 );

    for (;;)
    {
        if ( self._ID740[2] < var_0[2] + var_1 )
            self notify( "near_goal" );

        wait 0.05;
    }
}

_ID18444()
{
    self endon( "crash_done" );
    self clearlookatent();
    self setyawspeed( 400, 100, 100 );

    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        var_0 = randomintrange( 90, 120 );
        self settargetyaw( self._ID65[1] + var_0 );
        wait 0.5;
    }
}
