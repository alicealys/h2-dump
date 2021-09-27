// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID16273( var_0 )
{
    var_0 += "";

    if ( _func_02F( level._ID9245 ) )
        return level._ID9245[var_0];

    var_1 = [];
    var_2 = level._ID9242;

    for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
    {
        var_3 = var_2[var_4];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3._ID40005["type"] != "exploder" )
            continue;

        if ( !_func_02F( var_3._ID40005["exploder"] ) )
            continue;

        if ( var_3._ID40005["exploder"] == var_0 )
            var_1[var_1.size] = var_3;
    }

    var_clear_2
    var_clear_0
    return var_1;
}

_ID33106( var_0 )
{
    var_1 = var_0._ID31170;

    if ( !_func_02F( level._ID13631[var_1] ) )
        level._ID13631[var_1] = [];

    var_2 = var_0._ID1193;

    if ( !_func_02F( var_2 ) )
        var_2 = "";

    level._ID13631[var_1][level._ID13631[var_1].size] = var_0;

    if ( _unknown_0302( var_0 ) )
    {
        var_0 _meth_805A();
        return;
    }

    if ( _unknown_0306( var_0 ) )
    {
        var_0 _meth_805A();
        var_0 _meth_82C9();

        if ( _func_02F( var_0._ID989 ) && var_0._ID989 & 1 )
        {
            if ( _func_02F( var_0._ID31139 ) )
                var_0 _meth_805F();
        }

        return;
    }

    if ( _unknown_0344( var_0 ) )
    {
        var_0 _meth_805A();
        var_0 _meth_82C9();

        if ( _func_02F( var_0._ID989 ) && var_0._ID989 & 1 )
            var_0 _meth_805F();

        return;
    }

    if ( _unknown_036F( var_0 ) )
    {
        var_3 = _func_125( var_0._ID1193, "exploderanimhide" ) || _func_125( var_0._ID1193, "exploderanimend" );

        if ( var_3 )
        {
            var_0 _meth_805A();
            var_0 _meth_82C9();

            if ( _func_02F( var_0._ID989 ) && var_0._ID989 & 1 )
                var_0 _meth_805F();
        }

        return;
    }
}

_ID49999()
{
    if ( level._ID9228 && _func_039( "createfx_exploder_waittime" ) == "" )
        _func_034( "createfx_exploder_waittime", 3.0 );
}

_ID43302()
{
    return _func_03B( "createfx_exploder_waittime", 3.0 );
}

