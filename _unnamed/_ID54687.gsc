// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool
#using_animtree("vehicles");

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "mi28", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0082 );
    _ID42411::_ID6216( "vehicle_mi-28_flying" );
    _ID42411::_ID6216( "vehicle_mi-28_flying_low" );
    _ID42411::_ID6220( %mi28_rotors, undefined, 0, 3.0 );
    _ID42411::_ID6213( "vfx/fire/mi28_cabin_damaged_fire_smoke", "tag_deathfx", undefined, undefined, undefined, undefined, 0.2, 1 );
    _ID42411::_ID6213( "vfx/explosion/helicopter_explosion_secondary_small", "tag_engine_left", "havoc_helicopter_secondary_exp", undefined, undefined, undefined, 0.0, 1 );
    _ID42411::_ID6213( "fx/fire/fire_smoke_trail_L_small", "tail_rotor_jnt", "havoc_helicopter_dying_loop", 1, 0.07, 1, 0.5, 1 );
    _ID42411::_ID6213( "vfx/explosion/helicopter_explosion_secondary_small", "tag_engine_right", "havoc_helicopter_secondary_exp", undefined, undefined, undefined, 2.5, 1 );
    _ID42411::_ID6213( "fx/explosions/helicopter_explosion_mi28_flying", undefined, "havoc_helicopter_crash", undefined, undefined, undefined, -1, undefined, "stop_crash_loop_sound" );
    _ID42411::_ID6247( "fx/explosions/aerial_explosion_mi28_flying", "tag_deathfx", "havoc_helicopter_crash", undefined, undefined, undefined, undefined, 1, undefined, 0 );
    _ID42411::_ID6217( 0.8, 1.6, 2048 );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6237();
    _ID42411::_ID6204( ::_unknown_0194, ::_unknown_0164 );
    var_3 = _func_0BA( 0, 1 );
    _ID42411::_ID6234( var_2, "wingtip_green", "tag_light_L_wing", "fx/misc/aircraft_light_wingtip_green", "running", var_3 );
    _ID42411::_ID6234( var_2, "wingtip_red", "tag_light_R_wing", "fx/misc/aircraft_light_wingtip_red", "running", var_3 );
    _ID42411::_ID6234( var_2, "white_blink", "tag_light_belly", "fx/misc/aircraft_light_white_blink", "running", var_3 );
    _ID42411::_ID6234( var_2, "white_blink_tail", "tag_light_tail", "fx/misc/aircraft_light_red_blink", "running", var_3 );
}

_ID19731()
{
    self._ID31066 = 0;
    self._ID50876 = 1;
    _ID42411::_ID40197( "running" );
    thread _unknown_01DA();
}

_ID32509( var_0 )
{
    return var_0;
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 12000;
    _ID43572::_ID53301();
    thread _unknown_0219();

    for (;;)
    {
        if ( !_func_02F( self._ID31138 ) || !self._ID31138 )
        {
            var_2 = _func_0F3( self._ID740, level._ID794._ID740 );

            if ( var_0 && var_2 > var_1 )
            {
                _ID43572::_ID47184( 1.0 );
                var_0 = 0;
                wait 0.1;
            }
            else if ( !var_0 && var_2 < var_1 )
            {
                _ID43572::_ID48477();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID43572::_ID47184( 1.0 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    _ID43572::_ID47184( 1.0 );
}
#using_animtree("generic_human");

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID34225 = "tag_pilot";
    var_0[1]._ID34225 = "tag_gunner";
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
    var_0[0]._ID5174 = 0;
    var_0[1]._ID5174 = 0;
    return var_0;
}
