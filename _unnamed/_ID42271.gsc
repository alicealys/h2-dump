// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID19661( var_0 )
{
    _ID42237::_ID14400( "player_looks_away_from_spawner" );
    _ID42237::_ID14400( "friendly_spawner_locked" );
    level._ID3363 = [];
    level._ID3363["axis"] = [];
    level._ID3363["allies"] = [];
    level._ID3364 = [];
    level._ID3364["axis"] = [];
    level._ID3364["allies"] = [];
    var_1 = [];
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_multiple", "code_classname" ) );
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_radius", "code_classname" ) );
    var_1 = _ID42237::_ID3296( var_1, getentarray( "trigger_once", "code_classname" ) );
    level._ID8261 = [];
    level._ID8261["allies"] = "allies";
    level._ID8261["axis"] = "axis";
    level._ID8261["team3"] = "axis";
    level._ID8261["neutral"] = "neutral";
    var_2 = getentarray( "info_volume", "code_classname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( isdefined( var_4._ID31096 ) )
            var_4 _ID1917( var_4._ID31096, "allies" );

        if ( isdefined( var_4._ID31097 ) )
            var_4 _ID1917( var_4._ID31097, "axis" );
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_5 = var_2[var_3];

        if ( isdefined( var_5._ID31096 ) )
            var_5 _ID1984( var_5._ID31096, "allies" );

        if ( isdefined( var_5._ID31097 ) )
            var_5 _ID1984( var_5._ID31097, "axis" );
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_6 = var_1[var_3];

        if ( isdefined( var_6._ID31096 ) )
            var_6 thread _ID38831( var_6._ID31096, "allies" );

        if ( isdefined( var_6._ID31097 ) )
            var_6 thread _ID38831( var_6._ID31097, "axis" );
    }

    level._ID8256 = [];
    _ID1867( "BAD NODE" );
    _ID1867( "Cover Stand" );
    _ID1867( "Cover Crouch" );
    _ID1867( "Cover Prone" );
    _ID1867( "Cover Crouch Window" );
    _ID1867( "Cover Right" );
    _ID1867( "Cover Left" );
    _ID1867( "Cover Wide Left" );
    _ID1867( "Cover Wide Right" );
    _ID1867( "Conceal Stand" );
    _ID1867( "Conceal Crouch" );
    _ID1867( "Conceal Prone" );
    _ID1867( "Reacquire" );
    _ID1867( "Balcony" );
    _ID1867( "Scripted" );
    _ID1867( "Begin" );
    _ID1867( "End" );
    _ID1867( "Turret" );
    _ID1927( "Ambush" );
    _ID1927( "Guard" );
    _ID1927( "Path" );
    _ID1927( "Exposed" );
    level._ID8272 = [];
    level._ID8272[level._ID8272.size] = "r";
    level._ID8272[level._ID8272.size] = "b";
    level._ID8272[level._ID8272.size] = "y";
    level._ID8272[level._ID8272.size] = "c";
    level._ID8272[level._ID8272.size] = "g";
    level._ID8272[level._ID8272.size] = "p";
    level._ID8272[level._ID8272.size] = "o";
    level._ID8272[level._ID8272.size] = "w";
    level._ID8272[level._ID8272.size] = "a";
    level._ID8272[level._ID8272.size] = "l";
    level._ID8267["red"] = "r";
    level._ID8267["r"] = "r";
    level._ID8267["blue"] = "b";
    level._ID8267["b"] = "b";
    level._ID8267["yellow"] = "y";
    level._ID8267["y"] = "y";
    level._ID8267["cyan"] = "c";
    level._ID8267["c"] = "c";
    level._ID8267["green"] = "g";
    level._ID8267["g"] = "g";
    level._ID8267["purple"] = "p";
    level._ID8267["p"] = "p";
    level._ID8267["orange"] = "o";
    level._ID8267["o"] = "o";
    level._ID8267["white"] = "w";
    level._ID8267["w"] = "w";
    level._ID8267["aqua"] = "a";
    level._ID8267["a"] = "a";
    level._ID8267["lime"] = "l";
    level._ID8267["l"] = "l";
    level._ID9488 = [];
    level._ID9488["allies"] = [];
    level._ID9488["axis"] = [];
    level._ID21901 = [];
    level._ID21901["allies"] = [];
    level._ID21901["axis"] = [];

    for ( var_3 = 0; var_3 < level._ID8272.size; var_3++ )
    {
        var_7 = level._ID8272[var_3];
        level._ID3365["team3"][var_7] = [];
        level._ID3365["allies"][var_7] = [];
        level._ID3365["axis"][var_7] = [];
        level._ID9488["allies"][var_7] = undefined;
        level._ID9488["axis"][var_7] = undefined;
    }

    thread _ID27324();
    level._ID29816 = [];
    var_8 = getspawnerteamarray( "allies" );
    level._ID43367 = [];

    for ( var_3 = 0; var_3 < var_8.size; var_3++ )
    {
        var_9 = var_8[var_3];
        level._ID43367[var_9.classname] = var_9;
    }

    if ( getdvar( "shownodecolors" ) == "1" )
        thread _ID50202();
}