_ID33558()
{
    level._ID13631 = [];
    var_0 = _func_1A2( "script_brushmodel", "classname" );
    var_1 = _func_1A2( "script_model", "classname" );

    for ( var_2 = 0; var_2 < var_1.size; var_2++ )
        var_0[var_0.size] = var_1[var_2];

    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];

        if ( _func_02F( var_4._ID31401 ) )
            var_4._ID31170 = var_4._ID31401;

        if ( _func_02F( var_4._ID23001 ) )
            continue;

        if ( _func_02F( var_4._ID31170 ) )
            _unknown_01F0( var_4 );
    }

    var_clear_2
    var_clear_0
    var_6 = [];
    var_7 = _func_1A2( "script_brushmodel", "classname" );

    for ( var_2 = 0; var_2 < var_7.size; var_2++ )
    {
        if ( _func_02F( var_7[var_2]._ID31401 ) )
            var_7[var_2]._ID31170 = var_7[var_2]._ID31401;

        if ( _func_02F( var_7[var_2]._ID31170 ) )
            var_6[var_6.size] = var_7[var_2];
    }

    var_7 = _func_1A2( "script_model", "classname" );

    for ( var_2 = 0; var_2 < var_7.size; var_2++ )
    {
        if ( _func_02F( var_7[var_2]._ID31401 ) )
            var_7[var_2]._ID31170 = var_7[var_2]._ID31401;

        if ( _func_02F( var_7[var_2]._ID31170 ) )
            var_6[var_6.size] = var_7[var_2];
    }

    var_7 = _func_1A2( "script_origin", "classname" );

    for ( var_2 = 0; var_2 < var_7.size; var_2++ )
    {
        if ( _func_02F( var_7[var_2]._ID31401 ) )
            var_7[var_2]._ID31170 = var_7[var_2]._ID31401;

        if ( _func_02F( var_7[var_2]._ID31170 ) )
            var_6[var_6.size] = var_7[var_2];
    }

    var_7 = _func_1A2( "item_health", "classname" );

    for ( var_2 = 0; var_2 < var_7.size; var_2++ )
    {
        if ( _func_02F( var_7[var_2]._ID31401 ) )
            var_7[var_2]._ID31170 = var_7[var_2]._ID31401;

        if ( _func_02F( var_7[var_2]._ID31170 ) )
            var_6[var_6.size] = var_7[var_2];
    }

    var_7 = level._ID36707;

    for ( var_2 = 0; var_2 < var_7.size; var_2++ )
    {
        if ( !_func_02F( var_7[var_2] ) )
            continue;

        if ( _func_02F( var_7[var_2]._ID31401 ) )
            var_7[var_2]._ID31170 = var_7[var_2]._ID31401;

        if ( _func_02F( var_7[var_2]._ID31170 ) )
        {
            if ( !_func_02F( var_7[var_2]._ID65 ) )
                var_7[var_2]._ID65 = ( 0, 0, 0 );

            var_6[var_6.size] = var_7[var_2];
        }
    }

    if ( !_func_02F( level._ID9242 ) )
        level._ID9242 = [];

    var_8 = [];
    var_8["exploderchunk visible"] = 1;
    var_8["exploderchunk"] = 1;
    var_8["exploder"] = 1;
    thread _unknown_0552();

    for ( var_2 = 0; var_2 < var_6.size; var_2++ )
    {
        var_9 = var_6[var_2];
        var_4 = _ID42237::_ID9217( var_9._ID31220 );
        var_4._ID40005 = [];
        var_4._ID40005["origin"] = var_9._ID740;
        var_4._ID40005["angles"] = var_9._ID65;
        var_4._ID40005["delay"] = var_9._ID916;
        var_4._ID40005["delay_post"] = var_9._ID31122;
        var_4._ID40005["firefx"] = var_9._ID31182;
        var_4._ID40005["firefxdelay"] = var_9._ID31183;
        var_4._ID40005["firefxsound"] = var_9._ID31184;
        var_4._ID40005["firefxtimeout"] = var_9._ID31185;
        var_4._ID40005["earthquake"] = var_9._ID31160;
        var_4._ID40005["rumble"] = var_9._ID31422;
        var_4._ID40005["damage"] = var_9._ID31108;
        var_4._ID40005["damage_radius"] = var_9._ID31413;
        var_4._ID40005["soundalias"] = var_9._ID31438;
        var_4._ID40005["repeat"] = var_9._ID31417;
        var_4._ID40005["delay_min"] = var_9._ID31121;
        var_4._ID40005["delay_max"] = var_9._ID31120;
        var_4._ID40005["target"] = var_9._ID1191;
        var_4._ID40005["ender"] = var_9._ID31163;
        var_4._ID40005["physics"] = var_9._ID31395;
        var_4._ID40005["type"] = "exploder";

        if ( !_func_02F( var_9._ID31220 ) )
            var_4._ID40005["fxid"] = "No FX";
        else
            var_4._ID40005["fxid"] = var_9._ID31220;

        var_4._ID40005["exploder"] = var_9._ID31170;

        if ( _func_02F( level._ID9245 ) )
        {
            var_10 = level._ID9245[var_4._ID40005["exploder"]];

            if ( !_func_02F( var_10 ) )
                var_10 = [];

            var_10[var_10.size] = var_4;
            level._ID9245[var_4._ID40005["exploder"]] = var_10;
        }

        if ( !_func_02F( var_4._ID40005["delay"] ) )
            var_4._ID40005["delay"] = 0;

        if ( _func_02F( var_9._ID1191 ) )
        {
            var_11 = _func_1A2( var_4._ID40005["target"], "targetname" )[0];

            if ( _func_02F( var_11 ) )
            {
                var_12 = var_11._ID740;
                var_4._ID40005["angles"] = _func_11A( var_12 - var_4._ID40005["origin"] );
            }
            else
            {
                var_11 = _ID42237::_ID16012( var_4._ID40005["target"] );

                if ( _func_02F( var_11 ) )
                {
                    var_12 = var_11._ID740;
                    var_4._ID40005["angles"] = _func_11A( var_12 - var_4._ID40005["origin"] );
                }
            }
        }

        if ( !_func_02F( var_9._ID172 ) )
        {
            var_4._ID669 = var_9;

            if ( _func_02F( var_4._ID669._ID31295 ) )
                _func_14C( var_4._ID669._ID31295 );
        }
        else if ( var_9._ID172 == "script_brushmodel" || _func_02F( var_9._ID669 ) )
        {
            var_4._ID669 = var_9;
            var_4._ID669._ID11063 = var_9._ID31139;
        }

        if ( _func_02F( var_9._ID1193 ) && _func_02F( var_8[var_9._ID1193] ) )
            var_4._ID40005["exploder_type"] = var_9._ID1193;
        else if ( _func_02F( var_9._ID1193 ) && _func_125( var_9._ID1193, "exploderanim" ) )
            var_4._ID40005["exploder_type"] = "exploderanim";
        else
            var_4._ID40005["exploder_type"] = "normal";

        if ( _func_02F( var_9._ID23001 ) )
        {
            var_4._ID40005["masked_exploder"] = var_9._ID669;
            var_4._ID40005["masked_exploder_spawnflags"] = var_9._ID989;
            var_4._ID40005["masked_exploder_script_disconnectpaths"] = var_9._ID31139;
            var_9 _meth_80B7();
        }

        var_4 _ID42229::_ID28272();
        var_4 _ID42229::_ID49930();
    }

    _unknown_0691();
}

