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
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_multiple", "code_classname" ) );
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_radius", "code_classname" ) );
    var_1 = _ID42237::_ID3296( var_1, _func_1A2( "trigger_once", "code_classname" ) );
    level._ID8261 = [];
    level._ID8261["allies"] = "allies";
    level._ID8261["axis"] = "axis";
    level._ID8261["team3"] = "axis";
    level._ID8261["neutral"] = "neutral";
    var_2 = _func_1A2( "info_volume", "code_classname" );

    for ( var_3 = 0; var_3 < var_0.size; var_3++ )
    {
        var_4 = var_0[var_3];

        if ( _func_02F( var_4._ID31096 ) )
            var_4 _unknown_0671( var_4._ID31096, "allies" );

        if ( _func_02F( var_4._ID31097 ) )
            var_4 _unknown_0686( var_4._ID31097, "axis" );
    }

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_5 = var_2[var_3];

        if ( _func_02F( var_5._ID31096 ) )
            var_5 _unknown_069A( var_5._ID31096, "allies" );

        if ( _func_02F( var_5._ID31097 ) )
            var_5 _unknown_06AF( var_5._ID31097, "axis" );
    }

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        var_6 = var_1[var_3];

        if ( _func_02F( var_6._ID31096 ) )
            var_6 thread _unknown_032D( var_6._ID31096, "allies" );

        if ( _func_02F( var_6._ID31097 ) )
            var_6 thread _unknown_0342( var_6._ID31097, "axis" );
    }

    level._ID8256 = [];
    _unknown_0797( "BAD NODE" );
    _unknown_079F( "Cover Stand" );
    _unknown_07A7( "Cover Crouch" );
    _unknown_07AF( "Cover Prone" );
    _unknown_07B8( "Cover Crouch Window" );
    _unknown_07C0( "Cover Right" );
    _unknown_07C8( "Cover Left" );
    _unknown_07D0( "Cover Wide Left" );
    _unknown_07D9( "Cover Wide Right" );
    _unknown_07E1( "Conceal Stand" );
    _unknown_07E9( "Conceal Crouch" );
    _unknown_07F1( "Conceal Prone" );
    _unknown_07FA( "Reacquire" );
    _unknown_0802( "Balcony" );
    _unknown_080A( "Scripted" );
    _unknown_0812( "Begin" );
    _unknown_081B( "End" );
    _unknown_0823( "Turret" );
    _unknown_083F( "Ambush" );
    _unknown_0847( "Guard" );
    _unknown_084F( "Path" );
    _unknown_0857( "Exposed" );
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

    thread _unknown_07A1();
    level._ID29816 = [];
    var_8 = _func_0E2( "allies" );
    level._ID43367 = [];

    for ( var_3 = 0; var_3 < var_8.size; var_3++ )
    {
        var_9 = var_8[var_3];
        level._ID43367[var_9._ID170] = var_9;
    }

    if ( _func_039( "shownodecolors" ) == "1" )
        thread _unknown_09CF();
}

_ID50468()
{
    self._ID31209 = level._ID8267[self._ID31209];
}

_ID49907( var_0 )
{
    if ( _func_02F( self._ID31209 ) )
    {
        _unknown_056E();
        self._ID9487 = var_0;
        var_1 = self._ID31209;
        level._ID3365[_unknown_0C06()][var_1] = _ID42237::_ID3293( level._ID3365[_unknown_0BFC()][var_1], self );
        thread _unknown_05A0();
        return;
    }
}

_ID17023()
{
    if ( !_func_02F( self._ID9487 ) )
        return;

    var_0 = level._ID3363[_unknown_0C1F()][self._ID9487];
    _unknown_0A3F();

    if ( !_func_1A7( self ) )
        return;

    if ( !_ID42407::_ID18155() )
        return;

    if ( !_func_02F( var_0 ) )
    {
        var_1 = level._ID3364[_unknown_0C3E()][self._ID9487];
        _unknown_0790( var_1, self._ID9487 );
        return;
    }

    for ( var_2 = 0; var_2 < var_0.size; var_2++ )
    {
        var_3 = var_0[var_2];

        if ( _func_1A7( var_3._ID8262 ) && var_3._ID8262 != level._ID794 )
            continue;

        thread _unknown_08CA( var_3 );
        thread _unknown_0A29( var_3 );
        return;
    }

    _unknown_0639();
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
    var_2 = var_0;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];
        var_1[var_3] = 1;
    }

    var_clear_2
    var_clear_0
    var_5 = [];
    var_6 = var_1;

    for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
    {
        var_7 = var_6[var_8];
        var_5[var_5.size] = var_8;
    }

    var_clear_2
    return var_5;
}

