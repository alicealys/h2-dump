// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    level._ID794 thread _ID27699();
    thread _ID47982();
    thread _ID47326();
}

_ID47982()
{
    level._ID794 waittill( "death",  var_0, var_1, var_2, var_3  );
    _ID42475::_ID34575( "player_death" );

    if ( isdefined( var_3 ) )
    {
        var_4 = level._ID794._ID740 - level._ID794 geteye() + ( 0, 0, 35 );
        var_5 = spawn( "script_model", level._ID794._ID740 + ( 0, 0, var_4[2] ) );
        var_5._ID65 = ( -10, level._ID794._ID65[2], 30 );
        var_5 linkto( var_3 );

        if ( var_1 != "MOD_CRUSH" )
            level._ID794 playerlinkto( var_5 );
    }

    level._ID794 allowprone( 1 );
    _ID42371::_ID29407( var_2, var_1 );
}

_ID27699()
{
    self endon( "death" );
    self._ID21929 = 0;

    for (;;)
    {
        while ( !self isthrowinggrenade() )
            wait 0.05;

        self._ID21929 = gettime();

        while ( self isthrowinggrenade() )
            wait 0.05;
    }
}

_ID47326()
{
    level endon( "new_quote_string" );
    level._ID794 waittill( "death",  var_0, var_1, var_2  );

    if ( getdvar( "limited_mode" ) == "1" )
        return;

    _ID47176();
    _ID35361( var_0, var_1, var_2 );
}

_ID35361( var_0, var_1, var_2 )
{
    if ( _ID42407::_ID20614() )
        return;

    if ( level._ID23777 )
        return;

    if ( level._ID15361 == 0 && var_1 == "MOD_RIFLE_BULLET" && isdefined( var_0 ) && isdefined( var_0._ID279 ) && var_0._ID13632 == 1 && var_0._ID13610 == 1 )
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
        case "MOD_SUICIDE":
            if ( level._ID794._ID21929 - gettime() > 3500.0 )
                return;

            thread _ID17384( &"SCRIPT_GRENADE_SUICIDE_LINE1", &"SCRIPT_GRENADE_SUICIDE_LINE2" );
            break;
        case "MOD_EXPLOSIVE":
            if ( level._ID794 _ID10509( var_0 ) )
                return;

            if ( level._ID794 _ID43833( var_0 ) )
                return;

            if ( level._ID794 _ID40100( var_0 ) )
                return;

            if ( level._ID794 _ID13633( var_0 ) )
                return;

            break;
        case "MOD_GRENADE":
        case "MOD_GRENADE_SPLASH":
            if ( isdefined( var_2 ) && !issubstr( var_2, "grenade" ) )
                return;

            _ID32262( "@SCRIPT_GRENADE_DEATH" );
            thread _ID17385();
            break;
        default:
            break;
    }
}

_ID40100( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( var_0._ID172 != "script_vehicle" || var_0._ID170 == "script_vehicle_zodiac_player" )
        return 0;

    _ID32262( "@SCRIPT_EXPLODING_VEHICLE_DEATH" );
    thread _ID32263( "hud_burningcaricon", 50, 50 );
    return 1;
}

_ID10509( var_0 )
{
    if ( !isdefined( var_0 ) )
        return 0;

    if ( !isdefined( var_0._ID279 ) )
        return 0;

    if ( issubstr( var_0._ID279, "vehicle" ) )
    {
        _ID32262( "@SCRIPT_EXPLODING_VEHICLE_DEATH" );
        thread _ID32263( "hud_burningcaricon", 50, 50 );
    }
    else
    {
        _ID32262( "@SCRIPT_EXPLODING_DESTRUCTIBLE_DEATH" );
        thread _ID32263( "hud_destructibledeathicon", 50, 50 );
    }

    return 1;
}

_ID43833( var_0 )
{
    if ( level._ID912 != "af_chase" )
        return 0;

    return _ID13633( var_0 );
}

_ID13633( var_0 )
{
    if ( isdefined( level._ID21923 ) )
    {
        if ( gettime() != level._ID21923["time"] )
            return 0;

        var_1 = distance( self._ID740, level._ID21923["origin"] );

        if ( var_1 > level._ID21923["radius"] )
            return 0;

        _ID32262( "@SCRIPT_EXPLODING_BARREL_DEATH" );
        thread _ID32263( "hud_burningbarrelicon", 50, 50 );
        return 1;
    }

    return 0;
}

_ID32262( var_0 )
{
    if ( getdvar( "limited_mode" ) == "1" )
        return;

    setdvar( "ui_deadquote", var_0 );
}