_ID33030()
{
    waitframe;
    waitframe;
    waitframe;
    var_0 = [];
    var_1 = level._ID9242;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];

        if ( var_2._ID40005["type"] != "exploder" )
            continue;

        var_3 = var_2._ID40005["flag"];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3 == "nil" )
            var_2._ID40005["flag"] = undefined;

        var_0[var_3] = 1;
    }

    var_clear_3
    var_clear_0
    var_5 = var_0;

    for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
    {
        var_6 = var_5[var_7];
        thread _unknown_08D2( var_7 );
    }

    var_clear_2
}

_ID13617( var_0 )
{
    if ( !_ID42237::_ID14396( var_0 ) )
        _ID42237::_ID14400( var_0 );

    _ID42237::_ID14413( var_0 );
    var_1 = level._ID9242;

    for ( var_4 = _func_1DA( var_1 ); _func_02F( var_4 ); var_4 = _func_1BF( var_1, var_4 ) )
    {
        var_2 = var_1[var_4];

        if ( var_2._ID40005["type"] != "exploder" )
            continue;

        var_3 = var_2._ID40005["flag"];

        if ( !_func_02F( var_3 ) )
            continue;

        if ( var_3 != var_0 )
            continue;

        var_2 _ID42237::_ID1792();
    }

    var_clear_3
    var_clear_0
}

_ID13620( var_0 )
{
    return _func_02F( var_0._ID1193 ) && var_0._ID1193 == "exploder";
}

_ID13621( var_0 )
{
    return var_0._ID669 == "fx" && !_func_02F( var_0._ID1193 ) || var_0._ID1193 != "exploderchunk";
}

_ID13619( var_0 )
{
    return _func_02F( var_0._ID1193 ) && var_0._ID1193 == "exploderchunk";
}

_ID45494( var_0 )
{
    return _func_02F( var_0._ID1193 ) && _func_125( var_0._ID1193, "exploderanim" );
}

_ID34002( var_0 )
{
    var_0 += "";

    if ( _func_02F( level._ID9245 ) )
    {
        var_1 = level._ID9245[var_0];

        if ( _func_02F( var_1 ) )
        {
            var_2 = var_1;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];

                if ( !_unknown_09FD( var_3._ID669 ) && !_unknown_0A01( var_3._ID669 ) && !_unknown_0A1E( var_3._ID669 ) )
                    var_3._ID669 _meth_8059();

                if ( _func_02F( var_3._ID6179 ) )
                    var_3._ID669 _meth_8059();
            }

            var_clear_2
            var_clear_0
            return;
        }
    }
    else
    {
        for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
        {
            var_3 = level._ID9242[var_5];

            if ( !_func_02F( var_3 ) )
                continue;

            if ( var_3._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_3._ID40005["exploder"] ) )
                continue;

            if ( var_3._ID40005["exploder"] + "" != var_0 )
                continue;

            if ( _func_02F( var_3._ID669 ) )
            {
                if ( !_unknown_0A98( var_3._ID669 ) && !_unknown_0A9B( var_3._ID669 ) && !_unknown_0AB8( var_3._ID669 ) )
                    var_3._ID669 _meth_8059();

                if ( _func_02F( var_3._ID6179 ) )
                    var_3._ID669 _meth_8059();
            }
        }
    }
}

_ID36482( var_0 )
{
    var_0 += "";

    if ( _func_02F( level._ID9245 ) )
    {
        var_1 = level._ID9245[var_0];

        if ( _func_02F( var_1 ) )
        {
            var_2 = var_1;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];

                if ( !_func_02F( var_3._ID22654 ) )
                    continue;

                var_3._ID22654 _meth_80B7();
            }

            var_clear_2
            var_clear_0
            return;
        }
    }
    else
    {
        for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
        {
            var_3 = level._ID9242[var_5];

            if ( !_func_02F( var_3 ) )
                continue;

            if ( var_3._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_3._ID40005["exploder"] ) )
                continue;

            if ( var_3._ID40005["exploder"] + "" != var_0 )
                continue;

            if ( !_func_02F( var_3._ID22654 ) )
                continue;

            var_3._ID22654 _meth_80B7();
        }
    }
}