_ID44106( var_0, var_1 )
{
    var_2 = _func_129( var_0, " " );
    var_2 = _unknown_06F4( var_2 );
    var_3 = [];
    var_4 = [];
    var_5 = [];
    var_6 = _unknown_06E6();

    for ( var_7 = 0; var_7 < var_2.size; var_7++ )
    {
        var_8 = var_2[var_7];
        var_9 = undefined;

        for ( var_10 = 0; var_10 < var_6.size; var_10++ )
        {
            var_11 = var_6[var_10];

            if ( _func_125( var_8, var_11 ) )
            {
                var_9 = var_11;
                break;
            }
        }

        if ( !_unknown_077A( var_1, var_8 ) )
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
    if ( _func_02F( level._ID3363[var_0][var_1] ) )
        return 1;

    return _func_02F( level._ID3364[var_0][var_1] );
}

_ID38831( var_0, var_1 )
{
    var_2 = _unknown_07A4( var_0, var_1 );
    var_3 = var_2["colorCodes"];
    var_4 = var_2["colorCodesByColorIndex"];
    var_5 = var_2["colors"];

    for (;;)
    {
        self waittill( "trigger" );

        if ( _func_02F( self._ID54528 ) )
        {
            self._ID54528 = undefined;
            continue;
        }

        _unknown_0834( var_3, var_5, var_1, var_4 );
    }
}

_ID52298( var_0 )
{
    if ( var_0 == "allies" )
        thread _unknown_083A( self._ID31096, var_0 );
    else
        thread _unknown_0842( self._ID31097, var_0 );
}

_ID47506( var_0, var_1 )
{
    var_2 = _unknown_07FC( var_0, var_1 );
    var_3 = var_2["colorCodes"];
    var_4 = var_2["colorCodesByColorIndex"];
    var_5 = var_2["colors"];
    _unknown_0878( var_3, var_5, var_1, var_4 );
}

_ID46681( var_0, var_1, var_2, var_3 )
{
    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        if ( !_func_02F( level._ID52374[var_2][var_0[var_4]] ) )
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
        if ( _unknown_096E( var_2, var_1[var_4] ) )
            continue;

        var_10 = var_0[var_4];

        if ( !_func_02F( level._ID44308[var_2][var_10] ) )
            continue;

        var_9[var_10] = _unknown_0A12( var_10, var_1[var_4], var_2 );
    }

    for ( var_4 = 0; var_4 < var_0.size; var_4++ )
    {
        var_10 = var_0[var_4];

        if ( !_func_02F( var_9[var_10] ) )
            continue;

        if ( _unknown_09B3( var_2, var_1[var_4] ) )
            continue;

        if ( !_func_02F( level._ID44308[var_2][var_10] ) )
            continue;

        _unknown_0A89( var_10, var_1[var_4], var_2, var_9[var_10] );
    }
}

_ID30691( var_0, var_1 )
{
    if ( !_func_02F( level._ID21901[var_0][var_1] ) )
        return 0;

    return level._ID21901[var_0][var_1] == level._ID9488[var_0][var_1];
}

_ID28650( var_0, var_1 )
{
    if ( _func_125( var_0._ID31096, var_1 ) )
        self._ID8859[self._ID8859.size] = var_0;
    else
        self._ID8858[self._ID8858.size] = var_0;
}

