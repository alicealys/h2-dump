// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "cobra", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0059 );
    _ID42411::_ID6216( "vehicle_cobra_helicopter", "vehicle_cobra_helicopter_fly" );
    _ID42411::_ID6216( "vehicle_cobra_helicopter_fly", "vehicle_cobra_helicopter_fly" );
    _ID42411::_ID6220( %bh_rotors, undefined, 0, 3.0 );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", 0.1 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", 0.0 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", 0.0 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_white_blink", "running", 0.4 );
    _ID42411::_ID6204( ::_unknown_0145, ::_unknown_0141 );
    _ID42411::_ID6232();
}

_ID19731()
{
    self._ID10280 = 1;
    self._ID31066 = 0;
    thread _unknown_012B();
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 12000;
    _ID52871::_ID49683();
    thread _unknown_0166();

    for (;;)
    {
        if ( !_func_02F( self._ID31138 ) || !self._ID31138 )
        {
            var_2 = _func_0F3( self._ID740, level._ID794._ID740 );

            if ( var_0 && var_2 > var_1 )
            {
                _ID52871::_ID49122( 1.0 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_2 < var_1 )
            {
                _ID52871::_ID43322();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID52871::_ID49122( 1.5 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    _ID52871::_ID49122( 1.0 );
}

_ID32509( var_0 )
{
    return var_0;
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_pilot";
    var_0[1]._ID34225 = "tag_gunner";
    var_0[0]._ID5174 = 0;
    var_0[1]._ID5174 = 0;
    var_0[0]._ID19302[0] = %helicopter_pilot1_idle;
    var_0[0]._ID19302[1] = %helicopter_pilot1_twitch_clickpannel;
    var_0[0]._ID19302[2] = %helicopter_pilot1_twitch_lookback;
    var_0[0]._ID19302[3] = %helicopter_pilot1_twitch_lookoutside;
    var_0[0]._ID19329[0] = 500;
    var_0[0]._ID19329[1] = 100;
    var_0[0]._ID19329[2] = 100;
    var_0[0]._ID19329[3] = 100;
    var_0[1]._ID19302[0] = %helicopter_pilot2_idle;
    var_0[1]._ID19302[1] = %helicopter_pilot2_twitch_clickpannel;
    var_0[1]._ID19302[2] = %helicopter_pilot2_twitch_lookoutside;
    var_0[1]._ID19302[3] = %helicopter_pilot2_twitch_radio;
    var_0[1]._ID19329[0] = 450;
    var_0[1]._ID19329[1] = 100;
    var_0[1]._ID19329[2] = 100;
    var_0[1]._ID19329[3] = 100;
    return var_0;
}