_ID15715( var_0 )
{
    var_0 += "";
    var_1 = [];

    if ( _func_02F( level._ID9245 ) )
    {
        var_2 = level._ID9245[var_0];

        if ( _func_02F( var_2 ) )
            var_1 = var_2;
    }
    else
    {
        var_3 = level._ID9242;

        for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
        {
            var_4 = var_3[var_5];

            if ( var_4._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_4._ID40005["exploder"] ) )
                continue;

            if ( var_4._ID40005["exploder"] + "" != var_0 )
                continue;

            var_1[var_1.size] = var_4;
        }

        var_clear_2
        var_clear_0
    }

    return var_1;
}

_ID18515( var_0 )
{
    var_0 += "";

    if ( _func_02F( level._ID9245 ) )
    {
        var_1 = level._ID9245[var_0];

        if ( _func_02F( var_1 ) )
        {
            var_2 = var_1;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];

                if ( _func_02F( var_3._ID669 ) )
                    var_3._ID669 _meth_805A();
            }

            var_clear_2
            var_clear_0
            return;
        }
    }
    else
    {
        for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
        {
            var_3 = level._ID9242[var_5];

            if ( !_func_02F( var_3 ) )
                continue;

            if ( var_3._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_3._ID40005["exploder"] ) )
                continue;

            if ( var_3._ID40005["exploder"] + "" != var_0 )
                continue;

            if ( _func_02F( var_3._ID669 ) )
                var_3._ID669 _meth_805A();
        }
    }
}

_ID10257( var_0 )
{
    var_0 += "";

    if ( _func_02F( level._ID9245 ) )
    {
        var_1 = level._ID9245[var_0];

        if ( _func_02F( var_1 ) )
        {
            var_2 = var_1;

            for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
            {
                var_3 = var_2[var_4];

                if ( _func_02F( var_3._ID669 ) )
                    var_3._ID669 _meth_80B7();
            }

            var_clear_2
            var_clear_0
        }
    }
    else
    {
        for ( var_5 = 0; var_5 < level._ID9242.size; var_5++ )
        {
            var_3 = level._ID9242[var_5];

            if ( !_func_02F( var_3 ) )
                continue;

            if ( var_3._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_3._ID40005["exploder"] ) )
                continue;

            if ( var_3._ID40005["exploder"] + "" != var_0 )
                continue;

            if ( _func_02F( var_3._ID669 ) )
                var_3._ID669 _meth_80B7();
        }
    }

    level notify( "killexplodertridgers" + var_0 );
}

_ID46984()
{
    var_0 = [];

    if ( _func_02F( level._ID9245 ) )
    {
        var_1 = level._ID9245;

        for ( var_3 = _func_1DA( var_1 ); _func_02F( var_3 ); var_3 = _func_1BF( var_1, var_3 ) )
        {
            var_2 = var_1[var_3];
            var_0 = _ID42237::_ID3296( var_0, var_2 );
        }

        var_clear_2
        var_clear_0
    }
    else
    {
        var_4 = level._ID9242;

        for ( var_6 = _func_1DA( var_4 ); _func_02F( var_6 ); var_6 = _func_1BF( var_4, var_6 ) )
        {
            var_5 = var_4[var_6];

            if ( var_5._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_5._ID40005["exploder"] ) )
                continue;

            var_0[var_0.size] = var_5;
        }

        var_clear_2
        var_clear_0
    }

    return var_0;
}

_ID13614()
{
    if ( _func_02F( self._ID40005["delay"] ) )
        var_0 = self._ID40005["delay"];
    else
        var_0 = 0;

    if ( _func_02F( self._ID40005["damage_radius"] ) )
        var_1 = self._ID40005["damage_radius"];
    else
        var_1 = 128;

    var_2 = self._ID40005["damage"];
    var_3 = self._ID40005["origin"];
    wait(var_0);

    if ( _func_02F( level._ID9553 ) )
        [[ level._ID9553 ]]( var_3, var_1, var_2 );
    else
        _func_18F( var_3, var_1, var_2, var_2 );
}