_ID28651( var_0, var_1 )
{
    if ( _func_125( var_0._ID31097, var_1 ) )
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
    var_4 = _func_1A5();
    var_4._ID26319 = [];
    var_4._ID8858 = [];
    var_4._ID8859 = [];
    var_5 = _func_02F( level._ID21901[var_0][var_2] );

    for ( var_6 = 0; var_6 < var_3.size; var_6++ )
    {
        var_7 = var_3[var_6];
        var_4 [[ level._ID8256[var_7._ID1244][var_5][var_0] ]]( var_7, level._ID21901[var_0][var_2] );
    }

    var_4._ID8858 = _ID42237::_ID3320( var_4._ID8858 );
    var_3 = var_4._ID8858;
    var_8 = [];
    var_9 = [];
    var_3 = [];

    for ( var_10 = 0; var_10 < var_4._ID8858.size; var_10++ )
    {
        var_7 = var_4._ID8858[var_10];

        if ( _func_02F( var_7._ID31099 ) )
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

        if ( _func_02F( var_7._ID31099 ) )
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

        if ( _func_02F( var_6._ID9487 ) && var_6._ID9487 == var_0 )
            continue;

        var_4[var_4.size] = var_6;
    }

    var_3 = var_4;

    if ( !var_3.size )
        return;

    _ID42237::_ID3350( var_3, ::_unknown_0F3D );
    return var_3;
}

_ID31873( var_0, var_1 )
{
    self notify( "stop_color_move" );
    self._ID9487 = var_1;

    if ( _func_02F( var_0._ID1191 ) )
    {
        var_2 = _func_0C8( var_0._ID1191, "targetname" );

        if ( _func_02F( var_2 ) )
            self _meth_81B1( var_2 );
    }

    self._ID381 = 0;
    self _meth_81B5( var_0 );
}

_ID20928( var_0, var_1, var_2, var_3 )
{
    if ( !var_3.size )
        return;

    var_4 = var_3;
    var_5 = [];

    if ( _func_02F( level._ID3363[var_2][var_0] ) )
    {
        _unknown_0C43( var_2, var_0, var_1 );
        var_5 = _unknown_0CA2( var_2, var_0, var_1 );
    }
    else
    {
        var_6 = _unknown_0CAF( var_2, var_0 );
        _ID42237::_ID3350( var_3, ::_unknown_0CDC, var_6, var_0 );
    }

    var_7 = _ID42407::_ID16247( "ai_color_squadAssignmentOverride", 0 );
    var_8 = var_7 > 0;

    if ( var_7 == 0 )
    {
        var_9 = var_3[0] _unknown_0DB4();
        var_10 = var_3;

        for ( var_13 = _func_1DA( var_10 ); _func_02F( var_13 ); var_13 = _func_1BF( var_10, var_13 ) )
        {
            var_11 = var_10[var_13];
            var_12 = var_11 _unknown_0DCD();

            if ( var_12 )
                var_8 = 1;
        }

        var_clear_3
        var_clear_0

        if ( var_5.size > 0 )
        {
            var_14 = var_5[0] _unknown_0DE9();
            var_15 = var_5;

            for ( var_18 = _func_1DA( var_15 ); _func_02F( var_18 ); var_18 = _func_1BF( var_15, var_18 ) )
            {
                var_16 = var_15[var_18];
                var_17 = var_16 _unknown_0E03();

                if ( var_17 )
                    var_8 = 1;
            }

            var_clear_3
            var_clear_0
        }
    }

    var_19 = 0;
    var_20 = var_3.size;

    if ( var_8 )
    {
        var_19 = 1;
        var_21 = ( 0, 0, 0 );
        var_22 = var_5;

        for ( var_23 = _func_1DA( var_22 ); _func_02F( var_23 ); var_23 = _func_1BF( var_22, var_23 ) )
        {
            var_16 = var_22[var_23];
            var_21 += var_16._ID740;
        }

        var_clear_2
        var_clear_0
        var_21 /= var_5.size;
        var_24 = ( 0, 0, 0 );
        var_25 = var_3;

        for ( var_26 = _func_1DA( var_25 ); _func_02F( var_26 ); var_26 = _func_1BF( var_25, var_26 ) )
        {
            var_11 = var_25[var_26];
            var_24 += var_11._ID740;
        }

        var_clear_2
        var_clear_0
        var_24 /= var_3.size;
        var_3 = _func_1C0( var_3, var_21 );
        var_5 = _func_1C0( var_5, var_24 );
    }

    for ( var_27 = 0; var_27 < var_5.size; var_27++ )
    {
        var_16 = var_5[var_27];

        if ( _func_1A7( var_16._ID8262 ) )
            continue;

        var_28 = undefined;
        var_29 = var_19;

        if ( var_8 )
        {
            var_28 = var_3[var_3.size - 1];
            var_29 = var_20 - var_19;
        }
        else
            var_28 = _ID42237::_ID16182( var_16._ID740, var_3 );

        var_3 = _ID42237::_ID3321( var_3, var_28 );
        var_28 _unknown_0EBC( var_16, var_0, self, var_29 );
        var_19++;

        if ( !var_3.size )
            return;
    }
}

