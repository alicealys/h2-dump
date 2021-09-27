// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    level._ID794 thread _unknown_0033();
    thread _unknown_000F();
    thread _unknown_004A();
}

_ID47982()
{
    level._ID794 waittill( "death",  var_3, var_3, var_3, var_3  );
    _ID42475::_ID34575( "player_death" );

    if ( _func_02F( var_3 ) )
    {
        var_4 = level._ID794._ID740 - level._ID794 _meth_80AF() + ( 0, 0, 35 );
        var_5 = _func_06A( "script_model", level._ID794._ID740 + ( 0, 0, var_4[2] ) );
        var_5._ID65 = ( -10, level._ID794._ID65[2], 30 );
        var_5 _meth_8053( var_3 );

        if ( var_1 != "MOD_CRUSH" )
            level._ID794 _meth_8083( var_5 );
    }

    level._ID794 _meth_8123( 1 );
    _ID42371::_ID29407( var_2, var_1 );
}

_ID27699()
{
    self endon( "death" );
    self._ID21929 = 0;

    for (;;)
    {
        while ( !self _meth_8135() )
            wait 0.05;

        self._ID21929 = _func_03D();

        while ( self _meth_8135() )
            wait 0.05;
    }
}

_ID47326()
{
    level endon( "new_quote_string" );
    level._ID794 waittill( "death",  var_2, var_2, var_2  );

    if ( _func_039( "limited_mode" ) == "1" )
        return;

    _unknown_01CF();
    _unknown_012E( var_0, var_1, var_2 );
}

_ID35361( var_0, var_1, var_2 )
{
    if ( _ID42407::_ID20614() )
        return;

    if ( level._ID23777 )
        return;

    if ( level._ID15361 == 0 && var_1 == "MOD_RIFLE_BULLET" && _func_02F( var_0 ) && _func_02F( var_0._ID279 ) && var_0._ID13632 == 1 && var_0._ID13610 == 1 )
        var_1 = "MOD_EXPLOSIVE";

    if ( var_1 != "MOD_GRENADE" && var_1 != "MOD_GRENADE_SPLASH" && var_1 != "MOD_SUICIDE" && var_1 != "MOD_EXPLOSIVE" )
        return;

    if ( level._ID15361 >= 2 )
    {
        if ( !_ID42323::_ID22917() )
            return;
    }

    switch ( var_1 )
    {

    }

    case "MOD_SUICIDE":
    case "MOD_GRENADE_SPLASH":
    case "MOD_GRENADE":
    default:
}

_ID40100( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( var_0._ID172 != "script_vehicle" || var_0._ID170 == "script_vehicle_zodiac_player" )
        return 0;

    _unknown_02FB( "@SCRIPT_EXPLODING_VEHICLE_DEATH" );
    thread _unknown_03E4( "hud_burningcaricon", 50, 50 );
    return 1;
}

_ID10509( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    if ( !_func_02F( var_0._ID279 ) )
        return 0;

    if ( _func_125( var_0._ID279, "vehicle" ) )
    {
        _unknown_0330( "@SCRIPT_EXPLODING_VEHICLE_DEATH" );
        thread _unknown_041A( "hud_burningcaricon", 50, 50 );
    }
    else
    {
        _unknown_0347( "@SCRIPT_EXPLODING_DESTRUCTIBLE_DEATH" );
        thread _unknown_0431( "hud_destructibledeathicon", 50, 50 );
    }

    return 1;
}

_ID43833( var_0 )
{
    if ( level._ID912 != "af_chase" )
        return 0;

    return _unknown_0350( var_0 );
}

_ID13633( var_0 )
{
    if ( _func_02F( level._ID21923 ) )
    {
        if ( _func_03D() != level._ID21923["time"] )
            return 0;

        var_1 = _func_0F3( self._ID740, level._ID21923["origin"] );

        if ( var_1 > level._ID21923["radius"] )
            return 0;

        _unknown_03A0( "@SCRIPT_EXPLODING_BARREL_DEATH" );
        thread _unknown_0489( "hud_burningbarrelicon", 50, 50 );
        return 1;
    }

    return 0;
}

_ID32262( var_0 )
{
    if ( _func_039( "limited_mode" ) == "1" )
        return;

    _func_034( "ui_deadquote", var_0 );
}