_ID1793()
{
    if ( _func_02F( self._ID40005["firefx"] ) )
        thread _unknown_11E8();

    if ( _func_02F( self._ID40005["fxid"] ) && self._ID40005["fxid"] != "No FX" )
        thread _ID6180();
    else if ( _func_02F( self._ID40005["soundalias"] ) && self._ID40005["soundalias"] != "nil" )
        thread _unknown_1206();

    if ( _func_02F( self._ID40005["loopsound"] ) && self._ID40005["loopsound"] != "nil" )
        thread _unknown_1216();

    if ( _func_02F( self._ID40005["damage"] ) )
        thread _unknown_1026();

    if ( _func_02F( self._ID40005["earthquake"] ) )
        thread _unknown_124E();

    if ( _func_02F( self._ID40005["rumble"] ) )
        thread _unknown_121F();

    if ( self._ID40005["exploder_type"] == "exploderanim" )
        thread _unknown_11C5();
    else if ( self._ID40005["exploder_type"] == "exploder" )
        thread _unknown_11A4();
    else if ( self._ID40005["exploder_type"] == "exploderchunk" || self._ID40005["exploder_type"] == "exploderchunk visible" )
        thread _unknown_1144();
    else
        thread _unknown_10FE();
}

_ID6177()
{
    var_0 = self._ID40005["exploder"];

    if ( _func_02F( self._ID40005["delay"] ) && self._ID40005["delay"] >= 0 )
        wait(self._ID40005["delay"]);
    else
        wait 0.05;

    if ( !_func_02F( self._ID669 ) )
        return;

    if ( _func_02F( self._ID669._ID170 ) )
    {
        if ( _ID42237::_ID20913() && self._ID669._ID989 & 1 )
            self._ID669 call [[ level._ID8529 ]]();
    }

    if ( level._ID9228 )
    {
        if ( _func_02F( self._ID13610 ) )
            return;

        self._ID13610 = 1;

        if ( _func_02F( self._ID669 ) && _func_02F( self._ID669._ID170 ) )
        {
            self._ID669 _meth_805A();
            self._ID669 _meth_82C9();
        }

        var_1 = _unknown_0DBA();
        wait(var_1);
        self._ID13610 = undefined;

        if ( _func_02F( self._ID669 ) && _func_02F( self._ID669._ID170 ) )
        {
            self._ID669 _meth_8059();
            self._ID669 _meth_82C8();
        }

        return;
    }

    if ( !_func_02F( self._ID40005["fxid"] ) || self._ID40005["fxid"] == "No FX" )
        self._ID40005["exploder"] = undefined;

    waitframe;

    if ( _func_02F( self._ID669 ) && _func_02F( self._ID669._ID170 ) )
        self._ID669 _meth_80B7();
}

_ID6180()
{
    if ( _func_02F( self._ID40005["delay"] ) )
        wait(self._ID40005["delay"]);

    var_0 = undefined;

    if ( _func_02F( self._ID40005["target"] ) )
        var_0 = _ID42237::_ID16012( self._ID40005["target"] );

    if ( !_func_02F( var_0 ) )
    {
        if ( _func_02F( self._ID669 ) )
            self._ID669 _meth_80B7();

        return;
    }

    self._ID669 _meth_8059();

    if ( _func_02F( self._ID40005["delay_post"] ) )
        wait(self._ID40005["delay_post"]);

    var_1 = self._ID40005["origin"];
    var_2 = self._ID40005["angles"];
    var_3 = var_0._ID740;
    var_4 = var_3 - self._ID40005["origin"];
    var_5 = var_4[0];
    var_6 = var_4[1];
    var_7 = var_4[2];
    var_8 = _func_02F( self._ID40005["physics"] );

    if ( var_8 )
    {
        var_9 = undefined;

        if ( _func_02F( var_0._ID1191 ) )
            var_9 = var_0 _ID42237::_ID16012();

        if ( !_func_02F( var_9 ) )
        {
            var_10 = var_1;
            var_11 = var_0._ID740;
        }
        else
        {
            var_10 = var_0._ID740;
            var_11 = var_9._ID740 - var_0._ID740 * self._ID40005["physics"];
        }

        self._ID669 _meth_82CC( var_10, var_11 );
        return;
    }
    else
    {
        self._ID669 _meth_82C7( ( var_5, var_6, var_7 ), 12 );
        self._ID669 _meth_82BC( ( var_5, var_6, var_7 ), 12 );
    }

    if ( level._ID9228 )
    {
        if ( _func_02F( self._ID13610 ) )
            return;

        self._ID13610 = 1;
        var_12 = _unknown_0F10();
        wait(var_12);
        self._ID13610 = undefined;
        self._ID40005["origin"] = var_1;
        self._ID40005["angles"] = var_2;
        self._ID669 _meth_805A();
        return;
    }

    self._ID40005["exploder"] = undefined;
    wait 6;

    if ( _func_02F( self._ID669 ) )
        self._ID669 _meth_80B7();
}