_ID37135( var_0, var_1, var_2, var_3 )
{
    self notify( "stop_color_move" );
    self._ID9487 = var_1;
    thread _unknown_101F( var_0, var_2, var_3 );
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
    if ( !_func_02F( level._ID45965 ) )
        level._ID45965 = [];

    level._ID45965[var_0] = var_1;
    var_2 = _func_0DE( var_0 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
        var_2[var_3]._ID31100 = var_1;
}

_ID52580()
{
    if ( !_func_02F( level._ID45965 ) )
        return;

    if ( !_func_02F( level._ID45965[self._ID1194] ) )
        return;

    self._ID31100 = level._ID45965[self._ID1194];
}

_ID49826()
{
    return _func_02F( self._ID31100 ) && self._ID31100;
}

_ID27324()
{
    for (;;)
    {
        var_0 = undefined;

        if ( !_func_02F( level._ID794._ID700 ) )
        {
            wait 0.05;
            continue;
        }

        var_1 = level._ID794._ID700._ID8262;
        var_0 = level._ID794._ID700;
        var_0._ID8262 = level._ID794;

        for (;;)
        {
            if ( !_func_02F( level._ID794._ID700 ) )
                break;

            if ( level._ID794._ID700 != var_0 )
                break;

            wait 0.05;
        }

        var_0._ID8262 = undefined;
        var_0 _unknown_0FE1();
    }
}

_ID45405()
{
    if ( _func_02F( self._ID31096 ) )
        _unknown_1002( self._ID31096, "allies" );

    if ( _func_02F( self._ID31097 ) )
        _unknown_1013( self._ID31097, "axis" );
}

_ID54240( var_0, var_1 )
{
    if ( _func_02F( self._ID8262 ) )
        return;

    var_2 = _func_129( var_0, " " );
    var_2 = _unknown_0DCF( var_2 );
    _ID42237::_ID3315( var_2, ::_unknown_103E, var_1 );
}

_ID47120( var_0, var_1 )
{
    var_2 = var_0[0];

    if ( !_func_02F( level._ID9488[var_1][var_2] ) )
        return;

    if ( level._ID9488[var_1][var_2] != var_0 )
        return;

    var_3 = _ID42407::_ID15741( var_1, var_2 );

    if ( !var_3.size )
        return;

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
    {
        var_5 = var_3[var_4];

        if ( var_5 _unknown_1095( var_0 ) )
            continue;

        var_5 _unknown_102A( self, var_0 );
        return;
    }
}

_ID52030( var_0 )
{
    if ( !_func_02F( self._ID9487 ) )
        return 0;

    return self._ID9487 == var_0;
}

_ID47029( var_0 )
{
    self endon( "death" );
    var_1 = _unknown_1185();

    if ( var_1 )
    {
        self endon( "stop_color_move" );
        wait(var_1);
    }

    thread _unknown_10E0( var_0 );
}

_ID2325( var_0 )
{
    self notify( "stop_going_to_node" );
    _unknown_10FC( var_0 );
    var_1 = level._ID3364[_unknown_1493()][self._ID9487];

    if ( _func_02F( self._ID31087 ) )
        thread _unknown_1169( var_0, var_1 );
}

_ID51724( var_0 )
{
    if ( _func_02F( self._ID8274 ) )
        self thread [[ self._ID8274 ]]( var_0 );

    if ( _func_02F( self._ID1399 ) )
    {
        thread _ID42259::_ID3108( self, self._ID1399 );
        self._ID1399 = undefined;
    }

    if ( _func_02F( self._ID8279 ) )
        self thread [[ self._ID8279 ]]( var_0 );
    else
        self _meth_81B1( var_0 );

    if ( _unknown_118A( var_0 ) )
        thread _unknown_119C( var_0 );
    else if ( var_0._ID851 > 0 )
        self._ID452 = var_0._ID851;
    else if ( _func_02F( self._ID3152 ) && self._ID3152 == "riotshield" && self._ID1194 == "allies" )
        self._ID452 = 64;

    var_1 = level._ID3364[_unknown_1520()][self._ID9487];

    if ( _func_02F( var_1 ) )
        self _meth_81B8( var_1 );
    else
        self _meth_8168();

    if ( _func_02F( var_0._ID382 ) )
        self._ID382 = var_0._ID382;
    else if ( _func_02F( level._ID14382 ) )
        self._ID382 = level._ID14382;
    else
        self._ID382 = 64;
}

_ID49098( var_0 )
{
    if ( !_func_02F( self._ID31212 ) )
        return 0;

    if ( !self._ID31212 )
        return 0;

    if ( !_func_02F( var_0._ID382 ) )
        return 0;

    if ( self._ID381 )
        return 0;
    else
        return 1;
}

_ID44486( var_0 )
{
    self endon( "death" );
    self endon( "stop_going_to_node" );
    self._ID452 = var_0._ID382;
    _ID42237::_ID41098( "goal", "damage" );

    if ( var_0._ID851 > 0 )
        self._ID452 = var_0._ID851;
}

_ID7053( var_0, var_1 )
{
    self endon( "death" );
    self endon( "stop_being_careful" );
    self endon( "stop_going_to_node" );
    thread _unknown_1297( var_0 );

    for (;;)
    {
        _unknown_12CC( var_0, var_1 );
        _unknown_12AD( var_0, var_1 );
        self._ID381 = 1;
        _unknown_1246( var_0 );
    }
}

_ID29330( var_0 )
{
    self endon( "death" );
    self endon( "stop_going_to_node" );
    self waittill( "stop_being_careful" );
    self._ID381 = 1;
    _unknown_1265( var_0 );
}

_ID39893( var_0, var_1 )
{
    self _meth_81B2( self._ID740 );
    self._ID452 = 1024;
    self._ID381 = 0;

    if ( _func_02F( var_1 ) )
    {
        for (;;)
        {
            wait 1;

            if ( self _meth_817A( var_0._ID740, self._ID382 ) )
                continue;

            if ( self _meth_817B( var_1 ) )
                continue;

            return;
        }
    }
    else
    {
        for (;;)
        {
            if ( !_unknown_132D( var_0._ID740, self._ID382 ) )
                return;

            wait 1;
        }
    }
}

_ID51095( var_0, var_1 )
{
    var_2 = _func_0DE( "axis" );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        if ( _func_0F4( var_2[var_3]._ID740, var_0 ) < var_1 )
            return 1;
    }

    return 0;
}

