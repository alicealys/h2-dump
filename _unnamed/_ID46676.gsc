// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "antonov", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0052 );
    _ID42411::_ID6216( "vehicle_antonov_fly" );
    _unknown_00B1( "antonov_engine", "fx/fire/jet_engine_anatov" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6248( "mig_rumble", 0.1, 0.2, 11300, 0.05, 0.05 );
    _ID42411::_ID6253( "allies" );
    var_3 = _func_0BA( 0, 1 );
    _ID42411::_ID6234( var_2, "wingtip_green", "TAG_LEFT_WINGTIP", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    _ID42411::_ID6234( var_2, "wingtip_red", "TAG_RIGHT_WINGTIP", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    _ID42411::_ID6234( var_2, "tail_red", "TAG_TAIL", "fx/misc/aircraft_light_white_blink", "running", var_3 );
    _ID42411::_ID6234( var_2, "white_blink", "TAG_LIGHT_BELLY", "fx/misc/aircraft_light_red_blink", "running", var_3 );
}

_ID19731()
{
    thread _unknown_010B();
    thread _unknown_0138();
    _ID42407::_ID10226( 0.05, _ID42411::_ID40197, "running" );
}

_ID27206()
{
    self endon( "death" );
    self endon( "stop_engineeffects" );
    _ID42407::_ID13024( "engineeffects" );
    _ID42407::_ID13025( "engineeffects" );
    var_0 = _ID42237::_ID16299( "antonov_engine" );

    for (;;)
    {
        _ID42407::_ID13027( "engineeffects" );
        _func_157( var_0, self, "tag_engine_right" );
        _func_157( var_0, self, "tag_engine_right_2" );
        _func_157( var_0, self, "tag_engine_left" );
        _func_157( var_0, self, "tag_engine_left_2" );
        _ID42407::_ID13031( "engineeffects" );
        _func_158( var_0, self, "tag_engine_left" );
        _func_158( var_0, self, "tag_engine_left_2" );
        _func_158( var_0, self, "tag_engine_right" );
        _func_158( var_0, self, "tag_engine_right_2" );
    }
}
#using_animtree("vehicles");

_ID43086()
{
    level._ID30900["antonov"] = #animtree;
    level._ID30895["antonov"]["close_hatch"] = %h2_antonov_door_close;
    self._ID3189 = "antonov";
    _ID42259::_ID32556();
    thread _ID42259::_ID3018( self, "close_hatch" );
}

_ID44721( var_0, var_1 )
{
    if ( !_func_02F( level._ID46040 ) )
        level._ID46040 = [];

    level._ID46040[var_0] = var_1;
}

_ID51801( var_0, var_1 )
{
    if ( _func_02F( level._ID46040 ) && _func_02F( level._ID46040[var_0] ) )
        var_1 = level._ID46040[var_0];

    level._ID1426[var_0] = _func_155( var_1 );
}
