// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID52260()
{
    _ID42237::_ID14400( "game_type_challenge" );
}

_ID47484()
{
    _ID42407::_ID1892( "axis", ::_ID53284 );
    _ID42407::_ID1892( "allies", ::_ID53284 );
    _ID47032();
    _ID42407::_ID1801( "tarmac_enemies_wave1", "target" );

    foreach ( var_1 in level._ID805 )
    {
        var_1.maxhealth = 100;
        var_1.health = 100;
    }

    maps\airport_code::_ID44563();
    maps\airport_code::_ID46202( _ID42237::_ID16640( "tarmac_start_nodes", "targetname" ) );
    thread maps\airport::_ID54182();
}

_ID47032()
{
    _ID42237::_ID14402( "game_type_challenge" );
    _ID42237::_ID3350( getentarray( "team", "targetname" ), _ID42407::_ID1947, maps\airport_code::_ID48925 );
    _ID42237::_ID3350( getentarray( "team", "targetname" ), _ID42407::_ID1947, ::_ID43237 );
    _ID42407::_ID1801( "team", "target" );
    thread _ID42407::_ID14403( "team_initialized", 0.05 );
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( var_2 _ID42407::_ID20537() )
            continue;

        var_2 delete();
    }
}

_ID43237()
{
    wait 0.05;
    thread _ID42407::_ID36519();
    thread _ID42407::_ID39502();
}

_ID53284()
{
    if ( self.team == "axis" )
        self.team = "allies";
    else
        self.team = "axis";
}
