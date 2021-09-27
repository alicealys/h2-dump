// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1, var_2 )
{
    _ID42411::_ID6255( "snowmobile_player", var_0, var_1, var_2 );
    _ID42411::_ID6236( ::_unknown_0038 );
    _ID42411::_ID6216( "vehicle_snowmobile", "vehicle_snowmobile_static" );
    _ID42411::_ID6213( "fx/explosions/large_vehicle_explosion", undefined, "explo_metal_rand" );
    _ID42411::_ID6257();
    _ID42411::_ID6233( 999, 500, 1500 );
    _ID42411::_ID6204( ::_unknown_00BB, ::_unknown_00B6 );
    _ID42411::_ID6253( "allies" );
    _ID42411::_ID6252();
    _ID42411::_ID47700();

    if ( !_func_02F( anim._ID1426 ) )
        anim._ID1426 = [];

    anim._ID1426["player_snowmobile_bump"] = _func_155( "fx/treadfx/player_land_snow_snowmobile" );
}

_ID19731()
{
    self._ID52501 = 0;
    self._ID52006 = 500;
    self._ID13251 = [];
    self._ID13251["jump"] = [];
    self._ID13251["jump"]["driver"] = 0;
    thread _unknown_00C8();
    thread _unknown_00E9();
    thread _unknown_00FD();
}

_ID17700()
{
    self endon( "death" );
    var_0 = 0;
    var_1 = 1.0;
    _ID44111::_ID521();
    thread _unknown_00FE();

    for (;;)
    {
        if ( !_func_02F( self._ID31138 ) || !self._ID31138 )
        {
            if ( !var_0 )
            {
                _ID44111::_ID50252();
                var_0 = 1;
            }
        }
        else if ( var_0 )
        {
            _ID44111::_ID45992( var_1 );
            var_0 = 0;
        }

        wait 0.1;
    }
}

_ID23939()
{
    self waittill( "death" );
    var_0 = 1.0;
    _ID44111::_ID45992( var_0 );
}

_ID53917()
{
    self endon( "death" );
    waittillframeend;

    for (;;)
    {
        self waittill( "veh_leftground" );
        self._ID52501 = _func_03D();
        self._ID13251["jump"]["driver"] = 1;
        _unknown_0186( "player_snowmobile_leftground" );
        wait 0.6;
    }
}

_ID52727()
{
    self endon( "death" );
    waittillframeend;

    for (;;)
    {
        self waittill( "veh_landed" );
        self._ID13251["jump"]["driver"] = 0;
        _unknown_01B0( "player_snowmobile_bump" );
    }
}

_ID43072( var_0 )
{
    if ( _func_02F( anim._ID1426[var_0] ) )
        _func_157( anim._ID1426[var_0], self, "tag_deathfx" );
}

_ID32509( var_0 )
{
    return var_0;
}

_ID32550()
{
    var_0 = [];

    for ( var_1 = 0; var_1 < 2; var_1++ )
        var_0[var_1] = _func_1A5();

    var_0[0]._ID16493 = 1;
    var_0[0]._ID34225 = "tag_driver";
    var_0[1]._ID34225 = "tag_passenger";
    return var_0;
}