_ID50984()
{
    var_0 = _ID42237::_ID35164();

    if ( _func_02F( self._ID920 ) )
        var_0._ID920 = self._ID920;

    var_0 _meth_80B8( self._ID31295 );
    var_1 = undefined;

    if ( _func_02F( self._ID44380 ) )
    {
        var_2 = _ID42237::_ID16012( self._ID44380 );

        if ( _func_02F( var_2 ) )
            var_1 = var_2._ID740;
    }
    else if ( _func_02F( self._ID52269 ) )
        var_1 = self._ID52269;

    if ( _func_02F( var_1 ) )
        var_0 _meth_848A( var_1 );

    thread _ID42237::_ID10280( var_0 );
    return var_0;
}

_ID6178()
{
    if ( _func_02F( self._ID40005["delay"] ) )
        wait(self._ID40005["delay"]);

    var_0 = undefined;

    if ( !_func_02F( self._ID669._ID31295 ) )
    {
        self._ID669 _meth_8059();
        self._ID669 _meth_82C8();
    }
    else
        var_0 = self._ID669 _unknown_144A();

    self._ID6179 = 1;

    if ( _ID42237::_ID20913() && !_func_02F( self._ID669._ID31295 ) && self._ID669._ID989 & 1 )
    {
        if ( !_func_02F( self._ID669._ID11063 ) )
            self._ID669 call [[ level._ID8529 ]]();
        else
            self._ID669 call [[ level._ID11068 ]]();
    }

    if ( level._ID9228 )
    {
        if ( _func_02F( self._ID13610 ) )
            return;

        self._ID13610 = 1;
        var_1 = _unknown_101A();
        wait(var_1);
        self._ID13610 = undefined;

        if ( !_func_02F( var_0 ) )
        {
            self._ID669 _meth_805A();
            self._ID669 _meth_82C9();
        }
        else
            var_0 _meth_80B7();
    }
}

_ID52600()
{
    var_0 = self._ID669;
    var_1 = _func_125( var_0._ID1193, "exploderanimhide" );
    var_2 = _func_125( var_0._ID1193, "exploderanimend" );
    var_3 = 0.0;

    if ( !var_2 && _func_02F( self._ID40005["delay"] ) && self._ID40005["delay"] > 0.0 )
    {
        var_3 = self._ID40005["delay"];
        wait(var_3);
    }

    if ( !_func_02F( var_0._ID31295 ) )
    {
        if ( !var_2 )
        {
            var_0 _meth_8059();
            var_0 _meth_82C8();

            if ( _func_02F( var_0._ID989 ) && var_0._ID989 & 1 )
                var_0 _meth_805F();
        }
    }
    else
    {
        if ( !_func_02F( var_0._ID43009 ) )
        {
            var_4 = self._ID669 _unknown_1535();
            var_0._ID43009 = var_4;
        }

        if ( var_2 )
        {
            var_0._ID43009 _meth_805A();
            var_0._ID43009 _meth_82C9();
        }
        else
        {
            var_0._ID43009 _meth_8059();
            var_0._ID43009 _meth_82C8();
        }
    }

    if ( var_2 )
        return;

    if ( _func_02F( self._ID40005["delay_post"] ) && self._ID40005["delay_post"] > 0.0 )
    {
        var_5 = self._ID40005["delay_post"];
        wait(var_5);
        var_3 += var_5;
    }

    var_0 notify( "play_exploder_anim" );

    if ( level._ID9228 && var_1 )
    {
        var_0 endon( "death" );
        var_0 endon( "play_exploder_anim" );
        var_6 = _unknown_1129();

        if ( _func_02F( level._ID43603 ) )
        {
            var_7 = self._ID40005["exploder"] + "";

            if ( _func_02F( level._ID43603[var_7] ) )
            {
                var_6 = _func_0E6( level._ID43603[var_7], var_6 );
                var_6 -= var_3;
            }
        }

        if ( var_6 > 0.0 )
            wait(var_6);

        if ( !_func_02F( var_0._ID43009 ) )
        {
            var_0 _meth_805A();
            var_0 _meth_82C9();
        }
        else
        {
            var_0._ID43009 _meth_80B7();
            var_0._ID43009 = undefined;
        }
    }
}

_ID13625()
{
    if ( !_ID42237::_ID20913() )
        return;

    _unknown_16C6();
    level._ID794 _meth_80B4( self._ID40005["rumble"] );
}