_ID50468()
{
    self._ID31209 = level._ID8267[self._ID31209];
}

_ID49907( var_0 )
{
    if ( isdefined( self._ID31209 ) )
    {
        _ID50468();
        self._ID9487 = var_0;
        var_1 = self._ID31209;
        level._ID3365[_ID16018()][var_1] = _ID42237::_ID3293( level._ID3365[_ID16018()][var_1], self );
        thread _ID17023();
        return;
    }
}

_ID17023()
{
    if ( !isdefined( self._ID9487 ) )
        return;

    var_0 = level._ID3363[_ID16018()][self._ID9487];
    _ID22135();

    if ( !isalive( self ) )
        return;

    if ( !_ID42407::_ID18155() )
        return;

    if ( !isdefined( var_0 ) )
    {
        var_1 = level._ID3364[_ID16018()][self._ID9487];
        _ID31873( var_1, self._ID9487 );
        return;
    }

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( isalive( var_3._ID8262 ) && var_3._ID8262 != level.player )
            continue;

        thread _ID47029( var_3 );
        thread _ID47773( var_3 );
        return;
    }

    _ID51943();
}

_ID51943()
{

}

_ID46014()
{
    var_0 = [];
    var_0[var_0.size] = "r";
    var_0[var_0.size] = "b";
    var_0[var_0.size] = "y";
    var_0[var_0.size] = "c";
    var_0[var_0.size] = "g";
    var_0[var_0.size] = "p";
    var_0[var_0.size] = "o";
    var_0[var_0.size] = "w";
    var_0[var_0.size] = "a";
    var_0[var_0.size] = "l";
    return var_0;
}

_ID48121( var_0 )
{
    var_1 = [];

    foreach ( var_3 in var_0 )
        var_1[var_3] = 1;

    var_5 = [];

    foreach ( var_8, var_7 in var_1 )
        var_5[var_5.size] = var_8;

    return var_5;
}

_ID44106( var_0, var_1 )
{
    var_2 = strtok( var_0, " " );
    var_2 = _ID48121( var_2 );
    var_3 = [];
    var_4 = [];
    var_5 = [];
    var_6 = _ID46014();

    for ( var_7 = 0; var_7 < var_2.size; var_7++ )
    {
        var_8 = var_2[var_7];
        var_9 = undefined;

        for ( var_10 = 0; var_10 < var_6.size; var_10++ )
        {
            var_11 = var_6[var_10];

            if ( issubstr( var_8, var_11 ) )
            {
                var_9 = var_11;
                break;
            }
        }

        if ( !_ID8268( var_1, var_8 ) )
            continue;

        var_4[var_9] = var_8;
        var_3[var_3.size] = var_9;
        var_5[var_5.size] = var_8;
    }

    var_2 = var_5;
    var_12 = [];
    var_12["colorCodes"] = var_2;
    var_12["colorCodesByColorIndex"] = var_4;
    var_12["colors"] = var_3;
    return var_12;
}

_ID8268( var_0, var_1 )
{
    if ( isdefined( level._ID3363[var_0][var_1] ) )
        return 1;

    return isdefined( level._ID3364[var_0][var_1] );
}

_ID38831( var_0, var_1 )
{
    var_2 = _ID44106( var_0, var_1 );
    var_3 = var_2["colorCodes"];
    var_4 = var_2["colorCodesByColorIndex"];
    var_5 = var_2["colors"];

    for (;;)
    {
        self waittill( "trigger" );

        if ( isdefined( self._ID54528 ) )
        {
            self._ID54528 = undefined;
            continue;
        }

        _ID46681( var_3, var_5, var_1, var_4 );
    }
}

_ID52298( var_0 )
{
    if ( var_0 == "allies" )
        thread _ID47506( self._ID31096, var_0 );
    else
        thread _ID47506( self._ID31097, var_0 );
}

_ID47506( var_0, var_1 )
{
    var_2 = _ID44106( var_0, var_1 );
    var_3 = var_2["colorCodes"];
    var_4 = var_2["colorCodesByColorIndex"];
    var_5 = var_2["colors"];
    _ID46681( var_3, var_5, var_1, var_4 );
}

