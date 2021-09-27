// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID47580()
{
    _ID42407::_ID1892( "axis", ::_unknown_0014 );
    var_0 = _func_0DE( "axis" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];
        var_2 _unknown_0039();
    }

    var_clear_2
    var_clear_0
}

_ID24832()
{
    self._ID464 = 0;
}

_ID54735()
{
    thread _unknown_0094();
    _ID51260::_ID46928();
    _unknown_0043();
    level._ID44434 = 1;
    _ID42237::_ID14413( "player_on_boat" );
    level._ID22610 = 2000;

    if ( level._ID794._ID266 > 2000 )
        level._ID794._ID266 = 2000;

    var_0 = level._ID46392;

    if ( _func_03A( "zodiac_passby_system" ) )
        var_0 thread maps\af_chase_aud::_ID45496();

    level._ID794 thread _ID51260::_ID44064( var_0._ID740 );
    _ID42237::_ID14413( "exit_caves" );
    level._ID794._ID4878 = 1;
    level._ID512 = 1;
    level._ID11635 = 0;
    level._ID4449 = 0;
    level._ID47297 = 0;
    thread _unknown_00E6();
}

_ID53275()
{
    self waittill( "trigger" );
    var_0 = _func_1F2( self._ID1191, "targetname" );
    level._ID794._ID40065._ID1274 = "follow";
    level._ID794._ID40065 _meth_8289( var_0 );
}

_ID46460()
{
    if ( _ID42237::_ID14385( "enemy_zodiacs_wipe_out" ) )
        return;

    level endon( "enemy_zodiacs_wipe_out" );
    var_0 = 3;
    wait 2;

    for (;;)
    {
        thread _ID51260::_ID46156();
        wait(var_0);
        var_0 -= 0.5;

        if ( var_0 < 0.5 )
            var_0 = 0.5;
    }
}

_ID51949()
{
    self waittill( "trigger" );
    _ID42237::_ID14402( "enemy_zodiacs_wipe_out" );
}

_ID50892()
{
    _ID42237::_ID14413( "enemy_zodiacs_wipe_out" );
    var_0 = level._ID52919;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1 thread _unknown_0193();
    }

    var_clear_2
    var_clear_0
}

_ID43503()
{
    self endon( "death" );
    thread _unknown_01B2();
    wait(_func_0BA( 2, 4 ));

    if ( !_func_02F( self ) )
        return;

    self._ID41798 = 1;
    thread _unknown_01D3();
}

_ID43709()
{
    var_0 = _ID42237::_ID16299( "heli_crash_fire_short_smoke" );
    _func_157( var_0, self, "tag_motor_fx" );

    for (;;)
    {
        if ( self._ID41798 )
        {
            _func_159( var_0, self, "tag_motor_fx" );
            return;
        }

        wait 0.05;
    }
}

_ID46247()
{
    var_0 = _ID42237::_ID16299( "rocket_explosion_water_af_chase" );
    var_1 = _ID42237::_ID16299( "rocket_hits_heli" );
    var_2 = self _meth_818C( "tag_origin" ) - ( 0, 0, 64 ) + _ID42237::_ID28978( -16, 16 );
    _func_074( "fraggrenade", self _meth_818C( "tag_guy2" ), self _meth_818C( "tag_guy2" ), 0, 0 );
    _func_157( var_1, self, "tag_motor_fx" );
    _func_157( var_0, self, "tag_origin" );
    _func_184( var_2, 64, 64, 2 );
}
