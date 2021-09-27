// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID30451( var_0 )
{
    if ( !_func_02F( level._ID1374 ) )
        level._ID1374 = _func_1A5();

    level._ID1374._ID29935 = _func_1A5();
    level._ID1374._ID29935._ID39914 = 0;
    level._ID1374._ID29935._ID9467 = "";
}

_ID30455()
{
    level._ID1374._ID29935._ID39914 = 1;
}

_ID30452( var_0, var_1 )
{
    var_1 = _func_0EE( var_1, 0, 1.0 );
    var_0._ID12198 = var_1;
}

_ID30453( var_0, var_1 )
{
    var_1 = _func_0EE( var_1, 0, 1.0 );
    var_0._ID41726 = var_1;
}

_ID30448( var_0, var_1 )
{
    if ( !_func_02F( level._ID1374._ID29935._ID3233 ) || level._ID1374._ID29935._ID3233 != var_0 )
    {
        level._ID1374._ID29935._ID3233 = var_0;
        var_2 = undefined;

        if ( _func_02F( var_1 ) )
            var_2 = var_1;
        else
            var_2 = var_0._ID13819;

        level._ID794 _meth_8339( var_0._ID28609, var_0._ID30177, var_0._ID12198, var_0._ID41726, var_2 );
    }
}

_ID30454( var_0, var_1 )
{
    if ( _func_02F( level._ID794._ID13019 ) && _func_02F( level._ID794._ID13019["player_has_red_flashing_overlay"] ) && level._ID794 _ID42407::_ID13019( "player_has_red_flashing_overlay" ) )
    {
        if ( _func_02F( var_0 ) && var_0 != "none" )
        {
            var_2 = _unknown_0201( var_0 );

            if ( !_func_02F( var_2 ) )
            {
                _ID42463::_ID4144( "Failed to load reverb preset: " + var_0 );
                return;
            }

            if ( var_0 != "deathsdoor" )
            {
                _unknown_019C( var_0, var_2 );
                level._ID1374._ID9835._ID29935 = var_0;
            }
        }
        else
        {
            _unknown_01B4( "none", undefined );
            level._ID1374._ID9835._ID29935 = "none";
        }

        return;
    }

    if ( _func_02F( var_0 ) && var_0 == "none" || !_func_02F( var_0 ) && _func_02F( level._ID1374._ID9467 ) )
    {
        level._ID794 _meth_833A( "snd_enveffectsprio_level", 1 );
        level._ID1374._ID9467 = undefined;
        level._ID1374._ID29935._ID9467 = "";
        return;
    }
    else if ( !_func_02F( var_0 ) || _func_02F( var_0 ) && var_0 == "none" )
        return;

    var_2 = _unknown_029E( var_0 );

    if ( !_func_02F( var_2 ) )
    {
        _ID42463::_ID4144( "Failed to load reverb preset: " + var_0 );
        return;
    }

    level._ID1374._ID9467 = var_0;

    if ( var_0 != "deathsdoor" )
        _unknown_0240( var_0, var_2 );

    if ( level._ID1374._ID29935._ID9467 != var_0 )
    {
        level._ID1374._ID29935._ID9467 = var_0;
        _unknown_01E3( var_2, var_1 );
    }
}

_ID30461( var_0, var_1 )
{
    if ( var_0 != "deathsdoor" )
    {
        level._ID29941 = var_0;

        if ( var_0 == "none" && !_func_02F( level._ID2880["none"] ) )
            level._ID2880["none"] = 1;
        else if ( !_func_02F( level._ID2880[var_0] ) )
        {
            level._ID2880[var_0] = [];
            level._ID2880[var_0]["priority"] = "snd_enveffectsprio_level";
            level._ID2880[var_0]["roomtype"] = var_1._ID30177;
            level._ID2880[var_0]["drylevel"] = var_1._ID12198;
            level._ID2880[var_0]["wetlevel"] = var_1._ID41726;
            level._ID2880[var_0]["fadetime"] = var_1._ID13819;
        }
    }
}

_ID30449()
{
    level._ID29941 = "";
    level._ID794 _meth_833A( "snd_enveffectsprio_level", 2 );
    level._ID1374._ID9467 = undefined;
    level._ID1374._ID29935._ID9467 = "";
}

_ID30450()
{
    var_0 = undefined;

    if ( _func_02F( level._ID1374._ID29935._ID3233 ) )
        var_0 = level._ID1374._ID29935._ID3233;

    return var_0;
}

_ID30458( var_0, var_1 )
{
    var_2 = _ID42463::_ID15958();
    var_3 = "soundtables/sp_defaults.csv";
    var_4 = [];

    if ( var_1 )
        var_4 = _unknown_0384( var_2, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        var_4 = _unknown_0396( var_3, var_0 );

    if ( !_func_02F( var_4 ) || var_4.size == 0 )
        return;

    return var_4;
}

_ID30460( var_0, var_1 )
{
    var_2 = [];
    var_3 = "";
    var_4 = "";
    var_5 = _func_2A0( var_0, "reverb_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( _func_02F( var_5 ) )
    {
        var_6 = 6;

        for ( var_7 = 1; var_7 < var_6; var_7++ )
        {
            var_3 = _func_2A1( var_0, 0, "reverb_names", var_7, var_5[0], var_5[1] );
            var_4 = _func_2A1( var_0, 0, var_1, var_7, var_5[0], var_5[1] );

            if ( var_3 != "comments" && var_4 != "" )
            {
                if ( var_3 != "roomtype" )
                {
                    var_2[var_3] = _func_0C2( var_4 );
                    continue;
                }

                var_2[var_3] = var_4;
            }
        }

        return var_2;
    }
}

_ID30456()
{
    while ( !_func_02F( level._ID794 ) )
        wait 0.5;

    _unknown_036C( level._ID1374._ID29935._ID10124 );
}

_ID30459( var_0 )
{
    if ( !_func_02F( level._ID1374._ID29935._ID28450 ) )
        level._ID1374._ID29935._ID28450 = [];

    var_1 = _unknown_04C5();
    var_2 = [];

    if ( _func_02F( level._ID1374._ID22202 ) )
        var_2 = [[ level._ID1374._ID22202 ]]( var_0, var_2 );
    else if ( _func_02F( level._ID1374._ID29935._ID28450[var_0] ) )
        var_2 = level._ID1374._ID29935._ID28450[var_0];
    else if ( level._ID1374._ID29935._ID39914 )
    {
        var_2 = _unknown_0488( var_0, 1 );

        if ( !_func_02F( var_2 ) )
            return;

        level._ID1374._ID29935._ID28450[var_0] = var_2;
    }
    else
    {
        var_2 = _unknown_04A3( var_0, 0 );

        if ( !_func_02F( var_2 ) )
            return;

        level._ID1374._ID29935._ID28450[var_0] = var_2;
    }

    var_1._ID680 = var_0;
    var_1._ID30177 = var_2["roomtype"];
    var_1._ID12198 = var_2["drylevel"];
    var_1._ID41726 = var_2["wetlevel"];
    var_1._ID13819 = var_2["fadetime"];
    return var_1;
}

_ID30457()
{
    var_0 = _func_1A5();
    var_0._ID30177 = "generic";
    var_0._ID12198 = 1.0;
    var_0._ID41726 = 0.5;
    var_0._ID13819 = 0;
    var_0._ID28609 = "snd_enveffectsprio_level";
    return var_0;
}