_ID46681( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        if ( !isdefined( level._ID52374[var_2][var_0[var_4]] ) )
            continue;

        level._ID52374[var_2][var_0[var_4]] = _ID42237::_ID3332( level._ID52374[var_2][var_0[var_4]] );

        for ( var_5 = 0; var_5 < level._ID52374[var_2][var_0[var_4]].size; var_5++ )
            level._ID52374[var_2][var_0[var_4]][var_5]._ID9487 = var_0[var_4];
    }

    for ( var_4 = 0; var_4 < var_1.size; var_4++ )
    {
        var_6 = var_1[var_4];
        level._ID3365[var_2][var_6] = _ID42407::_ID3328( level._ID3365[var_2][var_6] );
        level._ID21901[var_2][var_6] = level._ID9488[var_2][var_6];
        level._ID9488[var_2][var_6] = var_3[var_6];
    }

    var_9 = [];

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        if ( _ID30691( var_2, var_1[var_4] ) )
            continue;

        var_10 = var_0[var_4];

        if ( !isdefined( level._ID44308[var_2][var_10] ) )
            continue;

        var_9[var_10] = _ID20931( var_10, var_1[var_4], var_2 );
    }

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_10 = var_0[var_4];

        if ( !isdefined( var_9[var_10] ) )
            continue;

        if ( _ID30691( var_2, var_1[var_4] ) )
            continue;

        if ( !isdefined( level._ID44308[var_2][var_10] ) )
            continue;

        _ID20928( var_10, var_1[var_4], var_2, var_9[var_10] );
    }
}

_ID30691( var_0, var_1 )
{
    if ( !isdefined( level._ID21901[var_0][var_1] ) )
        return 0;

    return level._ID21901[var_0][var_1] == level._ID9488[var_0][var_1];
}

_ID28650( var_0, var_1 )
{
    if ( issubstr( var_0._ID31096, var_1 ) )
        self._ID8859[self._ID8859.size] = var_0;
    else
        self._ID8858[self._ID8858.size] = var_0;
}

_ID28651( var_0, var_1 )
{
    if ( issubstr( var_0._ID31097, var_1 ) )
        self._ID8859[self._ID8859.size] = var_0;
    else
        self._ID8858[self._ID8858.size] = var_0;
}

_ID28649( var_0, var_1 )
{
    self._ID8858[self._ID8858.size] = var_0;
}

_ID28658( var_0, var_1 )
{
    self._ID26319[self._ID26319.size] = var_0;
}

_ID28607( var_0, var_1, var_2 )
{
    var_3 = level._ID3363[var_0][var_1];
    var_4 = spawnstruct();
    var_4._ID26319 = [];
    var_4._ID8858 = [];
    var_4._ID8859 = [];
    var_5 = isdefined( level._ID21901[var_0][var_2] );

    for ( var_6 = 0; var_6 < var_3.size; var_6++ )
    {
        var_7 = var_3[var_6];
        var_4 [[ level._ID8256[var_7.type][var_5][var_0] ]]( var_7, level._ID21901[var_0][var_2] );
    }

    var_4._ID8858 = _ID42237::_ID3320( var_4._ID8858 );
    var_3 = var_4._ID8858;
    var_8 = [];
    var_9 = [];
    var_3 = [];

    for ( var_10 = 0; var_10 < var_4._ID8858.size; var_10++ )
    {
        var_7 = var_4._ID8858[var_10];

        if ( isdefined( var_7._ID31099 ) )
        {
            var_8[var_8.size] = var_7;
            continue;
        }

        var_3[var_3.size] = var_7;
    }

    for ( var_6 = 0; var_6 < var_4._ID8859.size; var_6++ )
        var_3[var_3.size] = var_4._ID8859[var_6];

    for ( var_6 = 0; var_6 < var_4._ID26319.size; var_6++ )
    {
        var_7 = var_4._ID26319[var_6];

        if ( isdefined( var_7._ID31099 ) )
        {
            var_9[var_9.size] = var_7;
            continue;
        }

        var_3[var_3.size] = var_7;
    }

    for ( var_6 = 0; var_6 < var_8.size; var_6++ )
        var_3[var_3.size] = var_8[var_6];

    for ( var_6 = 0; var_6 < var_9.size; var_6++ )
        var_3[var_3.size] = var_9[var_6];

    level._ID3363[var_0][var_1] = var_3;
}

_ID48942( var_0, var_1, var_2 )
{
    return level._ID3363[var_0][var_1];
}

_ID15636( var_0, var_1 )
{
    return level._ID3364[var_0][var_1];
}

_ID20931( var_0, var_1, var_2 )
{
    level._ID44308[var_2][var_0] = _ID42407::_ID3328( level._ID44308[var_2][var_0] );
    var_3 = level._ID44308[var_2][var_0];
    var_3 = _ID42237::_ID3296( var_3, level._ID3365[var_2][var_1] );
    var_4 = [];

    for ( var_5 = 0; var_5 < var_3.size; var_5++ )
    {
        var_6 = var_3[var_5];

        if ( isdefined( var_6._ID9487 ) && var_6._ID9487 == var_0 )
            continue;

        var_4[var_4.size] = var_6;
    }

    var_3 = var_4;

    if ( !var_3.size )
        return;

    _ID42237::_ID3350( var_3, ::_ID22135 );
    return var_3;
}

_ID31873( var_0, var_1 )
{
    self notify( "stop_color_move" );
    self._ID9487 = var_1;

    if ( isdefined( var_0.target ) )
    {
        var_2 = getnode( var_0.target, "targetname" );

        if ( isdefined( var_2 ) )
            self setgoalnode( var_2 );
    }

    self.fixednode = 0;
    self setgoalvolumeauto( var_0 );
}