_ID13615()
{
    if ( !_func_02F( self._ID40005["delay"] ) )
        self._ID40005["delay"] = 0;

    var_0 = self._ID40005["delay"];
    var_1 = self._ID40005["delay"] + 0.001;

    if ( _func_02F( self._ID40005["delay_min"] ) )
        var_0 = self._ID40005["delay_min"];

    if ( _func_02F( self._ID40005["delay_max"] ) )
        var_1 = self._ID40005["delay_max"];

    if ( var_0 > 0 )
        wait(_func_0BA( var_0, var_1 ));
}

_ID12319()
{
    if ( _func_02F( self._ID22676 ) )
        self._ID22676 _meth_80B7();

    var_0 = self._ID40005["origin"];
    var_1 = self._ID40005["loopsound"];
    _ID12319();
    self._ID22676 = _ID42237::_ID27005( var_1, var_0 );
}

_ID34975()
{
    _unknown_1788();
}

_ID12320()
{
    var_0 = self._ID40005["origin"];
    var_1 = self._ID40005["soundalias"];
    _unknown_1770();
    _ID42237::_ID27077( var_1, var_0 );
}

_ID13616()
{
    _unknown_177B();
    _ID42237::_ID11200( self._ID40005["earthquake"], self._ID40005["origin"] );
}

_ID13624()
{
    if ( !_func_02F( self._ID40005["soundalias"] ) || self._ID40005["soundalias"] == "nil" )
        return;

    _ID42237::_ID27077( self._ID40005["soundalias"], self._ID40005["origin"] );
}

_ID14256()
{
    var_0 = self._ID40005["forward"];
    var_1 = self._ID40005["up"];
    var_2 = undefined;
    var_3 = self._ID40005["firefxsound"];
    var_4 = self._ID40005["origin"];
    var_5 = self._ID40005["firefx"];
    var_6 = self._ID40005["ender"];

    if ( !_func_02F( var_6 ) )
        var_6 = "createfx_effectStopper";

    var_7 = 0.5;

    if ( _func_02F( self._ID40005["firefxdelay"] ) )
        var_7 = self._ID40005["firefxdelay"];

    _unknown_1817();

    if ( _func_02F( var_3 ) )
        _ID42237::_ID22647( var_3, var_4, ( 0, 0, 0 ), 1, var_6 );

    _func_156( level._ID1426[var_5], self._ID40005["origin"], var_0, var_1 );
}

_ID6870()
{
    if ( _func_02F( self._ID40005["repeat"] ) )
    {
        thread _unknown_188D();

        for ( var_0 = 0; var_0 < self._ID40005["repeat"]; var_0++ )
        {
            _func_156( level._ID1426[self._ID40005["fxid"]], self._ID40005["origin"], self._ID40005["forward"], self._ID40005["up"] );
            _unknown_1881();
        }

        return;
    }

    if ( !_func_02F( self._ID40005["delay"] ) )
        self._ID40005["delay"] = 0;

    if ( self._ID40005["delay"] >= 0 )
    {
        _unknown_18A8();
        var_1 = 0;
    }
    else
        var_1 = self._ID40005["delay"];

    if ( _func_02F( self._ID40005["cannon_spawn_func"] ) )
        self [[ self._ID40005["cannon_spawn_func"] ]]();
    else
        _unknown_1981( var_1 );

    _unknown_1917();
}

_ID47430( var_0 )
{
    if ( _func_02F( self._ID22654 ) )
        self._ID22654 _meth_80B7();

    if ( _func_02F( self._ID40005["tintcolor"] ) || _func_02F( self._ID40005["tintalpha"] ) || _func_02F( self._ID40005["emissive"] ) || _func_02F( self._ID40005["sizescale"] ) )
    {
        var_1 = self._ID40005["tintcolor"];

        if ( !_func_02F( var_1 ) )
            var_1 = ( 1, 1, 1 );

        var_2 = self._ID40005["tintalpha"];

        if ( !_func_02F( var_2 ) )
            var_2 = 1;

        var_3 = self._ID40005["emissive"];

        if ( !_func_02F( var_3 ) )
            var_3 = 1;

        var_4 = self._ID40005["sizescale"];

        if ( !_func_02F( var_4 ) )
            var_4 = 1;

        self._ID22654 = _func_15B( level._ID1426[self._ID40005["fxid"]], self._ID40005["origin"], self._ID40005["forward"], self._ID40005["up"], var_1, var_2, var_3, var_4 );
    }
    else
        self._ID22654 = _func_15B( _ID42237::_ID16299( self._ID40005["fxid"] ), self._ID40005["origin"], self._ID40005["forward"], self._ID40005["up"] );

    var_5 = _func_02F( self._ID40005["kill_on_delete"] ) && self._ID40005["kill_on_delete"] || level._ID9228;

    if ( var_5 )
        _func_15E( self._ID22654, 1 );

    if ( self._ID40005["delay"] >= 0 )
        _func_15C( self._ID22654 );
    else
        _func_15C( self._ID22654, var_0 );
}