_ID47176()
{
    if ( !level._ID23777 )
    {
        var_0 = _func_0C1( _func_1C1( "sp/deathQuoteTable.csv", 1, "size", 0 ) );
        var_1 = _func_0B7( var_0 );

        if ( _func_039( "cycle_deathquotes" ) != "" )
        {
            if ( _func_039( "ui_deadquote_index" ) == "" )
                _func_034( "ui_deadquote_index", "0" );

            var_1 = _func_03A( "ui_deadquote_index" );
            _func_034( "ui_deadquote", _unknown_044C( var_1 ) );
            var_1++;

            if ( var_1 > var_0 - 1 )
                var_1 = 0;

            _func_034( "ui_deadquote_index", var_1 );
        }
        else
            _func_034( "ui_deadquote", _unknown_046A( var_1 ) );
    }
}

_ID9789( var_0 )
{
    if ( var_0 == _func_039( "ui_deadquote_v1" ) )
        return 1;

    if ( var_0 == _func_039( "ui_deadquote_v2" ) )
        return 1;

    if ( var_0 == _func_039( "ui_deadquote_v3" ) )
        return 1;

    return 0;
}

_ID22633( var_0 )
{
    var_1 = _func_1C1( "sp/deathQuoteTable.csv", 0, var_0, 1 );

    if ( _func_128( var_1[0] ) != _func_128( "@" ) )
        var_1 = "@" + var_1;

    return var_1;
}

_ID17384( var_0, var_1 )
{
    level._ID794._ID13848 = 1;

    if ( _func_039( "limited_mode" ) == "1" )
        return;

    _func_032( "ui_hidebasedeathquote", 1 );
    _unknown_04AC( "" );
    wait 2.5;
    var_2 = _func_1AF();
    var_2._ID12329 = "font";
    var_2._ID392 = "default";
    var_2._ID393 = 1;
    var_2._ID1331 = 0;
    var_2._ID1339 = -30;
    var_2._ID44 = "center";
    var_2._ID45 = "middle";
    var_2._ID499 = "center";
    var_2._ID1284 = "middle";
    var_2 _meth_80D1( var_0 );
    var_2._ID408 = 1;
    var_2._ID55 = 0;
    var_2 _meth_808B( 2 );
    var_2._ID55 = 1;
    var_2._ID493 = 1;

    if ( _func_02F( var_1 ) )
    {
        var_2 = _func_1AF();
        var_2._ID12329 = "font";
        var_2._ID392 = "default";
        var_2._ID393 = 1;
        var_2._ID1331 = 0;
        var_2._ID1339 = -25 + level._ID14720 * var_2._ID393;
        var_2._ID44 = "center";
        var_2._ID45 = "middle";
        var_2._ID499 = "center";
        var_2._ID1284 = "middle";
        var_2 _meth_80D1( var_1 );
        var_2._ID408 = 1;
        var_2._ID55 = 0;
        var_2 _meth_808B( 2 );
        var_2._ID55 = 1;
        var_2._ID493 = 1;
    }
}

_ID17385()
{
    if ( _func_039( "limited_mode" ) == "1" )
        return;

    wait 2.5;
    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 20;
    var_0 _meth_80D3( "hud_grenadeicon", 25, 25 );
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID499 = "center";
    var_0._ID1284 = "middle";
    var_0._ID408 = 1;
    var_0._ID55 = 0;
    var_0 _meth_808B( 2 );
    var_0._ID55 = 1;
    var_0._ID493 = 1;
    var_0 = _func_1AF();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 _meth_80D3( "hud_grenadepointer", 25, 13 );
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID499 = "center";
    var_0._ID1284 = "middle";
    var_0._ID408 = 1;
    var_0._ID55 = 0;
    var_0 _meth_808B( 2 );
    var_0._ID55 = 1;
    var_0._ID493 = 1;
}

_ID32263( var_0, var_1, var_2, var_3 )
{
    if ( !_func_02F( var_3 ) )
        var_3 = 2.5;

    wait(var_3);
    var_4 = _func_1AF();
    var_4._ID1331 = 0;
    var_4._ID1339 = 25;
    var_4 _meth_80D3( var_0, var_1, var_2 );
    var_4._ID44 = "center";
    var_4._ID45 = "middle";
    var_4._ID499 = "center";
    var_4._ID1284 = "middle";
    var_4._ID408 = 1;
    var_4._ID55 = 0;
    var_4 _meth_808B( 2 );
    var_4._ID55 = 1;
    var_4._ID493 = 1;
}