_ID20928( var_0, var_1, var_2, var_3 )
{
    if ( !var_3.size )
        return;

    var_4 = var_3;
    var_5 = [];

    if ( isdefined( level._ID3363[var_2][var_0] ) )
    {
        _ID28607( var_2, var_0, var_1 );
        var_5 = _ID48942( var_2, var_0, var_1 );
    }
    else
    {
        var_6 = _ID15636( var_2, var_0 );
        _ID42237::_ID3350( var_3, ::_ID31873, var_6, var_0 );
    }

    var_7 = _ID42407::_ID16247( "ai_color_squadAssignmentOverride", 0 );
    var_8 = var_7 > 0;

    if ( var_7 == 0 )
    {
        var_9 = var_3[0] _ID49826();

        foreach ( var_11 in var_3 )
        {
            var_12 = var_11 _ID49826();

            if ( var_12 )
                var_8 = 1;
        }

        if ( var_5.size > 0 )
        {
            var_14 = var_5[0] _ID49826();

            foreach ( var_16 in var_5 )
            {
                var_17 = var_16 _ID49826();

                if ( var_17 )
                    var_8 = 1;
            }
        }
    }

    var_19 = 0;
    var_20 = var_3.size;

    if ( var_8 )
    {
        var_19 = 1;
        var_21 = ( 0, 0, 0 );

        foreach ( var_16 in var_5 )
            var_21 += var_16.origin;

        var_21 /= var_5.size;
        var_24 = ( 0, 0, 0 );

        foreach ( var_11 in var_3 )
            var_24 += var_11.origin;

        var_24 /= var_3.size;
        var_3 = sortbydistance( var_3, var_21 );
        var_5 = sortbydistance( var_5, var_24 );
    }

    for ( var_27 = 0; var_27 < var_5.size; var_27++ )
    {
        var_16 = var_5[var_27];

        if ( isalive( var_16._ID8262 ) )
            continue;

        var_28 = undefined;
        var_29 = var_19;

        if ( var_8 )
        {
            var_28 = var_3[var_3.size - 1];
            var_29 = var_20 - var_19;
        }
        else
            var_28 = _ID42237::_ID16182( var_16.origin, var_3 );

        var_3 = _ID42237::_ID3321( var_3, var_28 );
        var_28 _ID37135( var_16, var_0, self, var_29 );
        var_19++;

        if ( !var_3.size )
            return;
    }
}

_ID37135( var_0, var_1, var_2, var_3 )
{
    self notify( "stop_color_move" );
    self._ID9487 = var_1;
    thread _ID28648( var_0, var_2, var_3 );
}

_ID44637( var_0 )
{
    if ( var_0 )
        self._ID31100 = 1;
    else
        self._ID31100 = undefined;
}

_ID52185( var_0, var_1 )
{
    if ( !isdefined( level._ID45965 ) )
        level._ID45965 = [];

    level._ID45965[var_0] = var_1;
    var_2 = getaiarray( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3]._ID31100 = var_1;
}

_ID52580()
{
    if ( !isdefined( level._ID45965 ) )
        return;

    if ( !isdefined( level._ID45965[self.team] ) )
        return;

    self._ID31100 = level._ID45965[self.team];
}

_ID49826()
{
    return isdefined( self._ID31100 ) && self._ID31100;
}

_ID27324()
{
    for (;;)
    {
        var_0 = undefined;

        if ( !isdefined( level.player.node ) )
        {
            wait 0.05;
            continue;
        }

        var_1 = level.player.node._ID8262;
        var_0 = level.player.node;
        var_0._ID8262 = level.player;

        for (;;)
        {
            if ( !isdefined( level.player.node ) )
                break;

            if ( level.player.node != var_0 )
                break;

            wait 0.05;
        }

        var_0._ID8262 = undefined;
        var_0 _ID45405();
    }
}

_ID45405()
{
    if ( isdefined( self._ID31096 ) )
        _ID54240( self._ID31096, "allies" );

    if ( isdefined( self._ID31097 ) )
        _ID54240( self._ID31097, "axis" );
}

_ID54240( var_0, var_1 )
{
    if ( isdefined( self._ID8262 ) )
        return;

    var_2 = strtok( var_0, " " );
    var_2 = _ID48121( var_2 );
    _ID42237::_ID3315( var_2, ::_ID47120, var_1 );
}

_ID47120( var_0, var_1 )
{
    var_2 = var_0[0];

    if ( !isdefined( level._ID9488[var_1][var_2] ) )
        return;

    if ( level._ID9488[var_1][var_2] != var_0 )
        return;

    var_3 = _ID42407::_ID15741( var_1, var_2 );

    if ( !var_3.size )
        return;

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];

        if ( var_5 _ID52030( var_0 ) )
            continue;

        var_5 _ID37135( self, var_0 );
        return;
    }
}

_ID52030( var_0 )
{
    if ( !isdefined( self._ID9487 ) )
        return 0;

    return self._ID9487 == var_0;
}