_ID1788( var_0, var_1, var_2 )
{
    var_0 += "";
    level notify( "exploding_" + var_0 );
    var_3 = 0;

    if ( _func_02F( level._ID9245 ) && !level._ID9228 )
    {
        var_4 = level._ID9245[var_0];

        if ( _func_02F( var_4 ) )
        {
            var_5 = var_4;

            for ( var_7 = _func_1DA( var_5 ); _func_02F( var_7 ); var_7 = _func_1BF( var_5, var_7 ) )
            {
                var_6 = var_5[var_7];

                if ( !var_6 _unknown_1B9E() )
                    continue;

                var_6 _ID42237::_ID1792();
                var_3 = 1;
            }

            var_clear_2
            var_clear_0
        }
    }
    else
    {
        for ( var_8 = 0; var_8 < level._ID9242.size; var_8++ )
        {
            var_6 = level._ID9242[var_8];

            if ( !_func_02F( var_6 ) )
                continue;

            if ( var_6._ID40005["type"] != "exploder" )
                continue;

            if ( !_func_02F( var_6._ID40005["exploder"] ) )
                continue;

            if ( var_6._ID40005["exploder"] + "" != var_0 )
                continue;

            if ( !var_6 _unknown_1C10() )
                continue;

            var_6 _ID42237::_ID1792();
            var_3 = 1;
        }
    }

    if ( !_unknown_1C5B() && !var_3 )
        _unknown_1C4C( var_0, var_1, var_2 );
}

_ID13611( var_0, var_1, var_2 )
{
    [[ level._ID1461._ID13628 ]]( var_0, var_1, var_2 );
}

_ID21260( var_0 )
{
    var_1 = _unknown_1526( var_0 );

    if ( _func_02F( var_1 ) )
    {
        var_2 = var_1;

        for ( var_4 = _func_1DA( var_2 ); _func_02F( var_4 ); var_4 = _func_1BF( var_2, var_4 ) )
        {
            var_3 = var_2[var_4];

            if ( _func_02F( var_3._ID22654 ) )
                _func_15E( var_3._ID22654, 1 );
        }

        var_clear_2
        var_clear_0
        waittillframeend;
        var_5 = var_1;

        for ( var_6 = _func_1DA( var_5 ); _func_02F( var_6 ); var_6 = _func_1BF( var_5, var_6 ) )
        {
            var_3 = var_5[var_6];
            var_3 _ID42237::_ID26402();
        }

        var_clear_1
        var_clear_0
    }
}

_ID7356()
{
    var_0 = self;

    if ( _func_02F( var_0._ID40005["platform"] ) && _func_02F( level._ID227 ) )
    {
        var_1 = var_0._ID40005["platform"];

        if ( var_1 == "cg" && !level._ID227 || var_1 == "ng" && !level._ID688 )
            return 0;
    }

    return 1;
}

_ID1784( var_0, var_1, var_2 )
{
    if ( !_unknown_1D13( var_0 ) )
        return;

    var_3 = _func_0C1( var_0 );
    _func_22F( var_3, var_1, var_2 );
}

_ID9774( var_0, var_1, var_2 )
{
    if ( !_unknown_1D2A( var_0 ) )
        return;

    var_3 = _func_0C1( var_0 );
    _func_2A3( var_3, var_1, var_2 );
}

_ID20637( var_0 )
{
    if ( !_func_02F( var_0 ) )
        return 0;

    var_1 = var_0;

    if ( _func_031( var_0 ) )
    {
        var_1 = _func_0C1( var_0 );

        if ( var_1 == 0 && var_0 != "0" )
            return 0;
    }

    return var_1 >= 0;
}

_ID33963()
{
    if ( _ID42237::_ID20913() )
        return 1;

    if ( !_func_02F( level._ID9228 ) )
        level._ID9228 = _func_039( "createfx" ) != "";

    if ( level._ID9228 )
        return 1;
    else
        return _func_039( "clientSideEffects" ) != "1";
}

_ID13613( var_0, var_1, var_2 )
{
    waitframe;
    waitframe;
    _unknown_1D08( var_0, var_1, var_2 );
}

_ID13612( var_0, var_1, var_2 )
{
    _unknown_1D15( var_0, var_1, var_2 );
}