_ID40954( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
    {
        for (;;)
        {
            if ( self _meth_817A( var_0._ID740, self._ID382 ) )
                return;

            if ( self _meth_817B( var_1 ) )
                return;

            wait 1;
        }
    }
    else
    {
        for (;;)
        {
            if ( _unknown_1389( var_0._ID740, self._ID382 ) )
                return;

            wait 1;
        }
    }
}

_ID24629()
{
    if ( !_func_02F( self._ID700 ) )
        return 0;

    return self._ID700 _ID42407::_ID916( self );
}

_ID28648( var_0, var_1, var_2 )
{
    thread _unknown_1468( var_0 );
    self endon( "stop_color_move" );
    self endon( "death" );

    if ( _func_02F( var_1 ) )
    {
        var_1 _ID42407::_ID916( self );

        if ( _func_02F( var_1._ID46097 ) )
        {
            var_3 = _func_1D9( var_1._ID46097 );

            if ( _ID42237::_ID3303( var_3, self._ID31209 ) )
                wait(var_1._ID46097[self._ID31209]);
        }
    }

    if ( _func_03A( "use_node_script_flag_wait_in_color_system", 0 ) )
    {
        if ( _func_02F( self._ID700 ) && _func_02F( self._ID700._ID31197 ) )
            _ID42237::_ID14413( self._ID700._ID31197 );
    }

    if ( !_unknown_142B() )
    {
        if ( _func_02F( var_2 ) )
            wait(var_2 * _func_0BA( 0.2, 0.35 ));
    }

    _unknown_138F( var_0 );
    self._ID8257 = var_0;

    for (;;)
    {
        self waittill( "node_taken",  var_4  );

        if ( var_4 == level._ID794 )
            wait 0.05;

        var_0 = _unknown_14B6();

        if ( _func_02F( var_0 ) )
        {
            if ( _func_1A7( self._ID8252._ID8262 ) && self._ID8252._ID8262 == self )
                self._ID8252._ID8262 = undefined;

            self._ID8252 = var_0;
            var_0._ID8262 = self;
            _unknown_13D6( var_0 );
        }
    }
}