_ID47029( var_0 )
{
    self endon( "death" );
    var_1 = _ID24629();

    if ( var_1 )
    {
        self endon( "stop_color_move" );
        wait(var_1);
    }

    thread _ID2325( var_0 );
}

_ID2325( var_0 )
{
    self notify( "stop_going_to_node" );
    _ID51724( var_0 );
    var_1 = level._ID3364[_ID16018()][self._ID9487];

    if ( isdefined( self._ID31087 ) )
        thread _ID7053( var_0, var_1 );
}

_ID51724( var_0 )
{
    if ( isdefined( self._ID8274 ) )
        self thread [[ self._ID8274 ]]( var_0 );

    if ( isdefined( self._ID1399 ) )
    {
        thread _ID42259::_ID3108( self, self._ID1399 );
        self._ID1399 = undefined;
    }

    if ( isdefined( self._ID8279 ) )
        self thread [[ self._ID8279 ]]( var_0 );
    else
        self setgoalnode( var_0 );

    if ( _ID49098( var_0 ) )
        thread _ID44486( var_0 );
    else if ( var_0.radius > 0 )
        self.goalradius = var_0.radius;
    else if ( isdefined( self._ID3152 ) && self._ID3152 == "riotshield" && self.team == "allies" )
        self.goalradius = 64;

    var_1 = level._ID3364[_ID16018()][self._ID9487];

    if ( isdefined( var_1 ) )
        self setfixednodesafevolume( var_1 );
    else
        self clearfixednodesafevolume();

    if ( isdefined( var_0.fixednodesaferadius ) )
        self.fixednodesaferadius = var_0.fixednodesaferadius;
    else if ( isdefined( level._ID14382 ) )
        self.fixednodesaferadius = level._ID14382;
    else
        self.fixednodesaferadius = 64;
}

_ID49098( var_0 )
{
    if ( !isdefined( self._ID31212 ) )
        return 0;

    if ( !self._ID31212 )
        return 0;

    if ( !isdefined( var_0.fixednodesaferadius ) )
        return 0;

    if ( self.fixednode )
        return 0;
    else
        return 1;
}

_ID44486( var_0 )
{
    self endon( "death" );
    self endon( "stop_going_to_node" );
    self.goalradius = var_0.fixednodesaferadius;
    _ID42237::_ID41098( "goal", "damage" );

    if ( var_0.radius > 0 )
        self.goalradius = var_0.radius;
}

_ID7053( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stop_being_careful" );
    self endon( "stop_going_to_node" );
    thread _ID29330( var_0 );

    for (;;)
    {
        _ID40954( var_0, var_1 );
        _ID39893( var_0, var_1 );
        self.fixednode = 1;
        _ID51724( var_0 );
    }
}

_ID29330( var_0 )
{
    self endon( "death" );
    self endon( "stop_going_to_node" );
    self waittill( "stop_being_careful" );
    self.fixednode = 1;
    _ID51724( var_0 );
}

_ID39893( var_0, var_1 )
{
    self setgoalpos( self.origin );
    self.goalradius = 1024;
    self.fixednode = 0;

    if ( isdefined( var_1 ) )
    {
        for (;;)
        {
            wait 1;

            if ( self isknownenemyinradius( var_0.origin, self.fixednodesaferadius ) )
                continue;

            if ( self isknownenemyinvolume( var_1 ) )
                continue;

            return;
        }
    }
    else
    {
        for (;;)
        {
            if ( !_ID51095( var_0.origin, self.fixednodesaferadius ) )
                return;

            wait 1;
        }
    }
}

_ID51095( var_0, var_1 )
{
    var_2 = getaiarray( "axis" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( distance2d( var_2[var_3].origin, var_0 ) < var_1 )
            return 1;
    }

    return 0;
}

_ID40954( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
    {
        for (;;)
        {
            if ( self isknownenemyinradius( var_0.origin, self.fixednodesaferadius ) )
                return;

            if ( self isknownenemyinvolume( var_1 ) )
                return;

            wait 1;
        }
    }
    else
    {
        for (;;)
        {
            if ( _ID51095( var_0.origin, self.fixednodesaferadius ) )
                return;

            wait 1;
        }
    }
}

_ID24629()
{
    if ( !isdefined( self.node ) )
        return 0;

    return self.node _ID42407::_ID916( self );
}

