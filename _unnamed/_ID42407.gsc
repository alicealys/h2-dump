// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID32350( var_0, var_1 )
{
    var_2 = undefined;
    var_0 = tolower( var_0 );
    var_3["friendly"] = 3;
    var_3["enemy"] = 4;
    var_3["objective"] = 5;
    var_3["neutral"] = 0;
    var_2 = var_3[var_0];
    self hudoutlineenable( var_2, var_1 );
}

_ID20495()
{
    if ( _func_145() || getdvar( "coop" ) == "1" )
        return 1;

    return 0;
}

_ID20496()
{
    if ( _func_145() )
        return 0;

    if ( !_ID20495() )
        return 0;

    return 1;
}

_ID20581( var_0 )
{
    if ( var_0 _ID13023( "laststand_downed" ) )
        return var_0 _ID13019( "laststand_downed" );

    if ( isdefined( var_0._ID586 ) )
        return var_0._ID586;

    return !isalive( var_0 );
}

_ID20582( var_0 )
{
    if ( !isdefined( var_0._ID11668 ) )
        return 0;

    return var_0._ID11668;
}

_ID21359( var_0 )
{
    if ( _ID21988() )
    {
        if ( isdefined( level._ID21989 ) )
            return var_0 [[ level._ID21989 ]]();
    }

    return 0;
}

_ID20618()
{
    return _ID20614() && getdvarint( "so_survival" ) > 0;
}

_ID21988()
{
    return isdefined( level._ID21991 ) && level._ID21991 > 0;
}

_ID20614()
{
    return getdvarint( "specialops" ) >= 1;
}

_ID43248()
{
    for ( var_0 = 1; var_0 <= 2; var_0++ )
    {
        for ( var_1 = 1; var_1 <= 4; var_1++ )
        {
            for ( var_2 = 1; var_2 <= 9; var_2++ )
            {
                setdvar( "ui_eog_r" + var_2 + "c" + var_1 + "_player" + var_0, "" );
                setdvar( "ui_eog_r" + var_2 + "c" + var_1 + "_player" + var_0, "" );
            }
        }

        setdvar( "ui_eog_success_heading_player" + var_0, "" );
    }
}

_ID46375( var_0, var_1, var_2 )
{
    var_3 = int( var_0 );
    var_4 = int( var_1 );
    var_5 = "";

    if ( level._ID805.size > 1 )
    {
        if ( self == level._ID794 )
            var_5 = "ui_eog_r" + var_3 + "c" + var_4 + "_player1";
        else if ( self == level._ID27742 )
            var_5 = "ui_eog_r" + var_3 + "c" + var_4 + "_player2";
        else
        {

        }
    }
    else
        var_5 = "ui_eog_r" + var_3 + "c" + var_4 + "_player1";

    setdvar( var_5, var_2 );
}

_ID53450( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( self._ID50215 ) )
        self._ID50215 = 0;

    var_5 = undefined;

    if ( isdefined( var_4 ) )
    {
        var_5 = var_4;

        if ( var_4 > self._ID50215 )
            self._ID50215 = var_4;
    }
    else
    {
        self._ID50215++;
        var_5 = self._ID50215;
    }

    _ID46375( var_5, 1, var_0 );
    var_6 = [];

    if ( isdefined( var_3 ) )
        var_6[var_6.size] = var_3;

    if ( isdefined( var_2 ) )
        var_6[var_6.size] = var_2;

    if ( isdefined( var_1 ) )
        var_6[var_6.size] = var_1;

    for ( var_7 = 0; var_7 < var_6.size; var_7++ )
        _ID46375( var_5, 4 - var_7, var_6[var_7] );
}

_ID45517()
{
    if ( !isdefined( self._ID50215 ) )
        self._ID50215 = 0;

    self._ID50215++;
}

_ID48328( var_0 )
{
    var_1 = "";

    if ( level._ID805.size > 1 )
    {
        if ( self == level._ID794 )
            var_1 = "ui_eog_success_heading_player1";
        else if ( self == level._ID27742 )
            var_1 = "ui_eog_success_heading_player2";
        else
        {

        }
    }
    else
        var_1 = "ui_eog_success_heading_player1";

    setdvar( var_1, var_0 );
}

_ID8614( var_0, var_1 )
{
    var_2 = "";

    if ( var_0 < 0 )
        var_2 += "-";

    var_0 = _ID30229( var_0, 1, 0 );
    var_3 = var_0 * 100;
    var_3 = int( var_3 );
    var_3 = abs( var_3 );
    var_4 = var_3 / 6000;
    var_4 = int( var_4 );
    var_2 += var_4;
    var_5 = var_3 / 100;
    var_5 = int( var_5 );
    var_5 -= var_4 * 60;

    if ( var_5 < 10 )
        var_2 += ( ":0" + var_5 );
    else
        var_2 += ( ":" + var_5 );

    if ( isdefined( var_1 ) && var_1 )
    {
        var_6 = var_3;
        var_6 -= var_4 * 6000;
        var_6 -= var_5 * 100;
        var_6 = int( var_6 / 10 );
        var_2 += ( "." + var_6 );
    }

    return var_2;
}

_ID30229( var_0, var_1, var_2 )
{
    var_1 = int( var_1 );

    if ( var_1 < 0 || var_1 > 4 )
        return var_0;

    var_3 = 1;

    for ( var_4 = 1; var_4 <= var_1; var_4++ )
        var_3 *= 10;

    var_5 = var_0 * var_3;

    if ( !isdefined( var_2 ) || var_2 )
        var_5 = floor( var_5 );
    else
        var_5 = ceil( var_5 );

    var_0 = var_5 / var_3;
    return var_0;
}

_ID30292( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "nearest";

    var_3 = 1;

    for ( var_4 = 0; var_4 < var_1; var_4++ )
        var_3 *= 10;

    var_5 = var_0 * var_3;

    if ( var_2 == "up" )
        var_6 = ceil( var_5 );
    else if ( var_2 == "down" )
        var_6 = floor( var_5 );
    else
        var_6 = var_5 + 0.5;

    var_5 = int( var_6 );
    var_5 /= var_3;
    return var_5;
}

settimeformat( var_0, var_1 )
{
    var_2 = int( floor( var_0 ) );
    var_3 = _ID30292( var_0 - var_2, 2 ) * 100;
    var_4 = floor( var_2 / 60 );
    var_5 = var_2 % 60;

    if ( var_3 < 10 )
        var_3 = "0" + var_3;

    if ( var_5 < 10 )
        var_5 = "0" + var_5;

    if ( isdefined( var_1 ) )
        var_6 = var_1 + var_4 + ":" + var_5 + "." + var_3;
    else
        var_6 = var_4 + ":" + var_5 + "." + var_3;

    return var_6;
}

_ID30230( var_0, var_1, var_2 )
{
    var_3 = var_0 / 1000;
    var_3 = _ID30229( var_3, var_1, var_2 );
    var_0 = var_3 * 1000;
    return int( var_0 );
}

_ID45587( var_0 )
{
    return !isdefined( level._ID46550 ) || [[ level._ID46550 ]]( var_0 );
}

_ID32515( var_0, var_1, var_2 )
{
    if ( isdefined( level._ID50611 ) )
        [[ level._ID50611 ]]( var_0 );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !var_2 && !_ID45587( var_0 ) )
        return;

    if ( _ID42408::_ID19831( var_0 ) )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( isplayernumber( self ) )
        self _meth_82df( var_0, var_1 );
    else
    {
        visionsetnaked( var_0, var_1 );
        setdvar( "vision_set_current", var_0 );
    }
}

_ID32516( var_0, var_1 )
{
    _ID32515( var_0, var_1 );
}

_ID52963( var_0 )
{
    return !isdefined( level._ID49994 ) || [[ level._ID49994 ]]( var_0 );
}

_ID48929( var_0, var_1 )
{
    if ( isdefined( level._ID52335 ) )
        [[ level._ID52335 ]]( var_0 );

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !var_1 && !_ID52963( var_0 ) )
        return;

    level._ID794._ID46646 = var_0;
    self lightset( level._ID794._ID46646 );
}

_ID36793( var_0, var_1, var_2 )
{
    var_2 = int( var_2 * 20 );
    var_3 = [];

    for ( var_4 = 0; var_4 < 3; var_4++ )
        var_3[var_4] = ( var_0[var_4] - var_1[var_4] ) / var_2;

    var_5 = [];

    for ( var_4 = 0; var_4 < var_2; var_4++ )
    {
        wait 0.05;

        for ( var_6 = 0; var_6 < 3; var_6++ )
            var_5[var_6] = var_0[var_6] - var_3[var_6] * var_4;

        _func_47( var_5[0], var_5[1], var_5[2] );
    }

    _func_47( var_1[0], var_1[1], var_1[2] );
}

_ID13027( var_0 )
{
    while ( isdefined( self ) && !self._ID13019[var_0] )
        self waittill( var_0 );
}

_ID13030( var_0 )
{
    while ( isdefined( self ) && !self._ID13019[var_0] )
        self waittill( var_0 );
}

_ID13028( var_0, var_1 )
{
    while ( isdefined( self ) )
    {
        if ( _ID13019( var_0 ) )
            return;

        if ( _ID13019( var_1 ) )
            return;

        _ID42237::_ID41098( var_0, var_1 );
    }
}

_ID13029( var_0, var_1 )
{
    var_2 = gettime();

    while ( isdefined( self ) )
    {
        if ( self._ID13019[var_0] )
            break;

        if ( gettime() >= var_2 + var_1 * 1000 )
            break;

        _ID42408::_ID13040( var_0, var_1 );
    }
}

_ID13031( var_0 )
{
    while ( isdefined( self ) && self._ID13019[var_0] )
        self waittill( var_0 );
}

_ID47870( var_0, var_1 )
{
    var_2 = gettime();

    while ( isdefined( self ) && self._ID13019[var_0] )
    {
        if ( gettime() >= var_2 + var_1 * 1000 )
            break;

        _ID42408::_ID13040( var_0, var_1 );
    }
}

_ID13020( var_0 )
{

}

_ID13032( var_0, var_1 )
{
    while ( isdefined( self ) )
    {
        if ( !_ID13019( var_0 ) )
            return;

        if ( !_ID13019( var_1 ) )
            return;

        _ID42237::_ID41098( var_0, var_1 );
    }
}

_ID13024( var_0 )
{
    if ( !isdefined( self._ID13019 ) )
    {
        self._ID13019 = [];
        self._ID13033 = [];
    }

    self._ID13019[var_0] = 0;
}

_ID13023( var_0 )
{
    if ( isdefined( self._ID13019 ) && isdefined( self._ID13019[var_0] ) )
        return 1;

    return 0;
}

_ID13026( var_0, var_1 )
{
    self endon( "death" );
    wait(var_1);
    _ID13025( var_0 );
}

_ID13025( var_0 )
{
    self._ID13019[var_0] = 1;
    self notify( var_0 );
}

_ID13021( var_0, var_1 )
{
    if ( self._ID13019[var_0] )
    {
        self._ID13019[var_0] = 0;
        self notify( var_0 );
    }

    if ( isdefined( var_1 ) && var_1 )
        self._ID13019[var_0] = undefined;
}

_ID13022( var_0, var_1 )
{
    wait(var_1);
    _ID13021( var_0 );
}

_ID13019( var_0 )
{
    return self._ID13019[var_0];
}

_ID15625( var_0, var_1, var_2, var_3 )
{
    if ( !var_0.size )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = level._ID794;

    if ( !isdefined( var_3 ) )
        var_3 = -1;

    var_4 = var_1._ID740;

    if ( isdefined( var_2 ) && var_2 )
        var_4 = var_1 geteye();

    var_5 = undefined;
    var_6 = var_1 getplayerangles();
    var_7 = anglestoforward( var_6 );
    var_8 = -1;

    foreach ( var_10 in var_0 )
    {
        var_11 = vectortoangles( var_10._ID740 - var_4 );
        var_12 = anglestoforward( var_11 );
        var_13 = vectordot( var_7, var_12 );

        if ( var_13 < var_8 )
            continue;

        if ( var_13 < var_3 )
            continue;

        var_8 = var_13;
        var_5 = var_10;
    }

    return var_5;
}

_ID15612( var_0, var_1, var_2 )
{
    if ( !var_0.size )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = level._ID794;

    var_3 = var_1._ID740;

    if ( isdefined( var_2 ) && var_2 )
        var_3 = var_1 geteye();

    var_4 = undefined;
    var_5 = var_1 getplayerangles();
    var_6 = anglestoforward( var_5 );
    var_7 = -1;

    for ( var_8 = 0; var_8 < var_0.size; var_8++ )
    {
        var_9 = vectortoangles( var_0[var_8]._ID740 - var_3 );
        var_10 = anglestoforward( var_9 );
        var_11 = vectordot( var_6, var_10 );

        if ( var_11 < var_7 )
            continue;

        var_7 = var_11;
        var_4 = var_8;
    }

    return var_4;
}

_ID46194( var_0, var_1 )
{
    _ID42408::_ID1457( var_0, var_1 );
}

_ID14410( var_0, var_1, var_2 )
{
    _ID42237::_ID14400( var_0 );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_1 thread _ID42408::_ID1457( var_0, var_2 );
    return var_1;
}

_ID14411( var_0, var_1, var_2 )
{
    _ID42237::_ID14400( var_0 );

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
        var_1[var_3] thread _ID42408::_ID1457( var_0, 0 );

    return var_1;
}

_ID14403( var_0, var_1 )
{
    wait(var_1);
    _ID42237::_ID14402( var_0 );
}

_ID14389( var_0, var_1 )
{
    wait(var_1);
    _ID42237::_ID14388( var_0 );
}

_ID54275()
{
    var_0 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "duration_total_seconds" );

    if ( isdefined( var_0 ) )
    {
        var_0 += int( ( gettime() - level._ID52255 ) / 1000 );
        level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "duration_total_seconds", var_0 );
    }
}

_ID22211()
{
    _ID54275();

    if ( _ID3270() )
        return;

    if ( level._ID23777 )
        return;

    if ( _ID42237::_ID14385( "game_saving" ) )
        return;

    for ( var_0 = 0; var_0 < level._ID805.size; var_0++ )
    {
        var_1 = level._ID805[var_0];

        if ( !isalive( var_1 ) )
            return;
    }

    _ID42237::_ID14402( "game_saving" );
    var_2 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "level_complete" );

    if ( isdefined( var_2 ) )
    {
        if ( !var_2 )
        {
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "level_complete", 1 );
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "level_completion_timestamp", gettimeutc() );
        }

        var_3 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_kills" );
        var_4 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_deaths" );
        var_5 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "average_kills" );
        var_6 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "average_deaths" );
        var_7 = level._ID794 getplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "completed_playtrough" );

        if ( isdefined( var_3 ) && isdefined( var_5 ) && isdefined( var_6 ) && isdefined( var_4 ) && isdefined( var_7 ) )
        {
            var_5 = var_5 * var_7 + var_3;
            var_6 = var_6 * var_7 + var_4;
            var_7++;
            var_5 /= var_7;
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_kills", 0 );
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "current_playtrough_deaths", 0 );
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "completed_playtrough", var_7 );
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "average_kills", int( var_5 ) );
            level._ID794 setplayerdata( _ID42237::_ID44046(), "career", "campaign", level._ID15361, "levels", level._ID912, "average_deaths", var_6 );
        }
    }

    var_8 = "levelshots / autosave / autosave_" + level._ID912 + "end";
    savegame( "levelend", &"AUTOSAVE_AUTOSAVE", var_8, 1, 1 );
    _ID42237::_ID14388( "game_saving" );
}

_ID1888( var_0, var_1, var_2 )
{
    level._ID1450[var_0] = [];
    level._ID1450[var_0]["func"] = var_1;
    level._ID1450[var_0]["msg"] = var_2;
}

_ID29516( var_0 )
{
    level._ID1450[var_0] = undefined;
}

_ID4439()
{
    thread _ID4424( "autosave_stealth", 8, 0 );
}

_ID4441()
{
    thread _ID4424( "autosave_stealth", 8, 0, 1 );
}

_ID4443()
{

}

_ID4422( var_0 )
{
    thread _ID4424( var_0 );
}

_ID4423( var_0 )
{
    thread _ID4424( var_0, undefined, undefined, 1 );
}

_ID4424( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( level._ID9413 ) )
        level._ID9413 = 1;

    var_4 = "levelshots/autosave/autosave_" + level._ID912 + level._ID9413;
    var_5 = level _ID42263::_ID39065( level._ID9413, "autosave", var_4, var_1, var_2, var_3, var_0 );

    if ( isdefined( var_5 ) && var_5 )
        level._ID9413++;
}

_ID4436( var_0, var_1 )
{
    thread _ID4424( var_0, var_1 );
}

_ID9904( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 5;

    if ( isdefined( var_3 ) )
    {
        var_3 endon( "death" );
        var_1 = var_3._ID740;
    }

    for ( var_4 = 0; var_4 < var_2 * 20; var_4++ )
    {
        if ( !isdefined( var_3 ) )
            jump loc_E5B

        wait 0.05;
    }
}

_ID9905( var_0, var_1 )
{
    self notify( "debug_message_ai" );
    self endon( "debug_message_ai" );
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = 5;

    for ( var_2 = 0; var_2 < var_1 * 20; var_2++ )
        wait 0.05;
}

_ID9906( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
    {
        level notify( var_0 + var_3 );
        level endon( var_0 + var_3 );
    }
    else
    {
        level notify( var_0 );
        level endon( var_0 );
    }

    if ( !isdefined( var_2 ) )
        var_2 = 5;

    for ( var_4 = 0; var_4 < var_2 * 20; var_4++ )
        wait 0.05;
}

_ID814( var_0 )
{
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1._ID740 = level._ID794 getorigin();
    var_1 setmodel( var_0 );
    var_1 delete();
}

_ID8162( var_0, var_1 )
{
    return var_0 >= var_1;
}

_ID13939( var_0, var_1 )
{
    return var_0 <= var_1;
}

_ID16188( var_0, var_1, var_2 )
{
    return _ID42408::_ID8398( var_0, var_1, var_2, ::_ID8162 );
}

_ID15619( var_0, var_1, var_2 )
{
    var_3 = var_1[0];
    var_4 = distance( var_0, var_3 );

    for ( var_5 = 0; var_5 < var_1.size; var_5++ )
    {
        var_6 = distance( var_0, var_1[var_5] );

        if ( var_6 >= var_4 )
            continue;

        var_4 = var_6;
        var_3 = var_1[var_5];
    }

    if ( !isdefined( var_2 ) || var_4 <= var_2 )
        return var_3;

    return undefined;
}

_ID15724( var_0, var_1 )
{
    if ( var_1.size < 1 )
        return;

    var_2 = distance( var_1[0] getorigin(), var_0 );
    var_3 = var_1[0];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_5 = distance( var_1[var_4] getorigin(), var_0 );

        if ( var_5 < var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID16082( var_0, var_1, var_2 )
{
    var_3 = [];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( distance( var_1[var_4]._ID740, var_0 ) <= var_2 )
            var_3[var_3.size] = var_1[var_4];
    }

    return var_3;
}

_ID15893( var_0, var_1, var_2 )
{
    var_3 = [];

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( distance( var_1[var_4]._ID740, var_0 ) > var_2 )
            var_3[var_3.size] = var_1[var_4];
    }

    return var_3;
}

_ID15613( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 9999999;

    if ( var_1.size < 1 )
        return;

    var_3 = undefined;

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        if ( !isalive( var_1[var_4] ) )
            continue;

        var_5 = distance( var_1[var_4]._ID740, var_0 );

        if ( var_5 >= var_2 )
            continue;

        var_2 = var_5;
        var_3 = var_1[var_4];
    }

    return var_3;
}

_ID15768( var_0, var_1, var_2 )
{
    if ( !var_2.size )
        return;

    var_3 = undefined;
    var_4 = vectortoangles( var_1 - var_0 );
    var_5 = anglestoforward( var_4 );
    var_6 = -1;

    foreach ( var_8 in var_2 )
    {
        var_4 = vectortoangles( var_8._ID740 - var_0 );
        var_9 = anglestoforward( var_4 );
        var_10 = vectordot( var_5, var_9 );

        if ( var_10 < var_6 )
            continue;

        var_6 = var_10;
        var_3 = var_8;
    }

    return var_3;
}

_ID15611( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 9999999;

    if ( var_1.size < 1 )
        return;

    var_3 = undefined;

    foreach ( var_7, var_5 in var_1 )
    {
        var_6 = distance( var_5._ID740, var_0 );

        if ( var_6 >= var_2 )
            continue;

        var_2 = var_6;
        var_3 = var_7;
    }

    return var_3;
}

_ID15609( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        return undefined;

    var_3 = 0;

    if ( isdefined( var_2 ) && var_2.size )
    {
        var_4 = [];

        for ( var_5 = 0; var_5 < var_1.size; var_5++ )
            var_4[var_5] = 0;

        for ( var_5 = 0; var_5 < var_1.size; var_5++ )
        {
            for ( var_6 = 0; var_6 < var_2.size; var_6++ )
            {
                if ( var_1[var_5] == var_2[var_6] )
                    var_4[var_5] = 1;
            }
        }

        var_7 = 0;

        for ( var_5 = 0; var_5 < var_1.size; var_5++ )
        {
            if ( !var_4[var_5] && isdefined( var_1[var_5] ) )
            {
                var_7 = 1;
                var_3 = distance( var_0, var_1[var_5]._ID740 );
                var_8 = var_5;
                var_5 = var_1.size + 1;
            }
        }

        if ( !var_7 )
            return undefined;
    }
    else
    {
        for ( var_5 = 0; var_5 < var_1.size; var_5++ )
        {
            if ( isdefined( var_1[var_5] ) )
            {
                var_3 = distance( var_0, var_1[0]._ID740 );
                var_8 = var_5;
                var_5 = var_1.size + 1;
            }
        }
    }

    var_8 = undefined;

    for ( var_5 = 0; var_5 < var_1.size; var_5++ )
    {
        if ( isdefined( var_1[var_5] ) )
        {
            var_4 = 0;

            if ( isdefined( var_2 ) )
            {
                for ( var_6 = 0; var_6 < var_2.size; var_6++ )
                {
                    if ( var_1[var_5] == var_2[var_6] )
                        var_4 = 1;
                }
            }

            if ( !var_4 )
            {
                var_9 = distance( var_0, var_1[var_5]._ID740 );

                if ( var_9 <= var_3 )
                {
                    var_3 = var_9;
                    var_8 = var_5;
                }
            }
        }
    }

    if ( isdefined( var_8 ) )
        return var_1[var_8];
    else
        return undefined;
}

_ID15617( var_0 )
{
    if ( level._ID805.size == 1 )
        return level._ID794;

    var_1 = _ID42237::_ID16182( var_0, level._ID805 );
    return var_1;
}

_ID15618( var_0 )
{
    if ( level._ID805.size == 1 )
        return level._ID794;

    var_1 = _ID15926();
    var_2 = _ID42237::_ID16182( var_0, var_1 );
    return var_2;
}

_ID15926()
{
    var_0 = [];

    foreach ( var_2 in level._ID805 )
    {
        if ( _ID20581( var_2 ) )
            continue;

        var_0[var_0.size] = var_2;
    }

    return var_0;
}

_ID15601( var_0, var_1, var_2 )
{
    if ( isdefined( var_1 ) )
        var_3 = getaiarray( var_1 );
    else
        var_3 = getaiarray();

    if ( var_3.size == 0 )
        return undefined;

    if ( isdefined( var_2 ) )
        var_3 = _ID42237::_ID3322( var_3, var_2 );

    return _ID42237::_ID16182( var_0, var_3 );
}

_ID15602( var_0, var_1, var_2 )
{
    if ( isdefined( var_1 ) )
        var_3 = getaiarray( var_1 );
    else
        var_3 = getaiarray();

    if ( var_3.size == 0 )
        return undefined;

    return _ID15609( var_0, var_3, var_2 );
}

_ID15936( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = distance( var_0, var_1 );

    var_3 = max( 0.01, distance( var_0, var_1 ) );
    var_4 = vectornormalize( var_1 - var_0 );
    var_5 = var_2 - var_0;
    var_6 = vectordot( var_5, var_4 );
    var_6 /= var_3;
    var_6 = clamp( var_6, 0, 1 );
    return var_6;
}

_ID6738( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !_ID28190( var_0 ) )
        return 0;

    if ( !sighttracepassed( self geteye(), var_0, var_1, self ) )
        return 0;

    return 1;
}

_ID28190( var_0 )
{
    var_1 = anglestoforward( self._ID65 );
    var_2 = vectornormalize( var_0 - self._ID740 );
    var_3 = vectordot( var_1, var_2 );
    return var_3 > 0.766;
}

_ID36519()
{
    self notify( "stop_magic_bullet_shield" );

    if ( isai( self ) )
        self._ID86 = 1;

    self._ID22746 = undefined;
    self._ID256 = 0;
    self notify( "internal_stop_magic_bullet_shield" );
}

_ID22744()
{

}

_ID22746( var_0 )
{
    if ( isai( self ) )
    {

    }
    else
        self._ID486 = 100000;

    self endon( "internal_stop_magic_bullet_shield" );

    if ( isai( self ) )
        self._ID86 = 0.1;

    self._ID22746 = 1;
    self._ID256 = 1;
}

_ID10932()
{
    self._ID7._ID11035 = 1;
}

_ID12498()
{
    self._ID7._ID11035 = 0;
}

_ID12455()
{
    self._ID34236 = undefined;
}

_ID10882()
{
    self._ID34236 = 1;
}

_ID10229()
{
    _ID22746( 1 );
}

_ID15784()
{
    return self._ID511;
}

_ID32353( var_0 )
{
    self._ID511 = var_0;
}

_ID32352( var_0 )
{
    self._ID507 = var_0;
}

_ID32354( var_0 )
{
    self._ID19390 = var_0;
}

_ID32291( var_0 )
{
    self._ID377 = var_0;
}

_ID15897()
{
    return self._ID744;
}

_ID32404( var_0 )
{
    self._ID744 = var_0;
}

_ID19369( var_0 )
{
    self notify( "new_ignore_me_timer" );
    self endon( "new_ignore_me_timer" );
    self endon( "death" );

    if ( !isdefined( self._ID19370 ) )
        self._ID19370 = self._ID511;

    var_1 = getaiarray( "bad_guys" );

    foreach ( var_3 in var_1 )
    {
        if ( !isalive( var_3._ID322 ) )
            continue;

        if ( var_3._ID322 != self )
            continue;

        var_3 clearenemy();
    }

    self._ID511 = 1;
    wait(var_0);
    self._ID511 = self._ID19370;
    self._ID19370 = undefined;
}

_ID51186( var_0 )
{
    self endon( "death" );
    self endon( "pain" );
    self._ID1240 = 1;
    wait(var_0);
    self._ID1240 = 0;
}

_ID10256( var_0 )
{
    _ID42234::_ID10257( var_0 );
}

_ID18514( var_0 )
{
    _ID42234::_ID18515( var_0 );
}

_ID34001( var_0 )
{
    _ID42234::_ID34002( var_0 );
}

_ID36481( var_0 )
{
    _ID42234::_ID36482( var_0 );
}

_ID15714( var_0 )
{
    return _ID42234::_ID15715( var_0 );
}

_ID46050()
{
    return _ID42234::_ID46984();
}

_ID14578( var_0 )
{
    _ID42372::_ID14580( var_0 );
}

_ID32188( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 2.0;

    level._ID58 = var_0;

    if ( isdefined( level._ID2890 ) && isdefined( level._ID2890[var_0] ) )
        ambientplay( level._ID2890[var_0], var_1 );
}

_ID50303( var_0, var_1 )
{
    _ID42474::_ID4669( var_0, var_1 );
}

_ID14741( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 4;

    thread _ID14742( var_0, var_1, var_2, var_3 );
}
#using_animtree("generic_human");

_ID26135()
{
    if ( isdefined( self._ID7._ID9534 ) )
    {
        self._ID7._ID3291["crawl"] = self._ID7._ID9534["crawl"];
        self._ID7._ID3291["death"] = self._ID7._ID9534["death"];
        self._ID7._ID9101 = self._ID7._ID9534["blood_fx_rate"];

        if ( isdefined( self._ID7._ID9534["blood_fx"] ) )
            self._ID7._ID9100 = self._ID7._ID9534["blood_fx"];
    }

    self._ID7._ID3291["stand_2_crawl"] = [];
    self._ID7._ID3291["stand_2_crawl"][0] = %dying_stand_2_crawl_v3;

    if ( isdefined( self._ID24901 ) )
        self._ID7._ID28253 = "prone";

    self orientmode( "face angle", self._ID7._ID14740 );
    self._ID7._ID14740 = undefined;
}

_ID14742( var_0, var_1, var_2, var_3 )
{
    self._ID14789 = 1;
    self._ID7._ID14752 = var_1;
    self._ID24924 = 1;
    self._ID24901 = var_3;
    self._ID7._ID9534 = var_2;
    self._ID9106 = ::_ID26135;
    self._ID626 = 100000;
    self._ID486 = 100000;
    _ID12498();

    if ( !isdefined( var_3 ) || var_3 == 0 )
        self._ID7._ID14740 = var_0 + 181.02;
    else
    {
        self._ID7._ID14740 = var_0;
        thread animscripts\notetracks::_ID25057();
    }
}

_ID24725()
{
    self endon( "death" );

    for (;;)
    {
        var_0 = self _meth_83c1();

        if ( var_0 )
        {
            var_1 = _ID42237::_ID41075( "exo_dodge", "player_boost_land", "disable_high_jump" );

            if ( !isdefined( var_1 ) || var_1 == "player_boost_land" || var_1 == "disable_high_jump" )
                continue;

            if ( !isdefined( self._ID24725 ) )
                self._ID24725 = 1;

            _ID42237::_ID41068( "player_boost_land", "disable_high_jump" );
            waittillframeend;
            self._ID24725 = undefined;
        }

        waittillframeend;
    }
}

_ID7383()
{
    if ( getdvar( "mapname", "undefined" ) != "sanfran_b" )
        return;

    if ( !isdefined( level._ID794._ID22864 ) || !level._ID794._ID22864 )
        level._ID794._ID22864 = 1;

    wait 2.0;
    level._ID794._ID22864 = undefined;
}

_ID23980( var_0, var_1, var_2 )
{
    if ( var_1 != "MOD_GRENADE" )
    {
        var_0._ID15534 = undefined;
        return;
    }

    if ( !isdefined( var_0._ID15534 ) )
        var_0._ID15534 = 1;
    else
        var_0._ID15534++;

    if ( var_0._ID15534 == 4 )
        _ID16864( "SMART_GRENADE_KILL" );

    wait 0.1;
    var_0._ID15534 = undefined;
}

_ID35858()
{
    _ID1892( "axis", ::_ID23963 );
    _ID42237::_ID3350( getaiarray( "axis" ), ::_ID23963 );
    level._ID17389 = 0;
    level._ID794._ID13140 = [];
}

_ID23963()
{
    for (;;)
    {
        var_0 = undefined;
        self waittill( "grenade_fire",  var_0, var_1  );
        var_0._ID39468 = level._ID17389;
        level._ID17389++;
        var_0._ID743 = self._ID39468;
        var_0 thread _ID13141();
        var_0 thread _ID13140();
    }
}

_ID13141()
{
    var_0 = level._ID794;
    var_1 = self._ID39468;

    while ( isdefined( self ) )
    {
        var_2 = var_0._ID740 - self._ID740;
        var_3 = _func_216( "fraggrenade" ) + 23;
        var_4 = squared( var_3 );
        var_5 = lengthsquared( var_2 );

        if ( var_5 > var_4 )
        {
            if ( isdefined( var_0._ID13140[self._ID39468] ) )
                var_0._ID13140[self._ID39468] = undefined;
        }
        else if ( !isdefined( var_0._ID13140[self._ID39468] ) )
        {
            if ( isdefined( self._ID743 ) )
                var_0._ID13140[self._ID39468] = 1;
        }

        waittillframeend;
    }

    if ( isdefined( var_0._ID13140[var_1] ) )
        var_0._ID13140[var_1] = undefined;
}

_ID13140()
{
    var_0 = level._ID794;

    while ( isdefined( self ) )
    {
        if ( isdefined( var_0._ID13140[self._ID39468] ) )
        {
            var_1 = level._ID794 _ID42237::_ID41078( 4, "exo_dodge" );

            if ( isdefined( var_1 ) && var_1 == "exo_dodge" )
                thread _ID7365();

            continue;
        }

        waittillframeend;
    }
}

_ID7365()
{
    level._ID794 endon( "death" );

    while ( isdefined( self ) )
    {
        var_0 = level._ID794 _ID41095( 1, "damage" );

        if ( isdefined( var_0 ) && isarray( var_0 ) )
        {
            if ( var_0[5] == "MOD_GRENADE_SPLASH" && !isdefined( level._ID794._ID13142 ) )
            {
                if ( var_0[2]._ID39468 == self._ID743 && isdefined( level._ID794._ID13140[self._ID39468] ) )
                    level._ID794._ID13142 = 1;
            }

            continue;
        }

        waittillframeend;
    }
}

_ID13143()
{
    var_0 = self getlocalplayerprofiledata( "ach_escapeArtist" ) + 1;

    if ( var_0 == 20 )
        _ID16864( "GRENADE_DODGE" );

    self setlocalplayerprofiledata( "ach_escapeArtist", var_0 );
}

_ID41095( var_0, var_1 )
{
    if ( !isdefined( var_1 ) || var_1 != "death" )
        self endon( "death" );

    var_2 = spawnstruct();

    if ( isdefined( var_1 ) )
        childthread _ID42237::_ID41150( var_1, var_2 );

    var_2 childthread _ID42237::_ID1657( var_0 );
    var_2 waittill( "returned",  var_3  );
    var_2 notify( "die" );
    return var_3;
}

_ID33747()
{
    precacheshellshock( "death" );
    self waittill( "death" );

    if ( isdefined( self._ID35374 ) )
        return;

    if ( getdvar( "r_texturebits" ) == "16" )
        return;

    self shellshock( "death", 3 );
}

_ID28046()
{
    self endon( "death" );
    self endon( "stop_unresolved_collision_script" );
    _ID29759();
    childthread _ID28047();

    for (;;)
    {
        if ( self._ID1250 )
        {
            self._ID1250 = 0;

            if ( self._ID39515 >= 20 )
            {
                if ( isdefined( self._ID17973 ) )
                    self [[ self._ID17973 ]]();
                else
                    _ID10131();
            }
        }
        else
            _ID29759();

        wait 0.05;
    }
}

_ID53669( var_0 )
{
    if ( !isdefined( level._ID794._ID46500 ) )
    {
        level._ID794 thread _ID43823();
        level._ID794._ID46500 = [];
    }

    level._ID794._ID46500[level._ID794._ID46500.size] = var_0;
}

_ID51463( var_0 )
{
    if ( isdefined( level._ID794._ID46500 ) && _ID20542( level._ID794._ID46500, var_0 ) )
        level._ID794._ID46500 = _ID42237::_ID3321( level._ID794._ID46500, var_0 );
}

_ID43823()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "unresolved_collision",  var_0  );

        if ( isdefined( level._ID794._ID46500 ) )
        {
            if ( _ID42237::_ID3303( level._ID794._ID46500, var_0 ) )
                self dodamage( 10000, self._ID740, self, self, "MOD_CRUSH" );
        }

        wait 0.05;
    }
}

_ID28047()
{
    for (;;)
    {
        self waittill( "unresolved_collision" );
        self._ID1250 = 1;
        self._ID39515++;
    }
}

_ID29759()
{
    self._ID1250 = 0;
    self._ID39515 = 0;
}

_ID10131()
{
    var_0 = getnodesinradiussorted( self._ID740, 300, 0, 200, "Path" );

    if ( var_0.size )
    {
        self cancelmantle();
        self dontinterpolate();
        self setorigin( var_0[0]._ID740 );
        _ID29759();
    }
    else
        self kill();
}

_ID36530()
{
    self notify( "stop_unresolved_collision_script" );
    _ID29759();
}

_ID10281( var_0, var_1 )
{
    var_0 endon( "death" );
    self waittill( "death" );

    if ( isdefined( var_0 ) )
    {
        if ( var_0 iswaitingonsound() )
            var_0 waittill( var_1 );

        var_0 delete();
    }
}

_ID20503()
{
    return issentient( self ) && !isalive( self );
}

_ID27080( var_0, var_1, var_2, var_3, var_4 )
{
    if ( _ID20503() )
        return;

    if ( !soundexists( var_0 ) )
        return;

    var_5 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_5 endon( "death" );
    thread _ID10281( var_5, "sounddone" );

    if ( isdefined( var_1 ) )
        var_5 linkto( self, var_1, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    else
    {
        var_5._ID740 = self._ID740;
        var_5._ID65 = self._ID65;
        var_5 linkto( self );
    }

    var_5 playsound( var_0, "sounddone" );

    if ( isdefined( var_2 ) )
    {
        if ( !isdefined( _ID42408::_ID40896( var_5 ) ) )
            var_5 playrumbleonentity();

        wait 0.05;
    }
    else
        var_5 waittill( "sounddone" );

    if ( isdefined( var_3 ) )
        self notify( var_3 );

    var_5 delete();
}

_ID27081( var_0, var_1 )
{
    _ID27080( var_0, var_1, 1 );
}

_ID27079( var_0, var_1 )
{
    _ID27080( var_0, undefined, undefined, var_1 );
}

_ID27001( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_6 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_6 endon( "death" );

    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( var_2 )
        thread _ID42237::_ID10280( var_6 );

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( var_3 )
        thread _ID10287( var_6 );

    if ( isdefined( var_1 ) )
        var_6 linkto( self, var_1, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    else
    {
        var_6._ID740 = self._ID740;
        var_6._ID65 = self._ID65;
        var_6 linkto( self );
    }

    if ( isdefined( var_4 ) && var_4 > 0 )
        var_6 setvolume( 0 );

    var_6 playloopsound( var_0 );

    if ( isdefined( var_4 ) && var_4 > 0 )
        var_6 setvolume( 1, var_4 );

    self waittill( "stop sound" + var_0 );

    if ( isdefined( var_5 ) && var_5 > 0 )
    {
        var_6 setvolume( 0, var_5 );
        wait(var_5 + 0.05);
    }

    var_6 stopsounds( var_0 );
    var_6 delete();
}

_ID10287( var_0 )
{
    var_0 endon( "death" );

    while ( isdefined( self ) )
        wait 0.05;

    if ( isdefined( var_0 ) )
        var_0 delete();
}

_ID30728()
{
    var_0 = getaiarray( "allies" );
    var_1 = 0;

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( isdefined( var_0[var_2]._ID31217 ) )
            continue;

        game["character" + var_1] = var_0[var_2] _ID42226::_ID30725();
        var_1++;
    }

    game["total characters"] = var_1;
}

_ID35060( var_0 )
{
    if ( !isalive( var_0 ) )
        return 1;

    if ( !isdefined( var_0._ID14234 ) )
        var_0 _ID42237::_ID41098( "finished spawning", "death" );

    if ( isalive( var_0 ) )
        return 0;

    return 1;
}

_ID35152( var_0 )
{
    _ID42226::_ID814( var_0 );
    self waittill( "spawned",  var_1  );

    if ( _ID35060( var_1 ) )
        return;

    var_1 _ID42226::_ID24732();
    var_1 _ID42226::_ID22464( var_0 );
}

_ID21224( var_0, var_1 )
{
    iprintlnbold( var_0, var_1["key1"] );
}

_ID40472( var_0 )
{
    self endon( "death" );

    for (;;)
    {
        _ID42281::_ID11754( var_0 );
        wait 0.05;
    }
}

_ID3428( var_0 )
{
    if ( isdefined( var_0 ) )
        self._ID3189 = var_0;

    self useanimtree( level._ID30900[self._ID3189] );
}

_ID3435()
{
    if ( isarray( level._ID30904[self._ID3189] ) )
    {
        var_0 = randomint( level._ID30904[self._ID3189].size );
        self setmodel( level._ID30904[self._ID3189][var_0] );
    }
    else
        self setmodel( level._ID30904[self._ID3189] );
}

_ID35028( var_0, var_1, var_2 )
{
    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    var_3 = spawn( "script_model", var_1 );
    var_3._ID3189 = var_0;
    var_3 _ID3428();
    var_3 _ID3435();

    if ( isdefined( var_2 ) )
        var_3._ID65 = var_2;

    return var_3;
}

_ID38928( var_0, var_1 )
{
    var_2 = getent( var_0, var_1 );

    if ( !isdefined( var_2 ) )
        return;

    var_2 waittill( "trigger",  var_3  );
    level notify( var_0,  var_3  );
    return var_3;
}

_ID38929( var_0 )
{
    return _ID38928( var_0, "targetname" );
}

_ID32298( var_0, var_1 )
{
    thread _ID32301( var_0, var_1, ::_ID41089, "set_flag_on_dead" );
}

_ID32299( var_0, var_1 )
{
    thread _ID32301( var_0, var_1, ::_ID41090, "set_flag_on_dead_or_dying" );
}

_ID32302( var_0, var_1 )
{
    thread _ID32301( var_0, var_1, ::_ID12437, "set_flag_on_spawned" );
}

_ID12437( var_0 )
{
    return;
}

_ID32303( var_0, var_1 )
{
    self waittill( "spawned",  var_2  );

    if ( _ID35060( var_2 ) )
        return;

    var_0._ID2231[var_0._ID2231.size] = var_2;
    _ID13025( var_1 );
}

_ID32301( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4._ID2231 = [];

    foreach ( var_7, var_6 in var_0 )
        var_6 _ID13024( var_3 );

    _ID42237::_ID3350( var_0, ::_ID32303, var_4, var_3 );

    foreach ( var_7, var_6 in var_0 )
        var_6 _ID13027( var_3 );

    [[ var_2 ]]( var_4._ID2231 );
    _ID42237::_ID14402( var_1 );
}

_ID32305( var_0, var_1 )
{
    if ( !_ID42237::_ID14385( var_1 ) )
    {
        var_0 waittill( "trigger",  var_2  );
        _ID42237::_ID14402( var_1 );
        return var_2;
    }
}

_ID32304( var_0 )
{
    if ( _ID42237::_ID14385( var_0 ) )
        return;

    var_1 = getent( var_0, "targetname" );
    var_1 waittill( "trigger" );
    _ID42237::_ID14402( var_0 );
}

_ID20542( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_0[var_2] == var_1 )
            return 1;
    }

    return 0;
}

_ID41089( var_0, var_1, var_2 )
{
    var_10 = spawnstruct();

    if ( isdefined( var_2 ) )
    {
        var_10 endon( "thread_timed_out" );
        var_10 thread _ID41093( var_2 );
    }

    var_10._ID216 = var_0.size;

    if ( isdefined( var_1 ) && var_1 < var_10._ID216 )
        var_10._ID216 = var_1;

    _ID42237::_ID3350( var_0, ::_ID41092, var_10 );

    while ( var_10._ID216 > 0 )
        var_10 waittill( "waittill_dead guy died" );
}

_ID41090( var_0, var_1, var_2 )
{
    var_3 = [];

    foreach ( var_5 in var_0 )
    {
        if ( isalive( var_5 ) && !var_5._ID510 )
            var_3[var_3.size] = var_5;
    }

    var_0 = var_3;
    var_7 = spawnstruct();

    if ( isdefined( var_2 ) )
    {
        var_7 endon( "thread_timed_out" );
        var_7 thread _ID41093( var_2 );
    }

    var_7._ID216 = var_0.size;

    if ( isdefined( var_1 ) && var_1 < var_7._ID216 )
        var_7._ID216 = var_1;

    _ID42237::_ID3350( var_0, ::_ID41091, var_7 );

    while ( var_7._ID216 > 0 )
        var_7 waittill( "waittill_dead_guy_dead_or_dying" );
}

_ID41092( var_0 )
{
    self waittill( "death" );
    var_0._ID216--;
    var_0 notify( "waittill_dead guy died" );
}

_ID41091( var_0 )
{
    _ID42237::_ID41098( "death", "pain_death" );
    var_0._ID216--;
    var_0 notify( "waittill_dead_guy_dead_or_dying" );
}

_ID41093( var_0 )
{
    wait(var_0);
    self notify( "thread_timed_out" );
}

_ID41065( var_0 )
{
    while ( level._ID1357[var_0]._ID35279 || level._ID1357[var_0]._ID2380 )
        wait 0.25;
}

_ID41066( var_0, var_1 )
{
    while ( level._ID1357[var_0]._ID35279 + level._ID1357[var_0]._ID2380 > var_1 )
        wait 0.25;
}

_ID15544( var_0 )
{
    return level._ID1357[var_0]._ID35279 + level._ID1357[var_0]._ID2380;
}

_ID15545( var_0 )
{
    return level._ID1357[var_0]._ID2380;
}

_ID15543( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < level._ID1357[var_0]._ID2231.size; var_2++ )
    {
        if ( !isalive( level._ID1357[var_0]._ID2231[var_2] ) )
            continue;

        var_1[var_1.size] = level._ID1357[var_0]._ID2231[var_2];
    }

    return var_1;
}

_ID41119( var_0 )
{
    self endon( "damage" );
    self endon( "death" );
    self waittillmatch( "single anim",  var_0  );
}

_ID15816( var_0, var_1 )
{
    var_2 = _ID15817( var_0, var_1 );

    if ( var_2.size > 1 )
        return undefined;

    return var_2[0];
}

_ID15817( var_0, var_1 )
{
    var_2 = getaispeciesarray( "all", "all" );
    var_3 = [];

    foreach ( var_5 in var_2 )
    {
        if ( !isalive( var_5 ) )
            continue;

        switch ( var_1 )
        {
            case "targetname":
                if ( isdefined( var_5._ID1193 ) && var_5._ID1193 == var_0 )
                    var_3[var_3.size] = var_5;

                continue;
            case "script_noteworthy":
                if ( isdefined( var_5._ID922 ) && var_5._ID922 == var_0 )
                    var_3[var_3.size] = var_5;

                continue;
        }
    }

    return var_3;
}

_ID16053( var_0, var_1 )
{
    var_2 = _ID16057( var_0, var_1 );

    if ( !var_2.size )
        return undefined;

    return var_2[0];
}

_ID16057( var_0, var_1 )
{
    var_2 = getentarray( var_0, var_1 );
    var_3 = [];
    var_4 = [];

    foreach ( var_6 in var_2 )
    {
        if ( var_6._ID172 != "script_vehicle" )
            continue;

        var_4[0] = var_6;

        if ( isspawner( var_6 ) )
        {
            if ( isdefined( var_6._ID21855 ) )
            {
                var_4[0] = var_6._ID21855;
                var_3 = _ID3317( var_3, var_4 );
            }

            continue;
        }

        var_3 = _ID3317( var_3, var_4 );
    }

    return var_3;
}

_ID15818( var_0, var_1, var_2 )
{
    var_3 = _ID15819( var_0, var_1, var_2 );

    if ( var_3.size > 1 )
        return undefined;

    return var_3[0];
}

_ID15819( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = "all";

    var_3 = getaispeciesarray( "allies", var_2 );
    var_3 = _ID42237::_ID3296( var_3, getaispeciesarray( "axis", var_2 ) );
    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        switch ( var_1 )
        {
            case "targetname":
                if ( isdefined( var_3[var_5]._ID1193 ) && var_3[var_5]._ID1193 == var_0 )
                    var_4[var_4.size] = var_3[var_5];

                continue;
            case "script_noteworthy":
                if ( isdefined( var_3[var_5]._ID922 ) && var_3[var_5]._ID922 == var_0 )
                    var_4[var_4.size] = var_3[var_5];

                continue;
        }
    }

    return var_4;
}

_ID15457( var_0, var_1 )
{
    if ( isdefined( level._ID15456[var_0] ) )
    {
        if ( level._ID15456[var_0] )
        {
            wait 0.05;

            if ( isalive( self ) )
                self notify( "gather_delay_finished" + var_0 + var_1 );

            return;
        }

        level waittill( var_0 );

        if ( isalive( self ) )
            self notify( "gather_delay_finished" + var_0 + var_1 );

        return;
    }

    level._ID15456[var_0] = 0;
    wait(var_1);
    level._ID15456[var_0] = 1;
    level notify( var_0 );

    if ( isalive( self ) )
        self notify( "gat    her_delay_finished" + var_0 + var_1 );
}

_ID15456( var_0, var_1 )
{
    thread _ID15457( var_0, var_1 );
    self waittill( "gather_delay_finished" + var_0 + var_1 );
}

_ID9810( var_0 )
{
    self waittill( "death" );
    level notify( var_0 );
}

_ID16177( var_0 )
{
    if ( var_0 == 0 )
        return "0";

    if ( var_0 == 1 )
        return "1";

    if ( var_0 == 2 )
        return "2";

    if ( var_0 == 3 )
        return "3";

    if ( var_0 == 4 )
        return "4";

    if ( var_0 == 5 )
        return "5";

    if ( var_0 == 6 )
        return "6";

    if ( var_0 == 7 )
        return "7";

    if ( var_0 == 8 )
        return "8";

    if ( var_0 == 9 )
        return "9";
}

_ID16393( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];
        var_5 = var_4._ID920;

        if ( !isdefined( var_5 ) )
            continue;

        if ( !isdefined( var_1[var_5] ) )
            continue;

        var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID3318( var_0, var_1 )
{
    if ( !var_0.size )
        return var_1;

    if ( !var_1.size )
        return var_0;

    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];
        var_2[var_4._ID920] = 1;
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_4 = var_1[var_3];

        if ( isdefined( var_2[var_4._ID920] ) )
            continue;

        var_2[var_4._ID920] = 1;
        var_0[var_0.size] = var_4;
    }

    return var_0;
}

_ID3317( var_0, var_1 )
{
    if ( var_0.size == 0 )
        return var_1;

    if ( var_1.size == 0 )
        return var_0;

    var_2 = var_0;

    foreach ( var_4 in var_1 )
    {
        var_5 = 0;

        foreach ( var_7 in var_0 )
        {
            if ( var_7 == var_4 )
            {
                var_5 = 1;
                break;
            }
        }

        if ( var_5 )
        {
            continue;
            continue;
        }

        var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID3306( var_0, var_1 )
{
    var_2 = var_0;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( _ID20542( var_0, var_1[var_3] ) )
            var_2 = _ID42237::_ID3321( var_2, var_1[var_3] );
    }

    return var_2;
}

_ID3302( var_0, var_1 )
{
    if ( var_0.size != var_1.size )
        return 0;

    foreach ( var_5, var_3 in var_0 )
    {
        if ( !isdefined( var_1[var_5] ) )
            return 0;

        var_4 = var_1[var_5];

        if ( var_4 != var_3 )
            return 0;
    }

    return 1;
}

_ID16392()
{
    var_0 = [];

    if ( isdefined( self._ID31273 ) )
    {
        var_1 = _ID42237::_ID15814();

        foreach ( var_3 in var_1 )
        {
            var_4 = getvehiclenodearray( var_3, "script_linkname" );
            var_0 = _ID42237::_ID3296( var_0, var_4 );
        }
    }

    return var_0;
}

_ID11706( var_0, var_1, var_2, var_3, var_4 )
{
    for (;;)
        wait 0.05;
}

_ID11713( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_5 = gettime() + var_5 * 1000;

    while ( gettime() < var_5 )
    {
        wait 0.05;

        if ( !isdefined( var_1 ) || !isdefined( var_1._ID740 ) )
            return;
    }
}

_ID11708( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID11713( var_1, var_0, var_2, var_3, var_4, var_5 );
}

_ID11709( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_5 = gettime() + var_5 * 1000;

    while ( gettime() < var_5 )
        wait 0.05;
}

_ID11710( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_0 endon( "death" );
    var_1 endon( "death" );
    var_5 endon( var_6 );

    for (;;)
        wait 0.05;
}

_ID11714( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_5 endon( var_6 );

    for (;;)
        _ID42237::_ID11707( var_0, var_1, var_2, var_3, var_4, 0.05 );
}

_ID11711( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_6 = gettime() + var_6 * 1000;
    var_1 *= var_2;

    while ( gettime() < var_6 )
    {
        wait 0.05;

        if ( !isdefined( var_0 ) || !isdefined( var_0._ID740 ) )
            return;
    }
}

_ID11688( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    if ( isdefined( var_7 ) )
        var_8 = var_7;
    else
        var_8 = 16;

    var_9 = 360 / var_8;
    var_10 = [];

    for ( var_11 = 0; var_11 < var_8; var_11++ )
    {
        var_12 = var_9 * var_11;
        var_13 = cos( var_12 ) * var_1;
        var_14 = sin( var_12 ) * var_1;
        var_15 = var_0[0] + var_13;
        var_16 = var_0[1] + var_14;
        var_17 = var_0[2];
        var_10[var_10.size] = ( var_15, var_16, var_17 );
    }

    thread _ID11687( var_10, var_2, var_3, var_4, var_5, var_6 );
}

_ID11685( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = 16;
    var_7 = 360 / var_6;
    var_8 = [];

    for ( var_9 = 0; var_9 < var_6; var_9++ )
    {
        var_10 = var_7 * var_9;
        var_11 = cos( var_10 ) * var_1;
        var_12 = sin( var_10 ) * var_1;
        var_13 = var_0[0] + var_11;
        var_14 = var_0[1] + var_12;
        var_15 = var_0[2];
        var_8[var_8.size] = ( var_13, var_14, var_15 );
    }

    thread _ID11686( var_8, var_2, var_3, var_4, var_5 );
}

_ID11686( var_0, var_1, var_2, var_3, var_4 )
{
    for ( var_5 = 0; var_5 < var_0.size; var_5++ )
    {
        var_6 = var_0[var_5];

        if ( var_5 + 1 >= var_0.size )
            var_7 = var_0[0];
        else
            var_7 = var_0[var_5 + 1];

        thread _ID42237::_ID11707( var_6, var_7, var_1, var_2, var_3, var_4 );
    }
}

_ID11687( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    for ( var_6 = 0; var_6 < var_0.size; var_6++ )
    {
        var_7 = var_0[var_6];

        if ( var_6 + 1 >= var_0.size )
            var_8 = var_0[0];
        else
            var_8 = var_0[var_6 + 1];

        thread _ID11714( var_7, var_8, var_1, var_2, var_3, var_4, var_5 );
    }
}

_ID7863()
{
    self notify( "enemy" );
    self clearenemy();
}

_ID4917( var_0 )
{
    if ( !isdefined( level._ID4912 ) )
    {
        level._ID4912 = [];
        level._ID4912["axis"] = 1;
        level._ID4912["allies"] = 1;
        level._ID4912["neutral"] = 1;
    }

    if ( isdefined( var_0 ) )
    {
        level._ID4912[var_0] = 0;
        var_1 = getaiarray( var_0 );
    }
    else
    {
        level._ID4912["axis"] = 0;
        level._ID4912["allies"] = 0;
        level._ID4912["neutral"] = 0;
        var_1 = getaiarray();
    }

    if ( !isdefined( anim._ID7336 ) || !anim._ID7336 )
        return;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        var_1[var_2]._ID4912 = 0;

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        var_3 = var_1[var_2];

        if ( !isalive( var_3 ) )
            continue;

        if ( !var_3._ID7336 )
            continue;

        if ( !var_3._ID20918 )
            continue;

        var_3 _ID42408::_ID40957();
    }

    var_4 = gettime() - anim._ID22021["allies"];

    if ( var_4 < 1500 )
        wait(var_4 / 1000);

    if ( isdefined( var_0 ) )
        level notify( var_0 + " done speaking" );
    else
        level notify( "done speaking" );
}

_ID4918( var_0 )
{
    thread _ID4919( var_0 );
}

_ID4919( var_0 )
{
    if ( !isdefined( level._ID4912 ) )
    {
        level._ID4912 = [];
        level._ID4912["axis"] = 1;
        level._ID4912["allies"] = 1;
        level._ID4912["neutral"] = 1;
    }

    if ( !isdefined( anim._ID7336 ) || !anim._ID7336 )
        return;

    wait 1.5;

    if ( isdefined( var_0 ) )
    {
        level._ID4912[var_0] = 1;
        var_1 = getaiarray( var_0 );
    }
    else
    {
        level._ID4912["axis"] = 1;
        level._ID4912["allies"] = 1;
        level._ID4912["neutral"] = 1;
        var_1 = getaiarray();
    }

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        var_1[var_2] _ID32226( 1 );
}

_ID32226( var_0 )
{
    if ( !isdefined( anim._ID7336 ) || !anim._ID7336 )
        return;

    if ( self._ID1244 == "dog" )
        return;

    if ( var_0 )
    {
        if ( isdefined( self._ID31071 ) && !self._ID31071 )
            self._ID4912 = 0;
        else
            self._ID4912 = 1;
    }
    else
    {
        self._ID4912 = 0;

        if ( isdefined( self._ID20918 ) && self._ID20918 )
            self waittill( "done speaking" );
    }
}

_ID32469( var_0, var_1 )
{
    if ( !anim._ID7336 )
        return;

    var_2 = getarraykeys( anim._ID8775 );
    var_3 = _ID42237::_ID3303( var_2, var_1 );

    if ( !var_3 )
        return;

    var_4 = getaiarray( var_0 );

    foreach ( var_6 in var_4 )
    {
        var_6 _ID32183( var_1 );
        waittillframeend;
    }
}

_ID32183( var_0 )
{
    if ( !anim._ID7336 )
        return;

    var_1 = getarraykeys( anim._ID8775 );
    var_2 = _ID42237::_ID3303( var_1, var_0 );

    if ( !var_2 )
        return;

    if ( self._ID1244 == "dog" )
        return;

    if ( isdefined( self._ID20918 ) && self._ID20918 )
    {
        self waittill( "done speaking" );
        wait 0.1;
    }

    animscripts\battlechatter_ai::_ID29617();
    waitframe;
    self._ID40757 = var_0;
    animscripts\battlechatter_ai::_ID2131();
}

_ID14544( var_0 )
{
    thread _ID32310( 1, var_0 );
}

_ID14543( var_0 )
{
    thread _ID32310( 0, var_0 );
}

_ID32310( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "allies";

    if ( !anim._ID7336 )
        return;

    wait 1.5;
    var_2 = [];
    var_2 = getaiarray( var_1 );
    _ID42237::_ID3350( var_2, ::_ID32309, var_0 );
}

_ID32309( var_0 )
{
    self._ID14542 = var_0;
}

_ID15014()
{
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
            var_2 _ID32324( 0 );
    }

    level._ID15012 = 0;
}

_ID15015()
{
    var_0 = getaiarray( "allies" );

    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
            var_2 _ID32324( 1 );
    }

    level._ID15012 = 1;
}

_ID32324( var_0 )
{
    if ( var_0 )
        self._ID15013 = undefined;
    else
        self._ID15013 = 1;
}

_ID9762( var_0 )
{
    if ( !isplayernumber( self ) )
        return;

    switch ( var_0 )
    {
        case "mason":
        case "hudson":
        case "reznov":
            level._ID9725._ID27303 = getsubstr( var_0, 0, 3 );
            break;
        default:
            level._ID9725._ID27303 = "mas";
            break;
    }

    self._ID9727 = level._ID9725._ID27303;
}

_ID9737( var_0 )
{
    if ( isai( self ) && isalive( self ) )
    {
        if ( var_0 )
            self._ID9732 = 1;
        else
            self._ID9732 = 0;
    }
    else
    {

    }
}

_ID15872( var_0 )
{
    var_1 = getentarray( "objective", "targetname" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2]._ID922 == var_0 )
            return var_1[var_2]._ID740;
    }
}

_ID15871( var_0 )
{
    var_1 = getentarray( "objective_event", "targetname" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2]._ID922 == var_0 )
            return var_1[var_2];
    }
}

_ID41127()
{
    _ID42408::_ID41129( 1 );
}

_ID41128()
{
    _ID42408::_ID41129( 0 );
}

_ID10031()
{
    self notify( "Debug origin" );
    self endon( "Debug origin" );
    self endon( "death" );

    for (;;)
    {
        var_0 = anglestoforward( self._ID65 );
        var_1 = var_0 * 30;
        var_2 = var_0 * 20;
        var_3 = anglestoright( self._ID65 );
        var_4 = var_3 * -10;
        var_3 *= 10;
        wait 0.05;
    }
}

_ID15811()
{
    var_0 = [];

    if ( isdefined( self._ID31273 ) )
    {
        var_1 = _ID42237::_ID15814();

        for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        {
            var_3 = _ID42237::_ID16638( var_1[var_2], "script_linkname" );

            if ( isdefined( var_3 ) )
                var_0[var_0.size] = var_3;
        }
    }

    return var_0;
}

_ID15796( var_0 )
{
    var_1 = self;

    while ( isdefined( var_1._ID1191 ) )
    {
        wait 0.05;

        if ( isdefined( var_1._ID1191 ) )
        {
            switch ( var_0 )
            {
                case "vehiclenode":
                    var_1 = getvehiclenode( var_1._ID1191, "targetname" );
                    break;
                case "pathnode":
                    var_1 = getnode( var_1._ID1191, "targetname" );
                    break;
                case "ent":
                    var_1 = getent( var_1._ID1191, "targetname" );
                    break;
                case "struct":
                    var_1 = _ID42237::_ID16638( var_1._ID1191, "targetname" );
                    break;
            }

            endswitch( 5 )  case "struct" loc_332F case "pathnode" loc_3309 case "vehiclenode" loc_32F6 case "ent" loc_331C default loc_3344
            continue;
        }

        break;
    }

    var_2 = var_1;
    return var_2;
}

_ID27647( var_0 )
{
    var_1 = spawn( "script_origin", level._ID794._ID740 );
    var_1 linkto( level._ID794 );

    if ( isdefined( var_0 ) )
        thread _ID37742( var_0 );

    self setgoalentity( var_1 );

    if ( !isdefined( self._ID25551 ) )
        self._ID25551 = self._ID452;

    self._ID452 = 300;
    _ID42237::_ID41068( "goal", "timeout" );

    if ( isdefined( self._ID25551 ) )
    {
        self._ID452 = self._ID25551;
        self._ID25551 = undefined;
    }

    var_1 delete();
}

_ID37742( var_0 )
{
    self endon( "death" );
    wait(var_0);
    self notify( "timeout" );
}

_ID32322()
{
    if ( isdefined( self._ID32321 ) )
        return;

    self._ID25549 = self._ID760;
    self._ID25562 = self._ID761;
    self._ID25563 = self._ID628;
    self._ID760 = 8;
    self._ID761 = 8;
    self._ID628 = 1;
    self._ID32321 = 1;
}

_ID39524()
{
    if ( !isdefined( self._ID32321 ) )
        return;

    self._ID760 = self._ID25549;
    self._ID761 = self._ID25562;
    self._ID628 = self._ID25563;
    self._ID32321 = undefined;
}

_ID3329( var_0 )
{
    var_1 = [];
    var_2 = getarraykeys( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( !isalive( var_0[var_4] ) )
            continue;

        var_1[var_4] = var_0[var_4];
    }

    return var_1;
}

_ID3328( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isalive( var_3 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID3330( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isalive( var_3 ) )
            continue;

        if ( var_3 _ID11498() )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID3326( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( var_0[var_3] != var_1 )
            var_2[var_2.size] = var_0[var_3];
    }

    return var_2;
}

_ID3325( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size - 1; var_2++ )
    {
        if ( var_2 == var_1 )
        {
            var_0[var_2] = var_0[var_2 + 1];
            var_1++;
        }
    }

    var_0[var_0.size - 1] = undefined;
    return var_0;
}

_ID3319( var_0, var_1, var_2 )
{
    foreach ( var_5, var_4 in var_0 )
        var_4 notify( var_1,  var_2  );
}

_ID36709()
{
    var_0 = spawnstruct();
    var_0._ID3291 = [];
    var_0._ID21937 = 0;
    return var_0;
}

_ID36712( var_0, var_1 )
{
    var_0._ID3291[var_0._ID21937] = var_1;
    var_1._ID36708 = var_0._ID21937;
    var_0._ID21937++;
}

_ID36713( var_0, var_1 )
{
    _ID36718( var_0, var_1 );
    var_0._ID3291[var_0._ID21937 - 1] = undefined;
    var_0._ID21937--;
}

_ID36714( var_0, var_1 )
{
    if ( isdefined( var_0._ID3291[var_0._ID21937 - 1] ) )
    {
        var_0._ID3291[var_1] = var_0._ID3291[var_0._ID21937 - 1];
        var_0._ID3291[var_1]._ID36708 = var_1;
        var_0._ID3291[var_0._ID21937 - 1] = undefined;
        var_0._ID21937 = var_0._ID3291.size;
    }
    else
    {
        var_0._ID3291[var_1] = undefined;
        _ID36715( var_0 );
    }
}

_ID36715( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0._ID3291 )
    {
        if ( !isdefined( var_3 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    var_0._ID3291 = var_1;

    foreach ( var_6, var_3 in var_0._ID3291 )
        var_3._ID36708 = var_6;

    var_0._ID21937 = var_0._ID3291.size;
}

_ID36718( var_0, var_1 )
{
    var_0 _ID42408::_ID36717( var_0._ID3291[var_0._ID21937 - 1], var_1 );
}

_ID36716( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_1; var_2++ )
        var_0 _ID42408::_ID36717( var_0._ID3291[var_2], var_0._ID3291[randomint( var_0._ID21937 )] );
}

_ID16051()
{
    if ( level._ID8534 )
        return " + usereload";
    else
        return " + activate";
}

_ID9527( var_0 )
{
    animscripts\battlechatter_ai::_ID9529( var_0 );
}

_ID15992( var_0, var_1 )
{
    var_2 = newhudelem();

    if ( level._ID8534 )
    {
        var_2._ID1331 = 68;
        var_2._ID1339 = 35;
    }
    else
    {
        var_2._ID1331 = 58;
        var_2._ID1339 = 95;
    }

    var_2._ID44 = "center";
    var_2._ID45 = "middle";
    var_2._ID499 = "left";
    var_2._ID1284 = "middle";

    if ( isdefined( var_1 ) )
        var_3 = var_1;
    else
        var_3 = level._ID13699;

    var_2 setclock( var_3, var_0, "hudStopwatch", 64, 64 );
    return var_2;
}

_ID25331( var_0 )
{
    var_1 = 0;

    for ( var_2 = 0; var_2 < level._ID1821.size; var_2++ )
    {
        if ( level._ID1821[var_2] != var_0 )
            continue;

        var_1 = 1;
        break;
    }

    return var_1;
}

_ID25332( var_0 )
{
    var_1 = 0;

    for ( var_2 = 0; var_2 < level._ID19477.size; var_2++ )
    {
        if ( level._ID19477[var_2] != var_0 )
            continue;

        var_1 = 1;
        break;
    }

    return var_1;
}

_ID32395( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < level._ID1821.size; var_2++ )
    {
        if ( level._ID1821[var_2] == var_0 )
            continue;

        var_1[var_1.size] = level._ID1821[var_2];
    }

    level._ID1821 = var_1;
    var_3 = 0;

    for ( var_2 = 0; var_2 < level._ID19477.size; var_2++ )
    {
        if ( level._ID19477[var_2] != var_0 )
            continue;

        var_3 = 1;
    }

    if ( !var_3 )
        level._ID19477[level._ID19477.size] = var_0;
}

_ID32394( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < level._ID19477.size; var_2++ )
    {
        if ( level._ID19477[var_2] == var_0 )
            continue;

        var_1[var_1.size] = level._ID19477[var_2];
    }

    level._ID19477 = var_1;
    var_3 = 0;

    for ( var_2 = 0; var_2 < level._ID1821.size; var_2++ )
    {
        if ( level._ID1821[var_2] != var_0 )
            continue;

        var_3 = 1;
    }

    if ( !var_3 )
        level._ID1821[level._ID1821.size] = var_0;
}

_ID23778( var_0 )
{
    if ( level._ID23777 )
        return;

    if ( isdefined( level._ID24793 ) )
        return;

    if ( isdefined( var_0 ) )
        setdvar( "ui_deadquote", var_0 );

    _ID54275();
    setsaveddvar( "hud_missionFailed", 1 );
    setsaveddvar( "hud_showstance", 0 );
    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "ui_hideCompassTicker", 1 );
    setsaveddvar( "ammoCounterHide", 1 );
    level._ID23777 = 1;
    _ID42237::_ID14402( "missionfailed" );
    _ID42475::_ID34575( "friendly_fire_mission_failed" );

    if ( _ID3270() )
        return;

    if ( getdvar( "failure_disabled" ) == "1" )
        return;

    if ( isdefined( level._ID23764 ) )
    {
        thread [[ level._ID23764 ]]();
        return;
    }

    _ID42408::_ID23770( 0 );
    missionfailed();
    _ID42313::_ID52053();
    _ID42313::hud_stats_display_kill();
}

_ID32384( var_0 )
{
    level._ID23764 = var_0;
}

_ID916( var_0 )
{
    if ( isdefined( self._ID916 ) )
    {
        wait(self._ID916);
        return 1;
    }
    else if ( isdefined( var_0 ) && isdefined( self._ID31121 ) && isdefined( var_0.always_use_delay_min ) && var_0.always_use_delay_min )
    {
        wait(self._ID31121);
        return 1;
    }
    else if ( isdefined( self._ID31121 ) && isdefined( self._ID31120 ) )
    {
        wait(randomfloatrange( self._ID31121, self._ID31120 ));
        return 1;
    }

    return 0;
}

_ID31523()
{
    var_0 = gettime();

    if ( isdefined( self._ID31523 ) )
    {
        wait(self._ID31523);

        if ( isdefined( self._ID31524 ) )
            self._ID31523 = self._ID31523 + self._ID31524;
    }
    else if ( isdefined( self._ID31526 ) && isdefined( self._ID31525 ) )
    {
        wait(randomfloatrange( self._ID31526, self._ID31525 ));

        if ( isdefined( self._ID31524 ) )
        {
            self._ID31526 = self._ID31526 + self._ID31524;
            self._ID31525 = self._ID31525 + self._ID31524;
        }
    }

    return gettime() - var_0;
}

_ID17558( var_0 )
{
    _ID42412::_ID17557( var_0 );
}

_ID17584( var_0, var_1 )
{
    _ID42412::_ID17583( var_0, var_1 );
}

_ID15741( var_0, var_1 )
{
    var_2 = getaiarray( var_0 );
    var_3 = [];

    for ( var_4 = 0; var_4 < var_2.size; var_4++ )
    {
        var_5 = var_2[var_4];

        if ( !isdefined( var_5._ID31209 ) )
            continue;

        if ( var_5._ID31209 != var_1 )
            continue;

        var_3[var_3.size] = var_5;
    }

    return var_3;
}

_ID15553()
{
    var_0 = getaiarray( "allies" );
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( !isdefined( var_3._ID31209 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID15555( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self._ID1191;

    var_1 = [];
    var_2 = getentarray( var_0, "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    var_2 = getnodearray( var_0, "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    var_2 = _ID42237::_ID16640( var_0, "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    var_2 = getvehiclenodearray( var_0, "targetname" );
    var_1 = _ID42237::_ID3296( var_1, var_2 );
    return var_1;
}

_ID12445()
{
    if ( isdefined( self._ID31209 ) )
        return;

    if ( !isdefined( self._ID25508 ) )
        return;

    _ID32315( self._ID25508 );
    self._ID25508 = undefined;
}

_ID12446()
{
    self._ID11569 = 1;
    _ID12445();
}

_ID10871()
{
    if ( isdefined( self._ID24735 ) )
    {
        self endon( "death" );
        self waittill( "done_setting_new_color" );
    }

    self clearfixednodesafevolume();

    if ( !isdefined( self._ID31209 ) )
        return;

    self._ID25508 = self._ID31209;
    level._ID3365[_ID47255()][self._ID31209] = _ID42237::_ID3321( level._ID3365[_ID47255()][self._ID31209], self );
    _ID42271::_ID22135();
    self._ID31209 = undefined;
    self._ID9487 = undefined;
}

_ID47255()
{
    if ( _ID49894( self ) && isdefined( self._ID31474 ) )
        return self._ID31474;

    if ( _ID42411::_ID20992() && isdefined( self._ID31474 ) )
        return self._ID31474;

    if ( isdefined( self._ID1194 ) )
        return self._ID1194;

    return "none";
}

_ID49894( var_0 )
{
    return isdefined( var_0 ) && isdefined( var_0._ID170 ) && issubstr( var_0._ID170, "turret" );
}

_ID7867()
{
    _ID10871();
}

_ID7363( var_0 )
{
    var_1 = level._ID8267[tolower( var_0 )];

    if ( isdefined( self._ID31209 ) && var_1 == self._ID31209 )
        return 1;
    else
        return 0;
}

_ID15740()
{
    var_0 = self._ID31209;
    return var_0;
}

_ID33852( var_0 )
{
    return level._ID8267[tolower( var_0 )];
}

_ID32315( var_0 )
{
    var_1 = _ID33852( var_0 );

    if ( !isai( self ) )
    {
        _ID32316( var_1 );
        return;
    }

    if ( self._ID1194 == "allies" )
    {
        self._ID381 = 1;
        self._ID382 = 64;
        self._ID760 = 0;
        self._ID761 = 0;
    }

    self._ID31097 = undefined;
    self._ID31096 = undefined;
    self._ID25508 = undefined;

    if ( isdefined( self._ID31209 ) )
        level._ID3365[_ID47255()][self._ID31209] = _ID42237::_ID3321( level._ID3365[_ID47255()][self._ID31209], self );

    self._ID31209 = var_1;
    level._ID3365[_ID47255()][self._ID31209] = _ID42237::_ID3293( level._ID3365[_ID47255()][self._ID31209], self );
    thread _ID42408::_ID48911( var_1 );
}

_ID32316( var_0 )
{
    self._ID31209 = var_0;
    self._ID25508 = undefined;
}

_ID20929( var_0, var_1 )
{
    var_2 = strtok( var_0, " " );
    var_3 = [];
    var_4 = [];

    for ( var_5 = 0; var_5 < var_2.size; var_5++ )
    {
        var_6 = undefined;

        if ( issubstr( var_2[var_5], "r" ) )
            var_6 = "r";
        else if ( issubstr( var_2[var_5], "b" ) )
            var_6 = "b";
        else if ( issubstr( var_2[var_5], "y" ) )
            var_6 = "y";
        else if ( issubstr( var_2[var_5], "c" ) )
            var_6 = "c";
        else if ( issubstr( var_2[var_5], "g" ) )
            var_6 = "g";
        else if ( issubstr( var_2[var_5], "p" ) )
            var_6 = "p";
        else if ( issubstr( var_2[var_5], "o" ) )
            var_6 = "o";
        else if ( issubstr( var_2[var_5], "w" ) )
            var_6 = "w";
        else if ( issubstr( var_2[var_5], "a" ) )
            var_6 = "a";
        else if ( issubstr( var_2[var_5], "l" ) )
            var_6 = "l";
        else
        {

        }

        var_4[var_6] = var_2[var_5];
        var_3[var_3.size] = var_6;
    }

    for ( var_5 = 0; var_5 < var_2.size; var_5++ )
    {
        level._ID52374[var_1][var_2[var_5]] = _ID42237::_ID3332( level._ID52374[var_1][var_2[var_5]] );

        for ( var_7 = 0; var_7 < level._ID52374[var_1][var_2[var_5]].size; var_7++ )
            level._ID52374[var_1][var_2[var_5]][var_7]._ID9487 = var_2[var_5];
    }

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        level._ID3365[var_1][var_3[var_5]] = _ID3328( level._ID3365[var_1][var_3[var_5]] );
        level._ID9488[var_1][var_3[var_5]] = var_4[var_3[var_5]];
    }

    for ( var_5 = 0; var_5 < var_2.size; var_5++ )
        thread _ID42271::_ID20928( var_2[var_5], var_3[var_5], var_1 );
}

_ID7848( var_0, var_1 )
{

}

_ID7832( var_0 )
{

}

_ID29701()
{
    thread _ID42271::_ID8275();
}

_ID10959()
{
    self._ID29701 = undefined;
    self notify( "_disable_reinforcement" );
}

_ID36540()
{
    self notify( "_disable_reinforcement" );
}

_ID36452( var_0, var_1 )
{

}

_ID35143( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = "allies";

    thread _ID42271::_ID8280( var_0, var_1 );
}

_ID7890()
{
    level._ID9439 = [];
}

_ID32421( var_0, var_1 )
{
    if ( !isdefined( level._ID9439 ) )
        level._ID9439 = [];

    var_0 = _ID33852( var_0 );
    var_1 = _ID33852( var_1 );
    level._ID9439[var_0] = var_1;

    if ( !isdefined( level._ID9439[var_1] ) )
        _ID32284( var_1 );
}

_ID53080( var_0, var_1 )
{

}

_ID32284( var_0 )
{
    if ( !isdefined( level._ID9439 ) )
        level._ID9439 = [];

    level._ID9439[var_0] = "none";
}

_ID50407( var_0 )
{

}

_ID18155()
{
    if ( self._ID1194 == "axis" )
        return isdefined( self._ID31097 ) || isdefined( self._ID31209 );

    return isdefined( self._ID31096 ) || isdefined( self._ID31209 );
}

_ID15633()
{
    var_0 = _ID42408::_ID15628();
    var_1 = var_0["team"];

    foreach ( var_3 in var_0["codes"] )
    {
        var_4 = level._ID3364[var_1][var_3];

        if ( isdefined( var_4 ) )
            return var_4;
    }

    return undefined;
}

_ID15629()
{
    var_0 = _ID42408::_ID15628();
    var_1 = var_0["team"];

    foreach ( var_3 in var_0["codes"] )
    {
        var_4 = level._ID3363[var_1][var_3];

        if ( isdefined( var_4 ) )
            return var_4;
    }

    return undefined;
}

_ID14536( var_0 )
{
    var_1 = gettime() + var_0 * 1000;

    while ( gettime() < var_1 )
    {
        self playrumblelooponentity( "damage_heavy" );
        wait 0.05;
    }
}

_ID14533( var_0 )
{
    self endon( "death" );
    self endon( "flashed" );
    wait 0.2;
    self enablehealthshield( 0 );
    wait(var_0 + 2);
    self enablehealthshield( 1 );
}

_ID24816( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [ 0.8, 0.7, 0.7, 0.6 ];
    var_6 = [ 1.0, 0.8, 0.6, 0.6 ];

    foreach ( var_12, var_8 in var_6 )
    {
        var_9 = ( var_1 - 0.85 ) / 0.15;

        if ( var_9 > var_2 )
            var_2 = var_9;

        if ( var_2 < 0.25 )
            var_2 = 0.25;

        var_10 = 0.3;

        if ( var_1 > 1 - var_10 )
            var_1 = 1.0;
        else
            var_1 /= ( 1 - var_10 );

        if ( var_4 != self._ID1194 )
            var_11 = var_1 * var_2 * 6.0;
        else
            var_11 = var_1 * var_2 * 3.0;

        if ( var_11 < 0.25 )
            continue;

        var_11 = var_8 * var_11;

        if ( isdefined( self._ID23099 ) && var_11 > self._ID23099 )
            var_11 = self._ID23099;

        self._ID14521 = var_4;
        self notify( "flashed" );
        self._ID14516 = gettime() + var_11 * 1000;
        self shellshock( "flashbang", var_11 );
        thread _ID42463::_ID50842();
        _ID42237::_ID14402( "player_flashed" );

        if ( var_1 * var_2 > 0.5 )
            thread _ID14533( var_11 );

        wait(var_5[var_12]);
    }

    thread _ID42408::_ID39464( 0.05 );
}

_ID14532()
{
    self endon( "death" );

    for (;;)
    {
        self waittill( "flashbang",  var_0, var_1, var_2, var_3, var_4  );

        if ( "1" == getdvar( "noflash" ) )
            continue;

        if ( _ID20581( self ) )
            continue;

        if ( isdefined( self._ID37689 ) )
        {
            var_5 = 0.8;
            var_6 = 1.0 - var_5;
            self._ID37689 = undefined;

            if ( var_1 < var_6 )
                continue;

            var_1 = ( var_1 - var_6 ) / var_5;
        }

        var_7 = ( var_1 - 0.85 ) / 0.15;

        if ( var_7 > var_2 )
            var_2 = var_7;

        if ( var_2 < 0.25 )
            var_2 = 0.25;

        var_8 = 0.3;

        if ( var_1 > 1 - var_8 )
            var_1 = 1.0;
        else
            var_1 /= ( 1 - var_8 );

        if ( var_4 != self._ID1194 )
            var_9 = var_1 * var_2 * 6.0;
        else
            var_9 = var_1 * var_2 * 3.0;

        if ( var_9 < 0.25 )
            continue;

        if ( isdefined( self._ID23099 ) && var_9 > self._ID23099 )
            var_9 = self._ID23099;

        self._ID14521 = var_4;
        self notify( "flashed" );
        self._ID14516 = gettime() + var_9 * 1000;
        self shellshock( "flashbang", var_9 );
        thread _ID42463::_ID50842();
        self lightset2( "flashed", 0.1 );
        _ID42237::_ID14402( "player_flashed" );
        thread _ID42408::_ID39464( var_9 );
        wait 0.1;

        if ( isdefined( level._ID794._ID24809 ) && level._ID794._ID24809 )
            level._ID794 lightset2( level._ID44391, 0.1 );
        else
            self lightset3( 0.1 );

        if ( var_1 * var_2 > 0.5 )
            thread _ID14533( var_9 );

        if ( var_9 > 2 )
            thread _ID14536( 0.75 );
        else
            thread _ID14536( 0.25 );

        if ( var_4 != "allies" )
            thread _ID14534( var_9, var_4 );
    }
}

_ID14534( var_0, var_1 )
{
    wait 0.05;
    var_2 = getaiarray( "allies" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( distancesquared( var_2[var_3]._ID740, self._ID740 ) < 122500 )
        {
            var_4 = var_0 + randomfloatrange( -1000, 1500 );

            if ( var_4 > 4.5 )
                var_4 = 4.5;
            else if ( var_4 < 0.25 )
                continue;

            var_5 = gettime() + var_4 * 1000;

            if ( !isdefined( var_2[var_3]._ID14516 ) || var_2[var_3]._ID14516 < var_5 )
            {
                var_2[var_3]._ID14521 = var_1;
                var_2[var_3] _ID14510( var_4 );
            }
        }
    }
}

_ID29840()
{
    _ID42229::_ID29837();
}

_ID26403( var_0 )
{
    var_0 += "";

    if ( isdefined( level._ID9245 ) )
    {
        var_1 = level._ID9245[var_0];

        if ( isdefined( var_1 ) )
        {
            foreach ( var_3 in var_1 )
                var_3 _ID42237::_ID26402();

            return;
        }
    }
    else
    {
        foreach ( var_6 in level._ID9242 )
        {
            if ( !isdefined( var_6._ID40005["exploder"] ) )
                continue;

            if ( var_6._ID40005["exploder"] != var_0 )
                continue;

            var_6 _ID42237::_ID26402();
        }
    }
}

_ID29841( var_0 )
{
    var_0 += "";

    if ( isdefined( level._ID9245 ) )
    {
        var_1 = level._ID9245[var_0];

        if ( isdefined( var_1 ) )
        {
            foreach ( var_3 in var_1 )
                var_3 _ID29840();

            return;
        }
    }
    else
    {
        foreach ( var_6 in level._ID9242 )
        {
            if ( !isdefined( var_6._ID40005["exploder"] ) )
                continue;

            if ( var_6._ID40005["exploder"] != var_0 )
                continue;

            var_6 _ID29840();
        }
    }
}

_ID16300( var_0 )
{
    var_1 = [];

    if ( isdefined( level._ID9240 ) )
    {
        var_2 = level._ID9240[var_0];

        if ( isdefined( var_2 ) )
            var_1 = var_2;
    }
    else
    {
        for ( var_3 = 0; var_3 < level._ID9242.size; var_3++ )
        {
            if ( level._ID9242[var_3]._ID40005["fxid"] == var_0 )
                var_1[var_1.size] = level._ID9242[var_3];
        }
    }

    return var_1;
}

_ID48236( var_0 )
{
    if ( isdefined( level._ID9240 ) )
    {
        var_1 = level._ID9240[var_0];

        if ( isdefined( var_1 ) )
            return var_1[0];
    }
    else
    {
        for ( var_2 = 0; var_2 < level._ID9242.size; var_2++ )
        {
            if ( level._ID9242[var_2]._ID40005["fxid"] == var_0 )
                return level._ID9242[var_2];
        }
    }

    return undefined;
}

_ID19379( var_0 )
{
    self notify( "ignoreAllEnemies_threaded" );
    self endon( "ignoreAllEnemies_threaded" );

    if ( var_0 )
    {
        self._ID25530 = self getthreatbiasgroup();
        var_1 = undefined;
        createthreatbiasgroup( "ignore_everybody" );
        self setthreatbiasgroup( "ignore_everybody" );
        var_2 = [];
        var_2["axis"] = "allies";
        var_2["allies"] = "axis";
        var_3 = getaiarray( var_2[self._ID1194] );
        var_4 = [];

        for ( var_5 = 0; var_5 < var_3.size; var_5++ )
            var_4[var_3[var_5] getthreatbiasgroup()] = 1;

        var_6 = getarraykeys( var_4 );

        for ( var_5 = 0; var_5 < var_6.size; var_5++ )
            setthreatbias( var_6[var_5], "ignore_everybody", 0 );
    }
    else
    {
        var_1 = undefined;

        if ( self._ID25530 != "" )
            self setthreatbiasgroup( self._ID25530 );

        self._ID25530 = undefined;
    }
}

_ID40118()
{
    _ID42413::_ID40217();
}

_ID40226()
{
    thread _ID42413::_ID40227();
}

_ID40184( var_0 )
{
    _ID42413::_ID40186( var_0 );
}

_ID40191( var_0 )
{
    _ID42413::_ID40192( var_0 );
}

_ID40130( var_0, var_1 )
{
    _ID42411::_ID40218( var_0, var_1 );
}

_ID17434( var_0 )
{
    return bullettrace( var_0, var_0 + ( 0, 0, -100000 ), 0, self, 0, 0, 0, 0, 0, 1, 0, 1 )["position"];
}

_ID7285( var_0 )
{
    self._ID27473 = self._ID27473 + var_0;
    self notify( "update_health_packets" );

    if ( self._ID27473 >= 3 )
        self._ID27473 = 3;
}

_ID16728( var_0 )
{
    var_1 = _ID16729( var_0 );
    return var_1[0];
}

_ID16729( var_0 )
{
    return _ID42413::_ID1473( var_0 );
}

_ID10419( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID1952();

    if ( !isdefined( level._ID35718 ) )
        level._ID35718 = [];

    level._ID35718[var_0] = _ID1953( var_0, var_1, var_2, var_3, [ var_4 ], var_5 );
}

_ID48841( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 200;

    var_2 = spawn( "script_origin", level._ID794._ID740 );
    var_2._ID740 = level._ID794._ID740;
    level._ID794 playerlinkto( var_2 );
    var_3 = distance( level._ID794._ID740, var_0 );
    var_4 = var_3 / var_1;
    var_2 moveto( var_0, var_3 / var_1, 0.05, 0.05 );
    wait(var_4);
    level._ID794 unlink();
}

_ID1951( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    _ID1952();
    var_0 = tolower( var_0 );

    if ( isdefined( var_4 ) )
    {
        if ( var_4.size > 2 )
        {
            var_6 = [];
            var_6[0] = var_4[0];
            var_6[1] = var_4[1];
            var_4 = var_6;
        }

        if ( !isdefined( level._ID36065 ) )
            level._ID36065 = [];

        foreach ( var_8 in var_4 )
        {
            if ( !_ID42237::_ID3303( level._ID36065, var_8 ) )
                level._ID36065[level._ID36065.size] = var_8;
        }
    }

    if ( isdefined( level._ID35718 ) && isdefined( level._ID35718[var_0] ) )
        var_11 = level._ID35718[var_0];
    else
        var_11 = _ID1953( var_0, var_1, var_2, var_3, var_4, var_5 );

    if ( !isdefined( var_1 ) )
    {
        if ( !isdefined( level._ID35718 ) )
        {

        }
        else if ( !issubstr( var_0, "no_game" ) )
        {
            if ( !isdefined( level._ID35718[var_0] ) )
                return;
        }
    }

    level._ID35768[level._ID35768.size] = var_11;
    level._ID35639[var_0] = var_11;
}

_ID32455( var_0, var_1 )
{
    if ( !isdefined( level._ID35639 ) )
        return;

    if ( !isdefined( level._ID35639[var_0] ) )
        return;

    var_0 = tolower( var_0 );

    if ( var_1.size > 2 )
    {
        var_2 = [];
        var_2[0] = var_1[0];
        var_2[1] = var_1[1];
        var_1 = var_2;
    }

    if ( !isdefined( level._ID36065 ) )
        level._ID36065 = [];

    foreach ( var_4 in var_1 )
    {
        if ( !_ID42237::_ID3303( level._ID36065, var_4 ) )
            level._ID36065[level._ID36065.size] = var_4;
    }

    level._ID35639[var_0]["transients_to_load"] = var_1;
}

_ID20569()
{
    return issubstr( level._ID35897, "no_game" );
}

_ID1953( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = [];
    var_6["name"] = var_0;
    var_6["start_func"] = var_1;
    var_6["start_loc_string"] = var_2;
    var_6["logic_func"] = var_3;
    var_6["transients_to_load"] = var_4;
    var_6["catchup_function"] = var_5;
    return var_6;
}

_ID1952()
{
    if ( !isdefined( level._ID35768 ) )
        level._ID35768 = [];
}

_ID22213()
{
    return level._ID35768.size > 1;
}

_ID32271( var_0 )
{
    level._ID10127 = var_0;
}

_ID10126( var_0 )
{
    level._ID10126 = var_0;
}

_ID22394( var_0, var_1, var_2, var_3 )
{
    thread _ID42408::_ID22395( var_0, var_1, var_2, var_3 );
}

_ID41803( var_0, var_1, var_2, var_3 )
{
    var_4 = vectornormalize( ( var_2[0], var_2[1], 0 ) - ( var_0[0], var_0[1], 0 ) );
    var_5 = anglestoforward( ( 0, var_1[1], 0 ) );
    return vectordot( var_5, var_4 ) >= var_3;
}

_ID15689( var_0, var_1, var_2 )
{
    var_3 = vectornormalize( var_2 - var_0 );
    var_4 = anglestoforward( var_1 );
    var_5 = vectordot( var_4, var_3 );
    return var_5;
}

_ID41804( var_0, var_1 )
{
    var_2 = undefined;

    for ( var_3 = 0; var_3 < level._ID805.size; var_3++ )
    {
        var_4 = level._ID805[var_3] geteye();
        var_2 = _ID42237::_ID41802( var_4, level._ID805[var_3] getplayerangles(), var_0, var_1 );

        if ( !var_2 )
            return 0;
    }

    return 1;
}

_ID45375( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
    {
        var_1 = var_0;
        var_0 = 0;
    }

    wait(randomfloatrange( var_0, var_1 ));

    if ( 1 )
        return;

    var_2 = undefined;

    if ( !isdefined( level._ID1823 ) )
    {
        level._ID1823 = 1;
        level._ID40932 = 0;
        var_2 = level._ID40932;
        level._ID40932++;
        thread _ID42408::_ID41057( var_0, var_1 );
    }
    else
    {
        var_2 = level._ID40932;
        level._ID40932++;
        waitframe;
    }

    waitframe;
    wait(level._ID40931[var_2]);
}

_ID40847( var_0, var_1 )
{
    var_2 = var_1 * 1000 - ( gettime() - var_0 );
    var_2 *= 0.001;

    if ( var_2 > 0 )
        wait(var_2);
}

_ID4945()
{
    anim._ID31555 = gettime();
}

_ID10805( var_0 )
{
    var_1 = _func_29d( var_0, "squelchname" );

    if ( self == level || var_1 != "" )
    {
        _ID28864( var_0, undefined, var_1 );
        return;
    }

    _ID4945();
    _ID42259::_ID3108( self, var_0 );
}

_ID15504( var_0, var_1 )
{
    _ID4945();
    _ID42259::_ID3026( self, var_0, undefined, undefined, var_1 );
}

_ID28864( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID27600 ) )
    {
        var_3 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_3 linkto( level._ID794, "", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        level._ID27600 = var_3;
    }

    _ID4945();

    if ( !isdefined( var_1 ) )
        return level._ID27600 _ID15093( ::_ID28870, var_0, var_2 );
    else
        return level._ID27600 _ID15099( var_1, ::_ID28870, var_0, var_2 );
}

_ID28870( var_0, var_1 )
{
    if ( !isdefined( var_1 ) )
        var_1 = "none";

    level._ID27602 = 0;

    if ( var_1 != "none" && isdefined( level._ID30908["squelches"][var_1] ) )
        _ID27080( level._ID30908["squelches"][var_1]["on"], undefined, 1 );

    var_2 = 0;

    if ( isdefined( level._ID30908[var_0] ) )
        var_2 = _ID27080( level._ID30908[var_0], undefined, 1 );
    else
        var_2 = _ID27080( var_0, undefined, 1 );

    if ( var_1 != "none" && isdefined( level._ID30908["squelches"][var_1] ) )
        thread _ID28879( var_1 );

    return var_2;
}

_ID28868( var_0 )
{
    if ( !isdefined( level._ID27601 ) )
        level._ID27601 = [];

    var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
    level._ID27601[level._ID27601.size] = var_1;
    var_1 endon( "death" );
    thread _ID10281( var_1, "sounddone" );
    var_1._ID740 = level._ID27600._ID740;
    var_1._ID65 = level._ID27600._ID65;
    var_1 linkto( level._ID27600 );
    var_1 playsound( level._ID30908[var_0], "sounddone" );

    if ( !isdefined( _ID42408::_ID40896( var_1 ) ) )
        var_1 playrumbleonentity();

    wait 0.05;
    level._ID27601 = _ID42237::_ID3321( level._ID27601, var_1 );
    var_1 delete();
}

_ID28876()
{
    if ( !isdefined( level._ID27600 ) )
        return;

    level._ID27600 delete();
}

_ID28869()
{
    if ( !isdefined( level._ID27601 ) )
        return;

    foreach ( var_1 in level._ID27601 )
    {
        if ( isdefined( var_1 ) )
        {
            var_1 playrumbleonentity();
            wait 0.05;
            var_1 delete();
        }
    }

    level._ID27601 = undefined;
}

_ID28865()
{
    if ( !isdefined( level._ID27600 ) )
        return;

    level._ID27600 _ID15095();
}

_ID28874( var_0 )
{
    if ( !isdefined( level._ID27600 ) )
        return;

    if ( !isdefined( level._ID27600._ID15093 ) )
        return;

    var_1 = [];
    var_2 = 0;
    var_3 = level._ID27600._ID15093.size;

    for ( var_4 = 0; var_4 < var_3; var_4++ )
    {
        if ( var_4 == 0 && isdefined( level._ID27600._ID15093[0]._ID15096 ) && isdefined( level._ID27600._ID15093[0]._ID15096 ) )
        {
            var_1[var_1.size] = level._ID27600._ID15093[var_4];
            continue;
        }

        if ( isdefined( level._ID27600._ID15093[var_4]._ID26245 ) && level._ID27600._ID15093[var_4]._ID26245 == var_0 )
        {
            level._ID27600._ID15093[var_4] notify( "death" );
            level._ID27600._ID15093[var_4] = undefined;
            var_2 = 1;
            continue;
        }

        var_1[var_1.size] = level._ID27600._ID15093[var_4];
    }

    if ( var_2 )
        level._ID27600._ID15093 = var_1;
}

_ID28866( var_0 )
{
    if ( !isdefined( level._ID27600 ) )
    {
        var_1 = spawn( "script_origin", ( 0, 0, 0 ) );
        var_1 linkto( level._ID794, "", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        level._ID27600 = var_1;
    }

    level._ID27600 _ID27080( level._ID30908[var_0], undefined, 1 );
}

_ID28875( var_0 )
{
    return _ID28864( var_0, 0.05 );
}

_ID34415( var_0, var_1 )
{
    var_2 = _func_29d( var_0, "squelchname" );
    _ID42408::_ID1970( var_0 );
    _ID28864( var_0, var_1, var_2 );
}

_ID34416( var_0 )
{
    _ID42408::_ID1970( var_0 );
    _ID28876();
    _ID28866( var_0 );
}

_ID34418( var_0 )
{
    _ID42408::_ID1970( var_0 );
    _ID28868( var_0 );
}

_ID34400( var_0 )
{
    _ID42408::_ID1964( var_0 );
    _ID10805( var_0 );
}

_ID34401( var_0 )
{
    _ID42408::_ID1965( var_0 );
    _ID15504( var_0 );
}

_ID28879( var_0, var_1 )
{
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = 0.1;

    level._ID27602 = 1;
    wait(var_1);

    if ( isdefined( level._ID27600 ) && level._ID27602 == 1 )
        level._ID27600 _ID15093( ::_ID27080, level._ID30908["squelches"][var_0]["off"], undefined, 1 );
}

_ID28871( var_0, var_1 )
{
    _ID28864( var_0, undefined, var_1 );
}

_ID18633( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();

    if ( isdefined( var_1 ) && var_1 == 1 )
        var_3._ID5152 = newhudelem();

    var_3._ID12386 = newhudelem();
    var_3 _ID18653( var_2 );
    var_3._ID12386 settext( var_0 );
    return var_3;
}

_ID18636()
{
    self notify( "death" );

    if ( isdefined( self._ID12386 ) )
        self._ID12386 destroy();

    if ( isdefined( self._ID5152 ) )
        self._ID5152 destroy();
}

_ID18653( var_0 )
{
    if ( level._ID8534 )
        self._ID12386._ID393 = 2;
    else
        self._ID12386._ID393 = 1.6;

    self._ID12386._ID1331 = 0;
    self._ID12386._ID1339 = -40;
    self._ID12386._ID44 = "center";
    self._ID12386._ID45 = "bottom";
    self._ID12386._ID499 = "center";
    self._ID12386._ID1284 = "middle";
    self._ID12386._ID983 = 1;
    self._ID12386._ID55 = 0.8;

    if ( !isdefined( self._ID5152 ) )
        return;

    self._ID5152._ID1331 = 0;
    self._ID5152._ID1339 = -40;
    self._ID5152._ID44 = "center";
    self._ID5152._ID45 = "middle";
    self._ID5152._ID499 = "center";
    self._ID5152._ID1284 = "middle";
    self._ID5152._ID983 = -1;

    if ( level._ID8534 )
        self._ID5152 setshader( "popmenu_bg", 650, 52 );
    else
        self._ID5152 setshader( "popmenu_bg", 650, 42 );

    if ( !isdefined( var_0 ) )
        var_0 = 0.5;

    self._ID5152._ID55 = var_0;
}

_ID36694( var_0 )
{
    return "" + var_0;
}

_ID20617( var_0 )
{
    var_1 = float( var_0 );
    return _ID36694( var_1 ) == var_0;
}

_ID19382( var_0, var_1 )
{
    setignoremegroup( var_0, var_1 );
    setignoremegroup( var_1, var_0 );
}

_ID1892( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_5["function"] = var_1;
    var_5["param1"] = var_2;
    var_5["param2"] = var_3;
    var_5["param3"] = var_4;
    level._ID35073[var_0][level._ID35073[var_0].size] = var_5;
}

_ID29534( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < level._ID35073[var_0].size; var_3++ )
    {
        if ( level._ID35073[var_0][var_3]["function"] != var_1 )
            var_2[var_2.size] = level._ID35073[var_0][var_3];
    }

    level._ID35073[var_0] = var_2;
}

_ID13337( var_0, var_1 )
{
    if ( !isdefined( level._ID35073 ) )
        return 0;

    for ( var_2 = 0; var_2 < level._ID35073[var_0].size; var_2++ )
    {
        if ( level._ID35073[var_0][var_2]["function"] == var_1 )
            return 1;
    }

    return 0;
}

_ID29571( var_0 )
{
    var_1 = [];

    foreach ( var_3 in self._ID35075 )
    {
        if ( var_3["function"] == var_0 )
            continue;

        var_1[var_1.size] = var_3;
    }

    self._ID35075 = var_1;
}

_ID1947( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    foreach ( var_7 in self._ID35075 )
    {
        if ( var_7["function"] == var_0 )
            return;
    }

    var_9 = [];
    var_9["function"] = var_0;
    var_9["param1"] = var_1;
    var_9["param2"] = var_2;
    var_9["param3"] = var_3;
    var_9["param4"] = var_4;
    var_9["param5"] = var_5;
    self._ID35075[self._ID35075.size] = var_9;
}

_ID3304( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] delete();
}

_ID3313( var_0 )
{
    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
        var_0[var_1] kill();
}

_ID19375( var_0 )
{
    self endon( "death" );
    self._ID515 = 1;

    if ( isdefined( var_0 ) )
        wait(var_0);
    else
        wait 0.5;

    self._ID515 = 0;
}

_ID1805( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_1 _ID1801();
}

_ID1804( var_0 )
{
    var_1 = getent( var_0, "script_noteworthy" );
    var_1 _ID1801();
}

_ID10987( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_1 _ID42237::_ID38863();
}

_ID10986( var_0 )
{
    var_1 = getent( var_0, "script_noteworthy" );
    var_1 _ID42237::_ID38863();
}

_ID12548( var_0 )
{
    var_1 = getent( var_0, "targetname" );
    var_1 _ID42237::_ID38865();
}

_ID12547( var_0 )
{
    var_1 = getent( var_0, "script_noteworthy" );
    var_1 _ID42237::_ID38865();
}

_ID20537()
{
    return isdefined( level._ID18493[_ID15546()] );
}

_ID15546()
{
    if ( !isdefined( self._ID39468 ) )
        _ID32184();

    return self._ID39468;
}

_ID32184()
{
    self._ID39468 = "ai" + level._ID2315;
    self._ID2315 = level._ID2315;
    level._ID2315++;
}

_ID22825()
{
    level._ID18493[self._ID39468] = 1;
}

_ID39502()
{
    level._ID18493[self._ID39468] = undefined;
}

_ID15767()
{
    var_0 = [];
    var_1 = getaiarray( "allies" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] _ID20537() )
            var_0[var_0.size] = var_1[var_2];
    }

    return var_0;
}

_ID32470( var_0, var_1 )
{
    var_2 = getaiarray( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3]._ID744 = var_1;
}

_ID29506( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        if ( !isalive( var_3 ) )
            continue;

        var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID29537( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( var_0[var_2] _ID20537() )
            continue;

        var_1[var_1.size] = var_0[var_2];
    }

    return var_1;
}

_ID46715( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        if ( isdefined( var_0[var_2]._ID3189 ) )
            continue;

        var_1[var_1.size] = var_0[var_2];
    }

    return var_1;
}

_ID29500( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( !isdefined( var_4._ID31209 ) )
            continue;

        if ( var_4._ID31209 == var_1 )
            continue;

        var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID29557( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( !isdefined( var_4._ID922 ) )
            continue;

        if ( var_4._ID922 == var_1 )
            continue;

        var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID15607( var_0, var_1 )
{
    var_2 = _ID15741( "allies", var_0 );
    var_2 = _ID29537( var_2 );

    if ( !isdefined( var_1 ) )
        var_3 = level._ID794._ID740;
    else
        var_3 = var_1;

    return _ID42237::_ID16182( var_3, var_2 );
}

_ID29586( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( !issubstr( var_0[var_3]._ID170, var_1 ) )
            continue;

        var_2[var_2.size] = var_0[var_3];
    }

    return var_2;
}

_ID29587( var_0, var_1 )
{
    var_2 = [];

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        if ( !issubstr( var_0[var_3]._ID669, var_1 ) )
            continue;

        var_2[var_2.size] = var_0[var_3];
    }

    return var_2;
}

_ID15608( var_0, var_1, var_2 )
{
    var_3 = _ID15741( "allies", var_0 );
    var_3 = _ID29537( var_3 );

    if ( !isdefined( var_2 ) )
        var_4 = level._ID794._ID740;
    else
        var_4 = var_2;

    var_3 = _ID29586( var_3, var_1 );
    return _ID42237::_ID16182( var_4, var_3 );
}

_ID28697( var_0, var_1 )
{
    for (;;)
    {
        var_2 = _ID15607( var_0 );

        if ( !isalive( var_2 ) )
        {
            wait 1;
            continue;
        }

        var_2 _ID32315( var_1 );
        return;
    }
}

_ID20109( var_0, var_1 )
{
    for (;;)
    {
        var_2 = _ID15607( var_0 );

        if ( !isalive( var_2 ) )
            return;

        var_2 _ID32315( var_1 );
        return;
    }
}

_ID20110( var_0, var_1, var_2 )
{
    for (;;)
    {
        var_3 = _ID15608( var_0, var_2 );

        if ( !isalive( var_3 ) )
            return;

        var_3 _ID32315( var_1 );
        return;
    }
}

_ID28698( var_0, var_1, var_2 )
{
    for (;;)
    {
        var_3 = _ID15608( var_0, var_2 );

        if ( !isalive( var_3 ) )
        {
            wait 1;
            continue;
        }

        var_3 _ID32315( var_1 );
        return;
    }
}

_ID30019( var_0 )
{
    self orientmode( "face angle", var_0 );
    self._ID597 = 1;
}

_ID30028()
{
    self._ID597 = 0;
}

_ID20112( var_0, var_1, var_2 )
{
    var_3 = 0;
    var_4 = [];

    for ( var_5 = 0; var_5 < var_0.size; var_5++ )
    {
        var_6 = var_0[var_5];

        if ( var_3 || !issubstr( var_6._ID170, var_2 ) )
        {
            var_4[var_4.size] = var_6;
            continue;
        }

        var_3 = 1;
        var_6 _ID32315( var_1 );
    }

    return var_4;
}

_ID20111( var_0, var_1 )
{
    var_2 = 0;
    var_3 = [];

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_5 = var_0[var_4];

        if ( var_2 )
        {
            var_3[var_3.size] = var_5;
            continue;
        }

        var_2 = 1;
        var_5 _ID32315( var_1 );
    }

    return var_3;
}

_ID40894( var_0 )
{
    _ID42408::_ID40902( var_0, "script_noteworthy" );
}

_ID40899( var_0 )
{
    _ID42408::_ID40902( var_0, "targetname" );
}

_ID40868( var_0, var_1 )
{
    if ( _ID42237::_ID14385( var_0 ) )
        return;

    level endon( var_0 );
    wait(var_1);
}

_ID40886( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
}

_ID40907( var_0 )
{
    self endon( "trigger" );
    wait(var_0);
}

_ID40855( var_0, var_1 )
{
    var_2 = spawnstruct();
    var_3 = [];
    var_3 = _ID42237::_ID3296( var_3, getentarray( var_0, "targetname" ) );
    var_3 = _ID42237::_ID3296( var_3, getentarray( var_1, "targetname" ) );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        var_2 thread _ID42408::_ID13041( var_3[var_4] );

    var_2 waittill( "done" );
}

_ID12077( var_0 )
{
    var_1 = _ID42372::_ID35268( var_0 );

    if ( isdefined( var_0._ID31388 ) && var_0._ID31388 == "exec_spawn_func" )
    {
        var_1 _ID49347::cheat_init();
        var_1 _ID45456::ts_init();
        var_1._ID35073 = var_0._ID35075;
        var_1 thread _ID42372::_ID30393();
        var_1._ID988 = var_0;
    }

    var_1 _ID42372::character_model_specialcases();
    return var_1;
}

_ID12076( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        var_0 = self;

    var_2 = _ID42372::_ID35268( var_0 );
    var_2 _ID49347::cheat_init();
    var_2 _ID45456::ts_init();
    var_2 [[ level._ID11971 ]]();
    var_2._ID35073 = var_0._ID35075;
    var_2 thread _ID42372::_ID30393();
    var_2._ID988 = var_0;
    var_2 _ID42372::character_model_specialcases();
    return var_2;
}

_ID36869( var_0 )
{
    return _ID42372::_ID35275( var_0 );
}

_ID36874( var_0 )
{
    return _ID42372::_ID35276( var_0 );
}

_ID16038()
{
    if ( isdefined( self._ID31190 ) )
        return self._ID31190;

    if ( isdefined( self._ID922 ) )
        return self._ID922;
}

_ID32270()
{
    self._ID761 = 192;
    self._ID760 = 192;
}

_ID8925( var_0 )
{
    if ( var_0 == "on" )
        _ID12467();
    else
        _ID10896();
}

_ID12467( var_0 )
{
    if ( self._ID1244 == "dog" )
        return;

    if ( !isdefined( var_0 ) )
        self._ID8928 = 1;

    self._ID8931 = 1;
    self._ID1230 = 0.2;
    level thread animscripts\cqb::_ID14209();
}

_ID10896()
{
    if ( self._ID1244 == "dog" )
        return;

    if ( isdefined( self._ID8928 ) )
        self._ID48632 = gettime();

    self._ID8931 = undefined;
    self._ID8928 = undefined;
    self._ID1230 = 0.3;
    self._ID8921 = undefined;
}

_ID12526()
{
    self._ID6471 = 1;
}

_ID10958()
{
    self._ID6471 = undefined;
}

_ID8914( var_0 )
{
    if ( !isdefined( var_0 ) )
        self._ID8923 = undefined;
    else
    {
        self._ID8923 = var_0;

        if ( !isdefined( var_0._ID740 ) )
            return;
    }
}

_ID32317( var_0 )
{
    if ( isdefined( var_0 ) && var_0 )
        self._ID14800 = 1;
    else
        self._ID14800 = undefined;
}

_ID11206( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_1 ) )
        [[ var_0 ]]( var_1 );
    else
        [[ var_0 ]]();

    if ( isdefined( var_3 ) )
        [[ var_2 ]]( var_3 );
    else
        [[ var_2 ]]();
}

_ID48333()
{
    _ID42372::_ID31563();
}

_ID31877( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        self notify( var_0,  var_1  );
    else
        self notify( var_0 );
}

_ID41115( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3 endon( "complete" );
    var_3 _ID10226( var_2, ::_ID31877, "complete" );
    self waittillmatch( var_0,  var_1  );
}

_ID10321( var_0 )
{
    var_0 notify( "deleted" );
    var_0 delete();
}

_ID14360( var_0 )
{
    if ( !isdefined( self._ID37896 ) )
        self._ID37896 = [];

    if ( isdefined( self._ID37896[var_0._ID39468] ) )
        return 0;

    self._ID37896[var_0._ID39468] = 1;
    return 1;
}

_ID16120( var_0 )
{
    return level._ID30895[self._ID3189][var_0];
}

_ID18203( var_0 )
{
    return isdefined( level._ID30895[self._ID3189][var_0] );
}

_ID16121( var_0, var_1 )
{
    return level._ID30895[var_1][var_0];
}

_ID16122( var_0 )
{
    return level._ID30895["generic"][var_0];
}

_ID1895( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( level._ID38827 ) )
    {
        level._ID38827 = [];
        level._ID38826 = [];
        level._ID43905 = [];
        level._ID53582 = [];
    }

    if ( isdefined( level._ID38827[var_0] ) )
    {

    }

    level._ID38827[var_0] = var_1;
    precachestring( var_1 );

    if ( isdefined( var_2 ) )
        level._ID38826[var_0] = var_2;

    if ( isdefined( var_3 ) )
        level._ID43905[var_0] = var_3;

    if ( isdefined( var_4 ) )
        level._ID53582[var_0] = var_4;
}

_ID34014( var_0 )
{
    thread _ID42408::_ID34071( var_0 );
}

_ID18522( var_0 )
{
    var_0._ID37742 = 1;
}

_ID14276( var_0, var_1 )
{
    var_2 = spawn( "trigger_radius", var_0, 0, var_1, 48 );

    for (;;)
    {
        var_2 waittill( "trigger",  var_3  );
        level._ID794 dodamage( 5, var_0 );
    }
}

_ID7950( var_0, var_1 )
{
    setthreatbias( var_0, var_1, 0 );
    setthreatbias( var_1, var_0, 0 );
}

_ID37694()
{
    animscripts\combat_utility::_ID37695();
}

_ID3298( var_0, var_1 )
{
    if ( !var_0.size )
        return var_1;

    var_2 = getarraykeys( var_1 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_0[var_2[var_3]] = var_1[var_2[var_3]];

    return var_0;
}

_ID32355( var_0 )
{
    self._ID513 = var_0;
}

_ID32339( var_0 )
{
    self._ID452 = var_0;
}

_ID39054()
{
    var_0 = self._ID13703;

    for (;;)
    {
        var_1 = self dospawn();

        if ( _ID35060( var_1 ) )
        {
            wait 1;
            continue;
        }

        return var_1;
    }
}

_ID32187( var_0 )
{
    self._ID49 = var_0;
}

_ID32430( var_0, var_1, var_2 )
{
    if ( isdefined( var_1 ) )
        self._ID2832 = var_1;
    else
        self._ID2832 = 1;

    if ( !isdefined( var_2 ) || var_2 )
        _ID10989();

    self._ID30386 = level._ID30895[self._ID3189][var_0];
    self._ID41227 = self._ID30386;
}

_ID32280()
{
    self._ID7._ID24414 = "walk";
    self._ID10998 = 1;
    self._ID11025 = 1;
    self._ID31356 = 1;
}

_ID32243( var_0, var_1, var_2, var_3 )
{
    animscripts\animset::_ID19592( var_0, var_1, var_2, var_3 );
}

_ID32387( var_0, var_1, var_2 )
{
    var_3 = animscripts\utility::_ID22631( var_0 );

    if ( isarray( var_1 ) )
    {
        var_3["straight"] = var_1[0];
        var_3["move_f"] = var_1[0];
        var_3["move_l"] = var_1[1];
        var_3["move_r"] = var_1[2];
        var_3["move_b"] = var_1[3];
    }
    else
    {
        var_3["straight"] = var_1;
        var_3["move_f"] = var_1;
    }

    if ( isdefined( var_2 ) )
        var_3["sprint"] = var_2;

    self._ID9574[var_0] = var_3;
}

_ID32327( var_0 )
{
    var_1 = level._ID30895["generic"][var_0];

    if ( isarray( var_1 ) )
        self._ID35378 = var_1;
    else
        self._ID35378[0] = var_1;
}

_ID32351( var_0 )
{
    var_1 = level._ID30895[self._ID3189][var_0];

    if ( isarray( var_1 ) )
        self._ID35378 = var_1;
    else
        self._ID35378[0] = var_1;
}

_ID7869()
{
    self._ID35378 = undefined;
    self notify( "stop_specialidle" );
}

_ID32328( var_0, var_1, var_2 )
{
    _ID32329( var_0, undefined, var_1, var_2 );
}

_ID7870()
{
    self notify( "movemode" );
    _ID12549();
    self._ID30386 = undefined;
    self._ID41227 = undefined;
}

_ID32329( var_0, var_1, var_2, var_3 )
{
    self notify( "movemode" );

    if ( !isdefined( var_2 ) || var_2 )
        self._ID2832 = 1;
    else
        self._ID2832 = undefined;

    if ( !isdefined( var_3 ) || var_3 )
        _ID10989();

    self._ID30386 = level._ID30895["generic"][var_0];
    self._ID41227 = self._ID30386;

    if ( isdefined( var_1 ) )
    {
        self._ID30385 = level._ID30895["generic"][var_1];
        self._ID41226 = self._ID30385;
    }
    else
    {
        self._ID30385 = undefined;
        self._ID41226 = undefined;
    }
}

_ID32431( var_0, var_1, var_2, var_3 )
{
    self notify( "movemode" );

    if ( !isdefined( var_2 ) || var_2 )
        self._ID2832 = 1;
    else
        self._ID2832 = undefined;

    if ( !isdefined( var_3 ) || var_3 )
        _ID10989();

    self._ID30386 = level._ID30895[self._ID3189][var_0];
    self._ID41227 = self._ID30386;

    if ( isdefined( var_1 ) )
    {
        self._ID30385 = level._ID30895[self._ID3189][var_1];
        self._ID41226 = self._ID30385;
    }
    else
    {
        self._ID30385 = undefined;
        self._ID41226 = undefined;
    }
}

_ID7892()
{
    self notify( "clear_run_anim" );
    self notify( "movemode" );

    if ( self._ID1244 == "dog" )
    {
        self._ID7._ID24414 = "run";
        self._ID10998 = 0;
        self._ID11025 = 0;
        self._ID31356 = undefined;
        return;
    }

    _ID12549();
    self._ID2832 = undefined;
    self._ID30386 = undefined;
    self._ID41227 = undefined;
    self._ID30385 = undefined;
    self._ID41226 = undefined;
}

_ID10046( var_0, var_1 )
{
    setdynamicdvar( var_0, var_1 );
    return getdvarfloat( var_0 );
}

_ID26629( var_0, var_1, var_2 )
{
    self endon( "death" );
    self endon( "stop_physicsjolt" );

    if ( !isdefined( var_0 ) || !isdefined( var_1 ) || !isdefined( var_2 ) )
    {
        var_0 = 400;
        var_1 = 256;
        var_2 = ( 0, 0, 0.075 );
    }

    var_3 = var_0 * var_0;
    var_4 = 3;
    var_5 = var_2;

    for (;;)
    {
        wait 0.1;
        var_2 = var_5;

        if ( self._ID172 == "script_vehicle" )
        {
            var_6 = self vehicle_getspeed();

            if ( var_6 < var_4 )
            {
                var_7 = var_6 / var_4;
                var_2 = var_5 * var_7;
            }
        }

        var_8 = distancesquared( self._ID740, level._ID794._ID740 );
        var_7 = var_3 / var_8;

        if ( var_7 > 1 )
            var_7 = 1;

        var_2 *= var_7;
        var_9 = var_2[0] + var_2[1] + var_2[2];

        if ( var_9 > 0.025 )
            physicsjitter( self._ID740, var_0, var_1, var_2[2], var_2[2] * 2.0 );
    }
}

_ID32331( var_0 )
{
    self setgoalentity( var_0 );
}

_ID1801( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        _ID1802( var_2 );
    else
        _ID42237::_ID3350( getentarray( var_0, var_1 ), ::_ID1802, var_2 );
}

_ID1802( var_0 )
{
    if ( isdefined( self._ID31096 ) )
    {
        self._ID54528 = 1;
        _ID42271::_ID52298( "allies" );
    }

    if ( isdefined( self._ID31097 ) )
    {
        self._ID54528 = 1;
        _ID42271::_ID52298( "axis" );
    }

    self notify( "trigger",  var_0  );
}

_ID31860()
{
    self delete();
}

_ID29554( var_0 )
{
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( var_3 _ID18155() )
            var_1[var_1.size] = var_3;
    }

    return var_1;
}

_ID7850()
{
    _ID7901( "axis" );
    _ID7901( "allies" );
}

_ID7901( var_0 )
{
    level._ID9488[var_0]["r"] = undefined;
    level._ID9488[var_0]["b"] = undefined;
    level._ID9488[var_0]["c"] = undefined;
    level._ID9488[var_0]["y"] = undefined;
    level._ID9488[var_0]["p"] = undefined;
    level._ID9488[var_0]["o"] = undefined;
    level._ID9488[var_0]["g"] = undefined;
    level._ID9488[var_0]["w"] = undefined;
    level._ID9488[var_0]["a"] = undefined;
    level._ID9488[var_0]["l"] = undefined;
}

_ID15965()
{
    var_0 = [];
    var_0["r"] = ( 1, 0, 0 );
    var_0["o"] = ( 1, 0.5, 0 );
    var_0["y"] = ( 1, 1, 0 );
    var_0["g"] = ( 0, 1, 0 );
    var_0["c"] = ( 0, 1, 1 );
    var_0["b"] = ( 0, 0, 1 );
    var_0["p"] = ( 1, 0, 1 );
    var_0["w"] = ( 1, 1, 1 );
    var_0["a"] = ( 0, 0.9, 1 );
    var_0["l"] = ( 0.8, 1, 0 );
    return var_0;
}

_ID25088( var_0, var_1 )
{
    self endon( "death" );

    if ( var_1 > 0 )
        wait(var_1);

    if ( !isdefined( self ) )
        return;

    self notify( var_0 );
}

_ID17509()
{
    if ( isai( self ) )
        animscripts\shared::_ID26732( self._ID1302, "none" );
    else
    {
        _ID10616( self._ID1302 );
        self detach( getweaponmodel( self._ID1302 ), "tag_weapon_right" );
    }
}

_ID17508()
{
    if ( isai( self ) )
        animscripts\shared::_ID26732( self._ID1302, "right" );
    else
    {
        self attach( getweaponmodel( self._ID1302 ), "tag_weapon_right" );
        _ID39665( self._ID1302 );
    }
}

_ID39665( var_0 )
{
    if ( isdefined( var_0 ) && var_0 != "none" )
    {
        var_1 = _func_2c5( var_0 );
        var_2 = _ID3325( var_1, 0 );

        foreach ( var_4 in var_2 )
            self attach( var_4["worldModel"], var_4["attachTag"] );

        self _meth_8514( var_0 );
    }
}

_ID10616( var_0 )
{
    if ( isdefined( var_0 ) && var_0 != "none" )
    {
        var_1 = _func_2c5( var_0 );
        var_2 = _ID3325( var_1, 0 );

        foreach ( var_4 in var_2 )
            self detach( var_4["worldModel"], var_4["attachTag"], 0 );
    }
}

_ID3567( var_0 )
{
    var_1 = level._ID794 getcurrentweapon();
    var_2 = _func_2c5( var_1 );
    var_3 = var_2[0]["weapon"];
    var_4 = _ID3325( var_2, 0 );
    var_0 attach( var_3, "TAG_WEAPON_RIGHT", 1 );

    foreach ( var_6 in var_4 )
        var_0 attach( var_6["attachment"], var_6["attachTag"] );

    var_0 _meth_8514( var_1 );
}

_ID26720( var_0, var_1 )
{
    if ( !animscripts\utility::_ID2398( var_0 ) )
        animscripts\init::_ID20021( var_0 );

    animscripts\shared::_ID26732( var_0, var_1 );
}

_ID14803( var_0, var_1 )
{
    if ( !animscripts\init::_ID21003( var_0 ) )
        animscripts\init::_ID20021( var_0 );

    var_2 = self._ID1302 != "none";
    var_3 = animscripts\utility::_ID39997();
    var_4 = var_1 == "sidearm";
    var_5 = var_1 == "secondary";

    if ( var_2 && var_3 != var_4 )
    {
        if ( var_3 )
            var_6 = "none";
        else if ( var_5 )
            var_6 = "back";
        else
            var_6 = "chest";

        animscripts\shared::_ID26732( self._ID1302, var_6 );
        self._ID22034 = self._ID1302;
    }
    else
        self._ID22034 = var_0;

    animscripts\shared::_ID26732( var_0, "right" );

    if ( var_4 )
        self._ID34144 = var_0;
    else if ( var_5 )
        self._ID949 = var_0;
    else
        self._ID834 = var_0;

    self._ID1302 = var_0;
    self._ID6323 = weaponclipsize( self._ID1302 );
    self notify( "weapon_switch_done" );
}

_ID22169( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _ID42408::_ID22171( level._ID794, var_0, var_1, var_2, var_3, var_4, var_5, var_6, 0 );
}

_ID47774( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    _ID42408::_ID53645( level._ID794, var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID44033( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID42408::_ID22171( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, 0 );
}

_ID22170( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID42408::_ID22171( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, 1 );
}

_ID22166( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    var_9 = _ID15912();
    var_10 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_10._ID740 = var_9._ID740;
    var_10._ID65 = var_9 getplayerangles();

    if ( isdefined( var_8 ) && var_8 )
        var_9 playerlinkto( var_10, "", var_3, var_4, var_5, var_6, var_7, var_8 );
    else if ( isdefined( var_4 ) )
        var_9 playerlinkto( var_10, "", var_3, var_4, var_5, var_6, var_7 );
    else if ( isdefined( var_3 ) )
        var_9 playerlinkto( var_10, "", var_3 );
    else
        var_9 playerlinkto( var_10 );

    var_10 moveto( var_0, var_2, var_2 * 0.25 );
    var_10 rotateto( var_1, var_2, var_2 * 0.25 );
    wait(var_2);
    var_10 delete();
}

_ID22172( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    _ID42408::_ID22173( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, 0 );
}

_ID22168( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8 )
{
    var_9 = _ID15912();
    var_10 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_10._ID740 = var_9 _ID15911();
    var_10._ID65 = var_9 getplayerangles();

    if ( isdefined( var_8 ) )
        var_9 playerlinktodelta( var_10, "", var_3, var_4, var_5, var_6, var_7, var_8 );
    else if ( isdefined( var_4 ) )
        var_9 playerlinktodelta( var_10, "", var_3, var_4, var_5, var_6, var_7 );
    else if ( isdefined( var_3 ) )
        var_9 playerlinktodelta( var_10, "", var_3 );
    else
        var_9 playerlinktodelta( var_10 );

    var_10 moveto( var_0, var_2, var_2 * 0.25 );
    var_10 rotateto( var_1, var_2, var_2 * 0.25 );
    wait(var_2);
    var_10 delete();
}

_ID44820( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    var_8 = _ID15912();
    var_9 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_9._ID740 = level._ID794 _ID15911();
    var_9._ID65 = var_8 getplayerangles();

    if ( isdefined( var_4 ) )
        var_8 playerlinktodelta( var_9, "", var_3, var_4, var_5, var_6, var_7 );
    else if ( isdefined( var_3 ) )
        var_8 playerlinktodelta( var_9, "", var_3 );
    else
        var_8 playerlinktodelta( var_9 );

    var_9 moveto( var_0, var_2, var_2 * 0.25 );
    var_9 rotateto( var_1, var_2, var_2 * 0.25 );
    wait(var_2);
    return var_9;
}

_ID37750( var_0 )
{
    wait(var_0);
}

_ID27562( var_0 )
{
    var_1 = level._ID794._ID740;

    for (;;)
    {
        if ( distance( var_1, level._ID794._ID740 ) > var_0 )
            break;

        wait 0.05;
    }
}

_ID41100( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    thread _ID42408::_ID41101( var_4, var_0, var_1 );
    thread _ID42408::_ID41101( var_4, var_2, var_3 );
    var_4 waittill( "done" );
}

_ID41116( var_0 )
{
    self waittill( var_0 );
}

_ID11085( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15912();
    var_7 = 30;

    if ( isdefined( var_5 ) )
        var_7 = var_5;

    if ( isdefined( level._ID38826[var_0] ) )
    {
        if ( var_6 [[ level._ID38826[var_0] ]]() )
            return;

        var_6 thread _ID42408::_ID18704( level._ID38827[var_0], level._ID38826[var_0], var_1, var_2, var_3, var_7, undefined, var_4, level._ID43905[var_0], level._ID53582[var_0] );
    }
    else
        var_6 thread _ID42408::_ID18704( level._ID38827[var_0], undefined, undefined, undefined, undefined, var_7, undefined, var_4, level._ID43905[var_0], level._ID53582[var_0] );
}

_ID18684( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isalive( level._ID794 ) )
        return;

    _ID42408::_ID18685( var_0 );

    if ( !isdefined( var_1 ) )
        _ID11085( var_0, var_2, var_3, var_4, var_5 );
    else
        _ID11090( var_0, var_1, var_2, var_3, var_4, var_5 );
}

_ID18687( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isalive( level._ID794 ) )
        return;

    var_6 = _ID15912();

    if ( var_6 [[ level._ID38826[var_0] ]]() )
        return;

    _ID42408::_ID18685( var_0 );
    var_6 thread _ID42408::_ID18704( level._ID38827[var_0], level._ID38826[var_0], var_3, var_4, var_5, var_1, var_2, undefined, level._ID43905[var_0], level._ID53582[var_0] );
}

_ID1865( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( level._ID38827 ) )
    {
        level._ID38827 = [];
        level._ID38826 = [];
        level._ID43905 = [];
        level._ID53582 = [];
    }

    level._ID38827[var_0] = var_1;
    level._ID18645[var_0]["gamepad"] = var_1;
    level._ID18645[var_0]["pc"] = var_3;
    level._ID18645[var_0]["southpaw"] = var_4;
    precachestring( var_1 );

    if ( isdefined( var_3 ) )
        precachestring( var_3 );

    if ( isdefined( var_4 ) )
        precachestring( var_4 );

    if ( isdefined( var_2 ) )
        level._ID38826[var_0] = var_2;

    if ( isdefined( var_5 ) )
        level._ID53582[var_0] = var_5;
}

_ID18060()
{
    if ( !isdefined( level._ID18670 ) )
        level._ID18670 = [];

    for (;;)
    {
        level._ID18670 = _ID42237::_ID3332( level._ID18670 );

        if ( isdefined( level._ID18670 ) && isdefined( level._ID794 ) )
        {
            foreach ( var_1 in level._ID18670 )
            {
                if ( level._ID794 _ID42237::_ID20583() )
                {
                    var_1 sethintstring( var_1._ID17123 );
                    continue;
                }

                var_1 sethintstring( var_1._ID26430 );
            }
        }

        wait 0.1;
    }
}

_ID2023( var_0, var_1 )
{
    if ( !isdefined( level._ID18670 ) )
    {
        thread _ID18060();
        level._ID18670 = [];
    }

    var_2 = 0;

    foreach ( var_4 in level._ID18670 )
    {
        if ( self == var_4 )
        {
            var_4._ID17123 = var_0;
            var_4._ID26430 = var_1;
            var_2 = 1;
            break;
        }
    }

    if ( !var_2 )
    {
        self._ID17123 = var_0;
        self._ID26430 = var_1;
        level._ID18670 = _ID42237::_ID3293( level._ID18670, self );
    }
}

_ID11090( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15912();

    if ( var_6 [[ level._ID38826[var_0] ]]() )
        return;

    var_6 thread _ID42408::_ID18704( level._ID38827[var_0], level._ID38826[var_0], var_2, var_3, var_4, var_1, undefined, var_5, level._ID43905[var_0], level._ID53582[var_0] );
}

_ID11091( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = _ID15912();

    if ( var_6 [[ level._ID38826[var_0] ]]() )
        return;

    var_6 thread _ID42408::_ID18704( level._ID38827[var_0], level._ID38826[var_0], var_3, var_4, var_5, var_1, var_2, undefined, level._ID43905[var_0], level._ID53582[var_0] );
}

_ID11087( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( !isdefined( var_6 ) )
        var_6 = 0;

    var_10 = _ID42408::_ID18661( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
    thread _ID11085( var_10, var_7, var_8, var_9 );
    thread _ID42408::_ID18662( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
}

_ID11088( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10 )
{
    if ( !isdefined( var_7 ) )
        var_7 = 0;

    var_11 = _ID42408::_ID18661( var_0, var_2, var_3, var_4, var_5, var_6, var_7 );
    thread _ID11090( var_11, var_1, var_8, var_9, var_10 );
    thread _ID42408::_ID18662( var_0, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID11089( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11 )
{
    if ( !isdefined( var_8 ) )
        var_8 = 0;

    var_12 = _ID42408::_ID18661( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );
    thread _ID11091( var_12, var_1, var_2, var_9, var_10, var_11 );
    thread _ID42408::_ID18662( var_0, var_3, var_4, var_5, var_6, var_7, var_8 );
}

_ID7369( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
        return [[ level._ID38826[var_0] ]]( var_1, var_2, var_3 );

    if ( isdefined( var_2 ) )
        return [[ level._ID38826[var_0] ]]( var_1, var_2 );

    if ( isdefined( var_1 ) )
        return [[ level._ID38826[var_0] ]]( var_1 );

    return [[ level._ID38826[var_0] ]]();
}

_ID16303( var_0 )
{
    return level._ID30895["generic"][var_0];
}

_ID12461()
{
    self._ID31087 = 1;
}

_ID10889()
{
    self._ID31087 = 0;
    self notify( "stop_being_careful" );
}

_ID12532()
{
    self._ID35499 = 1;
}

_ID10965()
{
    self._ID35499 = undefined;
}

_ID10888()
{
    self._ID11002 = 1;
}

_ID12460()
{
    self._ID11002 = undefined;
}

_ID7861( var_0 )
{
    setdvar( var_0, "" );
}

_ID32295()
{
    self._ID381 = 1;
}

_ID32294()
{
    self._ID381 = 0;
}

_ID35014( var_0, var_1 )
{
    if ( isdefined( self._ID31123 ) )
    {
        self endon( "death" );
        wait(self._ID31123);
    }

    var_2 = undefined;
    var_3 = isdefined( self._ID31460 ) && _ID42237::_ID14385( "_stealth_enabled" ) && !_ID42237::_ID14385( "_stealth_spotted" );

    if ( isdefined( self._ID31214 ) || isdefined( var_0 ) )
    {
        if ( !isdefined( self._ID31152 ) )
            var_2 = self stalingradspawn( var_3 );
        else
            var_2 = _ID12076( self );
    }
    else if ( !isdefined( self._ID31152 ) )
        var_2 = self dospawn( var_3 );
    else
        var_2 = _ID12076( self );

    if ( isdefined( var_1 ) && var_1 && isalive( var_2 ) )
        var_2 thread _ID22746();

    if ( !isdefined( self._ID31152 ) )
        _ID35060( var_2 );

    if ( isdefined( self._ID31440 ) )
        self delete();

    if ( isdefined( var_2 ) )
        var_2._ID988 = self;

    if ( isdefined( var_2 ) && !isdefined( var_2._ID1193 ) )
    {
        if ( isdefined( self._ID1193 ) )
            var_2._ID1193 = self._ID1193 + "_AI";
    }

    if ( isdefined( var_2 ) )
    {
        var_2 _ID49347::cheat_init();
        var_2 _ID45456::ts_init();
    }

    if ( isdefined( var_2 ) )
        var_2 _ID42372::character_model_specialcases();

    return var_2;
}

_ID15093( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = spawnstruct();
    var_6 thread _ID42408::_ID15097( self, var_0, var_1, var_2, var_3, var_4, var_5 );
    return _ID42408::_ID15101( var_6 );
}

_ID15099( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = spawnstruct();
    var_7 thread _ID42408::_ID15097( self, var_1, var_2, var_3, var_4, var_5, var_6 );

    if ( isdefined( var_7._ID15096 ) || var_7 _ID42237::_ID41078( var_0, "function_stack_func_begun" ) != "timeout" )
        return _ID42408::_ID15101( var_7 );
    else
    {
        var_7 notify( "death" );
        return 0;
    }
}

_ID15095()
{
    var_0 = [];

    if ( isdefined( self._ID15093[0] ) && isdefined( self._ID15093[0]._ID15096 ) )
        var_0[0] = self._ID15093[0];

    self._ID15093 = undefined;
    self notify( "clear_function_stack" );
    waitframe;

    if ( !var_0.size )
        return;

    if ( !var_0[0]._ID15096 )
        return;

    self._ID15093 = var_0;
}

_ID15536()
{
    if ( isdefined( self._ID15536 ) )
        return;

    self._ID29164 = self getorigin();
    self moveto( self._ID29164 + ( 0, 0, -10000 ), 0.2 );
    self._ID15536 = 1;
}

_ID15537()
{
    if ( !isdefined( self._ID15536 ) )
        return;

    self moveto( self._ID29164, 0.2 );
    self waittill( "movedone" );
    self._ID15536 = undefined;
}

_ID10912()
{
    self._ID11025 = 1;
}

_ID12480()
{
    self._ID11025 = undefined;
}

_ID10989()
{
    self._ID25154 = 1;
}

_ID12549()
{
    self._ID25154 = undefined;
}

_ID10877()
{
    self._ID10998 = 1;
}

_ID12452()
{
    self endon( "death" );
    waitframe;
    self._ID10998 = undefined;
}

_ID32229( var_0, var_1 )
{
    setblur( var_0, var_1 );
}

_ID32337( var_0 )
{
    self._ID452 = var_0;
}

_ID32334( var_0 )
{
    self._ID21851 = var_0;
    self._ID21852 = undefined;
    self._ID21850 = undefined;
    self setgoalnode( var_0 );
}

_ID32335( var_0 )
{
    var_1 = getnode( var_0, "targetname" );
    _ID32334( var_1 );
}

_ID32336( var_0 )
{
    self._ID21851 = undefined;
    self._ID21852 = var_0;
    self._ID21850 = undefined;
    self setgoalpos( var_0 );
}

_ID32330( var_0 )
{
    _ID32336( var_0._ID740 );
    self._ID21850 = var_0;
}

_ID25327( var_0, var_1 )
{
    _ID42408::_ID25335( var_0 );

    if ( isdefined( var_1 ) && var_1 )
        objective_state_nomessage( var_0, "done" );
    else
        objective_state( var_0, "done" );

    level notify( "objective_complete" + var_0 );
}

_ID18074( var_0, var_1, var_2, var_3 )
{
    var_4 = 1;

    if ( isdefined( var_1 ) )
        var_4 = !var_1;

    if ( isdefined( var_2 ) )
        level endon( var_2 );

    if ( isdefined( var_3 ) )
        level waittill( var_3 );

    var_5 = "signal_" + var_0;

    if ( var_4 )
        self setanimrestart( _ID16303( var_5 ), 1, 0, 1.1 );
    else
        _ID42259::_ID3020( self, var_5 );
}

_ID3339( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_3 = [];

    foreach ( var_5 in var_0 )
    {
        var_5._ID216 = 1;

        if ( getsubstr( var_5._ID170, 7, 10 ) == "veh" )
        {
            var_6 = var_5 _ID35192();

            if ( isdefined( var_6._ID1191 ) && !isdefined( var_6._ID31299 ) )
                var_6 thread _ID42411::_ID17021();

            var_3[var_3.size] = var_6;
            continue;
        }

        var_6 = var_5 _ID35014( var_1 );

        if ( !var_2 )
        {

        }

        var_3[var_3.size] = var_6;
    }

    if ( !var_2 )
    {

    }

    return var_3;
}

_ID3341( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    var_4 = [];

    foreach ( var_6 in var_0 )
    {
        var_6._ID216 = 1;

        if ( getsubstr( var_6._ID170, 7, 10 ) == "veh" )
        {
            var_7 = var_6 _ID35192();

            if ( isdefined( var_7._ID1191 ) && !isdefined( var_7._ID31299 ) )
                var_7 thread _ID42411::_ID17021();

            var_4[var_4.size] = var_7;
            continue;
        }

        var_7 = var_6 _ID35014( 1 );
        var_4 = _ID42237::_ID3293( var_4, var_7 );

        if ( isdefined( var_3 ) )
        {
            wait(var_3);
            continue;
        }

        waittillframeend;
    }

    if ( !var_2 )
    {

    }

    return var_4;
}

_ID3346( var_0, var_1, var_2, var_3 )
{
    var_4 = getentarray( var_0, "targetname" );

    if ( isdefined( level._ID35137 ) )
    {
        var_5 = _ID42237::_ID16640( var_0, "targetname" );

        if ( isdefined( var_3 ) && var_3 )
            _ID10354( var_5 );

        var_6 = _ID42372::_ID15928( var_5 );
        var_4 = _ID42237::_ID3296( var_4, var_6 );
    }

    return _ID3339( var_4, var_1, var_2 );
}

_ID3348( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = getentarray( var_0, "targetname" );

    if ( isdefined( level._ID35137 ) )
    {
        var_6 = _ID42237::_ID16640( var_0, "targetname" );

        if ( isdefined( var_4 ) && var_4 )
            _ID10354( var_6 );

        var_7 = _ID42372::_ID15928( var_6 );
        var_5 = _ID42237::_ID3296( var_5, var_7 );
    }

    return _ID3341( var_5, var_1, var_3, var_2 );
}

_ID52253( var_0 )
{
    var_1 = getentarray( var_0, "script_noteworthy" );
    var_2 = _ID3339( var_1 );
    return var_2[0];
}

_ID44838( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    var_2 = _ID3339( var_1 );
    return var_2[0];
}

_ID51768( var_0 )
{
    var_1 = getentarray( var_0, "targetname" );
    return _ID3339( var_1 );
}

_ID3345( var_0, var_1, var_2, var_3 )
{
    var_4 = getentarray( var_0, "script_noteworthy" );

    if ( isdefined( level._ID35137 ) )
    {
        var_5 = _ID42237::_ID16640( var_0, "script_noteworthy" );

        if ( isdefined( var_3 ) && var_3 )
            _ID10354( var_5 );

        var_6 = _ID42372::_ID15928( var_5 );
        var_4 = _ID42237::_ID3296( var_4, var_6 );
    }

    return _ID3339( var_4, var_1, var_2 );
}

_ID35150( var_0, var_1 )
{
    var_2 = getent( var_0, "script_noteworthy" );
    var_3 = var_2 _ID35014( var_1 );
    return var_3;
}

_ID35168( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );
    var_3 = var_2 _ID35014( var_1 );
    return var_3;
}

_ID1882( var_0, var_1, var_2 )
{
    if ( getdvarint( "loc_warnings", 0 ) )
        return;

    if ( !isdefined( level._ID10779 ) )
        level._ID10779 = [];

    var_3 = 0;

    for (;;)
    {
        if ( !isdefined( level._ID10779[var_3] ) )
            break;

        var_3++;
    }

    var_4 = "^3";

    if ( isdefined( var_2 ) )
    {
        switch ( var_2 )
        {
            case "r":
            case "red":
                var_4 = "^1";
                break;
            case "g":
            case "green":
                var_4 = "^2";
                break;
            case "y":
            case "yellow":
                var_4 = "^3";
                break;
            case "b":
            case "blue":
                var_4 = "^4";
                break;
            case "c":
            case "cyan":
                var_4 = "^5";
                break;
            case "p":
            case "purple":
                var_4 = "^6";
                break;
            case "w":
            case "white":
                var_4 = "^7";
                break;
            case "bl":
            case "black":
                var_4 = "^8";
                break;
        }
    }

    level._ID10779[var_3] = 1;
    var_5 = _ID42313::_ID9220( "default", 1.5 );
    var_5._ID22519 = 0;
    var_5._ID44 = "left";
    var_5._ID45 = "top";
    var_5._ID408 = 1;
    var_5._ID983 = 20;
    var_5._ID55 = 0;
    var_5 fadeovertime( 0.5 );
    var_5._ID55 = 1;
    var_5._ID1331 = 40;
    var_5._ID1339 = 260 + var_3 * 18;
    var_5._ID578 = " " + var_4 + "< " + var_0 + " > ^7" + var_1;
    var_5._ID196 = ( 1, 1, 1 );
    wait 2;
    var_6 = 40;
    var_5 fadeovertime( 6 );
    var_5._ID55 = 0;

    for ( var_7 = 0; var_7 < var_6; var_7++ )
    {
        var_5._ID196 = ( 1, 1, 0 / ( var_6 - var_7 ) );
        wait 0.05;
    }

    wait 4;
    var_5 destroy();
    level._ID10779[var_3] = undefined;
}

_ID10510()
{
    _ID42231::_ID10916();
}

_ID10514()
{
    _ID42231::_ID14744();
}

_ID32341( var_0 )
{
    self._ID464 = var_0;
}

_ID15911()
{
    var_0 = self._ID740;
    var_1 = anglestoup( self getplayerangles() );
    var_2 = self getplayerviewheight();
    var_3 = var_0 + ( 0, 0, var_2 );
    var_4 = var_0 + var_1 * var_2;
    var_5 = var_3 - var_4;
    var_6 = var_0 + var_5;
    return var_6;
}

_ID32224( var_0 )
{
    self._ID4867 = var_0;
}

_ID32246()
{
    if ( !isdefined( level._ID8534 ) )
    {
        level._ID8534 = getdvar( "consoleGame" ) == "true";
        jump loc_7706
    }

    if ( !isdefined( level._ID1333 ) )
    {
        level._ID1333 = getdvar( "xenonGame" ) == "true";
        jump loc_7725
    }

    if ( !isdefined( level._ID843 ) )
    {
        level._ID843 = getdvar( "ps3Game" ) == "true";
        jump loc_7744
    }

    if ( !isdefined( level._ID766 ) )
    {
        level._ID766 = getdvar( "pccgGame" ) == "true";
        jump loc_7763
    }

    if ( !isdefined( level._ID1332 ) )
    {
        level._ID1332 = getdvar( "xb3Game" ) == "true";
        jump loc_7782
    }

    if ( !isdefined( level._ID844 ) )
    {
        level._ID844 = getdvar( "ps4Game" ) == "true";
        jump loc_77A1
    }

    if ( !isdefined( level._ID765 ) )
    {
        level._ID765 = !level._ID8534 && !level._ID766;
        jump loc_77BE
    }

    if ( !isdefined( level._ID44876 ) )
    {
        level._ID44876 = getdvar( "pcUWPGame" ) == "true";
        jump loc_77DD
    }

    if ( !isdefined( level._ID227 ) )
    {
        level._ID227 = level._ID843 || level._ID766 || level._ID1333;
        jump loc_77FF
    }

    if ( !isdefined( level._ID688 ) )
        level._ID688 = level._ID765 || level._ID844 || level._ID1332;
    else
    {

    }
}

_ID20530()
{
    return level._ID688;
}

_ID4433( var_0 )
{
    return _ID42263::_ID1375( var_0 );
}

_ID4434()
{
    return _ID42263::_ID1375( 1 );
}

_ID32326( var_0 )
{
    self._ID9813 = _ID16303( var_0 );
}

_ID32265( var_0 )
{
    self._ID9813 = _ID16120( var_0 );
}

_ID7854()
{
    self._ID9813 = undefined;
}

_ID19212( var_0 )
{
    wait 0.75;

    if ( isdefined( var_0 ) )
        self playsound( var_0 );
    else
        self playsound( "door_wood_slow_open" );

    wait 1;
    self rotateto( self._ID65 + ( 0, 70, 0 ), 2, 0.5, 0 );

    if ( self._ID170 == "script_brushmodel" )
        self connectpaths();

    self waittill( "rotatedone" );
    self rotateto( self._ID65 + ( 0, 40, 0 ), 2, 0, 2 );
}

_ID26217( var_0 )
{
    wait 1.35;

    if ( isdefined( var_0 ) )
        self playsound( var_0 );
    else
        self playsound( "door_wood_slow_open" );

    self rotateto( self._ID65 + ( 0, 70, 0 ), 2, 0.5, 0 );
    self connectpaths();
    self waittill( "rotatedone" );
    self rotateto( self._ID65 + ( 0, 40, 0 ), 2, 0, 2 );
}

_ID22156( var_0, var_1 )
{
    foreach ( var_3 in level._ID805 )
        var_3 lerpfov( var_1, var_0 );

    wait(var_0);
}

_ID22158( var_0, var_1 )
{
    var_2 = getdvarfloat( "cg_fovscale" );
    var_3 = int( var_0 / 0.05 );
    var_4 = ( var_1 - var_2 ) / var_3;
    var_5 = var_2;

    for ( var_6 = 0; var_6 < var_3; var_6++ )
    {
        var_5 += var_4;
        setsaveddvar( "cg_fovscale", var_5 );
        wait 0.05;
    }

    setsaveddvar( "cg_fovscale", var_1 );
}

_ID28776()
{
    animscripts\shared::_ID26732( self._ID1302, "none" );
    self._ID1302 = "none";
}

_ID3237()
{
    _ID42262::_ID32312( 0 );
}

_ID3236()
{
    _ID42262::_ID32312( 1 );
}

_ID3136()
{
    self stopanimscripted();
    self notify( "stop_loop" );
    self notify( "single anim",  "end"  );
    self notify( "looping anim",  "end"  );
}

_ID10949()
{
    self._ID7._ID11043 = 1;
    self._ID52 = 0;
}

_ID12508()
{
    self._ID7._ID11043 = 0;
    self._ID52 = 1;
}

_ID1408()
{
    self delete();
}

_ID1500()
{
    self kill();
}

_ID21321()
{
    if ( isplayernumber( self ) )
    {
        if ( _ID42237::_ID14396( "special_op_terminated" ) && _ID42237::_ID14385( "special_op_terminated" ) )
            return 0;

        if ( _ID20581( self ) )
            self disableinvulnerability();
    }

    self enabledeathshield( 0 );
    self kill();
    return 1;
}

_ID1592( var_0 )
{
    self setentitytarget( var_0 );
}

_ID1389()
{
    self clearentitytarget();
}

_ID1660()
{
    self unlink();
}

_ID10947( var_0 )
{
    var_1 = getarraykeys( level._ID1478[var_0] );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        level._ID1478[var_0][var_1[var_2]]._ID22654 delete();
        level._ID1478[var_0][var_1[var_2]] = undefined;
    }
}

_ID1596( var_0 )
{
    self setlightintensity( var_0 );
}

_ID1508( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
    {
        self linkto( var_0, var_1, var_2, var_3 );
        return;
    }

    if ( isdefined( var_2 ) )
    {
        self linkto( var_0, var_1, var_2 );
        return;
    }

    if ( isdefined( var_1 ) )
    {
        self linkto( var_0, var_1 );
        return;
    }

    self linkto( var_0 );
}

_ID3355( var_0, var_1, var_2 )
{
    var_3 = getarraykeys( var_0 );
    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
        var_6 = var_3[var_5];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        var_6 = var_3[var_5];
        var_4[var_6] = spawnstruct();
        var_4[var_6]._ID1371 = 1;
        var_4[var_6] thread _ID42408::_ID3356( var_0[var_6], var_1, var_2 );
    }

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        var_6 = var_3[var_5];

        if ( isdefined( var_0[var_6] ) && var_4[var_6]._ID1371 )
            var_4[var_6] waittill( "_array_wait" );
    }
}

_ID10836()
{
    self kill( ( 0, 0, 0 ) );
}

_ID16425( var_0 )
{
    return level._ID30904[var_0];
}

_ID20652()
{
    return self playerads() > 0.5;
}

_ID43898()
{
    return self _meth_859c();
}

_ID29755()
{
    level._ID794._ID1204 = int( _ID42298::_ID15827( "threatbias", 1 ) );
}

_ID41135( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_5 ) )
        var_5 = level._ID794;

    var_6 = spawnstruct();

    if ( isdefined( var_3 ) )
        var_6 thread _ID25088( "timeout", var_3 );

    var_6 endon( "timeout" );

    if ( !isdefined( var_0 ) )
        var_0 = 0.92;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    var_7 = int( var_1 * 20 );
    var_8 = var_7;
    self endon( "death" );
    var_9 = isai( self );
    var_10 = undefined;

    for (;;)
    {
        if ( var_9 )
            var_10 = self geteye();
        else
            var_10 = self._ID740;

        if ( var_5 _ID27540( var_10, var_0, var_2, var_4 ) )
        {
            var_8--;

            if ( var_8 <= 0 )
                return 1;
        }
        else
            var_8 = var_7;

        wait 0.05;
    }
}

_ID41136( var_0, var_1, var_2, var_3 )
{
    _ID41135( var_1, var_0, var_2, undefined, var_3 );
}

_ID27540( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0.8;

    var_4 = _ID15912();
    var_5 = var_4 geteye();
    var_6 = vectortoangles( var_0 - var_5 );
    var_7 = anglestoforward( var_6 );
    var_8 = var_4 getplayerangles();
    var_9 = anglestoforward( var_8 );
    var_10 = vectordot( var_7, var_9 );

    if ( var_10 < var_1 )
        return 0;

    if ( isdefined( var_2 ) )
        return 1;

    var_11 = bullettrace( var_0, var_5, 0, var_3 );
    return var_11["fraction"] == 1;
}

_ID12324( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < level._ID805.size; var_4++ )
    {
        if ( level._ID805[var_4] _ID27540( var_0, var_1, var_2, var_3 ) )
            return 1;
    }

    return 0;
}

_ID27291( var_0, var_1 )
{
    var_2 = gettime();

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( isdefined( var_0._ID27977 ) && var_0._ID27977 + var_1 >= var_2 )
        return var_0._ID27976;

    var_0._ID27977 = var_2;

    if ( !_ID42237::_ID41802( level._ID794._ID740, level._ID794._ID65, var_0._ID740, 0.766 ) )
    {
        var_0._ID27976 = 0;
        return 0;
    }

    var_3 = level._ID794 geteye();
    var_4 = var_0._ID740;

    if ( sighttracepassed( var_3, var_4, 1, level._ID794, var_0 ) )
    {
        var_0._ID27976 = 1;
        return 1;
    }

    var_5 = var_0 geteye();

    if ( sighttracepassed( var_3, var_5, 1, level._ID794, var_0 ) )
    {
        var_0._ID27976 = 1;
        return 1;
    }

    var_6 = ( var_5 + var_4 ) * 0.5;

    if ( sighttracepassed( var_3, var_6, 1, level._ID794, var_0 ) )
    {
        var_0._ID27976 = 1;
        return 1;
    }

    var_0._ID27976 = 0;
    return 0;
}

_ID27968( var_0, var_1 )
{
    var_2 = var_0 * var_0;

    for ( var_3 = 0; var_3 < level._ID805.size; var_3++ )
    {
        if ( distancesquared( var_1, level._ID805[var_3]._ID740 ) < var_2 )
            return 1;
    }

    return 0;
}

_ID2265( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_2 = 0.75;

    if ( _func_145() )
        var_2 = 0.65;

    while ( var_0.size > 0 )
    {
        wait 1;

        for ( var_3 = 0; var_3 < var_0.size; var_3++ )
        {
            if ( !isdefined( var_0[var_3] ) || !isalive( var_0[var_3] ) )
            {
                var_0 = _ID42237::_ID3321( var_0, var_0[var_3] );
                continue;
            }

            if ( _ID27968( var_1, var_0[var_3]._ID740 ) )
                continue;

            if ( _ID12324( var_0[var_3]._ID740 + ( 0, 0, 48 ), var_2, 1 ) )
                continue;

            if ( isdefined( var_0[var_3]._ID22746 ) )
                var_0[var_3] _ID36519();

            var_0[var_3] delete();
            var_0 = _ID42237::_ID3321( var_0, var_0[var_3] );
        }
    }
}

_ID1985( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4._ID6667 = self;
    var_4._ID15079 = var_0;
    var_4._ID26264 = [];

    if ( isdefined( var_1 ) )
        var_4._ID26264[var_4._ID26264.size] = var_1;

    if ( isdefined( var_2 ) )
        var_4._ID26264[var_4._ID26264.size] = var_2;

    if ( isdefined( var_3 ) )
        var_4._ID26264[var_4._ID26264.size] = var_3;

    level._ID40838[level._ID40838.size] = var_4;
}

_ID1841( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4._ID6667 = self;
    var_4._ID15079 = var_0;
    var_4._ID26264 = [];

    if ( isdefined( var_1 ) )
        var_4._ID26264[var_4._ID26264.size] = var_1;

    if ( isdefined( var_2 ) )
        var_4._ID26264[var_4._ID26264.size] = var_2;

    if ( isdefined( var_3 ) )
        var_4._ID26264[var_4._ID26264.size] = var_3;

    level._ID1728[level._ID1728.size] = var_4;
}

_ID1890( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = spawnstruct();
    var_6._ID6667 = self;
    var_6._ID15079 = var_0;
    var_6._ID26264 = [];

    if ( isdefined( var_1 ) )
        var_6._ID26264[var_6._ID26264.size] = var_1;

    if ( isdefined( var_2 ) )
        var_6._ID26264[var_6._ID26264.size] = var_2;

    if ( isdefined( var_3 ) )
        var_6._ID26264[var_6._ID26264.size] = var_3;

    if ( isdefined( var_4 ) )
        var_6._ID26264[var_6._ID26264.size] = var_4;

    if ( isdefined( var_5 ) )
        var_6._ID26264[var_6._ID26264.size] = var_5;

    level._ID30382[level._ID30382.size] = var_6;
}

_ID1855( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = spawnstruct();
    var_6._ID6667 = self;
    var_6._ID15079 = var_0;
    var_6._ID26264 = [];

    if ( isdefined( var_1 ) )
        var_6._ID26264[var_6._ID26264.size] = var_1;

    if ( isdefined( var_2 ) )
        var_6._ID26264[var_6._ID26264.size] = var_2;

    if ( isdefined( var_3 ) )
        var_6._ID26264[var_6._ID26264.size] = var_3;

    if ( isdefined( var_4 ) )
        var_6._ID26264[var_6._ID26264.size] = var_4;

    if ( isdefined( var_5 ) )
        var_6._ID26264[var_6._ID26264.size] = var_5;

    level._ID30378[level._ID30378.size] = var_6;
}

_ID1918( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = spawnstruct();
    var_6._ID15079 = var_0;
    var_6._ID26264 = [];

    if ( isdefined( var_1 ) )
        var_6._ID26264[var_6._ID26264.size] = var_1;

    if ( isdefined( var_2 ) )
        var_6._ID26264[var_6._ID26264.size] = var_2;

    if ( isdefined( var_3 ) )
        var_6._ID26264[var_6._ID26264.size] = var_3;

    if ( isdefined( var_4 ) )
        var_6._ID26264[var_6._ID26264.size] = var_4;

    if ( isdefined( var_5 ) )
        var_6._ID26264[var_6._ID26264.size] = var_5;

    level._ID30384[level._ID30384.size] = var_6;
}

_ID1886( var_0 )
{
    var_1 = spawnstruct();
    var_1._ID6667 = self;
    var_1._ID12638 = var_0;
    level._ID11233[level._ID11233.size] = var_1;
}

_ID11232()
{
    _ID11231( level._ID40838.size - 1 );
}

_ID11231( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = spawnstruct();
    var_2 = level._ID40838;
    var_3 = level._ID11233;
    var_4 = level._ID30382;
    var_5 = level._ID30378;
    var_6 = level._ID30384;
    var_7 = level._ID1728;
    level._ID40838 = [];
    level._ID30382 = [];
    level._ID11233 = [];
    level._ID1728 = [];
    level._ID30378 = [];
    level._ID30384 = [];
    var_1._ID216 = var_2.size;
    var_1 _ID42237::_ID3315( var_2, _ID42408::_ID41108, var_3 );
    var_1 thread _ID42408::_ID11192( var_7 );
    var_1 endon( "any_funcs_aborted" );

    for (;;)
    {
        if ( var_1._ID216 <= var_0 )
            break;

        var_1 waittill( "func_ended" );
    }

    var_1 notify( "all_funcs_ended" );
    _ID42237::_ID3315( var_4, _ID42408::_ID13295, [] );
    _ID42237::_ID3315( var_5, _ID42408::_ID13293 );
    _ID42237::_ID3315( var_6, _ID42408::_ID13294 );
}

_ID11204()
{
    var_0 = spawnstruct();
    var_1 = level._ID30382;
    level._ID30382 = [];

    foreach ( var_3 in var_1 )
        level _ID42408::_ID13295( var_3, [] );

    var_0 notify( "all_funcs_ended" );
}

_ID20505()
{
    if ( isdefined( level._ID14777 ) && level._ID14777 == 1 )
        return 0;

    if ( isdefined( level._ID10127 ) && level._ID10127 == level._ID35897 )
        return 1;

    if ( isdefined( level._ID10126 ) )
        return level._ID35897 == "default";

    if ( _ID22213() )
        return level._ID35897 == level._ID35768[0]["name"];

    return level._ID35897 == "default";
}

_ID14761()
{
    level._ID14777 = 1;
}

_ID20525()
{
    if ( !_ID22213() )
        return 1;

    return level._ID35897 == level._ID35768[0]["name"];
}

_ID20479( var_0 )
{
    var_1 = 0;

    if ( level._ID35897 == var_0 )
        return 0;

    if ( level._ID35897 == "default" )
        return 0;

    for ( var_2 = 0; var_2 < level._ID35768.size; var_2++ )
    {
        if ( level._ID35768[var_2]["name"] == var_0 )
        {
            var_1 = 1;
            continue;
        }

        if ( level._ID35768[var_2]["name"] == level._ID35897 )
            return var_1;
    }
}

_ID54585( var_0 )
{
    if ( level._ID35897 == var_0 )
        return 1;

    if ( _ID20479( var_0 ) )
        return 1;

    return 0;
}

_ID1425( var_0, var_1, var_2, var_3 )
{
    earthquake( var_0, var_1, var_2, var_3 );
}

_ID41628( var_0, var_1 )
{
    self endon( "death" );
    var_2 = 0;

    if ( isdefined( var_1 ) )
        var_2 = 1;

    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14386( var_0 );
        level endon( var_0 );
    }

    for (;;)
    {
        wait(randomfloatrange( 0.15, 0.3 ));
        var_3 = self._ID740 + ( 0, 0, 150 );
        var_4 = self._ID740 - ( 0, 0, 150 );
        var_5 = bullettrace( var_3, var_4, 0, undefined );

        if ( !issubstr( var_5["surfacetype"], "water" ) )
            continue;

        var_6 = "water_movement";

        if ( isplayernumber( self ) )
        {
            if ( distance( self getvelocity(), ( 0, 0, 0 ) ) < 5 )
                var_6 = "water_stop";
        }
        else if ( isdefined( level._ID1426["water_" + self._ID7._ID24414] ) )
            var_6 = "water_" + self._ID7._ID24414;

        var_7 = _ID42237::_ID16299( var_6 );
        var_3 = var_5["position"];
        var_8 = ( 0, self._ID65[1], 0 );
        var_9 = anglestoforward( var_8 );
        var_10 = anglestoup( var_8 );
        playfx( var_7, var_3, var_10, var_9 );

        if ( var_6 != "water_stop" && var_2 )
            thread _ID42237::_ID27077( var_1, var_3 );
    }
}

_ID27997( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14386( var_0 );
        level endon( var_0 );
    }

    for (;;)
    {
        wait(randomfloatrange( 0.25, 0.5 ));
        var_1 = self._ID740 + ( 0, 0, 0 );
        var_2 = self._ID740 - ( 0, 0, 5 );
        var_3 = bullettrace( var_1, var_2, 0, undefined );
        var_4 = anglestoforward( self._ID65 );
        var_5 = distance( self getvelocity(), ( 0, 0, 0 ) );

        if ( isdefined( self._ID40065 ) )
            continue;

        if ( var_3["surfacetype"] != "snow" )
            continue;

        if ( var_5 <= 10 )
            continue;

        var_6 = "snow_movement";

        if ( distance( self getvelocity(), ( 0, 0, 0 ) ) <= 154 )
            playfx( _ID42237::_ID16299( "footstep_snow_small" ), var_3["position"], var_3["normal"], var_4 );

        if ( distance( self getvelocity(), ( 0, 0, 0 ) ) > 154 )
            playfx( _ID42237::_ID16299( "footstep_snow" ), var_3["position"], var_3["normal"], var_4 );
    }
}

_ID46142( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14386( var_0 );
        level endon( var_0 );
    }

    if ( !isdefined( level._ID44081 ) )
        level._ID44081 = ::_ID47914;

    if ( !isdefined( level._ID46837 ) )
    {
        level._ID46837 = [];
        level._ID46837["snow"] = 1;
        level._ID46837["ice"] = 1;
        level._ID46837["slush"] = 1;
        level._ID46837["mud"] = 1;
    }

    var_1 = 0;

    for (;;)
    {
        self waittill( "foley",  var_2, var_3, var_4  );

        if ( isdefined( self._ID40065 ) )
            continue;

        if ( !isdefined( level._ID44081 ) )
            continue;

        var_5 = undefined;
        var_6 = undefined;
        var_7 = 1;
        var_8 = _ID42237::_ID37527( var_4, 1.0, -1.0 );

        switch ( var_2 )
        {
            case "stationarycrouchscuff":
                var_5 = "footstep";
                var_6 = "small";
                break;
            case "stationaryscuff":
                var_5 = "footstep";
                var_6 = "small";
                break;
            case "crouchscuff":
                var_5 = "footstep";
                var_6 = "small";
                break;
            case "runscuff":
                var_5 = "footstep";
                break;
            case "sprintscuff":
                var_5 = "footstep";
                break;
            case "prone":
                var_5 = "crawling";
                break;
            case "crouchwalk":
                var_5 = "footstep";
                var_6 = "small";
                break;
            case "crouchrun":
                var_5 = "footstep";
                break;
            case "walk":
                var_5 = "footstep";
                var_6 = "small";
                break;
            case "run":
                var_5 = "footstep";
                break;
            case "sprint":
                var_5 = "footstep";
                break;
            case "lightland":
                var_5 = "landing";
                var_6 = "small";
                var_7 = 0;
                break;
            case "mediumland":
                var_5 = "landing";
                var_6 = "small";
                var_7 = 0;
                break;
            case "heavyland":
                var_5 = "landing";
                var_7 = 0;
                break;
            case "damageland":
                var_5 = "landing";
                var_7 = 0;
                break;
            case "jump":
            case "mantleupmedium":
            case "mantleuplow":
            case "mantleoverhigh":
            case "mantleovermedium":
            case "mantleoverlow":
            default:
                break;
        }

        if ( !isdefined( var_5 ) )
            continue;

        var_9 = ( 0, 0, 0 );
        var_10 = ( 0, 0, 0 );

        if ( var_7 )
        {
            var_11 = randomfloatrange( 4.5, 5 );
            var_12 = randomfloatrange( -15, -5 );
            var_13 = anglestoright( self._ID65 );
            var_9 = var_13 * var_11 * var_8;
            var_10 = ( 0, var_12 * var_8, 0 );
        }

        var_14 = self._ID740 + var_9 + ( 0, 0, 2.5 );
        var_15 = var_14 - ( 0, 0, 7.5 );
        var_16 = bullettrace( var_14, var_15, 0, undefined );

        if ( var_16["fraction"] < 1 && var_16["fraction"] > 0 && var_16["surfacetype"] != "none" )
        {
            var_17 = anglestoforward( combineangles( self._ID65, var_10 ) ) * -1;
            var_18 = var_16["normal"];
            [[ level._ID44081 ]]( var_5, var_6, var_16["surfacetype"], var_16["position"], var_18, var_17 );
        }
    }
}

_ID47914( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = var_0 + "_" + var_2;

    if ( isdefined( var_1 ) )
        var_6 += ( "_" + var_1 );

    var_7 = _ID42237::_ID15272( var_6 ) && isdefined( level._ID46837[var_2] );

    if ( var_7 )
        playfx( _ID42237::_ID16299( var_6 ), var_3, var_4, var_5 );
}

_ID23791( var_0 )
{
    var_1 = 60;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        self setsoundblend( var_0, var_0 + "_off", ( var_1 - var_2 ) / var_1 );
        wait 0.05;
    }
}

_ID23789( var_0 )
{
    var_1 = 60;

    for ( var_2 = 0; var_2 < var_1; var_2++ )
    {
        self setsoundblend( var_0, var_0 + "_off", var_2 / var_1 );
        wait 0.05;
    }
}

_ID22901( var_0, var_1 )
{
    var_0 endon( "death" );
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = ( 0, 0, 0 );

    for (;;)
    {
        self._ID740 = var_0._ID740 + var_1;
        self._ID65 = var_0._ID65;
        wait 0.05;
    }
}

_ID24793()
{
    _ID42291::_ID1538();
}

_ID22802( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = [];
    var_5[var_5.size] = var_0;

    if ( isdefined( var_1 ) )
        var_5[var_5.size] = var_1;

    if ( isdefined( var_2 ) )
        var_5[var_5.size] = var_2;

    if ( isdefined( var_3 ) )
        var_5[var_5.size] = var_3;

    if ( isdefined( var_4 ) )
        var_5[var_5.size] = var_4;

    return var_5;
}

_ID13828()
{
    level._ID13853 = 1;
}

_ID24927()
{
    level._ID13853 = 0;
}

_ID16523()
{
    var_0 = self getweaponslistall();
    var_1 = [];

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];
        var_1[var_3] = self getweaponammoclip( var_3 );
    }

    var_4 = 0;

    if ( isdefined( var_1["claymore"] ) && var_1["claymore"] > 0 )
        var_4 = var_1["claymore"];

    return var_4;
}

_ID1687( var_0 )
{
    wait(var_0);
}

_ID1689( var_0, var_1 )
{
    self waittillmatch( var_0,  var_1  );
}

_ID1601( var_0, var_1 )
{
    setsaveddvar( var_0, var_1 );
}

_ID22175( var_0, var_1, var_2 )
{
    var_3 = getdvarfloat( var_0 );
    level notify( var_0 + "_lerp_savedDvar" );
    level endon( var_0 + "_lerp_savedDvar" );
    var_4 = var_1 - var_3;
    var_5 = 0.05;
    var_6 = int( var_2 / var_5 );

    for ( var_7 = var_4 / var_6; var_6; var_6-- )
    {
        var_3 += var_7;
        setsaveddvar( var_0, var_3 );
        wait(var_5);
    }

    setsaveddvar( var_0, var_1 );
}

_ID22176( var_0, var_1, var_2, var_3 )
{
    if ( _ID20530() )
        _ID22175( var_0, var_2, var_3 );
    else
        _ID22175( var_0, var_1, var_3 );
}

_ID16864( var_0 )
{
    if ( achievement_conditions( var_0 ) )
        return;

    foreach ( var_2 in level._ID805 )
        var_2 giveachievement( var_0 );
}

_ID27440( var_0 )
{
    if ( achievement_conditions( var_0 ) )
        return;

    self giveachievement( var_0 );
}

achievement_conditions( var_0 )
{
    return ( _ID20506() || _ID42237::_ID14385( "has_cheated" ) || _ID49347::_ID44352() ) && !( var_0 == "THE_ROAD_LESS_TRAVELED" || var_0 == "LEAVE_NO_STONE_UNTURNED" );
}

_ID1901( var_0 )
{
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 setcontents( 0 );
    var_1 setmodel( "weapon_javelin_obj" );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    _ID1985( ::_ID10283 );

    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14386( var_0 );
        _ID1985( _ID42237::_ID14413, var_0 );
    }

    _ID11232();
    var_1 delete();
}

_ID1854( var_0 )
{
    var_1 = spawn( "script_model", ( 0, 0, 0 ) );
    var_1 setcontents( 0 );
    var_1 setmodel( "weapon_c4_obj" );
    var_1._ID740 = self._ID740;
    var_1._ID65 = self._ID65;
    _ID1985( ::_ID10283 );

    if ( isdefined( var_0 ) )
    {
        _ID42237::_ID14386( var_0 );
        _ID1985( _ID42237::_ID14413, var_0 );
    }

    _ID11232();
    var_1 delete();
}

_ID10283()
{
    for (;;)
    {
        if ( !isdefined( self ) )
            return;

        wait 0.05;
    }
}

_ID34379()
{
    _ID42237::_ID14402( "disable_slowmo_cheat" );
}

_ID34369()
{
    _ID42237::_ID14388( "disable_slowmo_cheat" );
}

_ID34377( var_0 )
{
    level._ID34362._ID35417 = var_0;
}

_ID34376( var_0 )
{
    level._ID34362._ID35414 = var_0;
}

_ID34374( var_0 )
{
    level._ID34362._ID22188 = var_0;
}

_ID34375( var_0 )
{
    level._ID34362._ID22189 = var_0;
}

_ID34371()
{
    if ( isdefined( level._ID24849 ) && level._ID24849 )
        return;

    setslowmotion( level._ID34362._ID35414, level._ID34362._ID35417, level._ID34362._ID22188 );
}

_ID34372()
{
    if ( isdefined( level._ID24849 ) && level._ID24849 )
        return;

    setslowmotion( level._ID34362._ID35417, level._ID34362._ID35414, level._ID34362._ID22189 );
}

_ID45369( var_0, var_1, var_2, var_3 )
{
    _ID34377( var_0 );
    _ID34374( var_1 );
    _ID34371();

    for ( var_4 = 0; var_4 < var_3; var_4++ )
        waittillframeend;

    _ID34375( var_2 );
    _ID34372();
}

_ID1885( var_0, var_1, var_2, var_3 )
{
    level._ID12307[var_0]["magnitude"] = var_1;
    level._ID12307[var_0]["duration"] = var_2;
    level._ID12307[var_0]["radius"] = var_3;
}

_ID3270()
{
    return getdvar( "arcademode" ) == "1";
}

_ID50522( var_0, var_1 )
{

}

_ID54515( var_0, var_1, var_2 )
{
    if ( getdvar( "arcademode" ) != "1" )
        return;

    thread _ID54127::_ID45449( var_0, 1, var_1, var_2 );
}

_ID54158( var_0, var_1, var_2 )
{

}

_ID3272()
{
    if ( !isdefined( level._ID3271 ) )
        return;

    level notify( "arcadeMode_remove_timer" );
    level._ID3273 = gettime();
    level._ID3271 destroy();
    level._ID3271 = undefined;
}

_ID24587( var_0, var_1, var_2 )
{
    level._ID1374._ID21854 = var_0;

    if ( !isdefined( var_1 ) )
        var_1 = 1;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    musicplay( var_0, 0, 1.0, 1, var_2 );
}

_ID24577( var_0, var_1, var_2, var_3, var_4 )
{
    thread _ID42408::_ID24578( var_0, var_1, var_2, var_3, var_4 );
}

_ID24580( var_0, var_1, var_2, var_3, var_4 )
{
    thread _ID42408::_ID24578( var_0, var_1, var_2, var_3, var_4, 1 );
}

_ID24582( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_1 ) && var_1 > 0 )
    {
        thread _ID42408::_ID24583( var_0, var_1, var_2, var_3 );
        return;
    }

    _ID24584();
    _ID24587( var_0, var_2, var_3 );
}

_ID24575( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 1;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( isdefined( level._ID1374._ID21854 ) )
        musicstop( var_1, level._ID1374._ID21854, var_3 );
    else
        iprintln( "^3WARNING!  script music_crossfade(): No previous song was played - no previous song to crossfade from - not fading out anything" );

    level._ID1374._ID21854 = var_0;
    musicplay( var_0, var_1, var_2, 0, var_3 );
    level endon( "stop_music" );
    wait(var_1);
    level notify( "done_crossfading" );
}

_ID24584( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 <= 0 )
        musicstop();
    else
        musicstop( var_0 );

    level notify( "stop_music" );
}

_ID27506()
{
    var_0 = getentarray( "grenade", "classname" );

    for ( var_1 = 0; var_1 < var_0.size; var_1++ )
    {
        var_2 = var_0[var_1];

        if ( issubstr( var_2._ID669, "claymore" ) || issubstr( var_2._ID669, "soccer_ball" ) )
            continue;

        for ( var_3 = 0; var_3 < level._ID805.size; var_3++ )
        {
            var_4 = level._ID805[var_3];

            if ( distancesquared( var_2._ID740, var_4._ID740 ) < 75625 )
                return 1;
        }
    }

    return 0;
}

player_is_owner_of_live_grenade()
{
    var_0 = getentarray( "grenade", "classname" );

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2._ID669, "claymore" ) || issubstr( var_2._ID669, "soccer_ball" ) )
            continue;

        if ( !isvalidmissile( var_2 ) )
            continue;

        var_3 = getmissileowner( var_2 );

        if ( !isdefined( var_3 ) || _func_2a5( var_3 ) )
            continue;

        foreach ( var_5 in level._ID805 )
        {
            if ( var_5 == var_3 )
                return 1;
        }
    }

    return 0;
}

_ID27342()
{
    return getdvarint( "player_died_recently", "0" ) > 0;
}

_ID2534( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        if ( !var_2 istouching( var_0 ) )
            return 0;
    }

    return 1;
}

_ID3224( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        if ( var_2 istouching( var_0 ) )
            return 1;
    }

    return 0;
}

_ID16219()
{
    if ( level._ID15361 < 1 )
        return "easy";

    if ( level._ID15361 < 2 )
        return "medium";

    if ( level._ID15361 < 3 )
        return "hard";

    return "fu";
}

_ID16145()
{
    var_0 = 0;
    var_1 = 0;
    var_2 = 0;

    foreach ( var_4 in level._ID805 )
    {
        var_0 += var_4._ID740[0];
        var_1 += var_4._ID740[1];
        var_2 += var_4._ID740[2];
    }

    var_0 /= level._ID805.size;
    var_1 /= level._ID805.size;
    var_2 /= level._ID805.size;
    return ( var_0, var_1, var_2 );
}

_ID15572( var_0 )
{
    var_1 = ( 0, 0, 0 );

    foreach ( var_3 in var_0 )
        var_1 += var_3._ID740;

    return var_1 * 1.0 / var_0.size;
}

_ID15503()
{
    self._ID9601 = [];
    self endon( "entitydeleted" );
    self endon( "stop_generic_damage_think" );

    for (;;)
    {
        self waittill( "damage",  var_0, var_1, var_2, var_3, var_4, var_5, var_6  );

        foreach ( var_8 in self._ID9601 )
            thread [[ var_8 ]]( var_0, var_1, var_2, var_3, var_4, var_5, var_6 );
    }
}

_ID1868( var_0 )
{
    self._ID9601[self._ID9601.size] = var_0;
}

_ID29503( var_0 )
{
    var_1 = [];

    foreach ( var_3 in self._ID9601 )
    {
        if ( var_3 == var_0 )
            continue;

        var_1[var_1.size] = var_3;
    }

    self._ID9601 = var_1;
}

_ID16915( var_0, var_1 )
{
    if ( isdefined( level._ID41892 ) && level._ID41892 && isdefined( level._ID41893 ) )
        self [[ level._ID41893 ]]( var_0, var_1 );
}

_ID28099( var_0 )
{
    self playlocalsound( var_0 );
}

_ID12569( var_0 )
{
    if ( level._ID805.size < 1 )
        return;

    foreach ( var_2 in level._ID805 )
    {
        if ( var_0 == 1 )
        {
            var_2 enableweapons();
            continue;
        }

        var_2 disableweapons();
    }
}

_ID37442( var_0 )
{
    var_1 = undefined;
    var_2 = undefined;
    var_3 = undefined;

    foreach ( var_5 in var_0 )
    {
        if ( isdefined( var_5._ID922 ) && var_5._ID922 == "player1" )
        {
            var_1 = var_5;
            continue;
        }

        if ( isdefined( var_5._ID922 ) && var_5._ID922 == "player2" )
        {
            var_2 = var_5;
            continue;
        }

        if ( !isdefined( var_1 ) )
            var_1 = var_5;

        if ( !isdefined( var_2 ) )
            var_2 = var_5;
    }

    foreach ( var_8 in level._ID805 )
    {
        if ( var_8 == level._ID794 )
            var_3 = var_1;
        else if ( var_8 == level._ID27742 )
            var_3 = var_2;

        var_8 setorigin( var_3._ID740 );
        var_8 setplayerangles( var_3._ID65 );
    }
}

_ID37441( var_0 )
{
    level._ID794 setorigin( var_0._ID740 );

    if ( isdefined( var_0._ID65 ) )
        level._ID794 setplayerangles( var_0._ID65 );
}

_ID38694()
{
    var_0 = [];

    if ( isdefined( self._ID13072 ) )
        var_0 = self._ID13072;

    if ( isdefined( self._ID337 ) )
        var_0[var_0.size] = self._ID337;

    _ID42237::_ID3315( var_0, _ID42408::_ID38695 );
}

_ID25888( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    level._ID794 endon( "stop_opening_fov" );
    wait(var_0);
    level._ID794 playerlinktodelta( var_1, var_2, 1, var_3, var_4, var_5, var_6, 1 );
}

_ID50082( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    level._ID794 endon( "stop_opening_fov" );
    wait(var_0);
    level._ID794 playerlinktodelta( var_1, var_2, 1, var_3, var_4, var_5, var_6, 1 );
    level._ID794 setviewangleresistance( 50, 50, 20, 20 );
}

_ID15547( var_0, var_1, var_2 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "all";

    if ( !isdefined( var_1 ) )
        var_1 = "all";

    var_3 = getaispeciesarray( var_0, var_1 );
    var_4 = [];

    foreach ( var_6 in var_3 )
    {
        if ( var_6 istouching( self ) )
            var_4[var_4.size] = var_6;
    }

    return var_4;
}

_ID15692( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "all";

    var_1 = [];

    if ( var_0 == "all" )
    {
        var_1 = _ID3317( level._ID12061["allies"]._ID3291, level._ID12061["axis"]._ID3291 );
        var_1 = _ID3317( var_1, level._ID12061["neutral"]._ID3291 );
    }
    else
        var_1 = level._ID12061[var_0]._ID3291;

    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( !isdefined( var_4 ) )
            continue;

        if ( var_4 istouching( self ) )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID15693( var_0 )
{
    var_1 = _ID3317( level._ID12061["allies"]._ID3291, level._ID12061["axis"]._ID3291 );
    var_1 = _ID3317( var_1, level._ID12061["neutral"]._ID3291 );
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        if ( !isdefined( var_4 ) )
            continue;

        if ( isdefined( var_4._ID1193 ) && var_4._ID1193 == var_0 )
            var_2[var_2.size] = var_4;
    }

    return var_2;
}

_ID15882( var_0 )
{
    foreach ( var_2 in level._ID805 )
    {
        if ( var_0 == var_2 )
            continue;

        return var_2;
    }
}

_ID32251( var_0 )
{
    self._ID216 = var_0;
}

_ID14701( var_0, var_1, var_2, var_3 )
{
    self notify( "_utility::follow_path" );
    self endon( "_utility::follow_path" );
    self endon( "death" );
    var_4 = undefined;

    if ( !isdefined( var_0._ID170 ) )
    {
        if ( !isdefined( var_0._ID1244 ) )
            var_4 = "struct";
        else
            var_4 = "node";
    }
    else
        var_4 = "entity";

    if ( !isdefined( var_1 ) )
        var_1 = 300;

    var_5 = self._ID31212;
    self._ID31212 = 1;
    _ID42372::_ID16964( var_0, var_4, var_2, var_1, var_3 );
    self._ID31212 = var_5;
}

_ID12479( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 250;

    if ( !isdefined( var_1 ) )
        var_1 = 100;

    if ( !isdefined( var_2 ) )
        var_2 = var_0 * 2;

    if ( !isdefined( var_3 ) )
        var_3 = var_0 * 1.25;

    if ( !isdefined( var_5 ) )
        var_5 = 0;

    self._ID11567 = var_5;
    thread _ID42408::_ID12263( var_0, var_1, var_2, var_3, var_4 );
}

_ID10910()
{
    self notify( "stop_dynamic_run_speed" );
}

_ID27649()
{
    self endon( "death" );
    self endon( "stop_player_seek" );
    var_0 = 1200;

    if ( _ID18177() )
        var_0 = 250;

    var_1 = distance( self._ID740, level._ID794._ID740 );

    for (;;)
    {
        wait 2;
        self._ID452 = var_1;
        var_2 = _ID15617( self._ID740 );
        self setgoalentity( var_2 );
        var_1 -= 175;

        if ( var_1 < var_0 )
        {
            var_1 = var_0;
            return;
        }
    }
}

_ID27648()
{
    self notify( "stop_player_seek" );
}

_ID41105( var_0, var_1, var_2 )
{
    self endon( "death" );
    var_0 endon( "death" );

    if ( !isdefined( var_2 ) )
        var_2 = 5;

    var_3 = gettime() + var_2 * 1000;

    while ( isdefined( var_0 ) )
    {
        if ( distance( var_0._ID740, self._ID740 ) <= var_1 )
            break;

        if ( gettime() > var_3 )
            break;

        wait 0.1;
    }
}

_ID41104( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "death" );

    while ( isdefined( var_0 ) )
    {
        if ( distance( var_0._ID740, self._ID740 ) <= var_1 )
            break;

        wait 0.1;
    }
}

_ID41106( var_0, var_1 )
{
    self endon( "death" );
    var_0 endon( "death" );

    while ( isdefined( var_0 ) )
    {
        if ( distance( var_0._ID740, self._ID740 ) > var_1 )
            break;

        wait 0.1;
    }
}

_ID18177()
{
    self endon( "death" );

    if ( !isdefined( self._ID1302 ) )
        return 0;

    if ( weaponclass( self._ID1302 ) == "spread" )
        return 1;

    return 0;
}

_ID20872( var_0 )
{
    if ( var_0 == "none" )
        return 0;

    if ( weaponinventorytype( var_0 ) != "primary" )
        return 0;

    switch ( weaponclass( var_0 ) )
    {
        case "mg":
        case "pistol":
        case "rocketlauncher":
        case "spread":
        case "smg":
        case "sniper":
        case "rifle":
            return 1;
        default:
            return 0;
    }
}

_ID27469()
{
    var_0 = self getweaponslistall();

    if ( !isdefined( var_0 ) )
        return 0;

    foreach ( var_2 in var_0 )
    {
        if ( issubstr( var_2, "thermal" ) )
            return 1;
    }

    return 0;
}

_ID41159( var_0, var_1 )
{
    self endon( "death" );

    if ( !isdefined( var_1 ) )
        var_1 = self._ID452;

    for (;;)
    {
        self waittill( "goal" );

        if ( distance( self._ID740, var_0 ) < var_1 + 10 )
            break;
    }
}

_ID27683( var_0, var_1 )
{
    var_2 = int( getdvar( "g_speed" ) );

    if ( !isdefined( level._ID794._ID15303 ) )
        level._ID794._ID15303 = var_2;

    var_3 = int( level._ID794._ID15303 * var_0 * 0.01 );
    level._ID794 _ID27685( var_3, var_1 );
}

_ID5280( var_0, var_1 )
{
    var_2 = self;

    if ( !isplayernumber( var_2 ) )
        var_2 = level._ID794;

    if ( !isdefined( var_2._ID24445 ) )
        var_2._ID24445 = 1.0;

    var_3 = var_0 * 0.01;
    var_2 _ID5278( var_3, var_1 );
}

_ID27685( var_0, var_1 )
{
    var_2 = int( getdvar( "g_speed" ) );

    if ( !isdefined( level._ID794._ID15303 ) )
        level._ID794._ID15303 = var_2;

    var_3 = _ID42408::_ID15304;
    var_4 = _ID42408::_ID15305;
    level._ID794 thread _ID27684( var_0, var_1, var_3, var_4, "player_speed_set" );
}

_ID27261( var_0, var_1 )
{
    var_2 = _ID42408::_ID15300;
    var_3 = _ID42408::_ID15301;
    level._ID794 thread _ID27684( var_0, var_1, var_2, var_3, "player_bob_scale_set" );
}

_ID5278( var_0, var_1 )
{
    var_2 = self;

    if ( !isplayernumber( var_2 ) )
        var_2 = level._ID794;

    if ( !isdefined( var_2._ID24445 ) )
        var_2._ID24445 = 1.0;

    var_3 = _ID42408::_ID24440;
    var_4 = _ID42408::_ID24444;
    var_2 thread _ID27684( var_0, var_1, var_3, var_4, "blend_movespeedscale" );
}

_ID27684( var_0, var_1, var_2, var_3, var_4 )
{
    self notify( var_4 );
    self endon( var_4 );
    var_5 = [[ var_2 ]]();
    var_6 = var_0;

    if ( isdefined( var_1 ) )
    {
        var_7 = var_6 - var_5;
        var_8 = 0.05;
        var_9 = var_1 / var_8;
        var_10 = var_7 / var_9;

        while ( abs( var_6 - var_5 ) > abs( var_10 * 1.1 ) )
        {
            var_5 += var_10;
            [[ var_3 ]]( var_5 );
            wait(var_8);
        }
    }

    [[ var_3 ]]( var_6 );
}

_ID27680( var_0 )
{
    if ( !isdefined( level._ID794._ID15303 ) )
        return;

    level._ID794 _ID27685( level._ID794._ID15303, var_0 );
    waitframe;
    level._ID794._ID15303 = undefined;
}

_ID5279( var_0 )
{
    var_1 = self;

    if ( !isplayernumber( var_1 ) )
        var_1 = level._ID794;

    if ( !isdefined( var_1._ID24445 ) )
        return;

    var_1 _ID5278( 1.0, var_0 );
    waitframe;
    var_1._ID24445 = undefined;
}

_ID37404( var_0 )
{
    if ( isplayernumber( self ) )
    {
        self setorigin( var_0._ID740 );
        self setplayerangles( var_0._ID65 );
    }
    else
        self forceteleport( var_0._ID740, var_0._ID65 );
}

_ID37456( var_0, var_1 )
{
    var_2 = var_0 gettagorigin( var_1 );
    var_3 = var_0 gettagangles( var_1 );
    self dontinterpolate();

    if ( isplayernumber( self ) )
    {
        self setorigin( var_2 );
        self setplayerangles( var_3 );
    }
    else if ( isai( self ) )
        self forceteleport( var_2, var_3 );
    else
    {
        self._ID740 = var_2;
        self._ID65 = var_3;
    }
}

_ID37393( var_0 )
{
    self forceteleport( var_0._ID740, var_0._ID65 );
    self setgoalpos( self._ID740 );
    self setgoalnode( var_0 );
}

_ID24323( var_0 )
{
    foreach ( var_2 in level._ID9242 )
        var_2._ID40005["origin"] = var_2._ID40005["origin"] + var_0;
}

_ID20909()
{
    return isdefined( self._ID34345 );
}

_ID5026( var_0, var_1, var_2, var_3, var_4, var_5, var_6 )
{
    var_7 = self;

    if ( !isdefined( var_3 ) || !isdefined( level._ID30895["worldbody"] ) || !isdefined( level._ID30895["worldbody"]["slide_in"] ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) || !isdefined( level._ID30895["worldbody"] ) || !isdefined( level._ID30895["worldbody"]["slide_back_in"] ) )
        var_4 = 0;

    var_8 = 0;

    if ( isdefined( var_5 ) )
        var_8 = 1;

    if ( var_3 )
        var_7 _meth_85a4( 0 );

    var_7 thread _ID27079( "foot_slide_plr_start" );

    if ( soundexists( "foot_slide_plr_loop" ) )
        var_7 thread _ID27001( "foot_slide_plr_loop", undefined, 1, 1, 0.5, 0.5 );

    var_9 = isdefined( level._ID9550 );

    if ( !isdefined( var_0 ) )
        var_0 = var_7 getvelocity() + ( 0, 0, -10 );

    if ( !isdefined( var_1 ) )
        var_1 = 10;

    if ( !isdefined( var_2 ) )
    {
        if ( isdefined( level._ID34340 ) )
            var_2 = level._ID34340;
        else
            var_2 = 0.035;
    }

    if ( var_3 )
    {
        var_7._ID34345 = _ID35028( "worldbody", var_7._ID740, var_7._ID65 );
        var_7._ID34345 hide();
    }
    else
    {
        var_7._ID34345 = spawn( "script_origin", var_7._ID740 );
        var_7._ID34345._ID65 = var_7._ID65;
    }

    var_10 = var_7._ID34345;
    var_10 _ID13024( "sliding_out" );

    if ( !var_8 )
        var_10 moveslide( ( 0, 0, 15 ), 15, var_0 );

    setsaveddvar( "actionSlotsHide", 1 );
    setsaveddvar( "hud_showStance", 0 );
    setsaveddvar( "ammoCounterHide", 1 );

    if ( var_8 )
        var_7 disableweapons( 1, 250, 0.1 );
    else
        var_7 disableweapons( 1 );

    if ( var_9 )
        var_7 playerlinktoblend( var_10, undefined, 1 );
    else if ( var_3 )
    {
        var_11 = _ID42237::_ID37527( var_4, 25, 20 );
        var_7 playerlinktodelta( var_10, "tag_player", 1, 20, var_11, 60, 60 );
        var_7 lerpviewangleclamp( 0.2, 0.04, 0.04, 20, var_11, 10, 0 );
        var_7 setviewangleresistance( 50, 50, 20, 20 );
    }
    else
        var_7 playerlinkto( var_10 );

    var_7 thread _ID42408::_ID44272( var_10 );

    if ( !var_8 )
    {
        var_7 allowprone( 0 );
        var_7 allowcrouch( 1 );
        var_7 allowstand( 0 );
    }

    if ( var_3 )
    {
        thread h2_sliding_cinematic( "started" );
        var_12 = _ID42237::_ID37527( var_4, "slide_back_in", "slide_in" );
        var_13 = 0.05;
        var_14 = floor( getanimlength( level._ID30895["worldbody"][var_12] ) / var_13 ) * var_13;

        if ( var_8 )
        {
            wait 0.25;
            var_10 show();
            var_10 animscripted( "slide_in_scripted", var_5._ID740, var_5._ID65, level._ID30895["worldbody"][var_12] );
            var_5 thread _ID42259::_ID35866( var_10, "slide_in_scripted", var_12, "worldbody" );
            var_5 thread _ID42259::_ID3201( var_10, "slide_in_scripted", var_12 );
            wait(var_14);
            var_7 allowprone( 0 );
            var_7 allowcrouch( 1 );
            var_7 allowstand( 0 );
            var_7 _meth_85a4( 0 );
            var_10 _ID47099( var_4, 1, var_7 );
            var_10 moveslide( ( 0, 0, 15 ), 15, var_0 );
        }
        else
        {
            var_10 setflaggedanim( "slide_in", level._ID30895["worldbody"][var_12] );
            thread _ID42259::_ID35866( var_10, "slide_in", var_12, "worldbody" );
            thread _ID42259::_ID3201( var_10, "slide_in", var_12 );
            var_10 _ID10226( var_14, ::_ID47099, var_4, 0, var_7 );
            wait 0.25;
            var_10 show();
        }
    }

    if ( isdefined( var_6 ) )
        self _meth_80b5( var_6 );

    var_7 thread _ID42408::_ID11646( var_10, var_1, var_2, var_3, var_4 );
}

_ID12746( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = self;
    var_5._ID34345 _ID13025( "sliding_out" );

    if ( !isdefined( var_0 ) || !isdefined( level._ID30895["worldbody"] ) || !isdefined( level._ID30895["worldbody"]["slide_in"] ) )
        var_0 = 0;

    if ( !isdefined( var_1 ) || !isdefined( level._ID30895["worldbody"] ) || !isdefined( level._ID30895["worldbody"]["slide_back_in"] ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) || !var_0 )
        var_2 = 1;

    var_5 notify( "stop soundfoot_slide_plr_loop" );
    var_5 thread _ID27079( "foot_slide_plr_end" );

    if ( var_0 )
    {
        thread h2_sliding_cinematic( "completed" );
        var_6 = _ID42237::_ID37527( var_1, "slide_back_loop", "slide_loop" );
        var_7 = _ID42237::_ID37527( var_1, "slide_back_out", "slide_out" );
        var_8 = level._ID30895["worldbody"][var_7];
        var_5._ID34345 clearanim( level._ID30895["worldbody"][var_6][0], 0 );
        var_5._ID34345 setflaggedanim( "slide_out", var_8 );
        thread _ID42259::_ID35866( var_5._ID34345, "slide_out", var_7, "worldbody" );
        thread _ID42259::_ID3201( var_5._ID34345, "slide_out", var_7 );
        var_9 = getanimlength( var_8 );

        if ( isdefined( var_3 ) )
        {
            var_10 = 0;
            var_11 = 0.05;

            while ( var_9 > var_10 )
            {
                var_5._ID34345._ID974 = var_5._ID34345._ID974 * ( 1 - var_3 );
                var_10 += var_11;
                wait(var_11);
            }
        }
        else
            wait(var_9);
    }

    if ( var_2 )
        var_5 setvelocity( var_5._ID34345._ID974 );

    var_5 unlink();
    var_5._ID34345 delete();

    if ( var_0 )
    {
        var_12 = playerphysicstrace( level._ID794._ID740 + ( 0, 0, 40 ), level._ID794._ID740 + ( 0, 0, -100 ) );
        level._ID794 setorigin( var_12 );
    }

    if ( isdefined( var_4 ) )
        self _meth_80b6( var_4 );

    var_5 enableweapons();
    var_5 allowprone( 1 );
    var_5 allowcrouch( 1 );
    var_5 allowstand( 1 );

    if ( var_0 )
        var_5 _meth_85a4( 1 );

    setsaveddvar( "actionSlotsHide", 0 );
    setsaveddvar( "hud_showStance", 1 );
    setsaveddvar( "ammoCounterHide", 0 );
    var_5 notify( "stop_sliding" );
}

h2_sliding_cinematic( var_0 )
{
    var_1 = _ID54167::_ID43386( var_0 );

    switch ( var_0 )
    {
        case "started":
            level.slideoldfov = getdvarint( "cg_fov" );

            switch ( level._ID912 )
            {
                case "gulag":
                    var_2 = 1.3;
                    var_3 = 1.8;
                    var_4 = 1.4;
                    break;
                default:
                    var_2 = 0.15;
                    var_3 = 0.55;
                    var_4 = 0.2;
                    break;
            }

            var_1 _ID54167::_ID48800( var_2 ) _ID54167::_ID50321( 12.0, 500, 16.0, 16.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( var_3 ) _ID54167::_ID47844( 2 );
            var_1 _ID54167::_ID48800( var_4 ) _ID54167::_ID44191( level.slideoldfov + 12, 0.5 );
            break;
        case "completed":
            switch ( level._ID912 )
            {
                case "gulag":
                    var_4 = 0.5;
                    break;
                default:
                    var_4 = 0.0;
                    break;
            }

            var_1 _ID54167::_ID48800( 0.0 ) _ID54167::_ID50321( 24.0, 500, 2.0, 2.0 ) _ID54167::_ID44956();
            var_1 _ID54167::_ID48800( 0.4 ) _ID54167::_ID47844( 0 );
            var_1 _ID54167::_ID48800( 0.5 ) _ID54167::_ID48959() _ID54167::_ID46727();
            var_1 _ID54167::_ID48800( var_4 ) _ID54167::_ID44191( level.slideoldfov, 0.55 );
            break;
    }

    var_1 _ID54167::_ID48166();
}

_ID35192()
{
    return _ID42411::_ID40260( self );
}

_ID16268( var_0 )
{
    var_1 = _ID42401::_ID15821();
    var_2 = [];

    foreach ( var_6, var_4 in var_1 )
    {
        if ( !issubstr( var_6, "flag" ) )
            continue;

        var_5 = getentarray( var_6, "classname" );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    var_7 = _ID42401::_ID15822();

    foreach ( var_9, var_4 in var_7 )
    {
        if ( !issubstr( var_9, "flag" ) )
            continue;

        var_5 = getentarray( var_9, "targetname" );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    var_10 = undefined;

    foreach ( var_12 in var_2 )
    {
        if ( var_12._ID31190 == var_0 )
            return var_12;
    }
}

_ID16263( var_0 )
{
    var_1 = _ID42401::_ID15821();
    var_2 = [];

    foreach ( var_6, var_4 in var_1 )
    {
        if ( !issubstr( var_6, "flag" ) )
            continue;

        var_5 = getentarray( var_6, "classname" );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    var_7 = _ID42401::_ID15822();

    foreach ( var_9, var_4 in var_7 )
    {
        if ( !issubstr( var_9, "flag" ) )
            continue;

        var_5 = getentarray( var_9, "targetname" );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    var_10 = [];

    foreach ( var_12 in var_2 )
    {
        if ( var_12._ID31190 == var_0 )
            var_10[var_10.size] = var_12;
    }

    return var_10;
}

_ID32530( var_0, var_1 )
{
    return ( var_0[0], var_0[1], var_1 );
}

_ID1989( var_0, var_1 )
{
    return ( var_0[0], var_0[1], var_0[2] + var_1 );
}

_ID32529( var_0, var_1 )
{
    return ( var_0[0], var_1, var_0[2] );
}

_ID32528( var_0, var_1 )
{
    return ( var_1, var_0[1], var_0[2] );
}

_ID27729()
{
    var_0 = self getcurrentweapon();

    if ( !isdefined( var_0 ) )
        return 0;

    if ( issubstr( tolower( var_0 ), "rpg" ) )
        return 1;

    if ( issubstr( tolower( var_0 ), "stinger" ) )
        return 1;

    if ( issubstr( tolower( var_0 ), "at4" ) )
        return 1;

    if ( issubstr( tolower( var_0 ), "javelin" ) )
        return 1;

    return 0;
}

_ID11498()
{
    return isdefined( self._ID7._ID11498 );
}

_ID15963( var_0, var_1 )
{
    if ( _ID20495() )
    {

    }

    var_2 = _ID15912();

    if ( !isdefined( var_0 ) )
        var_0 = "steady_rumble";

    var_3 = spawn( "script_origin", var_2 geteye() );

    if ( !isdefined( var_1 ) || !_func_2cb( var_1 ) )
        var_3._ID20129 = 1;
    else
        var_3._ID20129 = var_1;

    var_3 thread _ID42408::_ID39643( var_2, var_0 );
    return var_3;
}

_ID32429( var_0 )
{
    self._ID20129 = var_0;
}

_ID30354( var_0 )
{
    thread _ID30355( 1, var_0 );
}

_ID30353( var_0 )
{
    thread _ID30355( 0, var_0 );
}

_ID30355( var_0, var_1 )
{
    self notify( "new_ramp" );
    self endon( "new_ramp" );
    self endon( "death" );
    var_2 = var_1 * 20;
    var_3 = var_0 - self._ID20129;
    var_4 = var_3 / var_2;

    for ( var_5 = 0; var_5 < var_2; var_5++ )
    {
        self._ID20129 = self._ID20129 + var_4;
        wait 0.05;
    }

    self._ID20129 = var_0;
}

_ID15912()
{
    if ( isdefined( self ) )
    {
        if ( !_ID20542( level._ID805, self ) )
            return level._ID794;
        else
            return self;
    }
    else
        return level._ID794;
}

_ID15913()
{
    return int( self getplayersetting( "gameskill" ) );
}

_ID16953( var_0 )
{
    if ( isdefined( self._ID24912 ) )
        return;

    self._ID24912 = self._ID669;

    if ( !isdefined( var_0 ) )
        var_0 = self._ID669 + "_obj";

    self setmodel( var_0 );
}

_ID36591( var_0 )
{
    if ( !isdefined( self._ID24912 ) )
        return;

    self setmodel( self._ID24912 );
    self._ID24912 = undefined;
}

_ID3305( var_0, var_1, var_2 )
{
    var_3 = [];
    var_1 = var_2 - var_1;

    foreach ( var_5 in var_0 )
    {
        var_3[var_3.size] = var_5;

        if ( var_3.size == var_2 )
        {
            var_3 = _ID42237::_ID3320( var_3 );

            for ( var_6 = var_1; var_6 < var_3.size; var_6++ )
                var_3[var_6] delete();

            var_3 = [];
        }
    }

    var_8 = [];

    foreach ( var_5 in var_0 )
    {
        if ( !isdefined( var_5 ) )
            continue;

        var_8[var_8.size] = var_5;
    }

    return var_8;
}

_ID41112( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0.5;

    self endon( "death" );

    while ( isdefined( self ) )
    {
        if ( distance( var_0, self._ID740 ) <= var_1 )
            break;

        wait(var_2);
    }
}

_ID1974( var_0 )
{
    var_1 = spawnstruct();
    var_1 thread _ID42408::_ID1975( var_0 );
    return var_1;
}

_ID38044( var_0, var_1, var_2 )
{
    var_3 = self gettagorigin( var_1 );
    var_4 = self gettagangles( var_1 );
    _ID38043( var_0, var_3, var_4, var_2 );
}

_ID38043( var_0, var_1, var_2, var_3 )
{
    var_4 = anglestoforward( var_2 );
    var_5 = bullettrace( var_1, var_1 + var_4 * var_3, 0, undefined );

    if ( var_5["fraction"] >= 1 )
        return;

    var_6 = var_5["surfacetype"];

    if ( !isdefined( level._ID38036[var_0][var_6] ) )
        var_6 = "default";

    var_7 = level._ID38036[var_0][var_6];

    if ( isdefined( var_7["fx"] ) )
        playfx( var_7["fx"], var_5["position"], var_5["normal"] );

    if ( isdefined( var_7["fx_array"] ) )
    {
        foreach ( var_9 in var_7["fx_array"] )
            playfx( var_9, var_5["position"], var_5["normal"] );
    }

    if ( isdefined( var_7["sound"] ) )
        level thread _ID42237::_ID27077( var_7["sound"], var_5["position"] );

    if ( isdefined( var_7["rumble"] ) )
    {
        var_11 = _ID15912();
        var_11 playrumblelooponentity( var_7["rumble"] );
    }
}

_ID10973()
{
    self._ID686 = 0;
}

_ID12538()
{
    self._ID686 = squared( 512 );
}

_ID12492( var_0 )
{
    self._ID18328 = 1;
    self._ID24844 = 1;
    self._ID1259 = 1;

    if ( !isdefined( var_0 ) || !var_0 )
    {
        self._ID11582 = 1;
        self._ID625 = 64;
        self._ID761 = 2048;
        _ID10973();
    }

    self._ID35384 = animscripts\animset::_ID18330;
    self._ID9574["run"] = animscripts\utility::_ID22631( "heat_run" );
}

_ID10926()
{
    self._ID18328 = undefined;
    self._ID24844 = undefined;
    self._ID11582 = undefined;
    self._ID1259 = 0;
    self._ID625 = _func_2ee();
    self._ID35384 = undefined;
    self._ID9574 = undefined;
}

_ID16726()
{
    return vehicle_getarray();
}

_ID18611( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( isdefined( var_3 ) )
        var_2 -= 14;

    var_5 = var_2;

    if ( level._ID8534 )
        var_5 -= 1;

    var_6 = 0.5;
    level endon( "clearing_hints" );

    if ( isdefined( level._ID18694 ) )
        level._ID18694 _ID42313::_ID10476();

    _ID42313::_ID1894( var_3, var_2, 0.5, var_4 );
    level._ID18694 = _ID42313::_ID9220( "timer", 0.5 );
    level._ID18694 _ID42313::_ID32753( "TOP", undefined, 0, 127 + var_5 );
    level._ID18694._ID493 = 1;
    level._ID18694._ID491 = 1;
    level._ID18694._ID196 = ( 1, 1, 1 );
    level._ID18694 settext( var_0 );
    level._ID18694._ID55 = 0;
    level._ID18694 fadeovertime( 0.5 );
    level._ID18694._ID55 = 1;
    wait 0.5;
    level._ID18694 endon( "death" );

    if ( isdefined( var_1 ) )
        wait(var_1);
    else
        return;

    level._ID18694 fadeovertime( var_6 );
    level._ID18694._ID55 = 0;
    _ID42313::_ID43145( var_6 );
    wait(var_6);
    _ID42313::_ID49709();
    level._ID18694 _ID42313::_ID10476();
}

_ID18638( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    if ( isdefined( level._ID18694 ) )
    {
        if ( var_0 > 0 )
            level._ID18694 fadeovertime( var_0 );

        level._ID18694._ID55 = 0;
        _ID42313::_ID43145( var_0 );

        if ( var_0 > 0 )
            wait(var_0);
    }

    level notify( "clearing_hints" );
}

_ID21257( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID14385[var_0] ) )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    foreach ( var_4 in level._ID9822[var_0] )
    {
        foreach ( var_6 in var_4 )
        {
            if ( isalive( var_6 ) )
            {
                var_6 thread _ID42408::_ID21258( var_1, var_2 );
                continue;
            }

            var_6 delete();
        }
    }
}

_ID15921( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_3 ) )
        var_3 = "player_view_controller";

    if ( !isdefined( var_2 ) )
        var_2 = ( 0, 0, 0 );

    var_4 = var_0 gettagorigin( var_1 );
    var_5 = spawnturret( "misc_turret", var_4, var_3 );
    var_5._ID65 = var_0 gettagangles( var_1 );
    var_5 setmodel( "tag_turret" );
    var_5 linkto( var_0, var_1, var_2, ( 0, 0, 0 ) );
    var_5 makeunusable();
    var_5 hide();
    var_5 setmode( "manual" );
    return var_5;
}

_ID9122( var_0, var_1, var_2, var_3 )
{
    var_4 = spawnstruct();
    var_4 childthread _ID42408::_ID28642( var_0, self, var_1, var_2, var_3 );
    return var_4;
}

_ID32490( var_0, var_1 )
{
    if ( isdefined( self._ID39578 ) )
        self._ID39578 = [];

    if ( !isdefined( var_1 ) || var_1 )
        self._ID39578[var_0] = 1;
    else
        self._ID39578[var_0] = undefined;
}

_ID20633( var_0 )
{
    if ( !isdefined( self._ID39578 ) )
        return 0;

    return isdefined( self._ID39578[var_0] );
}

_ID36627( var_0 )
{
    if ( !isdefined( self._ID36636 ) )
        self._ID36636 = [];

    if ( !isdefined( self._ID39578 ) )
        self._ID39578 = [];

    var_1 = [];
    var_2 = self getweaponslistall();
    var_3 = self getcurrentweapon();

    foreach ( var_5 in var_2 )
    {
        if ( isdefined( self._ID39578[var_5] ) )
            continue;

        var_1[var_5] = [];
        var_1[var_5]["clip_left"] = self getweaponammoclip( var_5, "left" );
        var_1[var_5]["clip_right"] = self getweaponammoclip( var_5, "right" );
        var_1[var_5]["stock"] = self getweaponammostock( var_5 );
    }

    if ( !isdefined( var_0 ) )
        var_0 = "default";

    self._ID36636[var_0] = [];

    if ( isdefined( self._ID39578[var_3] ) )
    {
        var_7 = self getweaponslistprimaries();

        foreach ( var_5 in var_7 )
        {
            if ( !isdefined( self._ID39578[var_5] ) )
            {
                var_3 = var_5;
                break;
            }
        }
    }

    self._ID36636[var_0]["current_weapon"] = var_3;
    self._ID36636[var_0]["inventory"] = var_1;
}

_ID29859( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = "default";

    if ( !isdefined( self._ID36636 ) || !isdefined( self._ID36636[var_0] ) )
        return;

    self takeallweapons();

    foreach ( var_3, var_2 in self._ID36636[var_0]["inventory"] )
    {
        if ( weaponinventorytype( var_3 ) != "altmode" )
            self giveweapon( var_3 );

        self setweaponammoclip( var_3, var_2["clip_left"], "left" );
        self setweaponammoclip( var_3, var_2["clip_right"], "right" );
        self setweaponammostock( var_3, var_2["stock"] );
    }

    var_4 = self._ID36636[var_0]["current_weapon"];

    if ( var_4 != "none" )
        self switchtoweapon( var_4 );
}

_ID15995()
{
    var_0 = self getweaponslistall();

    if ( isdefined( self._ID39578 ) )
    {
        foreach ( var_2 in var_0 )
        {
            if ( isdefined( self._ID39578[var_2] ) )
                var_0 = _ID42237::_ID3321( var_0, var_2 );
        }
    }

    return var_0;
}

_ID15996()
{
    var_0 = self getweaponslistprimaries();

    if ( isdefined( self._ID39578 ) )
    {
        foreach ( var_2 in var_0 )
        {
            if ( isdefined( self._ID39578[var_2] ) )
                var_0 = _ID42237::_ID3321( var_0, var_2 );
        }
    }

    return var_0;
}

_ID15994()
{
    var_0 = self getcurrentprimaryweapon();

    if ( isdefined( self._ID39578 ) && isdefined( self._ID39578[var_0] ) )
        var_0 = _ID15727();

    return var_0;
}

_ID15993()
{
    var_0 = self getcurrentweapon();

    if ( isdefined( self._ID39578 ) && isdefined( self._ID39578[var_0] ) )
        var_0 = _ID15727();

    return var_0;
}

_ID15727()
{
    var_0 = _ID15996();

    if ( var_0.size > 0 )
        var_1 = var_0[0];
    else
        var_1 = "none";

    return var_1;
}

_ID18512()
{
    switch ( self._ID172 )
    {
        case "script_model":
        case "script_vehicle":
        case "light_spot":
            self hide();
            break;
        case "script_brushmodel":
            self hide();
            self notsolid();

            if ( self._ID989 & 1 )
                self connectpaths();

            break;
        case "trigger_radius":
        case "trigger_multiple":
        case "trigger_use":
        case "trigger_use_touch":
        case "trigger_multiple_flag_set":
        case "trigger_multiple_breachIcon":
        case "trigger_multiple_flag_lookat":
        case "trigger_multiple_flag_looking":
            _ID42237::_ID38863();
            break;
    }

    endswitch( 13 )  case "trigger_multiple_flag_looking" loc_B0B4 case "trigger_multiple_flag_lookat" loc_B0B4 case "trigger_multiple_breachIcon" loc_B0B4 case "trigger_multiple_flag_set" loc_B0B4 case "trigger_use_touch" loc_B0B4 case "trigger_use" loc_B0B4 case "trigger_multiple" loc_B0B4 case "light_spot" loc_B08D case "script_brushmodel" loc_B097 case "trigger_radius" loc_B0B4 case "script_vehicle" loc_B08D case "script_model" loc_B08D default loc_B0BE
}

_ID33997()
{
    switch ( self._ID172 )
    {
        case "script_model":
        case "script_vehicle":
        case "light_spot":
            self show();
            break;
        case "script_brushmodel":
            self show();
            self solid();

            if ( self._ID989 & 1 )
                self disconnectpaths();

            break;
        case "trigger_radius":
        case "trigger_multiple":
        case "trigger_use":
        case "trigger_use_touch":
        case "trigger_multiple_flag_set":
        case "trigger_multiple_breachIcon":
        case "trigger_multiple_flag_lookat":
        case "trigger_multiple_flag_looking":
            _ID42237::_ID38865();
            break;
    }

    endswitch( 13 )  case "trigger_multiple_flag_looking" loc_B14D case "trigger_multiple_flag_lookat" loc_B14D case "trigger_multiple_breachIcon" loc_B14D case "trigger_multiple_flag_set" loc_B14D case "trigger_use_touch" loc_B14D case "trigger_use" loc_B14D case "trigger_multiple" loc_B14D case "light_spot" loc_B126 case "script_brushmodel" loc_B130 case "trigger_radius" loc_B14D case "script_vehicle" loc_B126 case "script_model" loc_B126 default loc_B157
}

_ID1582( var_0, var_1, var_2, var_3 )
{
    if ( isdefined( var_3 ) )
        self rotateyaw( var_0, var_1, var_2, var_3 );
    else if ( isdefined( var_2 ) )
        self rotateyaw( var_0, var_1, var_2 );
    else
        self rotateyaw( var_0, var_1 );
}

_ID32388( var_0, var_1, var_2 )
{
    self notify( "set_moveplaybackrate" );
    self endon( "set_moveplaybackrate" );

    if ( isdefined( var_2 ) && var_2 )
        thread _ID32389( var_0, var_1 );

    if ( !isdefined( self._ID24425 ) )
        self._ID24425 = self._ID24424;

    if ( isdefined( var_1 ) )
    {
        var_3 = var_0 - self._ID24424;
        var_4 = 0.05;
        var_5 = var_1 / var_4;
        var_6 = var_3 / var_5;

        while ( abs( var_0 - self._ID24424 ) > abs( var_6 * 1.1 ) )
        {
            self._ID24424 = self._ID24424 + var_6;
            wait(var_4);
        }
    }

    self._ID24424 = var_0;
}

_ID29857( var_0, var_1 )
{
    self notify( "set_moveplaybackrate" );
    self endon( "set_moveplaybackrate" );

    if ( isdefined( var_1 ) && var_1 )
        thread _ID29858( var_0 );

    _ID32388( self._ID24425, var_0, 0 );
    self._ID24425 = undefined;
}

_ID32389( var_0, var_1 )
{
    self notify( "set_moveplaybackrate" );
    self endon( "set_moveplaybackrate" );

    if ( !isdefined( self._ID24475 ) )
        self._ID24475 = self._ID24474;

    if ( isdefined( var_1 ) )
    {
        var_2 = var_0 - self._ID24474;
        var_3 = 0.05;
        var_4 = var_1 / var_3;
        var_5 = var_2 / var_4;

        while ( abs( var_0 - self._ID24474 ) > abs( var_5 * 1.1 ) )
        {
            self._ID24474 = self._ID24474 + var_5;
            wait(var_3);
        }
    }

    self._ID24474 = var_0;
}

_ID29858( var_0 )
{
    self notify( "set_moveplaybackrate" );
    self endon( "set_moveplaybackrate" );
    _ID32389( self._ID24475, var_0 );
    self._ID24475 = undefined;
}

_ID3342( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    foreach ( var_7 in var_0 )
        var_7 thread _ID1947( var_1, var_2, var_3, var_4, var_5 );
}

_ID3344( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = getentarray( var_0, "targetname" );
    _ID3342( var_6, var_1, var_2, var_3, var_4, var_5 );
}

_ID3343( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    var_6 = getentarray( var_0, "script_noteworthy" );
    _ID3342( var_6, var_1, var_2, var_3, var_4, var_5 );
}

_ID12477()
{
    self._ID11575 = 1;
}

_ID10909()
{
    self._ID11575 = undefined;
}

_ID9182( var_0 )
{
    if ( !isdefined( level._ID36817 ) )
        level._ID36817 = [];

    var_1 = spawnstruct();
    var_1._ID680 = var_0;
    level._ID36817[var_0] = var_1;
    return var_1;
}

_ID9186( var_0 )
{
    if ( !isdefined( level._ID40560 ) )
        level._ID40560 = [];

    var_1 = spawnstruct();
    var_1._ID680 = var_0;
    var_1._ID34256 = 0;
    var_1._ID34258 = 0;
    var_1._ID34257 = 0;
    var_1._ID18338 = 0;
    var_1._ID18337 = 0;
    var_1._ID18339 = 1000;
    var_1._ID48736 = 0;
    var_1._ID53208 = 0;
    var_1._ID51503 = 3;
    var_1._ID47968 = 10;
    level._ID40560[tolower( var_0 )] = var_1;
    return var_1;
}

_ID16066( var_0 )
{
    if ( !isdefined( level._ID40560 ) )
        level._ID40560 = [];

    var_1 = level._ID40560[tolower( var_0 )];

    if ( _ID39972() && isdefined( var_1 ) && isdefined( var_1._ID18296 ) )
        var_1 = level._ID40560[tolower( var_1._ID18296 )];

    return var_1;
}

_ID9145( var_0 )
{
    if ( !isdefined( level._ID14688 ) )
        level._ID14688 = [];

    var_1 = spawnstruct();
    var_1._ID680 = var_0;
    level._ID14688[tolower( var_0 )] = var_1;
    return var_1;
}

_ID15737( var_0 )
{
    if ( !isdefined( level._ID14688 ) )
        level._ID14688 = [];

    var_1 = level._ID14688[tolower( var_0 )];
    return var_1;
}

_ID19801()
{
    if ( !isdefined( self._ID14692 ) )
    {
        self._ID14692 = spawnstruct();
        self._ID14692._ID14695 = "";
        self._ID14692._ID1210 = 0;
    }
}

_ID39972()
{
    if ( !isdefined( level._ID8534 ) )
        _ID32246();

    return _ID20530();
}

_ID14689( var_0, var_1 )
{
    if ( !isplayernumber( self ) )
        _ID42262::_ID19702();
    else
        _ID19801();

    if ( !isdefined( level._ID14688 ) )
        level._ID14688 = [];

    var_2 = level._ID14688[tolower( var_0 )];

    if ( !isdefined( var_2 ) )
        var_2 = level._ID40560[tolower( var_0 )];

    if ( isdefined( var_2 ) && isdefined( var_2._ID18296 ) && _ID39972() )
    {
        if ( isdefined( level._ID14688[tolower( var_2._ID18296 )] ) )
            var_2 = level._ID14688[tolower( var_2._ID18296 )];
        else if ( isdefined( level._ID40560 ) )
            var_2 = level._ID40560[tolower( var_2._ID18296 )];
    }

    if ( !isdefined( var_1 ) )
        var_1 = var_2._ID38687;

    if ( !isplayernumber( self ) )
    {
        _ID42237::_ID32313( var_2, var_1 );
        level._ID14692._ID14695 = var_0;
        level._ID14692._ID1210 = var_1;
    }
    else
    {
        if ( var_0 != "" && self._ID14692._ID14695 == var_0 && self._ID14692._ID1210 == var_1 )
            return;

        _ID42237::_ID32313( var_2, var_1 );
        self._ID14692._ID14695 = var_0;
        self._ID14692._ID1210 = var_1;
    }
}

_ID40561( var_0, var_1 )
{
    var_2 = _ID40559( var_0, var_1 );

    if ( var_2 )
    {
        if ( level._ID227 && isdefined( _ID16066( var_0 + "_cg" ) ) )
            _ID14689( var_0 + "_cg", var_1 );
        else if ( isdefined( _ID16066( var_0 ) ) )
            _ID14689( var_0, var_1 );
        else
            clearfog( var_1 );
    }
}

_ID19802()
{
    if ( !isdefined( self._ID40565 ) )
    {
        self._ID40565 = spawnstruct();
        self._ID40565._ID40558 = "";
        self._ID40565._ID1210 = 0;
    }
}

_ID40559( var_0, var_1 )
{
    if ( !isplayernumber( self ) )
    {
        var_2 = 1;

        if ( !isdefined( level._ID40565 ) )
        {
            level._ID40565 = spawnstruct();
            level._ID40565._ID40558 = "";
            level._ID40565._ID1210 = 0;
            var_2 = 0;
        }

        if ( var_0 != "" && level._ID40565._ID40558 == var_0 && level._ID40565._ID1210 == var_1 )
            return 0;

        level._ID40565._ID40558 = var_0;
        level._ID40565._ID1210 = var_1;

        if ( var_2 && getdvarint( "scr_art_tweak" ) != 0 )
        {

        }
        else
            _ID32515( var_0, var_1 );

        level._ID22719 = var_0;
        setdvar( "vision_set_current", var_0 );
    }
    else
    {
        _ID19802();

        if ( var_0 != "" && self._ID40565._ID40558 == var_0 && self._ID40565._ID1210 == var_1 )
            return 0;

        self._ID40565._ID40558 = var_0;
        self._ID40565._ID1210 = var_1;
        _ID32516( var_0, var_1 );
    }

    return 1;
}

_ID12541()
{
    thread _ID12542();
}

_ID12542()
{
    self endon( "death" );

    for (;;)
    {
        self._ID37364 = 1;
        wait 0.05;
    }
}

_ID10978()
{
    self._ID37364 = undefined;
}

_ID1568( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( var_4 ) )
        radiusdamage( var_0, var_1, var_2, var_3 );
    else
        radiusdamage( var_0, var_1, var_2, var_3, var_4 );
}

_ID22998( var_0 )
{
    var_1 = getentarray( "destructible_toy", "targetname" );
    var_2 = getentarray( "destructible_vehicle", "targetname" );
    var_3 = _ID42237::_ID3296( var_1, var_2 );

    foreach ( var_5 in var_0 )
        var_5._ID10557 = [];

    foreach ( var_8 in var_3 )
    {
        foreach ( var_5 in var_0 )
        {
            if ( !var_5 istouching( var_8 ) )
                continue;

            var_5 _ID42408::_ID28775( var_8 );
            break;
        }
    }
}

_ID20138()
{
    var_0 = [];
    var_0[0] = [ "interactive_birds", "targetname" ];
    var_0[1] = [ "interactive_vulture", "targetname" ];
    var_0[2] = [ "interactive_fish", "script_noteworthy" ];
    return var_0;
}

_ID23000( var_0 )
{
    var_1 = _ID20138();
    var_2 = [];

    foreach ( var_4 in var_1 )
    {
        var_5 = getentarray( var_4[0], var_4[1] );
        var_2 = _ID42237::_ID3296( var_2, var_5 );
    }

    foreach ( var_8 in var_2 )
    {
        if ( !isdefined( level._ID1494[var_8._ID20136]._ID30754 ) )
            continue;

        foreach ( var_11 in var_0 )
        {
            if ( !var_11 istouching( var_8 ) )
                continue;

            if ( !isdefined( var_11._ID20139 ) )
                var_11._ID20139 = [];

            var_11._ID20139[var_11._ID20139.size] = var_8 [[ level._ID1494[var_8._ID20136]._ID30754 ]]();
        }
    }
}

_ID1794()
{
    if ( !isdefined( self._ID20139 ) )
        return;

    foreach ( var_1 in self._ID20139 )
        var_1 [[ level._ID1494[var_1._ID20136]._ID22488 ]]();

    self._ID20139 = undefined;
}

_ID10264( var_0 )
{
    _ID23000( var_0 );

    foreach ( var_2 in var_0 )
        var_2._ID20139 = undefined;
}

_ID22999( var_0 )
{
    if ( getdvar( "createfx" ) != "" )
        return;

    var_1 = getentarray( "script_brushmodel", "classname" );
    var_2 = getentarray( "script_model", "classname" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_1[var_1.size] = var_2[var_3];

    foreach ( var_5 in var_0 )
    {
        foreach ( var_7 in var_1 )
        {
            if ( isdefined( var_7._ID31401 ) )
                var_7._ID31170 = var_7._ID31401;

            if ( !isdefined( var_7._ID31170 ) )
                continue;

            if ( !isdefined( var_7._ID669 ) )
                continue;

            if ( var_7._ID172 != "script_model" )
                continue;

            if ( !var_7 istouching( var_5 ) )
                continue;

            var_7._ID23001 = 1;
        }
    }
}

_ID1789()
{
    var_0 = spawn( "script_origin", ( 0, 0, 0 ) );

    foreach ( var_2 in level._ID9242 )
    {
        if ( !isdefined( var_2._ID40005["masked_exploder"] ) )
            continue;

        var_0._ID740 = var_2._ID40005["origin"];
        var_0._ID65 = var_2._ID40005["angles"];

        if ( !var_0 istouching( self ) )
            continue;

        var_3 = var_2._ID40005["masked_exploder"];
        var_4 = var_2._ID40005["masked_exploder_spawnflags"];
        var_5 = var_2._ID40005["masked_exploder_script_disconnectpaths"];
        var_6 = spawn( "script_model", ( 0, 0, 0 ), var_4 );
        var_6 setmodel( var_3 );
        var_6._ID740 = var_2._ID40005["origin"];
        var_6._ID65 = var_2._ID40005["angles"];
        var_2._ID40005["masked_exploder"] = undefined;
        var_2._ID40005["masked_exploder_spawnflags"] = undefined;
        var_2._ID40005["masked_exploder_script_disconnectpaths"] = undefined;
        var_6._ID11063 = var_5;
        var_6._ID31170 = var_2._ID40005["exploder"];
        _ID42234::_ID33106( var_6 );
        var_2._ID669 = var_6;
    }

    var_0 delete();
}

_ID28349( var_0 )
{
    var_1 = _ID50449::_ID48765( var_0 );

    if ( var_1 != -1 )
        return;

    if ( !isdefined( level._ID10516 ) )
        level._ID10516 = [];

    var_2 = spawnstruct();
    var_2._ID51676 = _ID50449::_ID47340( var_0 );
    var_2 thread _ID42231::_ID28350();
}

_ID10252( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
        var_3._ID10557 = [];

    var_5 = [ "destructible_toy", "destructible_vehicle" ];
    var_6 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    foreach ( var_8 in var_5 )
    {
        var_9 = getentarray( var_8, "targetname" );

        foreach ( var_11 in var_9 )
        {
            foreach ( var_3 in var_0 )
            {
                if ( var_1 )
                {
                    var_6++;
                    var_6 %= 5;

                    if ( var_6 == 1 )
                        wait 0.05;
                }

                if ( !var_3 istouching( var_11 ) )
                    continue;

                var_11 delete();
                break;
            }
        }
    }
}

_ID10258( var_0, var_1 )
{
    var_2 = getentarray( "script_brushmodel", "classname" );
    var_3 = getentarray( "script_model", "classname" );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        var_2[var_2.size] = var_3[var_4];

    var_5 = [];
    var_6 = spawn( "script_origin", ( 0, 0, 0 ) );
    var_7 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    foreach ( var_9 in var_0 )
    {
        foreach ( var_11 in var_2 )
        {
            if ( !isdefined( var_11._ID31170 ) )
                continue;

            var_6._ID740 = var_11 getorigin();

            if ( !var_9 istouching( var_6 ) )
                continue;

            var_5[var_5.size] = var_11;
        }
    }

    _ID3304( var_5 );
    var_6 delete();
}

_ID1786()
{
    if ( !isdefined( self._ID10557 ) )
        return;

    foreach ( var_1 in self._ID10557 )
    {
        var_2 = spawn( "script_model", ( 0, 0, 0 ) );
        var_2 setmodel( var_1._ID38031 );
        var_2._ID740 = var_1._ID740;
        var_2._ID65 = var_1._ID65;
        var_2._ID922 = var_1._ID922;
        var_2._ID1193 = var_1._ID1193;
        var_2._ID1191 = var_1._ID1191;
        var_2._ID31273 = var_1._ID31273;
        var_2._ID279 = var_1._ID279;
        var_2._ID31361 = var_1._ID31361;
        var_2 _ID42231::_ID32948( 1 );
    }

    self._ID10557 = [];
}

_ID32628( var_0 )
{
    self._ID14507 = var_0;
}

_ID14506()
{
    var_0 = self._ID14516 - gettime();

    if ( var_0 < 0 )
        return 0;

    return var_0 * 0.001;
}

_ID14508()
{
    return _ID14506() > 0;
}

_ID14510( var_0 )
{
    if ( isdefined( self._ID14507 ) && self._ID14507 )
        return;

    var_1 = gettime() + var_0 * 1000.0;

    if ( isdefined( self._ID14516 ) )
        self._ID14516 = max( self._ID14516, var_1 );
    else
        self._ID14516 = var_1;

    self notify( "flashed" );
    self setflashbanged( 1 );
}

_ID41162()
{
    for (;;)
    {
        var_0 = getaispeciesarray( "axis", "all" );
        var_1 = 0;

        foreach ( var_3 in var_0 )
        {
            if ( !isalive( var_3 ) )
                continue;

            if ( var_3 istouching( self ) )
            {
                var_1 = 1;
                break;
            }

            wait 0.0125;
        }

        if ( !var_1 )
        {
            var_5 = _ID15547( "axis" );

            if ( !var_5.size )
                break;
        }

        wait 0.05;
    }
}

_ID41163()
{
    var_0 = 0;

    for (;;)
    {
        var_1 = getaispeciesarray( "axis", "all" );
        var_2 = 0;

        foreach ( var_4 in var_1 )
        {
            if ( !isalive( var_4 ) )
                continue;

            if ( var_4 istouching( self ) )
            {
                if ( var_4 _ID11498() )
                    continue;

                var_2 = 1;
                var_0 = 1;
                break;
            }

            wait 0.0125;
        }

        if ( !var_2 )
        {
            var_6 = _ID15547( "axis" );

            if ( !var_6.size )
                break;
            else
                var_0 = 1;
        }

        wait 0.05;
    }

    return var_0;
}

_ID41164( var_0 )
{
    _ID41162();
    _ID42237::_ID14402( var_0 );
}

_ID41152( var_0, var_1 )
{
    var_2 = getent( var_0, "targetname" );
    var_2 _ID41164( var_1 );
}

_ID27289()
{
    level._ID794 _ID13021( "player_zero_attacker_accuracy" );
    level._ID794._ID512 = 0;
    level._ID794 _ID42298::_ID39638();
}

_ID27300()
{
    level._ID794 _ID13025( "player_zero_attacker_accuracy" );
    level._ID794._ID86 = 0;
    level._ID794._ID512 = 1;
}

_ID32411( var_0 )
{
    var_1 = _ID15912();
    var_1._ID17476._ID27239 = var_0;
    var_1 _ID42298::_ID39638();
}

_ID3310( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3._ID31388] = var_3;

    return var_1;
}

_ID3309( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3._ID170] = var_3;

    return var_1;
}

_ID3311( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
    {
        var_4 = var_3._ID31259;

        if ( isdefined( var_4 ) )
            var_1[var_4] = var_3;
    }

    return var_1;
}

_ID1958( var_0 )
{
    if ( isdefined( var_0 ) )
        self._ID26717 = var_0;
    else
        self._ID26717 = getent( self._ID1191, "targetname" );

    self linkto( self._ID26717 );
}

_ID14511()
{
    self._ID14516 = undefined;
    self setflashbanged( 0 );
}

_ID16261( var_0, var_1 )
{
    var_2 = getent( var_0, var_1 );

    if ( isdefined( var_2 ) )
        return var_2;

    return _ID42237::_ID16638( var_0, var_1 );
}

_ID17388()
{
    thread _ID12731();
    self endon( "end_explode" );
    self waittill( "explode",  var_0  );
    _ID10865( var_0 );
}

_ID12731()
{
    self waittill( "death" );
    waitframe;
    self notify( "end_explode" );
}

_ID10865( var_0 )
{
    playrumbleonposition( "grenade_rumble", var_0 );
    earthquake( 0.3, 0.5, var_0, 400 );

    foreach ( var_2 in level._ID805 )
    {
        if ( distance( var_0, var_2._ID740 ) > 600 )
            continue;

        if ( var_2 damageconetrace( var_0 ) )
            var_2 thread _ID10867( var_0 );
    }
}

_ID27624( var_0, var_1, var_2, var_3 )
{
    return _ID27622( "shotgun", level._ID794, var_0, var_1, var_2, var_3 );
}

_ID27622( var_0, var_1, var_2, var_3, var_4, var_5 )
{
    if ( !isdefined( var_1 ) )
        var_1 = level._ID794;

    var_1 allowcrouch( 0 );
    var_1 allowprone( 0 );
    var_1 disableweapons();
    var_6 = _ID42237::_ID35164();
    var_6 linkto( self, "tag_passenger", _ID27623( var_0 ), ( 0, 0, 0 ) );
    var_6._ID27345 = _ID42237::_ID35164();
    var_6._ID27345 linkto( self, "tag_body", _ID27621( var_0 ), ( 0, 0, 0 ) );

    if ( !isdefined( var_2 ) )
        var_2 = 90;

    if ( !isdefined( var_3 ) )
        var_3 = 90;

    if ( !isdefined( var_4 ) )
        var_4 = 40;

    if ( !isdefined( var_5 ) )
        var_5 = 40;

    var_1 disableweapons();
    var_1 playerlinkto( var_6, "tag_origin", 0.8, var_2, var_3, var_4, var_5 );
    var_1 setviewangleresistance( 50, 50, 20, 20 );
    var_1._ID19209 = var_6;
    return var_6;
}

_ID27623( var_0 )
{
    switch ( var_0 )
    {
        case "shotgun":
            return ( -5, 10, -34 );
        case "backleft":
            return ( -45, 45, -34 );
        case "backright":
            return ( -45, 5, -34 );
    }
}

_ID27621( var_0 )
{
    switch ( var_0 )
    {
        case "shotgun":
            return ( -8, -90, -12.6 );
        case "backleft":
            return ( -58, 85, -12.6 );
        case "backright":
            return ( -58, -95, -12.6 );
    }
}

_ID27530( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 0;

    var_1 = self;
    var_2 = level._ID794;

    if ( isplayernumber( self ) )
    {
        var_2 = self;
        var_1 = var_2._ID19209;
    }

    var_1 unlink();

    if ( !var_0 )
    {
        var_3 = 0.6;
        var_1 moveto( var_1._ID27345._ID740, var_3, var_3 * 0.5, var_3 * 0.5 );
        wait(var_3);
    }

    var_2 unlink();
    var_2 enableweapons();
    var_2 allowcrouch( 1 );
    var_2 allowprone( 1 );
    var_2._ID19209 = undefined;
    var_1._ID27345 delete();
    var_1 delete();
}

_ID10867( var_0, var_1 )
{
    var_2 = bullettrace( var_0 + ( 0, 0, 15 ), var_0 - ( 0, 0, 60 ), 0 );

    if ( var_2["fraction"] < 1 && var_2["fraction"] > 0 && var_2["surfacetype"] != "none" )
    {
        var_3 = _ID31008( var_0 );

        foreach ( var_7, var_5 in var_3 )
        {
            var_6 = _ID42283::getgrenadeexplosionfx( var_7, var_2["surfacetype"] );

            if ( isdefined( var_6 ) )
                playfx( var_6, level._ID794._ID740 );
        }
    }
}

_ID5309( var_0 )
{
    if ( !isdefined( self._ID9616 ) )
        return;

    var_1 = _ID31008( self._ID9616._ID740 );

    foreach ( var_4, var_3 in var_1 )
        thread _ID42298::_ID5305( var_4 );
}

_ID31008( var_0 )
{
    var_1 = vectornormalize( anglestoforward( self._ID65 ) );
    var_2 = vectornormalize( anglestoright( self._ID65 ) );
    var_3 = vectornormalize( var_0 - self._ID740 );
    var_4 = vectordot( var_3, var_1 );
    var_5 = vectordot( var_3, var_2 );
    var_6 = [];
    var_7 = self getcurrentweapon();

    if ( var_4 > 0 && var_4 > 0.5 && weapontype( var_7 ) != "riotshield" )
        var_6["bottom"] = 1;

    if ( abs( var_4 ) < 0.866 )
    {
        if ( var_5 > 0 )
            var_6["right"] = 1;
        else
            var_6["left"] = 1;
    }

    return var_6;
}

_ID26354( var_0 )
{
    if ( !isdefined( self._ID25527 ) )
        self._ID25527 = self._ID764;

    self._ID764 = var_0;
}

_ID26355()
{
    if ( isdefined( self._ID25527 ) )
        return;

    self._ID25527 = self._ID764;
    self._ID764 = 0;
}

_ID26353()
{
    self._ID764 = self._ID25527;
    self._ID25527 = undefined;
}

_ID41232()
{
    if ( isdefined( self._ID25539 ) )
        return;

    self._ID25538 = self._ID1298;
    self._ID25539 = self._ID1299;
    self._ID1298 = 0;
    self._ID1299 = 0;
}

_ID41230()
{
    if ( !isdefined( self._ID25539 ) )
    {
        self._ID25538 = self._ID1298;
        self._ID25539 = self._ID1299;
    }

    self._ID1298 = 999999999;
    self._ID1299 = 999999999;
}

_ID20643()
{
    return isdefined( self._ID25539 ) || isdefined( self._ID25538 );
}

_ID41231()
{
    self._ID1298 = self._ID25538;
    self._ID1299 = self._ID25539;
    self._ID25538 = undefined;
    self._ID25539 = undefined;
}

_ID12495()
{
    thread _ID19387();
}

_ID19387()
{
    self endon( "disable_ignorerandombulletdamage_drone" );
    self endon( "death" );
    self._ID512 = 1;
    self._ID13909 = self._ID486;
    self._ID486 = 1000000;

    for (;;)
    {
        self waittill( "damage",  var_0, var_1  );

        if ( !isplayernumber( var_1 ) && issentient( var_1 ) )
        {
            if ( isdefined( var_1._ID322 ) && var_1._ID322 != self )
                continue;
        }

        self._ID13909 = self._ID13909 - var_0;

        if ( self._ID13909 <= 0 )
            break;
    }

    self kill();
}

_ID32231( var_0 )
{
    self._ID1266 = var_0;
}

_ID10929()
{
    if ( !isalive( self ) )
        return;

    if ( !isdefined( self._ID512 ) )
        return;

    self notify( "disable_ignorerandombulletdamage_drone" );
    self._ID512 = undefined;
    self._ID486 = self._ID13909;
}

_ID37745( var_0 )
{
    var_1 = spawnstruct();
    var_1 _ID10226( var_0, ::_ID31877, "timeout" );
    return var_1;
}

_ID10226( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    thread _ID42408::_ID10228( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID10194( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    childthread _ID42408::_ID10195( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID14450( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );

    if ( !isarray( var_0 ) )
        var_0 = [ var_0, 0 ];

    thread _ID42408::_ID14451( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID41208( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7 )
{
    self endon( "death" );

    if ( !isarray( var_0 ) )
        var_0 = [ var_0, 0 ];

    thread _ID42408::_ID41209( var_1, var_0, var_2, var_3, var_4, var_5, var_6, var_7 );
}

_ID12471( var_0 )
{
    var_0 *= 1000;
    self._ID295 = 1;
    self._ID260 = var_0;
    self._ID24730 = undefined;
}

_ID10899()
{
    self._ID295 = 0;
    self._ID24730 = 1;
}

_ID32343( var_0, var_1 )
{
    level._ID2184 = var_0;
    level._ID2183 = var_1;
}

_ID29746( var_0 )
{
    level._ID21879[var_0] = gettime();
}

_ID32255( var_0 )
{
    level._ID9544 = var_0;
    thread _ID42298::_ID29791();
}

_ID7852()
{
    level._ID9544 = undefined;
    thread _ID42298::_ID29791();
}

_ID32527( var_0, var_1, var_2 )
{
    _ID42260::_ID19836();

    if ( isdefined( var_2 ) )
        level._ID41775._ID40040 = var_2;

    level._ID41775._ID855 = var_1;
    level._ID41775._ID1318 = var_0;
    level notify( "windchange",  "strong"  );
}

_ID36697( var_0 )
{
    if ( var_0.size > 1 )
        return 0;

    var_1 = [];
    var_1["0"] = 1;
    var_1["1"] = 1;
    var_1["2"] = 1;
    var_1["3"] = 1;
    var_1["4"] = 1;
    var_1["5"] = 1;
    var_1["6"] = 1;
    var_1["7"] = 1;
    var_1["8"] = 1;
    var_1["9"] = 1;

    if ( isdefined( var_1[var_0] ) )
        return 1;

    return 0;
}

_ID32227( var_0, var_1 )
{
    level._ID4912[var_0] = var_1;
    _ID42408::_ID39588();
}

_ID25326( var_0 )
{
    for ( var_1 = 0; var_1 < 8; var_1++ )
        objective_additionalposition( var_0, var_1, ( 0, 0, 0 ) );
}

_ID15838( var_0 )
{
    var_1 = [];
    var_1["minutes"] = 0;

    for ( var_1["seconds"] = int( var_0 / 1000 ); var_1["seconds"] >= 60; var_1["seconds"] -= 60 )
        var_1["minutes"]++;

    if ( var_1["seconds"] < 10 )
        var_1["seconds"] = "0" + var_1["seconds"];

    return var_1;
}

_ID27470( var_0 )
{
    var_1 = level._ID794 getweaponslistprimaries();

    foreach ( var_3 in var_1 )
    {
        if ( var_3 == var_0 )
            return 1;
    }

    return 0;
}

_ID25268( var_0 )
{
    if ( !isdefined( level._ID25269 ) )
        level._ID25269 = [];

    if ( !isdefined( level._ID25269[var_0] ) )
        level._ID25269[var_0] = level._ID25269.size + 1;

    return level._ID25269[var_0];
}

_ID25284( var_0 )
{
    return isdefined( level._ID25269 ) && isdefined( level._ID25269[var_0] );
}

_ID27557( var_0 )
{
    self mountvehicle( var_0 );
    self._ID11803 = var_0;
}

_ID27348()
{
    self dismountvehicle();
    self._ID11803 = undefined;
}

_ID17153( var_0, var_1, var_2, var_3, var_4 )
{
    var_5 = var_4 - var_2;
    var_6 = var_3 - var_1;
    var_7 = var_5 / var_6;
    var_0 -= var_3;
    var_0 = var_7 * var_0;
    var_0 += var_4;
    return var_0;
}

_ID12442()
{
    self._ID28997 = 1;
}

_ID10869()
{
    self._ID28997 = undefined;
}

_ID12443( var_0 )
{
    var_0 _ID12442();
}

_ID10870( var_0 )
{
    var_0 _ID10869();
}

_ID53251( var_0, var_1 )
{
    self._ID46497 = var_0;
    self._ID54148 = var_1;
    thread _ID52774();
}

_ID50799()
{
    self notify( "stop_reinforce_denied_watch" );
}

_ID52774()
{
    self endon( "stop_reinforce_denied_watch" );
    self waittill( "rope_death",  var_0  );

    if ( var_0 == level._ID794 )
    {
        var_1 = self._ID46497;
        var_2 = self._ID54148;

        if ( !isdefined( var_1._ID47220 ) || !isdefined( var_1._ID47220[var_2] ) )
            var_1._ID47220[var_2] = 0;

        var_1._ID47220[var_2]++;

        if ( var_1._ID47220[var_2] == 3 )
            _ID16864( "REINFORCEMENT_DENIED" );
    }
}

_ID24586( var_0 )
{
    var_1 = tablelookup( "mp/sound/soundlength.csv", 0, var_0, 1 );

    if ( !isdefined( var_1 ) || var_1 == "" )
        return -1;

    var_1 = int( var_1 );
    var_1 *= 0.001;
    return var_1;
}

_ID20493( var_0 )
{
    var_1 = getkeybinding( var_0 );
    return var_1["count"];
}

_ID22382( var_0, var_1, var_2 )
{
    var_3 = var_2 - var_1;
    var_4 = var_0 * var_3;
    var_5 = var_1 + var_4;
    return var_5;
}

_ID10171( var_0 )
{
    level._ID22489 = var_0;
}

_ID37502( var_0 )
{
    _ID10171( var_0 );
    level._ID37503 = var_0;
}

_ID37504( var_0 )
{
    level._ID4368 = var_0;
}

_ID15252( var_0, var_1 )
{
    thread _ID15253( var_0, var_1 );
}

_ID15253( var_0, var_1 )
{
    var_2 = getent( var_0, "script_noteworthy" );
    var_2 notify( "new_volume_command" );
    var_2 endon( "new_volume_command" );
    wait 0.05;
    _ID15251( var_2, var_1 );
}

_ID15251( var_0, var_1 )
{
    var_0._ID15227 = 1;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( var_1 )
        _ID3351( var_0._ID15142, _ID42237::_ID26402 );
    else
        _ID42237::_ID3350( var_0._ID15142, _ID42237::_ID26402 );
}

_ID3351( var_0, var_1, var_2 )
{
    var_3 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 5;

    var_4 = [];

    foreach ( var_6 in var_0 )
    {
        var_4[var_4.size] = var_6;
        var_3++;
        var_3 %= var_2;

        if ( var_2 == 0 )
        {
            _ID42237::_ID3350( var_4, var_1 );
            wait 0.05;
            var_4 = [];
        }
    }
}

_ID15255( var_0 )
{
    thread _ID15256( var_0 );
}

_ID15256( var_0 )
{
    var_1 = getent( var_0, "script_noteworthy" );
    var_1 notify( "new_volume_command" );
    var_1 endon( "new_volume_command" );
    wait 0.05;

    if ( !isdefined( var_1._ID15227 ) )
        return;

    var_1._ID15227 = undefined;
    _ID15254( var_1 );
}

_ID15254( var_0 )
{
    _ID42237::_ID3350( var_0._ID15142, ::_ID29840 );
}

_ID14393( var_0 )
{
    if ( !isdefined( level._ID14391 ) )
        level._ID14391 = [];

    if ( !isdefined( level._ID14391[var_0] ) )
        level._ID14391[var_0] = 1;
    else
        level._ID14391[var_0]++;
}

_ID14392( var_0 )
{
    level._ID14391[var_0]--;
    level._ID14391[var_0] = int( max( 0, level._ID14391[var_0] ) );

    if ( level._ID14391[var_0] )
        return;

    _ID42237::_ID14402( var_0 );
}

_ID14394( var_0, var_1 )
{
    level._ID14391[var_0] = var_1;
}

_ID1860( var_0, var_1 )
{
    if ( !isdefined( level._ID7789 ) )
        level._ID7789 = [];

    if ( !isdefined( level._ID7789[var_1] ) )
        level._ID7789[var_1] = [];

    level._ID7789[var_1][level._ID7789[var_1].size] = var_0;
}

_ID7789( var_0 )
{
    var_1 = level._ID7789[var_0];
    var_1 = _ID42237::_ID3332( var_1 );
    _ID3304( var_1 );
    level._ID7789[var_0] = undefined;
}

_ID7790( var_0 )
{
    if ( !isdefined( level._ID7789 ) )
        return;

    if ( !isdefined( level._ID7789[var_0] ) )
        return;

    var_1 = level._ID7789[var_0];
    var_1 = _ID42237::_ID3332( var_1 );

    foreach ( var_3 in var_1 )
    {
        if ( !isai( var_3 ) )
            continue;

        if ( !isalive( var_3 ) )
            continue;

        if ( !isdefined( var_3._ID22746 ) )
            continue;

        if ( !var_3._ID22746 )
            continue;

        var_3 _ID36519();
    }

    _ID3304( var_1 );
    level._ID7789[var_0] = undefined;
}

_ID1977( var_0 )
{
    if ( !isdefined( self._ID38819 ) )
        thread _ID42408::_ID1976();

    self._ID38819[self._ID38819.size] = var_0;
}

_ID16111()
{
    var_0 = [];
    var_1 = getentarray();

    foreach ( var_3 in var_1 )
    {
        if ( !isdefined( var_3._ID170 ) )
            continue;

        if ( issubstr( var_3._ID170, "weapon_" ) )
            var_0[var_0.size] = var_3;
    }

    return var_0;
}

_ID28861( var_0 )
{
    level._ID30908[var_0] = var_0;
}

_ID24389( var_0, var_1, var_2 )
{
    self notify( "newmove" );
    self endon( "newmove" );

    if ( !isdefined( var_2 ) )
        var_2 = 200;

    var_3 = distance( self._ID740, var_0 );
    var_4 = var_3 / var_2;
    var_5 = vectornormalize( var_0 - self._ID740 );
    self moveto( var_0, var_4, 0, 0 );
    self rotateto( var_1, var_4, 0, 0 );
    wait(var_4);

    if ( !isdefined( self ) )
        return;

    self._ID1283 = var_5 * var_3 / var_4;
}

_ID14401( var_0 )
{
    level endon( var_0 );
    self waittill( "death" );
    _ID42237::_ID14402( var_0 );
}

_ID12469()
{
    level._ID9634 = 1;
}

_ID10897()
{
    level._ID9634 = 0;
}

_ID20500()
{
    if ( !getdvarint( "cg_drawDamageFeedbackOption" ) )
        return 0;

    return isdefined( level._ID9634 ) && level._ID9634;
}

_ID12470()
{
    level._ID9635 = 1;
}

_ID10898()
{
    level._ID9635 = 0;
}

_ID20501()
{
    return isdefined( level._ID9635 ) && level._ID9635;
}

_ID1871()
{
    _ID42279::_ID24130();
}

_ID29504()
{
    _ID42279::_ID36604();
}

_ID20506()
{
    if ( getdvar( "e3demo" ) == "1" )
        return 1;

    return 0;
}

_ID10353( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID16640( var_0, var_1 );
    _ID10354( var_3, var_2 );
}

_ID10352( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0._ID920;

    if ( isdefined( var_1 ) && isdefined( level._ID36711["script_linkname"] ) && isdefined( level._ID36711["script_linkname"][var_1] ) )
    {
        foreach ( var_4, var_3 in level._ID36711["script_linkname"][var_1] )
        {
            if ( isdefined( var_3 ) && var_0 == var_3 )
                level._ID36711["script_linkname"][var_1][var_4] = undefined;
        }

        if ( level._ID36711["script_linkname"][var_1].size == 0 )
            level._ID36711["script_linkname"][var_1] = undefined;
    }

    var_1 = var_0._ID922;

    if ( isdefined( var_1 ) && isdefined( level._ID36711["script_noteworthy"] ) && isdefined( level._ID36711["script_noteworthy"][var_1] ) )
    {
        foreach ( var_4, var_3 in level._ID36711["script_noteworthy"][var_1] )
        {
            if ( isdefined( var_3 ) && var_0 == var_3 )
                level._ID36711["script_noteworthy"][var_1][var_4] = undefined;
        }

        if ( level._ID36711["script_noteworthy"][var_1].size == 0 )
            level._ID36711["script_noteworthy"][var_1] = undefined;
    }

    var_1 = var_0._ID1191;

    if ( isdefined( var_1 ) && isdefined( level._ID36711["target"] ) && isdefined( level._ID36711["target"][var_1] ) )
    {
        foreach ( var_4, var_3 in level._ID36711["target"][var_1] )
        {
            if ( isdefined( var_3 ) && var_0 == var_3 )
                level._ID36711["target"][var_1][var_4] = undefined;
        }

        if ( level._ID36711["target"][var_1].size == 0 )
            level._ID36711["target"][var_1] = undefined;
    }

    var_1 = var_0._ID1193;

    if ( isdefined( var_1 ) && isdefined( level._ID36711["targetname"] ) && isdefined( level._ID36711["targetname"][var_1] ) )
    {
        foreach ( var_4, var_3 in level._ID36711["targetname"][var_1] )
        {
            if ( isdefined( var_3 ) && var_0 == var_3 )
                level._ID36711["targetname"][var_1][var_4] = undefined;
        }

        if ( level._ID36711["targetname"][var_1].size == 0 )
            level._ID36711["targetname"][var_1] = undefined;
    }

    if ( isdefined( level._ID36707 ) )
    {
        foreach ( var_4, var_3 in level._ID36707 )
        {
            if ( var_0 == var_3 )
                level._ID36707[var_4] = undefined;
        }
    }
}

_ID10354( var_0, var_1 )
{
    if ( !isdefined( var_0 ) || !isarray( var_0 ) || var_0.size == 0 )
        return;

    var_1 = _ID42237::_ID37527( isdefined( var_1 ), var_1, 0 );
    var_1 = _ID42237::_ID37527( var_1 > 0, var_1, 0 );

    if ( var_1 > 0 )
    {
        foreach ( var_3 in var_0 )
        {
            _ID10352( var_3 );
            wait(var_1);
        }
    }
    else
    {
        foreach ( var_3 in var_0 )
            _ID10352( var_3 );
    }
}

_ID16639( var_0, var_1 )
{
    var_2 = _ID42237::_ID16638( var_0, var_1 );
    _ID10352( var_2 );
    return var_2;
}

_ID16641( var_0, var_1, var_2 )
{
    var_3 = _ID42237::_ID16640( var_0, var_1 );
    _ID10354( var_3, var_2 );
    return var_3;
}

_ID16262( var_0, var_1 )
{
    var_2 = _ID16261( var_0, var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = getnode( var_0, var_1 );

    if ( !isdefined( var_2 ) )
        var_2 = getvehiclenode( var_0, var_1 );

    return var_2;
}

_ID32617( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_3 ) )
        self._ID13083 = var_3;
    else
        self._ID13083 = ( 0, 0, 0 );

    if ( isdefined( var_4 ) )
        self._ID13084 = var_4;

    self notify( "new_head_icon" );
    var_5 = newhudelem();
    var_5._ID72 = 1;
    var_5._ID55 = 0.8;
    var_5 setshader( var_0, var_1, var_2 );
    var_5 setwaypoint( 0, 0, 0, 1 );
    self._ID13082 = var_5;
    _ID39707();
    thread _ID39706();
    thread _ID10478();
}

_ID29604()
{
    if ( !isdefined( self._ID13082 ) )
        return;

    self._ID13082 destroy();
}

_ID39706()
{
    self endon( "new_head_icon" );
    self endon( "death" );
    var_0 = self._ID740;

    for (;;)
    {
        if ( var_0 != self._ID740 )
        {
            _ID39707();
            var_0 = self._ID740;
        }

        wait 0.05;
    }
}

_ID39707()
{
    if ( isdefined( self._ID13084 ) )
    {
        var_0 = self [[ self._ID13084 ]]();

        if ( isdefined( var_0 ) )
        {
            self._ID13082._ID1331 = self._ID13083[0] + var_0[0];
            self._ID13082._ID1339 = self._ID13083[1] + var_0[1];
            self._ID13082._ID1342 = self._ID13083[2] + var_0[2];
            return;
        }
    }

    self._ID13082._ID1331 = self._ID740[0] + self._ID13083[0];
    self._ID13082._ID1339 = self._ID740[1] + self._ID13083[1];
    self._ID13082._ID1342 = self._ID740[2] + self._ID13083[2];
}

_ID10478()
{
    self endon( "new_head_icon" );
    self waittill( "death" );

    if ( !isdefined( self._ID13082 ) )
        return;

    self._ID13082 destroy();
}

_ID41812( var_0 )
{
    var_1 = var_0 - self._ID740;
    return ( vectordot( var_1, anglestoforward( self._ID65 ) ), -1.0 * vectordot( var_1, anglestoright( self._ID65 ) ), vectordot( var_1, anglestoup( self._ID65 ) ) );
}

_ID20334( var_0, var_1, var_2, var_3, var_4 )
{
    level._ID20367 = spawnstruct();
    level._ID20367._ID8405 = 3;
    level._ID20367._ID13801 = 1.5;
    level._ID20367._ID13796 = undefined;

    if ( isdefined( var_3 ) )
        level._ID20367._ID22391 = [ var_0, var_1, var_2, var_3 ];
    else
        level._ID20367._ID22391 = [ var_0, var_1, var_2 ];

    _ID42237::_ID24937( level._ID20367._ID22391, ::precachestring );
}

_ID20335( var_0 )
{
    level._ID20367._ID9566 = var_0;
}

_ID20336( var_0, var_1, var_2 )
{
    level._ID20367._ID8405 = var_0;
    level._ID20367._ID13801 = var_1;
    level._ID20367._ID13796 = var_2;
}

_ID32392( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9 )
{
    if ( isdefined( var_1 ) )
        self._ID30386 = var_1;

    if ( isdefined( var_2 ) )
        self._ID41227 = var_2;

    if ( isdefined( var_3 ) )
        self._ID35378 = var_3;

    self._ID3152 = var_0;
    var_10 = [];

    if ( isdefined( var_4 ) && isdefined( var_5 ) )
    {
        var_11 = [];

        foreach ( var_13 in var_6 )
            var_11[var_13] = var_4;

        var_10["cover_trans"] = var_11;
        var_15 = [];

        foreach ( var_13 in var_6 )
            var_15[var_13] = var_5;

        var_10["cover_exit"] = var_15;
    }
    else if ( isdefined( var_4 ) || isdefined( var_5 ) )
    {

    }

    if ( isdefined( var_7 ) )
    {
        if ( isdefined( var_8 ) )
        {

        }

        var_10["run_turn"] = var_7;
        var_10["walk_turn"] = var_8;
        self._ID25154 = undefined;
    }
    else if ( isdefined( var_8 ) )
    {

    }
    else
        self._ID25154 = 1;

    if ( isdefined( var_9 ) )
    {
        var_18 = [];
        var_19 = [ "6x8", "8x8", "10x8", "12x6", "12x8", "16x8" ];

        for ( var_20 = 0; var_20 < var_19.size; var_20++ )
        {
            var_18["stairs_up_" + var_19[var_20]] = var_9["stairs_up_" + var_19[var_20]];
            var_18["stairs_down_" + var_19[var_20]] = var_9["stairs_down_" + var_19[var_20]];
            var_18["stairs_up_in_" + var_19[var_20]] = var_9["stairs_up_in_" + var_19[var_20]];
            var_18["stairs_down_in_" + var_19[var_20]] = var_9["stairs_down_in_" + var_19[var_20]];
            var_18["stairs_up_out_" + var_19[var_20]] = var_9["stairs_up_out_" + var_19[var_20]];
            var_18["stairs_down_out_" + var_19[var_20]] = var_9["stairs_down_out_" + var_19[var_20]];
        }

        var_10["walk"] = var_18;
        var_10["run"] = var_18;
        self._ID30387 = 1;
    }
    else
        self._ID30387 = undefined;

    anim._ID3277[var_0] = var_10;
    animscripts\init_move_transitions::_ID20018( var_0 );
}

_ID7882( var_0 )
{
    self._ID3152 = undefined;
    anim._ID3277[var_0] = undefined;
    self._ID30386 = undefined;
    self._ID30387 = undefined;
    self._ID41227 = undefined;
    self._ID35378 = undefined;
}

_ID29401( var_0, var_1, var_2 )
{
    animscripts\animset::_ID29424( var_0, var_1, var_2 );
}

_ID3274( var_0 )
{
    return animscripts\animset::_ID3276( var_0 );
}

_ID32219( var_0 )
{
    self._ID3152 = var_0;
    self notify( "move_loop_restart" );

    if ( var_0 == "creepwalk" )
        self._ID961 = 72;
}

_ID7838()
{
    if ( isdefined( self._ID3152 ) && self._ID3152 == "creepwalk" )
        self._ID961 = 30;

    self._ID3152 = undefined;
    self notify( "move_loop_restart" );
}

_ID33855( var_0, var_1 )
{
    foreach ( var_3 in level._ID805 )
    {
        if ( var_3 _ID33856( var_0, var_1 ) )
            return 1;
    }

    return 0;
}

_ID33856( var_0, var_1 )
{
    var_2 = self getpointinbounds( 0, 0, 0 );
    var_3 = var_2 - var_0;
    var_4 = length( var_3 );
    var_5 = asin( clamp( 60 / var_4, 0, 1 ) );

    if ( vectordot( vectornormalize( var_3 ), vectornormalize( var_1 - var_0 ) ) > cos( var_5 ) )
        return 1;

    return 0;
}

_ID38650( var_0 )
{
    loadtransient( var_0 );

    while ( !loadstartpointtransient( var_0 ) )
        wait 0.1;

    _ID42237::_ID14402( var_0 + "_loaded" );
}

_ID38668( var_0 )
{
    unloadtransient( var_0 );

    while ( loadstartpointtransient( var_0 ) )
        wait 0.1;

    _ID42237::_ID14388( var_0 + "_loaded" );
}

_ID38647( var_0 )
{
    _ID42237::_ID14400( var_0 + "_loaded" );
}

_ID38660( var_0, var_1 )
{
    if ( _ID42237::_ID14385( var_0 + "_loaded" ) )
        _ID38668( var_0 );

    if ( !_ID42237::_ID14385( var_1 + "_loaded" ) )
        _ID38650( var_1 );
}

_ID38669( var_0 )
{
    unloadalltransients();
    _ID38650( var_0 );
}

_ID10085( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
    {
        foreach ( var_4 in var_0 )
        {
            if ( isdefined( var_4 ) )
            {
                if ( isarray( var_4 ) )
                {
                    _ID10085( var_4, var_1 );
                    continue;
                }

                var_4 call [[ var_1 ]]();
            }
        }
    }
    else
    {
        switch ( var_2.size )
        {
            case 0:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10085( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 call [[ var_1 ]]();
                    }
                }

                break;
            case 1:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10085( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 call [[ var_1 ]]( var_2[0] );
                    }
                }

                break;
            case 2:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10085( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 call [[ var_1 ]]( var_2[0], var_2[1] );
                    }
                }

                break;
            case 3:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10085( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 call [[ var_1 ]]( var_2[0], var_2[1], var_2[2] );
                    }
                }

                break;
            case 4:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10085( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 call [[ var_1 ]]( var_2[0], var_2[1], var_2[2], var_2[3] );
                    }
                }

                break;
            case 5:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10085( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 call [[ var_1 ]]( var_2[0], var_2[1], var_2[2], var_2[3], var_2[4] );
                    }
                }

                break;
        }
    }
}

_ID10086( var_0, var_1, var_2 )
{
    if ( !isdefined( var_2 ) )
    {
        foreach ( var_4 in var_0 )
        {
            if ( isdefined( var_4 ) )
            {
                if ( isarray( var_4 ) )
                {
                    _ID10086( var_4, var_1, var_2 );
                    continue;
                }

                var_4 thread [[ var_1 ]]();
            }
        }
    }
    else
    {
        switch ( var_2.size )
        {
            case 0:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10086( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 thread [[ var_1 ]]();
                    }
                }

                break;
            case 1:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10086( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 thread [[ var_1 ]]( var_2[0] );
                    }
                }

                break;
            case 2:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10086( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 thread [[ var_1 ]]( var_2[0], var_2[1] );
                    }
                }

                break;
            case 3:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10086( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 thread [[ var_1 ]]( var_2[0], var_2[1], var_2[2] );
                    }
                }

                break;
            case 4:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10086( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 thread [[ var_1 ]]( var_2[0], var_2[1], var_2[2], var_2[3] );
                    }
                }

                break;
            case 5:
                foreach ( var_4 in var_0 )
                {
                    if ( isdefined( var_4 ) )
                    {
                        if ( isarray( var_4 ) )
                        {
                            _ID10086( var_4, var_1, var_2 );
                            continue;
                        }

                        var_4 thread [[ var_1 ]]( var_2[0], var_2[1], var_2[2], var_2[3], var_2[4] );
                    }
                }

                break;
        }
    }
}

_ID32609( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID8534 ) )
        _ID32246();

    if ( _ID20530() )
        setdvar( var_0, var_2 );
    else
        setdvar( var_0, var_1 );
}

_ID32774( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID8534 ) )
        _ID32246();

    if ( _ID20530() )
        setsaveddvar( var_0, var_2 );
    else
        setsaveddvar( var_0, var_1 );
}

_ID14702( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stop_path" );
    self notify( "stop_going_to_node" );
    self notify( "follow_path" );
    self endon( "follow_path" );
    wait 0.1;
    var_2 = var_0;
    var_3 = undefined;
    var_4 = undefined;

    if ( !isdefined( var_1 ) )
        var_1 = 300;

    self._ID9449 = var_2;
    var_2 _ID916();

    while ( isdefined( var_2 ) )
    {
        self._ID9449 = var_2;

        if ( isdefined( var_2._ID600 ) )
            break;

        if ( isdefined( level._ID36711["targetname"][var_2._ID1193] ) )
            var_4 = ::_ID14705;
        else if ( isdefined( var_2._ID170 ) )
            var_4 = ::_ID14703;
        else
            var_4 = ::_ID14704;

        if ( isdefined( var_2._ID851 ) && var_2._ID851 != 0 )
            self._ID452 = var_2._ID851;

        if ( self._ID452 < 16 )
            self._ID452 = 16;

        if ( isdefined( var_2._ID488 ) && var_2._ID488 != 0 )
            self._ID450 = var_2._ID488;

        var_5 = self._ID452;
        self childthread [[ var_4 ]]( var_2 );

        if ( isdefined( var_2._ID70 ) )
            var_2 waittill( var_2._ID70 );
        else
        {
            for (;;)
            {
                self waittill( "goal" );

                if ( distance( var_2._ID740, self._ID740 ) < var_5 + 10 || self._ID1194 != "allies" )
                    break;
            }
        }

        var_2 notify( "trigger",  self  );

        if ( isdefined( var_2._ID31195 ) )
            _ID42237::_ID14402( var_2._ID31195 );

        if ( isdefined( var_2._ID31388 ) )
        {
            var_6 = strtok( var_2._ID31388, " " );

            for ( var_7 = 0; var_7 < var_6.size; var_7++ )
            {
                if ( isdefined( level._ID9541 ) )
                    self [[ level._ID9541 ]]( var_6[var_7], var_2 );

                if ( self._ID1244 == "dog" )
                    continue;

                switch ( var_6[var_7] )
                {
                    case "enable_cqb":
                        _ID12467();
                        continue;
                    case "disable_cqb":
                        _ID10896();
                        continue;
                    case "deleteme":
                        self delete();
                        return;
                }
            }
        }

        if ( !isdefined( var_2._ID31418 ) && var_1 > 0 && self._ID1194 == "allies" )
        {
            while ( isalive( level._ID794 ) )
            {
                if ( _ID14706( var_2, var_1 ) )
                    break;

                if ( isdefined( var_2._ID70 ) )
                {
                    self._ID452 = var_5;
                    self setgoalpos( self._ID740 );
                }

                wait 0.05;
            }
        }

        if ( !isdefined( var_2._ID1191 ) )
            break;

        if ( isdefined( var_2._ID31197 ) )
            _ID42237::_ID14413( var_2._ID31197 );

        var_2 _ID916();
        var_2 = var_2 _ID42237::_ID16012();
    }

    self notify( "path_end_reached" );
}

_ID14706( var_0, var_1 )
{
    if ( distance( level._ID794._ID740, var_0._ID740 ) < distance( self._ID740, var_0._ID740 ) )
        return 1;

    var_2 = undefined;
    var_2 = anglestoforward( self._ID65 );
    var_3 = vectornormalize( level._ID794._ID740 - self._ID740 );

    if ( isdefined( var_0._ID1191 ) )
    {
        var_4 = _ID42237::_ID16012( var_0._ID1191 );
        var_2 = vectornormalize( var_4._ID740 - var_0._ID740 );
    }
    else if ( isdefined( var_0._ID65 ) )
        var_2 = anglestoforward( var_0._ID65 );
    else
        var_2 = anglestoforward( self._ID65 );

    if ( vectordot( var_2, var_3 ) > 0 )
        return 1;

    if ( distance( level._ID794._ID740, self._ID740 ) < var_1 )
        return 1;

    return 0;
}

_ID14704( var_0 )
{
    self notify( "follow_path_new_goal" );

    if ( isdefined( var_0._ID70 ) )
    {
        var_0 _ID42259::_ID3027( self, var_0._ID70 );
        self notify( "starting_anim",  var_0._ID70  );

        if ( isdefined( var_0._ID31388 ) && issubstr( var_0._ID31388, "gravity" ) )
            var_0 _ID42259::_ID3024( self, var_0._ID70 );
        else
            var_0 _ID42259::_ID3029( self, var_0._ID70 );

        self setgoalpos( self._ID740 );
    }
    else
        _ID32334( var_0 );
}

_ID14703( var_0 )
{
    self notify( "follow_path_new_goal" );

    if ( isdefined( var_0._ID70 ) )
    {
        var_0 _ID42259::_ID3027( self, var_0._ID70 );
        self notify( "starting_anim",  var_0._ID70  );

        if ( isdefined( var_0._ID31388 ) && issubstr( var_0._ID31388, "gravity" ) )
            var_0 _ID42259::_ID3024( self, var_0._ID70 );
        else
            var_0 _ID42259::_ID3029( self, var_0._ID70 );

        self setgoalpos( self._ID740 );
    }
    else
        _ID32330( var_0 );
}

_ID14705( var_0 )
{
    self notify( "follow_path_new_goal" );

    if ( isdefined( var_0._ID70 ) )
    {
        var_0 _ID42259::_ID3027( self, var_0._ID70 );
        self notify( "starting_anim",  var_0._ID70  );
        _ID10912();

        if ( isdefined( var_0._ID31388 ) && issubstr( var_0._ID31388, "gravity" ) )
            var_0 _ID42259::_ID3024( self, var_0._ID70 );
        else
            var_0 _ID42259::_ID3029( self, var_0._ID70 );

        _ID10226( 0.05, ::_ID12480 );
        self setgoalpos( self._ID740 );
    }
    else
        _ID32336( var_0._ID740 );
}

_ID28286( var_0 )
{
    if ( !isdefined( level._ID28285 ) )
        level._ID28285 = [];

    level._ID28285 = _ID42237::_ID3293( level._ID28285, var_0 );
}

_ID15317()
{
    if ( level._ID1333 )
        return 1;

    if ( level._ID843 )
        return 1;

    return 0;
}

_ID22196( var_0, var_1 )
{
    thread _ID22197( var_0, var_1 );
}

_ID22197( var_0, var_1 )
{
    self notify( "new_lerp_Fov_Saved" );
    self endon( "new_lerp_Fov_Saved" );
    self lerpfov( var_0, var_1 );
    wait(var_1);
    setsaveddvar( "cg_fov", var_0 );
}

_ID16246( var_0, var_1 )
{
    var_2 = getdvar( var_0 );

    if ( var_2 != "" )
        return float( var_2 );

    return var_1;
}

_ID16247( var_0, var_1 )
{
    var_2 = getdvar( var_0 );

    if ( var_2 != "" )
        return int( var_2 );

    return var_1;
}

_ID39412( var_0 )
{
    var_1 = "ui_actionslot_" + var_0 + "_forceActive";
    setdvar( var_1, "on" );
}

_ID39411( var_0 )
{
    var_1 = "ui_actionslot_" + var_0 + "_forceActive";
    setdvar( var_1, "turn_off" );
}

_ID39413( var_0 )
{
    var_1 = "ui_actionslot_" + var_0 + "_forceActive";
    setdvar( var_1, "onetime" );
}

ui_set_waypoint_center_fade_settings( var_0, var_1, var_2 )
{
    setsaveddvar( "waypointScreenCenterFadeRadius", var_0 );
    setsaveddvar( "waypointScreenCenterFadeAdsMin", var_1 );
    setsaveddvar( "waypointScreenCenterFadeHipMin", var_2 );
}

ui_reset_waypoint_center_fade_settings()
{
    ui_set_waypoint_center_fade_settings( 120, 0.4, 0.6 );
}

_ID18252( var_0, var_1 )
{
    var_2 = getnumparts( var_0 );

    for ( var_3 = 0; var_3 < var_2; var_3++ )
    {
        if ( tolower( getpartname( var_0, var_3 ) ) == tolower( var_1 ) )
            return 1;
    }

    return 0;
}

_ID36732( var_0, var_1, var_2, var_3 )
{

}

_ID7190( var_0 )
{

}

_ID12528( var_0 )
{
    if ( !_ID30466() )
        return;

    if ( isdefined( self._ID23165 ) && self._ID23165 )
        return;

    if ( !level._ID688 )
        return;

    if ( isdefined( var_0 ) && var_0 )
    {
        if ( !isdefined( self._ID3152 ) || self._ID3152 == "soldier" )
            self._ID3152 = "s1_soldier";
    }
    else if ( !isdefined( self._ID3152 ) || self._ID3152 == "s1_soldier" )
        self._ID3152 = "soldier";
}

_ID30466()
{
    return 0;
}

_ID2286()
{
    if ( isdefined( self._ID31152 ) )
        return;

    if ( isdefined( self._ID1490 ) )
        _ID2358();

    self._ID1490 = [];
    self._ID291 = _ID42408::_ID2322( self._ID291, "disableplayeradsloscheck", 1 );
    self._ID507 = _ID42408::_ID2322( self._ID507, "ignoreall", 1 );
    self._ID511 = _ID42408::_ID2322( self._ID511, "ignoreme", 1 );
    self._ID465 = _ID42408::_ID2322( self._ID465, "grenadeawareness", 0 );
    self._ID107 = _ID42408::_ID2322( self._ID107, "badplaceawareness", 0 );
    self._ID509 = _ID42408::_ID2322( self._ID509, "ignoreexplosionevents", 1 );
    self._ID512 = _ID42408::_ID2322( self._ID512, "ignorerandombulletdamage", 1 );
    self._ID513 = _ID42408::_ID2322( self._ID513, "ignoresuppression", 1 );
    self._ID304 = _ID42408::_ID2322( self._ID304, "dontavoidplayer", 1 );
    self._ID686 = _ID42408::_ID2322( self._ID686, "newEnemyReactionDistSq", 0 );
    self._ID11002 = _ID42408::_ID2322( self._ID11002, "disableBulletWhizbyReaction", 1 );
    self._ID11029 = _ID42408::_ID2322( self._ID11029, "disableFriendlyFireReaction", 1 );
    self._ID11579 = _ID42408::_ID2322( self._ID11579, "dontMelee", 1 );
    self._ID14507 = _ID42408::_ID2322( self._ID14507, "flashBangImmunity", 1 );
    self._ID295 = _ID42408::_ID2322( self._ID295, "doDangerReact", 0 );
    self._ID24730 = _ID42408::_ID2322( self._ID24730, "neverSprintForVariation", 1 );
    self._ID7._ID11043 = _ID42408::_ID2322( self._ID7._ID11043, "a.disablePain", 1 );
    self._ID52 = _ID42408::_ID2322( self._ID52, "allowPain", 0 );
    self._ID381 = _ID42408::_ID2322( self._ID381, "fixedNode", 1 );
    self._ID31212 = _ID42408::_ID2322( self._ID31212, "script_forcegoal", 1 );
    self._ID452 = _ID42408::_ID2322( self._ID452, "goalradius", 5 );
    _ID10871();
}

_ID2358( var_0, var_1 )
{
    if ( isdefined( self._ID31152 ) )
        return;

    if ( isdefined( var_0 ) && var_0 )
    {
        if ( isdefined( self._ID1490 ) )
            self._ID1490 = undefined;
    }

    self._ID291 = _ID42408::_ID2320( "disableplayeradsloscheck", 0 );
    self._ID507 = _ID42408::_ID2320( "ignoreall", 0 );
    self._ID511 = _ID42408::_ID2320( "ignoreme", 0 );
    self._ID465 = _ID42408::_ID2320( "grenadeawareness", 1 );
    self._ID107 = _ID42408::_ID2320( "badplaceawareness", 1 );
    self._ID509 = _ID42408::_ID2320( "ignoreexplosionevents", 0 );
    self._ID512 = _ID42408::_ID2320( "ignorerandombulletdamage", 0 );
    self._ID513 = _ID42408::_ID2320( "ignoresuppression", 0 );
    self._ID304 = _ID42408::_ID2320( "dontavoidplayer", 0 );
    self._ID686 = _ID42408::_ID2320( "newEnemyReactionDistSq", 262144 );
    self._ID11002 = _ID42408::_ID2320( "disableBulletWhizbyReaction", undefined );
    self._ID11029 = _ID42408::_ID2320( "disableFriendlyFireReaction", undefined );
    self._ID11579 = _ID42408::_ID2320( "dontMelee", undefined );
    self._ID14507 = _ID42408::_ID2320( "flashBangImmunity", undefined );
    self._ID295 = _ID42408::_ID2320( "doDangerReact", 1 );
    self._ID24730 = _ID42408::_ID2320( "neverSprintForVariation", undefined );
    self._ID7._ID11043 = _ID42408::_ID2320( "a.disablePain", 0 );
    self._ID52 = _ID42408::_ID2320( "allowPain", 1 );
    self._ID381 = _ID42408::_ID2320( "fixedNode", 0 );
    self._ID31212 = _ID42408::_ID2320( "script_forcegoal", 0 );
    self._ID452 = _ID42408::_ID2320( "goalradius", 100 );

    if ( !( isdefined( var_1 ) && var_1 ) )
        _ID12445();

    self._ID1490 = undefined;
}

_ID3566( var_0 )
{
    var_1 = level._ID794 getcurrentweapon();
    var_2 = _func_2c5( var_1 );
    var_3 = var_2[0]["weapon"];
    var_4 = _ID3325( var_2, 0 );
    self attach( var_3, var_0, 1 );

    foreach ( var_6 in var_4 )
        self attach( var_6["attachment"], var_6["attachTag"] );

    self _meth_8514( var_1 );
}

_ID27746( var_0, var_1 )
{
    _ID1557( "altmelee", var_0, var_1, ::_ID1360, 0 );
}

_ID1360( var_0 )
{
    if ( var_0 )
        self _meth_84fc();
    else
        self _meth_84fb();
}

_ID27752( var_0, var_1 )
{
    _ID1557( "weaponPickup", var_0, var_1, ::_ID1361, 0 );
}

_ID1361( var_0 )
{
    if ( var_0 )
        self enableweaponpickup();
    else
        self disableweaponpickup();
}

_ID1557( var_0, var_1, var_2, var_3, var_4 )
{
    if ( !isdefined( self._ID27789 ) )
        self._ID27789 = [];

    if ( !isdefined( self._ID27789[var_0] ) )
        self._ID27789[var_0] = [];

    if ( !isdefined( var_2 ) )
        var_2 = "default";

    if ( var_1 )
    {
        self._ID27789[var_0] = _ID42237::_ID3321( self._ID27789[var_0], var_2 );

        if ( !self._ID27789[var_0].size )
        {
            if ( !isdefined( var_4 ) || var_4 )
                self call [[ var_3 ]]( 1 );
            else
                self [[ var_3 ]]( 1 );
        }
    }
    else
    {
        if ( !isdefined( _ID42237::_ID3307( self._ID27789[var_0], var_2 ) ) )
            self._ID27789[var_0] = _ID42237::_ID3293( self._ID27789[var_0], var_2 );

        if ( !isdefined( var_4 ) || var_4 )
            self call [[ var_3 ]]( 0 );
        else
            self [[ var_3 ]]( 0 );
    }
}

_ID28468()
{
    if ( !isalive( self ) )
        return;

    self._ID28469 = 1;
    self _meth_84f8( "disable" );
    self disableaimassist();
    self._ID511 = 1;
    self._ID19390 = 1;
}

_ID37594()
{
    precacheshader( "loading_animation" );
    _ID42237::_ID14400( "tff_sync_complete" );
    _ID42408::_ID1655();
}

_ID37592( var_0 )
{
    if ( isdefined( var_0 ) )
        wait(var_0);

    if ( istransientqueued() )
    {
        _ID42237::_ID14388( "tff_sync_complete" );
        synctransients();

        while ( istransientqueued() )
            wait 0.05;

        _ID42237::_ID14402( "tff_sync_complete" );
    }
}

_ID37593( var_0, var_1 )
{
    _ID37592( var_1 );
}

_ID22563()
{
    level._ID794 endon( "death" );

    for (;;)
    {
        var_0 = _func_2ca();

        if ( var_0 != undefined )
        {
            var_1 = var_0[4];
            var_2 = gettime();
            _func_2e3( level._ID794, var_1, var_2 );
        }

        wait 2;
    }
}

_ID49965( var_0, var_1 )
{
    var_0 = ( var_0[0] * var_1, var_0[1] * var_1, var_0[2] * var_1 );
    return var_0;
}

_ID52201()
{
    switch ( level._ID912 )
    {
        case "ambush":
        case "ac130":
        case "aftermath":
        case "airlift":
        case "airplane":
        case "armada":
        case "blackout":
        case "bog_a":
        case "bog_b":
        case "cargoship":
        case "coup":
        case "hunted":
        case "icbm":
        case "jeepride":
        case "killhouse":
        case "launchfacility_a":
        case "launchfacility_b":
        case "scoutsniper":
        case "simplecredits":
        case "sniperescape":
        case "village_assault":
        case "village_defend":
            return 1;
    }

    return 0;
}

_ID44759()
{
    switch ( level._ID912 )
    {
        case "favela":
        case "gulag":
        case "af_caves":
        case "af_chase":
        case "airport":
        case "arcadia":
        case "boneyard":
        case "cliffhanger":
        case "co_hunted":
        case "contingency":
        case "dc_whitehouse":
        case "dcburning":
        case "dcemp":
        case "development":
        case "ending":
        case "estate":
        case "favela_escape":
        case "invasion":
        case "iw4_credits":
        case "oilrig":
        case "roadkill":
        case "trainer":
        case "so_ghillies":
            return 1;
    }

    return 0;
}

_ID47066()
{
    return _ID52201() || _ID44759();
}

_ID43149( var_0 )
{
    self _meth_8577( 1 );

    for (;;)
    {
        self rotatebylinked( ( 0, 360, 0 ), var_0 );
        wait(var_0);
    }
}

_ID45474( var_0 )
{
    if ( !isdefined( var_0 ) )
        return;

    for (;;)
    {
        self._ID65 = var_0._ID65;
        wait 0.05;
    }
}

_ID53910( var_0 )
{
    if ( !isdefined( var_0 ) )
        var_0 = 1;

    setsaveddvar( "bg_allowScuffFootsteps", var_0 );
}

_ID54292( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( var_4 ) && _ID54585( var_4 ) )
        return;

    if ( !isdefined( var_3 ) || !_ID54585( var_3 ) )
        _ID42237::_ID14413( var_1 );

    animscripts\utility::_ID47685( var_0, 1 );

    if ( isdefined( var_2 ) )
    {
        _ID42237::_ID14413( var_2 );
        animscripts\utility::_ID47685( var_0, 0 );
    }
}

_ID50092()
{
    if ( isdefined( level._ID44375 ) )
        level._ID44375++;
    else
        level._ID44375 = 0;

    return level._ID44375;
}

_ID54053( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < level._ID805.size; var_4++ )
    {
        if ( !level._ID805[var_4] _ID27540( var_0, var_1, var_2, var_3 ) )
            return 0;
    }

    return 1;
}

_ID46938( var_0, var_1, var_2 )
{
    var_3 = level _ID9122( _ID42408::_ID44596, var_0, var_1 );
    var_3._ID1210 = var_2;
}

_ID45589( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
    {
        var_4 = _ID42237::_ID3321( var_0, var_3 );
        var_3 thread _ID47095( var_4, var_1 );
    }
}

_ID50250( var_0 )
{
    foreach ( var_2 in var_0 )
    {
        if ( isalive( var_2 ) )
            var_2 _ID13025( "stop_keep_distance" );
    }
}

_ID47095( var_0, var_1 )
{
    self notify( "start_keep_distance" );
    self endon( "death" );
    self endon( "start_keep_distance" );

    if ( !_ID13023( "stop_keep_distance" ) )
        _ID13024( "stop_keep_distance" );

    if ( !isdefined( var_1 ) )
        var_2 = spawnstruct();
    else
        var_2 = var_1;

    if ( !isdefined( var_2._ID28980 ) )
        var_2._ID28980 = 100;

    if ( !isdefined( var_2._ID44623 ) )
        var_2._ID44623 = 0.8;

    if ( !isdefined( var_2._ID47727 ) )
        var_2._ID47727 = 0.5;

    if ( !isdefined( var_2._ID50009 ) )
        var_2._ID50009 = 1.0;

    if ( !isdefined( var_2._ID45154 ) )
        var_2._ID45154 = 60;

    self._ID46228 = self._ID24424;

    for (;;)
    {
        if ( _ID13019( "stop_keep_distance" ) )
            break;

        var_3 = _ID42237::_ID16182( self._ID740, var_0, var_2._ID28980 );

        if ( isdefined( var_3 ) && _ID42237::_ID41802( self._ID740, self._ID65, var_3._ID740, cos( var_2._ID45154 ) ) )
        {
            if ( self._ID24424 > var_3._ID24424 )
                self._ID24424 = clamp( var_3._ID24424 * var_2._ID44623, var_2._ID47727, var_3._ID24424 );
            else
                self._ID24424 = clamp( self._ID46228 * var_2._ID44623, var_2._ID47727, self._ID46228 );

            wait(var_2._ID50009);
        }
        else
            self._ID24424 = self._ID46228;

        wait 0.05;
    }

    self._ID24424 = self._ID46228;
    self._ID46228 = undefined;
    _ID13021( "stop_keep_distance" );
}

_ID50344( var_0, var_1 )
{
    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        _ID42237::_ID10192( var_0[var_2]._ID10179, ::playrumblelooponentity, var_0[var_2]._ID30328 );

        if ( isdefined( var_1 ) && var_1 )
            _ID42237::_ID24938( var_0[var_2]._ID10179, ::iprintln, "" + var_0[var_2]._ID30328 + " with delay of " + var_0[var_2]._ID10179 );
    }

    if ( isdefined( var_1 ) && var_1 )
    {
        for ( var_2 = 0; var_2 < var_0.size; var_2++ )
        {

        }
    }
}

_ID53308( var_0, var_1, var_2 )
{
    var_3 = spawnstruct();
    var_3._ID10179 = var_1;
    var_3._ID30328 = var_2;
    return _ID42237::_ID3293( var_0, var_3 );
}

_ID51500( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13, var_14, var_15 )
{
    self endon( "death" );
    var_16 = 0;
    var_17 = isdefined( var_10 );
    var_18 = 1;
    self._ID46030 = 0;
    self._ID44105 = gettime();

    if ( !isdefined( self._ID47654 ) )
        self._ID47654 = [];

    var_19 = self._ID47654.size;
    self._ID47654[var_19] = 1;
    childthread _ID44562();

    for (;;)
    {
        wait 0.05;
        waitframe;

        if ( _ID43308( var_0, var_2, var_3, var_4, var_5 ) )
        {
            self allowmelee( 0 );
            var_18 = 0;
            self._ID47654[var_19] = 0;

            if ( !var_16 && var_17 )
            {
                level thread _ID18611( var_10 );
                var_16 = 1;
            }

            if ( self meleebuttonpressed() )
            {
                thread _ID49347::_ID46206();
                self._ID511 = 1;
                self._ID46030 = 1;
                self allowmelee( 1 );
                var_18 = 1;
                self._ID47654[var_19] = 1;

                foreach ( var_21 in var_0 )
                {
                    var_21._ID49 = 0;
                    var_21 _ID32353( 1 );
                    var_21 _ID32352( 1 );
                }

                if ( var_16 )
                {
                    level thread _ID18638();
                    var_16 = 0;
                }

                var_23 = isdefined( var_8 );
                var_24 = isdefined( var_9 );

                if ( var_23 || var_24 )
                {
                    self._ID49929 = _ID35028( "worldbody" );
                    self._ID49929 hide();

                    if ( var_23 )
                    {
                        if ( isdefined( self._ID50619 ) )
                            var_8 += "_bloody";

                        self._ID49929 attach( var_8, "tag_knife_attach", 1 );
                    }

                    if ( var_24 )
                    {
                        if ( isdefined( self._ID50619 ) )
                            var_9 += "_bloody";

                        self._ID49929 attach( var_9, "tag_knife_attach2", 1 );
                    }
                }

                self notify( "stealth_takedown_started" );

                foreach ( var_21 in var_0 )
                {
                    var_21 notify( "stealth_takedown_started" );
                    var_21._ID24924 = undefined;
                }

                var_27 = self _meth_859a( "crouch" );
                self allowcrouch( 0 );
                var_28 = [[ var_7 ]]( var_0 );
                var_29 = [];

                foreach ( var_31, var_21 in var_0 )
                {
                    if ( isdefined( var_11 ) && isdefined( var_11[var_31] ) )
                    {
                        var_28 thread [[ var_11[var_31] ]]( var_1, var_21, var_6 );
                        continue;
                    }

                    var_29[var_29.size] = var_21;
                }

                var_32 = !isdefined( var_12 ) || isdefined( var_15 ) && var_15;

                if ( isdefined( var_13 ) )
                {
                    var_28 _ID42259::_ID3018( level._ID794._ID49929, var_1 );
                    var_6 = _ID42259::_ID53505( level._ID794._ID49929, var_2, var_3, var_6, var_13 );
                }

                setsaveddvar( "compass", 0 );
                setsaveddvar( "hud_showStance", 0 );
                setsaveddvar( "actionSlotsHide", 1 );
                var_28 _ID49392( var_1, var_29, var_32, var_6, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, var_12 );
                wait 0.05;
                setsaveddvar( "compass", 1 );
                setsaveddvar( "hud_showStance", 1 );
                setsaveddvar( "actionSlotsHide", 0 );
                self._ID511 = 0;

                if ( var_27 )
                    self allowcrouch( 1 );

                self notify( "stealth_takedown_ended" );

                if ( isdefined( var_14 ) )
                {
                    level._ID794 setlocalplayerprofiledata( "sp_doItWithStyle", var_14, 1 );
                    updategamerprofileall();
                    level notify( "special_takedown_done" );
                }

                foreach ( var_21 in var_0 )
                {
                    if ( !_func_2a5( var_21 ) )
                    {
                        var_21._ID11013 = 1;
                        var_21.skipdeathsound = 1;
                        var_21.skiphitmarker = 1;
                        thread _ID52623( var_21 );
                        var_21 notify( "stealth_takedown_ended" );

                        if ( var_0.size > 1 && ( isdefined( level._ID46496 ) && level._ID46496 || isdefined( level._ID46534 ) && level._ID46534 ) )
                            wait 0.05;
                    }
                }

                self._ID46030 = 0;
                thread _ID49347::_ID54655();
                return;
            }

            continue;
        }

        if ( !var_18 )
        {
            self allowmelee( 1 );
            var_18 = 1;
            self._ID47654[var_19] = 1;
        }

        if ( var_16 )
        {
            level thread _ID18638( 0.25 );
            var_16 = 0;
        }

        foreach ( var_21 in var_0 )
        {
            if ( !isalive( var_21 ) )
                return;
        }
    }
}

_ID44562()
{
    for (;;)
    {
        self waittill( "grenade_pullback" );
        self._ID44105 = gettime() + 5000;
    }
}

_ID52623( var_0 )
{
    if ( !isalive( var_0 ) )
        return;

    if ( level._ID912 == "ending" )
        var_0._ID43135.martyr_ignore = 1;

    var_0._ID49 = 1;
    var_0._ID7._ID24881 = 1;
    var_0 _ID32226( 0 );
    _ID45456::_ID54623( var_0 );
    var_0 kill( var_0._ID740, level._ID794 );
    thread _ID49347::cheat_death_corpse_check();
}

_ID43308( var_0, var_1, var_2, var_3, var_4 )
{
    if ( isdefined( self._ID52561 ) && !self._ID52561 )
        return 0;

    var_5 = 0;
    var_6 = 1;

    foreach ( var_8 in var_0 )
    {
        if ( !isalive( var_8 ) || var_8._ID38 != "noncombat" && ( !isdefined( var_8.stealth_grace_window_end_in_ms ) || var_8.stealth_grace_window_end_in_ms < gettime() ) )
            var_6 = 0;
    }

    if ( var_6 && level._ID794 getstance() != "prone" && !level._ID794 ismeleeing() && gettime() > self._ID44105 )
    {
        var_10 = cos( var_2 );
        var_11 = cos( var_3 );
        var_12 = ( 0, 0, 0 );
        var_13 = ( 0, 0, 0 );
        var_14 = ( 0, 0, 0 );
        var_15 = 1;

        for ( var_16 = 0; var_16 < var_0.size; var_16++ )
        {
            var_12 += var_0[var_16]._ID740;
            var_17 = var_0[var_16] geteye();
            var_18 = var_17[2] - var_0[var_16]._ID740[2];
            var_13 += ( var_0[var_16]._ID740 + ( 0, 0, var_18 * 0.5 ) );
            var_14 += var_17;
            var_19 = ( var_0[var_16]._ID65[0], var_0[var_16]._ID65[1] + var_4, var_0[var_16]._ID65[2] );
            var_20 = vectordot( anglestoforward( self._ID65 ), anglestoforward( var_19 ) );
            var_15 = var_15 && var_20 > var_11;
        }

        var_12 /= var_0.size;

        if ( distancesquared( var_12, level._ID794._ID740 ) < var_1 * var_1 )
        {
            if ( level._ID794 issprinting() )
            {
                foreach ( var_8 in var_0 )
                {
                    var_8._ID38 = "alert";
                    var_8._ID507 = 0;
                }
            }
            else
            {
                var_23 = _ID27540( var_12, var_10, 1 ) || _ID27540( var_13, var_10, 1 ) || _ID27540( var_14, var_10, 1 );
                var_5 = var_15 && var_23;
            }
        }
    }

    return var_5;
}

_ID49392( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12, var_13 )
{
    _ID46422( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_13 );
    _ID48447( var_2, var_4, var_11, var_12 );
}

_ID51730( var_0, var_1 )
{
    _ID49392( var_0, var_1, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, undefined, 1 );
}

_ID46422( var_0, var_1, var_2, var_3, var_4, var_5, var_6, var_7, var_8, var_9, var_10, var_11, var_12 )
{
    if ( !isdefined( var_3 ) )
        var_3 = 0;

    if ( !isdefined( var_4 ) )
        var_4 = 0;

    if ( !isdefined( var_11 ) )
        var_11 = 0;

    if ( !var_11 )
        level._ID794 _ID42237::_ID1418();

    if ( !isdefined( level._ID794._ID49929 ) )
    {
        if ( isdefined( level._ID30904["worldbody"] ) )
            level._ID794._ID49929 = _ID35028( "worldbody" );
        else if ( isdefined( level._ID30904["worldhands"] ) )
            level._ID794._ID49929 = _ID35028( "worldhands" );
        else
        {

        }

        level._ID794._ID49929 hide();
    }

    var_13 = [];

    if ( isarray( var_1 ) )
        var_13 = _ID42237::_ID3293( var_1, level._ID794._ID49929 );
    else
        var_13 = _ID22802( level._ID794._ID49929, var_1 );

    var_14 = self;

    if ( var_14 == level )
    {
        var_14 = spawnstruct();
        var_14._ID740 = level._ID794._ID740;
        var_14._ID65 = level._ID794._ID65;
    }

    var_14 _ID42259::_ID3018( level._ID794._ID49929, var_0, var_10 );

    if ( var_4 )
        level._ID794 freezecontrols( var_4 );

    if ( var_3 > 0 )
    {
        level._ID794 playerlinktoblend( level._ID794._ID49929, "tag_player", var_3, var_3 * 0.25, var_3 * 0.25 );
        wait(var_3);
    }
    else if ( isdefined( var_5 ) && var_5 )
        level._ID794 playerlinktodelta( level._ID794._ID49929, "tag_player", 1.0, var_7, var_6, var_8, var_9 );
    else
        level._ID794 playerlinktoabsolute( level._ID794._ID49929, "tag_player" );

    level._ID794 _meth_8491();
    waitframe;
    wait 0.05;
    level._ID794 notify( "player_anim_started" );

    if ( level._ID912 == "ending" )
    {
        if ( isdefined( var_1 ) )
        {
            if ( isarray( var_1 ) )
            {
                foreach ( var_16 in var_1 )
                    var_16 notify( "player_anim_started" );
            }
            else
                var_1 notify( "player_anim_started" );
        }
    }

    if ( isdefined( var_12 ) )
    {
        var_18 = level._ID794._ID49929 _ID16120( var_0 );
        var_19 = getanimlength( var_18 );
        level._ID794._ID49929 thread _ID42259::_ID46741( "player_anim_height", var_18, var_19 - var_12, var_14 );
    }

    level._ID794._ID49929 show();
    var_14 _ID42259::_ID3099( var_13, var_0, var_10 );

    foreach ( var_21 in var_13 )
    {
        if ( isdefined( var_21 ) && var_21._ID172 == "misc_turret" )
            var_21 clearanim( var_21 _ID16120( var_0 ), 0 );
    }
}

_ID48447( var_0, var_1, var_2, var_3 )
{
    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_3 ) )
        var_3 = 0;

    level._ID794 unlink();

    if ( !var_3 )
        level._ID794._ID49929 delete();

    if ( var_1 )
        level._ID794 freezecontrols( 0 );

    level._ID794 _meth_8490();

    if ( !var_2 )
        level._ID794 _ID42237::_ID1432();

    if ( isdefined( var_0 ) && var_0 )
    {
        var_4 = playerphysicstrace( level._ID794._ID740 + ( 0, 0, 40 ), level._ID794._ID740 + ( 0, 0, -100 ) );
        level._ID794 setorigin( var_4 );
    }
}

_ID47099( var_0, var_1, var_2 )
{
    var_2 endon( "death" );

    if ( !isalive( var_2 ) )
        return;

    if ( !isdefined( var_1 ) )
        var_1 = 0;

    if ( var_1 )
    {
        _ID3136();
        self _meth_8571();
    }
    else
    {
        var_3 = _ID42237::_ID37527( var_0, "slide_back_in", "slide_in" );
        self clearanim( level._ID30895["worldbody"][var_3], 0 );
    }

    if ( _ID13019( "sliding_out" ) )
        return;

    var_4 = _ID42237::_ID37527( var_0, "slide_back_loop", "slide_loop" );
    self setflaggedanim( "slide_loop", level._ID30895["worldbody"][var_4][0] );

    if ( !var_0 )
    {
        self setanimlimited( level._ID30895["worldbody"]["slide_al"], 1 );
        self setanimlimited( level._ID30895["worldbody"]["slide_ar"], 1 );
    }

    thread _ID42259::_ID35866( self, "slide_loop", var_4, "worldbody" );
    thread _ID42259::_ID3201( self, "slide_loop", var_4 );
}

_ID50524( var_0 )
{
    if ( level._ID794 _ID42237::_ID20583() && isdefined( var_0 ) )
    {
        var_1 = getkeybinding( var_0[0] );

        foreach ( var_3 in var_0 )
        {
            var_1 = getkeybinding( var_3 );

            if ( var_1["count"] == 0 )
            {
                continue;
                continue;
            }

            break;
        }

        foreach ( var_7, var_6 in var_1 )
        {
            if ( var_7 == "count" )
                continue;

            if ( var_6 == &"KEY_BUTTON_RSTICK" || var_6 == &"KEY_BUTTON_LSTICK" )
                return 1;
        }
    }

    return 0;
}

_ID48474( var_0, var_1, var_2, var_3, var_4 )
{
    _ID46683();

    if ( !isdefined( var_2 ) )
        var_2 = 0;

    if ( !isdefined( var_1 ) )
        var_1 = var_0;

    var_5 = 0;
    var_6 = _ID42237::_ID54738();

    if ( var_6 == "LANGUAGE_TRADITIONAL_CHINESE" || var_6 == "LANGUAGE_SIMPLIFIED_CHINESE" )
        var_5 = 3;

    level._ID794._ID52289 = [];
    level._ID794._ID43008 = 0.7;

    if ( level._ID794 _ID42237::_ID20583() )
    {
        var_7 = 1.5 * level._ID794._ID43008;
        var_8 = int( 30 * level._ID794._ID43008 );
        var_9 = int( 30 * level._ID794._ID43008 );
        var_10 = 0.2;
        var_11 = 0.1;
        var_12 = _ID50524( var_4 );

        if ( var_12 )
        {
            var_7 = 1.15 * level._ID794._ID43008;
            var_8 = 0;
            var_9 = 0;

            if ( level._ID8534 )
            {
                var_10 = 6;
                var_11 = -2;
            }
            else
            {
                var_10 = 0.5;
                var_11 = -1;
            }
        }

        level._ID794._ID45565 = level._ID794 _ID42313::_ID9200( "timer", var_7 );
        level._ID794._ID45565._ID196 = ( 1, 1, 1 );
        level._ID794._ID45565 settext( var_0 );
        level._ID794._ID45565._ID1331 = 0;
        level._ID794._ID45565._ID1339 = 18.5 + var_2 + var_5;
        level._ID794._ID45565._ID55 = 0;
        level._ID794._ID45565._ID983 = -1;
        level._ID794._ID45565._ID47485 = 1;
        level._ID794._ID45565._ID45579 = var_7;
        level._ID794._ID45565._ID50585 = var_12;
        var_13 = _ID42313::_ID9251( "h2_prompt_anticipation", var_9, var_8 );
        var_13._ID196 = ( 1, 1, 1 );
        var_13._ID1331 = var_10;
        var_13._ID1339 = 20 + var_2 + var_11;
        var_13._ID55 = 0;
        var_13._ID983 = -2;
        var_13._ID47485 = 0.75;

        if ( !level._ID794._ID45565._ID50585 )
        {
            var_13._ID49279 = 0.25;
            var_13._ID47040 = 1;
            var_13._ID50145 = int( 30 * level._ID794._ID43008 );
            var_13._ID47055 = int( 30 * level._ID794._ID43008 );
            var_13._ID48129 = int( ( var_13._ID50145 - 12 ) * level._ID794._ID43008 );
            var_13._ID43935 = int( ( var_13._ID47055 - 12 ) * level._ID794._ID43008 );
        }
        else
        {
            var_13._ID49279 = 0.25;
            var_13._ID47040 = 0;
            var_13._ID50145 = int( 35 * level._ID794._ID43008 );
            var_13._ID47055 = int( 10 * level._ID794._ID43008 );
            var_13._ID48129 = 0;
            var_13._ID43935 = 0;
        }

        var_13._ID50686 = 0.3;
        level._ID794._ID46632 = var_13;
        level._ID794._ID52289[0] = level._ID794._ID46632;
        level._ID794._ID52289[1] = level._ID794._ID45565;
    }
    else
    {
        var_7 = 0.65;
        level._ID794._ID45565 = level._ID794 _ID42313::_ID9200( "timer", var_7 );
        level._ID794._ID45565._ID196 = ( 1, 1, 1 );
        level._ID794._ID45565 settext( var_1 );
        level._ID794._ID45565._ID1331 = 0;
        level._ID794._ID45565._ID1339 = 20 + var_2;
        level._ID794._ID45565._ID983 = -1;
        level._ID794._ID45565._ID55 = 0.25;
        level._ID794._ID45565._ID491 = 1;
        level._ID794._ID45565._ID47485 = 1;
        level._ID794._ID46749 = _ID42313::_ID9251( "h1_hud_tutorial_blur", 225, 20 );
        level._ID794._ID47680 = _ID42313::_ID9251( "h1_hud_tutorial_border", 225, 1 );
        level._ID794._ID50051 = _ID42313::_ID9251( "h1_hud_tutorial_border", 225, 1 );
        level._ID794._ID46749._ID1339 = 20 + var_2;
        level._ID794._ID46749._ID983 = -3;
        level._ID794._ID46749._ID55 = 0.1;
        level._ID794._ID46749._ID491 = 1;
        level._ID794._ID46749._ID47485 = 0.9;
        level._ID794._ID46749.base_width = 225;
        level._ID794._ID46749.base_height = 20;
        level._ID794._ID46749.pulse_width = 240;
        level._ID794._ID46749.pulse_height = 20;
        level._ID794._ID47680._ID1339 = 10 + var_2;
        level._ID794._ID47680._ID983 = -2;
        level._ID794._ID47680._ID55 = 0.02;
        level._ID794._ID47680._ID491 = 1;
        level._ID794._ID47680._ID47485 = 0.05;
        level._ID794._ID47680.base_width = 225;
        level._ID794._ID47680.base_height = 1;
        level._ID794._ID47680.pulse_width = 240;
        level._ID794._ID47680.pulse_height = 1;
        level._ID794._ID50051._ID1339 = 30 + var_2;
        level._ID794._ID50051._ID983 = -2;
        level._ID794._ID50051._ID55 = 0.02;
        level._ID794._ID50051._ID491 = 1;
        level._ID794._ID50051._ID47485 = 0.05;
        level._ID794._ID50051.base_width = 225;
        level._ID794._ID50051.base_height = 1;
        level._ID794._ID50051.pulse_width = 240;
        level._ID794._ID50051.pulse_height = 1;
        level._ID794._ID46632 = level._ID794._ID45565;
        level._ID794._ID46632._ID50145 = 38;
        level._ID794._ID46632._ID47055 = 38;
        level._ID794._ID46632._ID48129 = 38;
        level._ID794._ID46632._ID43935 = 38;
        level._ID794._ID46632._ID49279 = 0.75;
        level._ID794._ID46632._ID47040 = 1;
        level._ID794._ID46632._ID50686 = 0.3;
        level._ID794._ID46632._ID4876 = var_7;
        level._ID794._ID46632.pulsefontscale = var_7 * 1.1;
        level._ID794._ID52289[0] = level._ID794._ID46632;
        level._ID794._ID52289[1] = level._ID794._ID46749;
        level._ID794._ID52289[2] = level._ID794._ID47680;
        level._ID794._ID52289[3] = level._ID794._ID50051;
    }

    foreach ( var_15 in level._ID794._ID52289 )
    {
        var_15._ID44 = "center";
        var_15._ID45 = "middle";
        var_15._ID499 = "center";
        var_15._ID1284 = "middle";
        var_15._ID408 = 1;
        var_15._ID493 = 1;

        if ( isdefined( var_3 ) && var_3 )
            var_15._ID55 = var_15._ID47485;
    }
}

_ID49850()
{
    level endon( "clear_quick_hint" );
    level._ID794._ID44435 = level._ID794._ID46632._ID49279;
    level._ID794._ID46174 = level._ID794._ID46632._ID47040;
    level._ID794._ID46632._ID55 = 0;
    level._ID794._ID45565._ID55 = 0;
    var_0 = 1;
    _ID46429( var_0 );
    thread _ID44883();
}

_ID46429( var_0 )
{
    level endon( "clear_quick_hint" );

    if ( !level._ID794 _ID42237::_ID20583() )
        return;

    if ( !isdefined( level._ID794._ID45565 ) )
        return;

    var_1 = int( 30 * level._ID794._ID43008 );
    var_2 = int( 36 * level._ID794._ID43008 );
    var_3 = level._ID794._ID45565._ID45579 + 0.3;
    var_4 = level._ID794._ID45565._ID45579;
    var_5 = level._ID794._ID47579;
    var_6 = level._ID794._ID45565;
    var_6._ID55 = 0.4;

    if ( level._ID794._ID45565._ID50585 )
        var_7 = 0.1;
    else
        var_7 = 0.2;

    var_5 = _ID42313::_ID9251( "h2_prompt_anticipation", var_1, var_1 );
    var_5._ID196 = ( 1, 1, 1 );
    var_5._ID1331 = level._ID794._ID46632._ID1331;
    var_5._ID1339 = level._ID794._ID46632._ID1339;
    var_5._ID55 = 0.4;
    var_5._ID983 = -2;
    var_5._ID44 = "center";
    var_5._ID45 = "middle";
    var_5._ID499 = "center";
    var_5._ID1284 = "middle";
    var_5._ID408 = 1;
    var_5._ID493 = 1;
    var_5._ID491 = 1;
    level._ID794._ID47579 = var_5;
    level._ID794._ID52289[level._ID794._ID52289.size] = var_5;

    if ( !isdefined( var_0 ) )
        thread _ID48295();

    var_6 changefontscaleovertime( var_7 );
    var_6._ID393 = var_3;
    var_6 fadeovertime( var_7 );
    var_6._ID55 = 1;

    if ( !level._ID794._ID45565._ID50585 )
    {
        var_5 fadeovertime( var_7 );
        var_5._ID55 = 0.75;
        var_5 scaleovertime( var_7, var_2, var_2 );
    }
    else
        var_5._ID55 = 0;

    wait(var_7);
    var_6 changefontscaleovertime( 0.15 );
    var_6._ID393 = var_4;
    var_5 scaleovertime( 0.15, var_1, var_1 );
    wait 0.15;
}

_ID48295()
{
    level endon( "clear_quick_hint" );
    level endon( "fail_quick_hint" );

    if ( !isdefined( level._ID794._ID46632 ) )
        return;

    var_0 = level._ID794._ID46632;
    var_0._ID196 = ( 1, 1, 1 );
    var_1 = 0.5;
    var_2 = int( 60 * level._ID794._ID43008 );
    var_3 = int( 60 * level._ID794._ID43008 );
    var_4 = int( 30 * level._ID794._ID43008 );
    var_5 = int( 30 * level._ID794._ID43008 );
    var_6 = 0.75;
    var_7 = 0;
    var_0 scaleovertime( 0.05, var_4, var_4 );
    wait 0.05;
    var_0._ID55 = var_6;
    var_0 scaleovertime( var_1, var_2, var_3 );
    wait 0.05;
    var_0 fadeovertime( var_1 );
    var_0._ID55 = var_7;
    wait(var_1);
    var_0 scaleovertime( 0.05, var_4, var_5 );
    wait 0.05;
}

_ID44883()
{
    level endon( "clear_quick_hint" );
    level endon( "fail_quick_hint" );

    if ( !isdefined( level._ID794._ID46632 ) )
        return;

    var_0 = 0;

    if ( isdefined( level._ID794._ID46632._ID36185 ) )
        var_0 = 1;

    level._ID794._ID46632._ID36185 = "idle";

    if ( var_0 )
        level _ID41130( "other_anim_complete", 1 );

    var_1 = level._ID794._ID46632;
    var_1._ID196 = ( 1, 1, 1 );
    var_2 = 0.5;
    var_3 = int( 60 * level._ID794._ID43008 );
    var_4 = int( 60 * level._ID794._ID43008 );
    var_5 = int( 30 * level._ID794._ID43008 );
    var_6 = int( 30 * level._ID794._ID43008 );
    var_7 = 0.75;
    var_8 = 0;
    var_1 scaleovertime( 0.05, var_5, var_5 );
    wait 0.05;

    for (;;)
    {
        var_1._ID55 = var_7;
        var_1 scaleovertime( var_2, var_3, var_4 );
        wait 0.05;
        var_1 fadeovertime( var_2 );
        var_1._ID55 = var_8;
        wait(var_2);
        var_1 scaleovertime( 0.05, var_5, var_6 );

        if ( isdefined( level._ID794.quickhintwantedanim ) )
        {
            level notify( "other_anim_complete" );
            break;
        }

        wait 0.05;
    }
}

quick_hint_mash_idle_anim_kbm()
{
    level endon( "clear_quick_hint" );
    level endon( "fail_quick_hint" );

    if ( !isdefined( level._ID794._ID46632 ) )
        return;

    var_0 = 0;

    if ( isdefined( level._ID794._ID46632._ID36185 ) )
        var_0 = 1;

    level._ID794._ID46632._ID36185 = "idle";

    if ( var_0 )
        level _ID41130( "other_anim_complete", 1 );

    var_1 = level._ID794._ID46632;
    var_2 = level._ID794._ID46632._ID50686;
    var_1._ID55 = var_1._ID49279;

    for (;;)
    {
        var_1 fadeovertime( var_2 );
        var_1._ID55 = var_1._ID47040;
        wait(var_2);
        var_1 fadeovertime( var_2 );
        var_1._ID55 = var_1._ID49279;

        if ( isdefined( level._ID794.quickhintwantedanim ) )
        {
            level notify( "other_anim_complete" );
            break;
        }

        wait(var_2);
    }
}

_ID47586()
{
    return level._ID794._ID46632._ID36185;
}

_ID54202()
{
    level endon( "clear_quick_hint" );
    level endon( "fail_quick_hint" );

    if ( !isdefined( level._ID794._ID46632 ) || !isdefined( level._ID794._ID45565 ) )
        return;

    var_0 = 0;

    if ( isdefined( level._ID794._ID46632._ID36185 ) )
        var_0 = 1;

    level._ID794._ID46632._ID36185 = "active";

    if ( var_0 )
        level _ID41130( "other_anim_complete", 1 );

    var_1 = 0.3;
    var_2 = level._ID794._ID45565._ID45579 - 0.3;
    var_3 = level._ID794._ID45565._ID45579;
    var_4 = int( 30 * level._ID794._ID43008 );
    var_5 = int( 30 * level._ID794._ID43008 );
    var_6 = int( 22 * level._ID794._ID43008 );
    var_7 = int( 22 * level._ID794._ID43008 );
    var_8 = 1;
    var_9 = 0.5;
    var_10 = 1;
    var_11 = 0.5;
    var_12 = level._ID794._ID45565;
    var_13 = level._ID794._ID47579;
    var_13._ID1331 = var_13._ID1331 - 0.15;
    var_13._ID1339 = var_13._ID1339 - 0.25;

    for (;;)
    {
        var_12 changefontscaleovertime( var_1 * 0.5 );
        var_12._ID393 = var_2;
        var_12 fadeovertime( var_1 * 0.5 );
        var_12._ID55 = var_9;
        var_13 scaleovertime( var_1 * 0.5, var_6, var_7 );
        var_13 fadeovertime( var_1 * 0.5 );
        var_13._ID55 = var_11;
        wait(var_1 * 0.5);
        var_12 changefontscaleovertime( var_1 * 0.5 );
        var_12._ID393 = var_3;
        var_12 fadeovertime( var_1 * 0.5 );
        var_12._ID55 = var_8;
        var_13 scaleovertime( var_1 * 0.5, var_4, var_5 );
        var_13 fadeovertime( var_1 * 0.5 );
        var_13._ID55 = var_10;

        if ( isdefined( level._ID794.quickhintwantedanim ) )
        {
            var_13._ID1331 = var_13._ID1331 + 0.15;
            var_13._ID1339 = var_13._ID1339 + 0.25;
            level notify( "other_anim_complete" );
            break;
        }

        wait(var_1 * 0.5);
    }
}

quick_hint_mash_active_anim_kbm()
{
    level endon( "clear_quick_hint" );
    level endon( "fail_quick_hint" );

    if ( !isdefined( level._ID794._ID46632 ) || !isdefined( level._ID794._ID45565 ) )
        return;

    var_0 = 0;

    if ( isdefined( level._ID794._ID46632._ID36185 ) )
        var_0 = 1;

    level._ID794._ID46632._ID36185 = "active";

    if ( var_0 )
        level _ID41130( "other_anim_complete", 1 );

    for (;;)
    {
        foreach ( var_2 in level._ID794._ID52289 )
        {
            if ( isdefined( var_2.pulse_width ) && isdefined( var_2.pulse_height ) )
                var_2 scaleovertime( 0.1, var_2.pulse_width, var_2.pulse_height );

            if ( isdefined( var_2.pulsefontscale ) )
            {
                var_2 changefontscaleovertime( 0.1 );
                var_2._ID393 = var_2.pulsefontscale;
            }
        }

        wait 0.15;

        foreach ( var_2 in level._ID794._ID52289 )
        {
            if ( isdefined( var_2.base_width ) && isdefined( var_2.base_height ) )
                var_2 scaleovertime( 0.1, var_2.base_width, var_2.base_height );

            if ( isdefined( var_2._ID4876 ) )
            {
                var_2 changefontscaleovertime( 0.1 );
                var_2._ID393 = var_2._ID4876;
            }
        }

        if ( isdefined( level._ID794.quickhintwantedanim ) )
        {
            level notify( "other_anim_complete" );
            break;
        }

        wait 0.15;
    }
}

_ID41130( var_0, var_1 )
{
    self endon( var_0 );
    wait(var_1);
}

_ID47734( var_0, var_1 )
{
    level endon( "clear_quick_hint" );
    level notify( "success_quick_hint" );

    if ( isdefined( var_0 ) || isdefined( var_1 ) )
        _ID42237::_ID41068( var_0, var_1 );

    if ( !level._ID794 _ID42237::_ID20583() )
    {
        _ID47800( "hide", 0.2 );
        wait 0.2;
        _ID46683();
        return;
    }

    var_2 = 0;

    if ( isdefined( level._ID794._ID46632._ID36185 ) )
        var_2 = 1;

    level._ID794._ID46632._ID36185 = "success";

    if ( var_2 )
        level _ID41130( "other_anim_complete", 1 );

    var_3 = 0.2;
    var_4 = int( 60 * level._ID794._ID43008 );
    var_5 = int( 60 * level._ID794._ID43008 );
    var_6 = int( 30 * level._ID794._ID43008 );
    var_7 = int( 30 * level._ID794._ID43008 );
    var_8 = 0.3 * level._ID794._ID43008;
    var_9 = 0.5;
    var_10 = 0.15;

    if ( !isdefined( level._ID794._ID44541 ) )
    {
        var_11 = _ID42313::_ID9251( "h2_prompt_circle_full", var_6, var_7 );
        var_11._ID196 = ( 0, 1, 0 );
        var_11._ID1331 = level._ID794._ID46632._ID1331 - 0.1;
        var_11._ID1339 = level._ID794._ID46632._ID1339 - 0.1;
        var_11._ID983 = 2;
        var_11._ID44 = "center";
        var_11._ID45 = "middle";
        var_11._ID499 = "center";
        var_11._ID1284 = "middle";
        var_11._ID408 = 1;
        level._ID794._ID44541 = var_11;
        level._ID794._ID52289[level._ID794._ID52289.size] = level._ID794._ID44541;
    }

    level._ID794._ID47579._ID1331 = level._ID794._ID47579._ID1331 - 0.1;
    level._ID794._ID47579._ID1339 = level._ID794._ID47579._ID1339 - 0.1;
    level._ID794._ID44541._ID55 = 0.15;
    level._ID794._ID47579._ID196 = ( 0, 1, 0 );
    level._ID794._ID47579._ID55 = var_9;
    level._ID794._ID45565 changefontscaleovertime( var_3 );
    level._ID794._ID45565._ID393 = var_8;
    level._ID794._ID45565 fadeovertime( var_3 );
    level._ID794._ID45565._ID55 = 0;
    level._ID794._ID47579 scaleovertime( var_3, var_4, var_5 );
    level._ID794._ID47579 fadeovertime( var_3 );
    level._ID794._ID47579._ID55 = 0;
    level._ID794._ID44541 scaleovertime( var_3, var_4, var_5 );
    level._ID794._ID44541 fadeovertime( var_3 );
    level._ID794._ID44541._ID55 = 0;
    wait(var_3);
    level._ID794._ID44541 scaleovertime( 0.05, var_6, var_7 );
    wait 0.05;
    _ID46683();
}

_ID52184( var_0, var_1 )
{
    level endon( "clear_quick_hint" );
    level notify( "fail_quick_hint" );

    if ( isdefined( var_0 ) || isdefined( var_1 ) )
        level._ID794 _ID42237::_ID41068( var_0, var_1 );

    if ( !level._ID794 _ID42237::_ID20583() )
    {
        _ID47800( "hide", 0.2 );
        wait 0.2;
        _ID46683();
        return;
    }

    level._ID794._ID46632._ID36185 = "fail";
    var_2 = 0.25;
    var_3 = int( 20 * level._ID794._ID43008 );
    var_4 = int( 20 * level._ID794._ID43008 );
    var_5 = int( 30 * level._ID794._ID43008 );
    var_6 = int( 30 * level._ID794._ID43008 );
    var_7 = 0.5 * level._ID794._ID43008;
    var_8 = 1;
    var_9 = 0.15;

    if ( !isdefined( level._ID794._ID44541 ) )
    {
        var_10 = _ID42313::_ID9251( "h2_prompt_circle_full", var_5, var_6 );
        var_10._ID196 = ( 1, 0, 0 );
        var_10._ID1331 = level._ID794._ID46632._ID1331 - 0.2;
        var_10._ID1339 = level._ID794._ID46632._ID1339 - 0.4;
        var_10._ID983 = 2;
        var_10._ID44 = "center";
        var_10._ID45 = "middle";
        var_10._ID499 = "center";
        var_10._ID1284 = "middle";
        var_10._ID408 = 1;
        var_10._ID493 = 1;
        level._ID794._ID44541 = var_10;
        level._ID794._ID52289[level._ID794._ID52289.size] = level._ID794._ID44541;
    }

    level._ID794._ID46632._ID55 = 0;
    level._ID794._ID47579._ID1331 = level._ID794._ID47579._ID1331 - 0.2;
    level._ID794._ID47579._ID1339 = level._ID794._ID47579._ID1339 - 0.4;
    level._ID794._ID44541._ID55 = 0.15;
    level._ID794._ID47579._ID196 = ( 1, 0, 0 );
    level._ID794._ID47579._ID55 = var_8;
    level._ID794._ID45565 changefontscaleovertime( var_2 );
    level._ID794._ID45565._ID393 = var_7;
    level._ID794._ID45565 fadeovertime( var_2 );
    level._ID794._ID45565._ID55 = 0;
    level._ID794._ID44541 scaleovertime( var_2, var_3, var_4 );
    level._ID794._ID47579 scaleovertime( var_2, var_3, var_4 );
    level._ID794._ID47579 fadeovertime( var_2 );
    level._ID794._ID47579._ID55 = var_9;
    wait(var_2);
    level._ID794._ID47579 fadeovertime( 0.05 );
    level._ID794._ID47579._ID55 = 0;
    level._ID794._ID44541 fadeovertime( 0.05 );
    level._ID794._ID44541._ID55 = 0;
    level._ID794._ID44541 scaleovertime( 0.05, var_5, var_6 );
    wait 0.05;
    _ID46683();
}

_ID43686( var_0 )
{
    if ( !isdefined( level._ID794._ID46632 ) )
        return;

    level endon( "clear_quick_hint" );

    if ( !isdefined( var_0 ) )
        var_0 = 3;

    level._ID794._ID44435 = level._ID794._ID46632._ID49279;
    level._ID794._ID46174 = level._ID794._ID46632._ID47040;
    var_0 -= 0.05;

    foreach ( var_2 in level._ID794._ID52289 )
        var_2._ID55 = var_2._ID47485;

    thread _ID50642( var_0 );

    while ( var_0 >= level._ID794._ID46632._ID50686 )
    {
        level waittill( "quick_hint_anim_complete" );
        level notify( "quick_hint_anim_resume" );
    }
}

_ID50642( var_0 )
{
    level endon( "clear_quick_hint" );
    level endon( "success_quick_hint" );
    level endon( "fail_quick_hint" );

    if ( !isdefined( level._ID794._ID46632 ) )
        return;

    var_1 = level._ID794._ID46632;
    var_2 = level._ID794._ID46632._ID50686;
    var_3 = var_1._ID50145;
    var_4 = var_1._ID47055;
    var_5 = var_1._ID48129;
    var_6 = var_1._ID43935;
    var_7 = level._ID794._ID46632._ID47040;
    var_8 = 0;
    var_9 = 1;

    for (;;)
    {
        var_1._ID55 = var_7;
        var_1 scaleovertime( var_2, var_3, var_4 );
        wait 0.05;
        var_0 -= 0.05;
        var_1 fadeovertime( var_2 * 0.5 );
        var_1._ID55 = level._ID794._ID46632._ID49279;
        wait(var_2);
        var_0 -= var_2;

        if ( level._ID794 _ID42237::_ID20583() && var_8 == var_9 )
        {
            var_1._ID55 = 0;
            break;
        }

        var_1 scaleovertime( 0.05, var_5, var_6 );
        wait 0.05;
        var_0 -= 0.05;
        level notify( "quick_hint_anim_complete" );
        level waittill( "quick_hint_anim_resume" );
        var_8++;
    }
}

_ID48494( var_0, var_1 )
{
    level endon( "clear_quick_hint" );
    _ID42237::_ID41068( var_0, var_1 );
    _ID46683();
}

_ID46683()
{
    if ( !isdefined( level._ID794._ID52289 ) || level._ID794._ID52289.size == 0 )
        return;

    foreach ( var_1 in level._ID794._ID52289 )
        var_1 _ID42313::_ID10476();

    level._ID794._ID46632._ID36185 = undefined;
    level._ID794._ID52289 = [];
    level notify( "clear_quick_hint" );
}

_ID47721()
{
    if ( !isdefined( level._ID794._ID45565 ) )
        return 0;

    return level._ID794._ID45565._ID55 > 0;
}

_ID47800( var_0, var_1 )
{
    if ( !isdefined( level._ID794._ID52289 ) || level._ID794._ID52289.size == 0 )
        return;

    if ( var_0 == "hide" )
    {
        level._ID794._ID46174 = 0;
        level._ID794._ID44435 = 0;

        foreach ( var_3 in level._ID794._ID52289 )
        {
            if ( isdefined( var_1 ) )
                var_3 fadeovertime( var_1 );

            var_3._ID55 = level._ID794._ID46174;
        }
    }
    else if ( var_0 == "show" )
    {
        level._ID794._ID44435 = level._ID794._ID46632._ID49279;
        level._ID794._ID46174 = level._ID794._ID46632._ID47040;

        if ( level._ID794 _ID42237::_ID20583() )
        {
            if ( isdefined( var_1 ) )
                level._ID794._ID45565 fadeovertime( var_1 );

            level._ID794._ID45565._ID55 = level._ID794._ID45565._ID47485;
        }
        else
        {
            foreach ( var_3 in level._ID794._ID52289 )
            {
                if ( isdefined( var_1 ) )
                    var_3 fadeovertime( var_1 );

                var_3._ID55 = var_3._ID47485;
            }
        }
    }
    else
    {

    }
}

_ID52183( var_0, var_1 )
{
    if ( var_0 == "default" )
        return var_0;

    var_2 = [ ( 30, 0, 0 ), ( -30, 0, 0 ), ( 0, 30, 0 ), ( 0, -30, 0 ) ];

    foreach ( var_4 in var_2 )
    {
        var_5 = bullettrace( var_1 + ( 0, 0, 30 ) + var_4, var_1 - ( 0, 0, 100 ) + var_4, 0, self );

        if ( var_5["surfacetype"] != var_0 )
            return "default";
    }

    return var_0;
}

_ID13198( var_0, var_1, var_2 )
{
    return ( _ID2968( var_0[0], var_1[0], var_2 ), _ID2968( var_0[1], var_1[1], var_2 ), _ID2968( var_0[2], var_1[2], var_2 ) );
}

_ID2968( var_0, var_1, var_2 )
{
    return angleclamp( var_0 + angleclamp180( var_1 - var_0 ) * var_2 );
}

_ID53651( var_0, var_1, var_2 )
{
    if ( !isdefined( level._ID49529 ) )
        level._ID49529 = [];

    var_3 = spawnstruct();

    if ( isdefined( var_1 ) )
        var_3._ID49814 = var_1;

    if ( isdefined( var_2 ) )
        var_3._ID49523 = var_2;

    level._ID49529[var_0] = var_3;
}

_ID52583( var_0, var_1 )
{
    if ( isarray( var_1 ) )
    {
        foreach ( var_3 in var_1 )
            _ID47658( var_0, var_3 );
    }
    else
        _ID47658( var_0, var_1 );
}

_ID47658( var_0, var_1 )
{
    var_2 = level._ID49529[var_0];

    if ( !isdefined( var_2._ID49512 ) )
        var_2._ID49512 = [];

    var_3 = spawnstruct();
    var_3._ID1244 = "info_volume";
    var_3._ID52337 = var_1;
    var_2._ID49512[var_2._ID49512.size] = var_3;
}

_ID45871( var_0, var_1 )
{
    if ( !isdefined( var_0 ) && !isdefined( var_1 ) )
    {
        level._ID43431 = undefined;
        return;
    }

    if ( !isdefined( level._ID43431 ) )
        level._ID43431 = spawnstruct();

    level._ID43431._ID49814 = var_0;
    level._ID43431._ID49523 = var_1;
}

_ID53914( var_0, var_1 )
{
    foreach ( var_3 in var_0 )
    {
        if ( !isalive( var_3 ) )
            continue;

        var_3._ID513 = var_1;
        var_3._ID7._ID11043 = var_1;
        var_3._ID52 = !var_1;
        var_3 _meth_8579( var_1 );
    }
}

_ID50742( var_0 )
{
    if ( !isdefined( level._ID44840 ) )
        level._ID44840 = getdvar( "r_dof_physical_adsFocusSpeed" );

    if ( !isdefined( var_0 ) )
    {
        var_0 = level._ID44840;
        level._ID44840 = undefined;
    }

    setsaveddvar( "r_dof_physical_adsFocusSpeed", var_0 );
}

_ID53909( var_0 )
{
    var_1 = undefined;

    if ( isdefined( level._ID49530 ) )
        var_1 = level._ID49530;
    else if ( isdefined( level._ID52271 ) )
        var_1 = level._ID52271;

    if ( isdefined( var_0 ) )
    {
        if ( isdefined( var_1 ) )
            var_1 += ( "_" + var_0 );
        else
            var_1 = var_0;
    }

    if ( isdefined( var_1 ) )
        self laseron( var_1 );
    else
        self laseron();
}

_ID49346( var_0, var_1 )
{
    if ( isdefined( var_1 ) && var_1 )
        level._ID49530 = var_0;
    else
        level._ID52271 = var_0;
}

_ID43848( var_0, var_1, var_2 )
{
    level._ID794 endon( "death" );

    if ( isdefined( var_1 ) )
    {
        foreach ( var_4 in var_1 )
            self endon( var_4 );
    }

    for (;;)
    {
        var_6 = self._ID740 - level._ID794 geteye();
        var_7 = anglestoforward( level._ID794 _meth_846a() );
        var_8 = vectornormalize( var_6 );
        var_9 = vectordot( var_7, var_8 );

        if ( var_9 > var_0 && ( !isdefined( var_2 ) || [[ var_2 ]]() ) )
            self makeusable();
        else
            self makeunusable();

        wait 0.05;
    }
}

_ID48837()
{
    level._ID794._ID52561 = 1;
}

_ID45216( var_0 )
{
    level._ID794._ID52561 = 0;
    _ID42237::_ID10187( var_0, ::_ID48837 );
    return !level._ID794._ID46030;
}

_ID46640()
{
    var_0 = getdvarint( "cg_gunDownAnimDelayTimeForFriendlyFire" );
    setsaveddvar( "cg_gunDownAnimDelayTimeForFriendlyFire", -1 );
    level._ID46006 = var_0;
}

_ID50178()
{
    setsaveddvar( "cg_gunDownAnimDelayTimeForFriendlyFire", level._ID46006 );
    level._ID46006 = undefined;
}

_ID53528()
{
    var_0 = getdvarint( "cg_gunDownAnimDelayTimeForFriendlyFire" );
    setsaveddvar( "cg_gunDownAnimDelayTimeForWorldGeo", -1 );
    level._ID43256 = var_0;
}

_ID49454()
{
    setsaveddvar( "cg_gunDownAnimDelayTimeForWorldGeo", level._ID43256 );
    level._ID43256 = undefined;
}

_ID33441()
{
    level._ID9245 = [];

    foreach ( var_1 in level._ID9242 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        if ( var_1._ID40005["type"] != "exploder" )
            continue;

        if ( !isdefined( var_1._ID40005["exploder"] ) )
            continue;

        var_2 = var_1._ID40005["exploder"];

        if ( !isdefined( level._ID9245[var_2] ) )
            level._ID9245[var_2] = [];

        level._ID9245[var_2][level._ID9245[var_2].size] = var_1;
    }

    level._ID9240 = [];

    foreach ( var_1 in level._ID9242 )
    {
        if ( !isdefined( var_1 ) )
            continue;

        if ( !isdefined( var_1._ID40005["fxid"] ) )
            continue;

        var_5 = var_1._ID40005["fxid"];

        if ( !isdefined( level._ID9240[var_5] ) )
            level._ID9240[var_5] = [];

        level._ID9240[var_5][level._ID9240[var_5].size] = var_1;
    }

    level._ID15259 = 0;
}
