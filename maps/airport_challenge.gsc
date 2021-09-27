// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52260()
{
    _ID42237::_ID14400( "game_type_challenge" );
}

_ID47484()
{
    _ID42407::_ID1892( "axis", ::_unknown_0060 );
    _ID42407::_ID1892( "allies", ::_unknown_006B );
    _unknown_0048();
    _ID42407::_ID1801( "tarmac_enemies_wave1", "target" );
    var_0 = level._ID805;

    for ( var_2 = _func_1DA( var_0 ); _func_02F( var_2 ); var_2 = _func_1BF( var_0, var_2 ) )
    {
        var_1 = var_0[var_2];
        var_1._ID626 = 100;
        var_1._ID486 = 100;
    }

    var_clear_2
    var_clear_0
    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "tarmac_start_nodes", "targetname" ) );
    thread maps\airport::_ID54182();
}

_ID47032()
{
    _ID42237::_ID14402( "game_type_challenge" );
    _ID42237::_ID3350( _func_1A2( "team", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID48925 );
    _ID42237::_ID3350( _func_1A2( "team", "targetname" ), _ID42407::_ID1947, ::_unknown_00DF );
    _ID42407::_ID1801( "team", "target" );
    thread _ID42407::_ID14403( "team_initialized", 0.05 );
    var_0 = _func_0DE( "allies" );
    var_1 = var_0;

    for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
    {
        var_2 = var_1[var_3];

        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 _meth_80B7();
    }

    var_clear_2
    var_clear_0
}

_ID43237()
{
    wait 0.05;
    thread _ID42407::_ID36519();
    thread _ID42407::_ID39502();
}

_ID53284()
{
    if ( self._ID1194 == "axis" )
        self._ID1194 = "allies";
    else
        self._ID1194 = "axis";
}