_ID28648( var_0, var_1, var_2 )
{
    thread _ID47773( var_0 );
    self endon( "stop_color_move" );
    self endon( "death" );

    if ( isdefined( var_1 ) )
    {
        var_1 _ID42407::_ID916( self );

        if ( isdefined( var_1._ID46097 ) )
        {
            var_3 = getarraykeys( var_1._ID46097 );

            if ( _ID42237::_ID3303( var_3, self._ID31209 ) )
                wait(var_1._ID46097[self._ID31209]);
        }
    }

    if ( getdvarint( "use_node_script_flag_wait_in_color_system", 0 ) )
    {
        if ( isdefined( self.node ) && isdefined( self.node._ID31197 ) )
            _ID42237::_ID14413( self.node._ID31197 );
    }

    if ( !_ID24629() )
    {
        if ( isdefined( var_2 ) )
            wait(var_2 * randomfloatrange( 0.2, 0.35 ));
    }

    _ID2325( var_0 );
    self._ID8257 = var_0;

    for (;;)
    {
        self waittill( "node_taken",  var_4  );

        if ( var_4 == level.player )
            wait 0.05;

        var_0 = _ID15576();

        if ( isdefined( var_0 ) )
        {
            if ( isalive( self._ID8252._ID8262 ) && self._ID8252._ID8262 == self )
                self._ID8252._ID8262 = undefined;

            self._ID8252 = var_0;
            var_0._ID8262 = self;
            _ID2325( var_0 );
        }
    }
}

_ID53841()
{
    var_0 = level._ID9488[_ID16018()][self._ID31209];
    var_1 = _ID48942( _ID16018(), var_0, self._ID31209 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !isalive( var_1[var_2]._ID8262 ) )
            return var_1[var_2];
    }
}

_ID15576()
{
    var_0 = level._ID9488[_ID16018()][self._ID31209];
    var_1 = _ID48942( _ID16018(), var_0, self._ID31209 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] == self._ID8252 )
            continue;

        if ( !isalive( var_1[var_2]._ID8262 ) )
            return var_1[var_2];
    }
}

_ID48583( var_0 )
{
    self endon( "stopScript" );
    self endon( "death" );

    if ( isdefined( self.node ) )
        return;

    if ( distance( var_0.origin, self.origin ) < 32 )
    {
        _ID51188( var_0 );
        return;
    }

    var_1 = gettime();
    _ID44963( 1 );
    var_2 = gettime();

    if ( var_2 - var_1 >= 1000 )
        _ID51188( var_0 );
}

_ID44963( var_0 )
{
    self endon( "killanimscript" );
    wait(var_0);
}

_ID51188( var_0 )
{
    var_1 = getaiarray();
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( !isdefined( var_1[var_3].node ) )
            continue;

        if ( var_1[var_3].node != var_0 )
            continue;

        var_1[var_3] notify( "eject_from_my_node" );
        wait 1;
        self notify( "eject_from_my_node" );
        return 1;
    }

    return 0;
}

_ID47773( var_0 )
{
    var_0._ID8262 = self;
    self._ID8252 = var_0;
    self endon( "stop_color_move" );
    self waittill( "death" );
    self._ID8252._ID8262 = undefined;
}

_ID8271( var_0 )
{
    for ( var_1 = 0; var_1 < level._ID8272.size; var_1++ )
    {
        if ( var_0 == level._ID8272[var_1] )
            return 1;
    }

    return 0;
}

_ID1984( var_0, var_1 )
{
    var_2 = strtok( var_0, " " );
    var_2 = _ID48121( var_2 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];
        level._ID3364[var_1][var_4] = self;
        level._ID44308[var_1][var_4] = [];
        level._ID52374[var_1][var_4] = [];
    }
}

_ID1917( var_0, var_1 )
{
    self._ID8262 = undefined;
    var_2 = strtok( var_0, " " );
    var_2 = _ID48121( var_2 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( isdefined( level._ID3363[var_1] ) && isdefined( level._ID3363[var_1][var_4] ) )
        {
            level._ID3363[var_1][var_4] = _ID42237::_ID3293( level._ID3363[var_1][var_4], self );
            continue;
        }

        level._ID3363[var_1][var_4][0] = self;
        level._ID44308[var_1][var_4] = [];
        level._ID52374[var_1][var_4] = [];
    }
}

_ID50202()
{
    _ID42237::_ID3350( getallnodes(), ::_ID51108 );
}

_ID51108()
{
    var_0 = "";
    var_1 = "gg-";

    if ( isdefined( self._ID31096 ) )
        var_0 = self._ID31096;
    else if ( isdefined( self._ID31097 ) )
    {
        var_0 = self._ID31097;
        var_1 = "bg-";
    }

    if ( var_0 == "" )
        return;

    for (;;)
    {
        var_2 = _ID42407::_ID15965();
        var_3 = strtok( var_0, " " );

        if ( var_3.size > 1 )
            jump loc_17AF

        if ( randomint( 100 ) > 70 )
        {

        }

        waittillframeend;
    }
}

_ID22135()
{
    if ( !isdefined( self._ID8252 ) )
        return;

    if ( isdefined( self._ID8252._ID8262 ) && self._ID8252._ID8262 == self )
        self._ID8252._ID8262 = undefined;

    self._ID8252 = undefined;
    self notify( "stop_color_move" );
}