_ID53841()
{
    var_0 = level._ID9488[_unknown_177E()][self._ID31209];
    var_1 = _unknown_12A9( _unknown_178A(), var_0, self._ID31209 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( !_func_1A7( var_1[var_2]._ID8262 ) )
            return var_1[var_2];
    }
}

_ID15576()
{
    var_0 = level._ID9488[_unknown_17AE()][self._ID31209];
    var_1 = _ID39893( _unknown_17BA(), var_0, self._ID31209 );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
    {
        if ( var_1[var_2] == self._ID8252 )
            continue;

        if ( !_func_1A7( var_1[var_2]._ID8262 ) )
            return var_1[var_2];
    }
}

_ID48583( var_0 )
{
    self endon( "stopScript" );
    self endon( "death" );

    if ( _func_02F( self._ID700 ) )
        return;

    if ( _func_0F3( var_0._ID740, self._ID740 ) < 32 )
    {
        _unknown_15A4( var_0 );
        return;
    }

    var_1 = _func_03D();
    _unknown_15AC( 1 );
    var_2 = _func_03D();

    if ( var_2 - var_1 >= 1000 )
        _unknown_15BF( var_0 );
}

_ID44963( var_0 )
{
    self endon( "killanimscript" );
    wait(var_0);
}

_ID51188( var_0 )
{
    var_1 = _func_0DE();
    var_2 = undefined;

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( !_func_02F( var_1[var_3]._ID700 ) )
            continue;

        if ( var_1[var_3]._ID700 != var_0 )
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
    var_2 = _func_129( var_0, " " );
    var_2 = _unknown_128B( var_2 );

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
    var_2 = _func_129( var_0, " " );
    var_2 = _unknown_12C5( var_2 );

    for ( var_3 = 0; var_3 < var_2.size; var_3++ )
    {
        var_4 = var_2[var_3];

        if ( _func_02F( level._ID3363[var_1] ) && _func_02F( level._ID3363[var_1][var_4] ) )
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
    _ID42237::_ID3350( _func_0CA(), ::_unknown_1744 );
}

_ID51108()
{
    var_0 = "";
    var_1 = "gg-";

    if ( _func_02F( self._ID31096 ) )
        var_0 = self._ID31096;
    else if ( _func_02F( self._ID31097 ) )
    {
        var_0 = self._ID31097;
        var_1 = "bg-";
    }

    if ( var_0 == "" )
        return;

    for (;;)
    {
        var_2 = _ID42407::_ID15965();
        var_3 = _func_129( var_0, " " );

        if ( var_3.size > 1 )
            jump loc_17AF

        if ( _func_0B7( 100 ) > 70 )
        {

        }

        waittillframeend;
    }
}

_ID22135()
{
    if ( !_func_02F( self._ID8252 ) )
        return;

    if ( _func_02F( self._ID8252._ID8262 ) && self._ID8252._ID8262 == self )
        self._ID8252._ID8262 = undefined;

    self._ID8252 = undefined;
    self notify( "stop_color_move" );
}

_ID49971()
{
    var_0 = [];

    if ( _func_125( self._ID170, "axis" ) || _func_125( self._ID170, "enemy" ) || _func_125( self._ID170, "team3" ) )
    {
        var_0["team"] = "axis";
        var_0["colorTeam"] = self._ID31097;
    }

    if ( _func_125( self._ID170, "ally" ) || _func_125( self._ID170, "civilian" ) )
    {
        var_0["team"] = "allies";
        var_0["colorTeam"] = self._ID31096;
    }

    if ( !_func_02F( var_0["colorTeam"] ) )
        var_0 = undefined;

    return var_0;
}

_ID46652()
{
    var_0 = _unknown_1861();

    if ( !_func_02F( var_0 ) )
        return;

    var_1 = var_0["team"];
    var_2 = var_0["colorTeam"];
    var_3 = _func_129( var_2, " " );
    var_3 = _unknown_142D( var_3 );

    for ( var_4 = 0; var_4 < var_3.size; var_4++ )
        level._ID52374[var_1][var_3[var_4]] = _ID42237::_ID3321( level._ID52374[var_1][var_3[var_4]], self );
}

_ID1867( var_0 )
{
    level._ID8256[var_0][1]["allies"] = ::_unknown_152B;
    level._ID8256[var_0][1]["axis"] = ::_unknown_1543;
    level._ID8256[var_0][0]["allies"] = ::_unknown_155B;
    level._ID8256[var_0][0]["axis"] = ::_unknown_1569;
}

_ID1927( var_0 )
{
    level._ID8256[var_0][1]["allies"] = ::_unknown_157D;
    level._ID8256[var_0][0]["allies"] = ::_unknown_158B;
    level._ID8256[var_0][1]["axis"] = ::_unknown_1599;
    level._ID8256[var_0][0]["axis"] = ::_unknown_15A7;
}

_ID8280( var_0, var_1 )
{
    level endon( "kill_color_replacements" );
    level endon( "kill_hidden_reinforcement_waiting" );
    var_2 = _unknown_1A85( var_0, var_1 );

    if ( _func_02F( level._ID14988 ) )
        var_2 thread [[ level._ID14988 ]]();

    var_2 thread _unknown_19AB();
}

_ID8275()
{
    level endon( "kill_color_replacements" );
    self endon( "_disable_reinforcement" );

    if ( _func_02F( self._ID29701 ) )
        return;

    self._ID29701 = 1;
    var_0 = self._ID170;
    var_1 = self._ID31209;
    waitframe;

    if ( _func_1A7( self ) )
        self waittill( "death" );

    var_2 = level._ID9439;

    if ( !_func_02F( self._ID31209 ) )
        return;

    thread _unknown_19DC( var_0, self._ID31209 );

    if ( _func_02F( self ) && _func_02F( self._ID31209 ) )
        var_1 = self._ID31209;

    if ( _func_02F( self ) && _func_02F( self._ID740 ) )
        var_3 = self._ID740;

    for (;;)
    {
        if ( _unknown_1A59( var_1, var_2 ) == "none" )
            return;

        var_4 = _ID42407::_ID15741( "allies", var_2[var_1] );

        if ( !_func_02F( level._ID8249 ) )
            var_4 = _ID42407::_ID29537( var_4 );

        if ( !_func_02F( level._ID8248 ) )
            var_4 = _ID42407::_ID29586( var_4, var_0 );

        if ( !var_4.size )
        {
            wait 2;
            continue;
        }

        var_5 = _ID42237::_ID16182( level._ID794._ID740, var_4 );
        waitframe;

        if ( !_func_1A7( var_5 ) )
            continue;

        var_5 _ID42407::_ID32315( var_1 );

        if ( _func_02F( level._ID14973 ) )
            var_5 [[ level._ID14973 ]]( var_1 );

        var_1 = var_2[var_1];
    }
}

_ID44186( var_0, var_1 )
{
    if ( !_func_02F( var_0 ) )
        return "none";

    if ( !_func_02F( var_1 ) )
        return "none";

    if ( !_func_02F( var_1[var_0] ) )
        return "none";

    return var_1[var_0];
}

_ID48758()
{
    _unknown_1AFC( "allies" );
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
                if ( !_unknown_1BAE() )
                    break;

                wait 0.05;
            }
        }

        wait 1.0;

        if ( !_func_02F( level._ID29816[var_0] ) )
        {
            var_1 = 0;
            continue;
        }

        var_2 = level._ID29816[var_0] - level._ID794._ID740;

        if ( _func_0F6( var_2 ) < 200 )
        {
            _unknown_1C42( var_0 );
            var_1 = 0;
            continue;
        }

        var_3 = _func_11F( ( 0, level._ID794 _meth_8346()[1], 0 ) );
        var_4 = _func_119( var_2 );
        var_5 = _func_0FB( var_3, var_4 );

        if ( var_5 > 0.2 )
        {
            var_6 = !_func_090( level._ID794 _meth_80AF(), level._ID29816[var_0], 0, level._ID794 );

            if ( var_6 )
                var_6 = !_func_090( level._ID794 _meth_80AF(), level._ID29816[var_0] + ( 0, 0, 96 ), 0, level._ID794 );

            if ( !var_6 )
            {
                _unknown_1C9C( var_0 );
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
    if ( _func_02F( var_0 ) )
    {
        if ( !_func_02F( level._ID43367[var_0] ) )
        {
            var_1 = _func_0E2( "allies" );
            var_2 = var_1;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];

                if ( var_3._ID170 != var_0 )
                    continue;

                level._ID43367[var_0] = var_3;
                break;
            }

            var_clear_2
            var_clear_0
        }
    }

    if ( !_func_02F( var_0 ) )
    {
        var_3 = _ID42237::_ID28945( level._ID43367 );

        if ( !_func_02F( var_3 ) )
        {
            var_1 = [];
            var_5 = level._ID43367;

            for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
            {
                var_3 = var_5[var_6];

                if ( _func_02F( var_3 ) )
                    var_1[var_6] = var_3;
            }

            var_clear_1
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
    if ( _func_02F( level._ID29811 ) )
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
        if ( _unknown_1D3F() )
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
        if ( !_unknown_1D60() )
        {
            if ( !_func_02F( level._ID14975 ) )
                thread _ID8278();

            for (;;)
            {
                _unknown_1D76();
                _ID42237::_ID14426( "friendly_spawner_locked" );

                if ( _ID42237::_ID14385( "player_looks_away_from_spawner" ) || _unknown_1D86() )
                    break;
            }

            _ID42237::_ID14402( "friendly_spawner_locked" );
        }

        var_3 = _unknown_1D5E( var_0 );
        var_3._ID216 = 1;
        var_4 = var_3._ID740;
        var_3._ID740 = level._ID29816["allies"];
        var_2 = var_3 _meth_809B();
        var_3._ID740 = var_4;

        if ( _ID42407::_ID35060( var_2 ) )
        {
            thread _unknown_1E1A();
            wait 1;
            continue;
        }

        level notify( "reinforcement_spawned",  var_2  );
        break;
    }

    for (;;)
    {
        if ( !_func_02F( var_1 ) )
            break;

        if ( _unknown_1D54( var_1, level._ID9439 ) == "none" )
            break;

        var_1 = level._ID9439[var_1];
    }

    if ( _func_02F( var_1 ) )
        var_2 _ID42407::_ID32315( var_1 );

    var_2 _unknown_1A94();
    thread _unknown_1E64();
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
    if ( !_func_02F( var_0 ) || var_0 == "allies" )
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
    var_0 = _func_0DE();
    _ID42237::_ID3350( var_0, ::_unknown_1ED6 );
}

_ID29566()
{
    self._ID29701 = undefined;
}

_ID43824( var_0 )
{
    if ( !_func_02F( var_0._ID31388 ) )
        return;

    if ( !_func_125( var_0._ID31388, "color_delays" ) )
        return;

    var_1 = _func_129( var_0._ID31388, ":, " );
    var_2 = [];

    for ( var_3 = 0; var_3 < var_1.size; var_3++ )
    {
        if ( var_1[var_3] == "color_delays" )
            continue;

        if ( !_func_02F( var_1[var_3 + 1] ) )
            return;

        var_2[var_1[var_3]] = _func_0C2( var_1[var_3 + 1] );
        var_3++;
    }

    var_0._ID46097 = var_2;
}

_ID16018( var_0 )
{
    if ( _func_02F( self._ID1194 ) && !_func_02F( var_0 ) )
        var_0 = self._ID1194;

    return level._ID8261[var_0];
}

clear_color_progress( var_0 )
{
    if ( !_func_02F( var_0._ID9487 ) )
        return;

    level._ID9488[var_0._ID1194][var_0._ID31209] = undefined;
    var_0._ID9487 = undefined;
}