_ID47176()
{
    if ( !level._ID23777 )
    {
        var_0 = int( tablelookup( "sp/deathQuoteTable.csv", 1, "size", 0 ) );
        var_1 = randomint( var_0 );

        if ( getdvar( "cycle_deathquotes" ) != "" )
        {
            if ( getdvar( "ui_deadquote_index" ) == "" )
                setdvar( "ui_deadquote_index", "0" );

            var_1 = getdvarint( "ui_deadquote_index" );
            setdvar( "ui_deadquote", _ID22633( var_1 ) );
            var_1++;

            if ( var_1 > var_0 - 1 )
                var_1 = 0;

            setdvar( "ui_deadquote_index", var_1 );
        }
        else
            setdvar( "ui_deadquote", _ID22633( var_1 ) );
    }
}

_ID9789( var_0 )
{
    if ( var_0 == getdvar( "ui_deadquote_v1" ) )
        return 1;

    if ( var_0 == getdvar( "ui_deadquote_v2" ) )
        return 1;

    if ( var_0 == getdvar( "ui_deadquote_v3" ) )
        return 1;

    return 0;
}

_ID22633( var_0 )
{
    var_1 = tablelookup( "sp/deathQuoteTable.csv", 0, var_0, 1 );

    if ( tolower( var_1[0] ) != tolower( "@" ) )
        var_1 = "@" + var_1;

    return var_1;
}

_ID17384( var_0, var_1 )
{
    level._ID794._ID13848 = 1;

    if ( getdvar( "limited_mode" ) == "1" )
        return;

    setomnvar( "ui_hidebasedeathquote", 1 );
    _ID32262( "" );
    wait 2.5;
    var_2 = newhudelem();
    var_2._ID12329 = "font";
    var_2._ID392 = "default";
    var_2._ID393 = 1;
    var_2._ID1331 = 0;
    var_2._ID1339 = -30;
    var_2._ID44 = "center";
    var_2._ID45 = "middle";
    var_2._ID499 = "center";
    var_2._ID1284 = "middle";
    var_2 settext( var_0 );
    var_2._ID408 = 1;
    var_2._ID55 = 0;
    var_2 fadeovertime( 2 );
    var_2._ID55 = 1;
    var_2._ID493 = 1;

    if ( isdefined( var_1 ) )
    {
        var_2 = newhudelem();
        var_2._ID12329 = "font";
        var_2._ID392 = "default";
        var_2._ID393 = 1;
        var_2._ID1331 = 0;
        var_2._ID1339 = -25 + level._ID14720 * var_2._ID393;
        var_2._ID44 = "center";
        var_2._ID45 = "middle";
        var_2._ID499 = "center";
        var_2._ID1284 = "middle";
        var_2 settext( var_1 );
        var_2._ID408 = 1;
        var_2._ID55 = 0;
        var_2 fadeovertime( 2 );
        var_2._ID55 = 1;
        var_2._ID493 = 1;
    }
}

_ID17385()
{
    if ( getdvar( "limited_mode" ) == "1" )
        return;

    wait 2.5;
    var_0 = newhudelem();
    var_0._ID1331 = 0;
    var_0._ID1339 = 20;
    var_0 setshader( "hud_grenadeicon", 25, 25 );
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID499 = "center";
    var_0._ID1284 = "middle";
    var_0._ID408 = 1;
    var_0._ID55 = 0;
    var_0 fadeovertime( 2 );
    var_0._ID55 = 1;
    var_0._ID493 = 1;
    var_0 = newhudelem();
    var_0._ID1331 = 0;
    var_0._ID1339 = 0;
    var_0 setshader( "hud_grenadepointer", 25, 13 );
    var_0._ID44 = "center";
    var_0._ID45 = "middle";
    var_0._ID499 = "center";
    var_0._ID1284 = "middle";
    var_0._ID408 = 1;
    var_0._ID55 = 0;
    var_0 fadeovertime( 2 );
    var_0._ID55 = 1;
    var_0._ID493 = 1;
}

_ID32263( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 2.5;

    wait(var_3);
    var_4 = newhudelem();
    var_4._ID1331 = 0;
    var_4._ID1339 = 25;
    var_4 setshader( var_0, var_1, var_2 );
    var_4._ID44 = "center";
    var_4._ID45 = "middle";
    var_4._ID499 = "center";
    var_4._ID1284 = "middle";
    var_4._ID408 = 1;
    var_4._ID55 = 0;
    var_4 fadeovertime( 2 );
    var_4._ID55 = 1;
    var_4._ID493 = 1;
}