_ID49971()
{
    var_0 = [];

    if ( issubstr( self.classname, "axis" ) || issubstr( self.classname, "enemy" ) || issubstr( self.classname, "team3" ) )
    {
        var_0["team"] = "axis";
        var_0["colorTeam"] = self._ID31097;
    }

    if ( issubstr( self.classname, "ally" ) || issubstr( self.classname, "civilian" ) )
    {
        var_0["team"] = "allies";
        var_0["colorTeam"] = self._ID31096;
    }

    if ( !isdefined( var_0["colorTeam"] ) )
        var_0 = undefined;

    return var_0;
}

_ID46652()
{
    var_0 = _ID49971();

    if ( !isdefined( var_0 ) )
        return;

    var_1 = var_0["team"];
    var_2 = var_0["colorTeam"];
    var_3 = strtok( var_2, " " );
    var_3 = _ID48121( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        level._ID52374[var_1][var_3[var_4]] = _ID42237::_ID3321( level._ID52374[var_1][var_3[var_4]], self );
}

_ID1867( var_0 )
{
    level._ID8256[var_0][1]["allies"] = ::_ID28650;
    level._ID8256[var_0][1]["axis"] = ::_ID28651;
    level._ID8256[var_0][0]["allies"] = ::_ID28649;
    level._ID8256[var_0][0]["axis"] = ::_ID28649;
}

_ID1927( var_0 )
{
    level._ID8256[var_0][1]["allies"] = ::_ID28658;
    level._ID8256[var_0][0]["allies"] = ::_ID28658;
    level._ID8256[var_0][1]["axis"] = ::_ID28658;
    level._ID8256[var_0][0]["axis"] = ::_ID28658;
}

_ID8280( var_0, var_1 )
{
    level endon( "kill_color_replacements" );
    level endon( "kill_hidden_reinforcement_waiting" );
    var_2 = _ID35086( var_0, var_1 );

    if ( isdefined( level._ID14988 ) )
        var_2 thread [[ level._ID14988 ]]();

    var_2 thread _ID8275();
}

_ID8275()
{
    level endon( "kill_color_replacements" );
    self endon( "_disable_reinforcement" );

    if ( isdefined( self._ID29701 ) )
        return;

    self._ID29701 = 1;
    var_0 = self.classname;
    var_1 = self._ID31209;
    waitframe;

    if ( isalive( self ) )
        self waittill( "death" );

    var_2 = level._ID9439;

    if ( !isdefined( self._ID31209 ) )
        return;

    thread _ID8280( var_0, self._ID31209 );

    if ( isdefined( self ) && isdefined( self._ID31209 ) )
        var_1 = self._ID31209;

    if ( isdefined( self ) && isdefined( self.origin ) )
        var_3 = self.origin;

    for (;;)
    {
        if ( _ID44186( var_1, var_2 ) == "none" )
            return;

        var_4 = _ID42407::_ID15741( "allies", var_2[var_1] );

        if ( !isdefined( level._ID8249 ) )
            var_4 = _ID42407::_ID29537( var_4 );

        if ( !isdefined( level._ID8248 ) )
            var_4 = _ID42407::_ID29586( var_4, var_0 );

        if ( !var_4.size )
        {
            wait 2;
            continue;
        }

        var_5 = _ID42237::_ID16182( level.player.origin, var_4 );
        waitframe;

        if ( !isalive( var_5 ) )
            continue;

        var_5 _ID42407::_ID32315( var_1 );

        if ( isdefined( level._ID14973 ) )
            var_5 [[ level._ID14973 ]]( var_1 );

        var_1 = var_2[var_1];
    }
}

_ID44186( var_0, var_1 )
{
    if ( !isdefined( var_0 ) )
        return "none";

    if ( !isdefined( var_1 ) )
        return "none";

    if ( !isdefined( var_1[var_0] ) )
        return "none";

    return var_1[var_0];
}

_ID48758()
{
    _ID35277( "allies" );
}

_ID35277( var_0 )
{
    if ( var_0 == "allies" )
        level._ID14975 = 1;
    else
        level._ID12909 = 1;

    var_1 = 0;

    for (;;)
    {
        if ( var_0 == "allies" )
        {
            for (;;)
            {
                if ( !_ID44681() )
                    break;

                wait 0.05;
            }
        }

        wait 1.0;

        if ( !isdefined( level._ID29816[var_0] ) )
        {
            var_1 = 0;
            continue;
        }

        var_2 = level._ID29816[var_0] - level.player.origin;

        if ( length( var_2 ) < 200 )
        {
            _ID27651( var_0 );
            var_1 = 0;
            continue;
        }

        var_3 = anglestoforward( ( 0, level.player getplayerangles()[1], 0 ) );
        var_4 = vectornormalize( var_2 );
        var_5 = vectordot( var_3, var_4 );

        if ( var_5 > 0.2 )
        {
            var_6 = !sighttracepassed( level.player geteye(), level._ID29816[var_0], 0, level.player );

            if ( var_6 )
                var_6 = !sighttracepassed( level.player geteye(), level._ID29816[var_0] + ( 0, 0, 96 ), 0, level.player );

            if ( !var_6 )
            {
                _ID27651( var_0 );
                var_1 = 0;
                continue;
            }
        }

        var_1++;

        if ( var_1 < 3 )
            continue;

        _ID42237::_ID14402( "player_looks_away_from_spawner" );
    }
}

_ID15631( var_0 )
{
    if ( isdefined( var_0 ) )
    {
        if ( !isdefined( level._ID43367[var_0] ) )
        {
            var_1 = getspawnerteamarray( "allies" );

            foreach ( var_3 in var_1 )
            {
                if ( var_3.classname != var_0 )
                    continue;

                level._ID43367[var_0] = var_3;
                break;
            }
        }
    }

    if ( !isdefined( var_0 ) )
    {
        var_3 = _ID42237::_ID28945( level._ID43367 );

        if ( !isdefined( var_3 ) )
        {
            var_1 = [];

            foreach ( var_6, var_3 in level._ID43367 )
            {
                if ( isdefined( var_3 ) )
                    var_1[var_6] = var_3;
            }

            level._ID43367 = var_1;
            return _ID42237::_ID28945( level._ID43367 );
        }

        return var_3;
    }

    return level._ID43367[var_0];
}

_ID8278( var_0, var_1 )
{
    if ( var_1 == "allies" || var_1 == "axis" )
        level._ID29816[var_1] = var_0;
    else
    {
        level._ID29816["allies"] = var_0;
        level._ID29816["axis"] = var_0;
    }
}

_ID44681()
{
    if ( isdefined( level._ID29811 ) )
        return 0;

    return _ID42237::_ID14385( "respawn_friendlies" );
}

_ID40965()
{
    if ( _ID42237::_ID14385( "player_looks_away_from_spawner" ) )
        return;

    level endon( "player_looks_away_from_spawner" );

    for (;;)
    {
        if ( _ID44681() )
            return;

        wait 0.05;
    }
}

_ID35086( var_0, var_1 )
{
    level endon( "kill_color_replacements" );
    level endon( "kill_hidden_reinforcement_waiting" );
    var_2 = undefined;

    for (;;)
    {
        if ( !_ID44681() )
        {
            if ( !isdefined( level._ID14975 ) )
                thread _ID48758();

            for (;;)
            {
                _ID40965();
                _ID42237::_ID14426( "friendly_spawner_locked" );

                if ( _ID42237::_ID14385( "player_looks_away_from_spawner" ) || _ID44681() )
                    break;
            }

            _ID42237::_ID14402( "friendly_spawner_locked" );
        }

        var_3 = _ID15631( var_0 );
        var_3.count = 1;
        var_4 = var_3.origin;
        var_3.origin = level._ID29816["allies"];
        var_2 = var_3 stalingradspawn();
        var_3.origin = var_4;

        if ( _ID42407::_ID35060( var_2 ) )
        {
            thread _ID22536();
            wait 1;
            continue;
        }

        level notify( "reinforcement_spawned",  var_2  );
        break;
    }

    for (;;)
    {
        if ( !isdefined( var_1 ) )
            break;

        if ( _ID44186( var_1, level._ID9439 ) == "none" )
            break;

        var_1 = level._ID9439[var_1];
    }

    if ( isdefined( var_1 ) )
        var_2 _ID42407::_ID32315( var_1 );

    var_2 _ID52580();
    thread _ID22536();
    return var_2;
}

_ID22536()
{
    _ID42237::_ID14402( "friendly_spawner_locked" );
    wait 2;
    _ID42237::_ID14388( "friendly_spawner_locked" );
}

_ID27651( var_0 )
{
    if ( !isdefined( var_0 ) || var_0 == "allies" )
    {
        var_1 = 0;
        _ID42237::_ID14388( "player_looks_away_from_spawner" );
    }
    else
        _ID42237::_ID14388( "player_looks_away_from_enemy_spawner" );
}

_ID21251()
{
    _ID42237::_ID14388( "friendly_spawner_locked" );
    level notify( "kill_color_replacements" );
    var_0 = getaiarray();
    _ID42237::_ID3350( var_0, ::_ID29566 );
}

_ID29566()
{
    self._ID29701 = undefined;
}

_ID43824( var_0 )
{
    if ( !isdefined( var_0._ID31388 ) )
        return;

    if ( !issubstr( var_0._ID31388, "color_delays" ) )
        return;

    var_1 = strtok( var_0._ID31388, ":, " );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_1[var_3] == "color_delays" )
            continue;

        if ( !isdefined( var_1[var_3 + 1] ) )
            return;

        var_2[var_1[var_3]] = float( var_1[var_3 + 1] );
        var_3++;
    }

    var_0._ID46097 = var_2;
}

_ID16018( var_0 )
{
    if ( isdefined( self.team ) && !isdefined( var_0 ) )
        var_0 = self.team;

    return level._ID8261[var_0];
}

clear_color_progress( var_0 )
{
    if ( !isdefined( var_0._ID9487 ) )
        return;

    level._ID9488[var_0.team][var_0._ID31209] = undefined;
    var_0._ID9487 = undefined;
}
