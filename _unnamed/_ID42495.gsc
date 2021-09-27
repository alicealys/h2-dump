// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34687()
{
    _unknown_000E();
    _unknown_000F( "" );
}

_ID34646( var_0 )
{
    level._ID1632._ID37760._ID9465 = var_0;
}

_ID34536()
{
    return level._ID1632._ID37760._ID9465;
}

_ID34570()
{
    level._ID1632._ID37760 = _func_1A5();
    var_0 = [];
    var_0[var_0.size] = "soundtables/sp_defaults.csv";
    var_0[var_0.size] = "soundtables/" + level._ID912 + ".csv";
    level._ID1632._ID37760._ID28453 = _ID42475::_ID34590( "Timescale", var_0, 3, "timescale_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );
}

_ID34653( var_0 )
{
    var_1 = _unknown_008E( var_0 );

    if ( !_func_02F( var_1 ) )
        return;

    if ( _unknown_0078() != var_0 )
        thread _unknown_00AF( var_1 );
}

_ID34546( var_0 )
{
    if ( _func_02F( level._ID1632._ID37760._ID28453 ) && _func_02F( level._ID1632._ID37760._ID28453[var_0] ) )
        return level._ID1632._ID37760._ID28453[var_0];

    return undefined;
}

_ID34658( var_0 )
{
    var_1 = _ID42475::_ID34545();
    var_2 = var_0._ID32823;

    for ( var_9 = _func_1DA( var_2 ); _func_02F( var_9 ); var_9 = _func_1BF( var_2, var_9 ) )
    {
        var_3 = var_2[var_9];
        var_4 = var_3["dsp_bus_name"];

        if ( var_4 == "all" )
        {
            var_5 = _ID42490::_ID34537();
            var_6 = var_5;

            for ( var_8 = _func_1DA( var_6 ); _func_02F( var_8 ); var_8 = _func_1BF( var_6, var_8 ) )
            {
                var_7 = var_6[var_8];
                _func_080( var_7, var_3["scalefactor"] );
                var_1 _ID42475::_ID34685();
            }

            var_clear_2
            var_clear_0
            continue;
        }

        _func_080( var_4, var_3["scalefactor"] );
    }

    var_clear_3
    var_clear_0
}

_ID34654( var_0 )
{
    thread _unknown_017B( var_0 );
}

_ID34655( var_0 )
{
    var_1 = _ID42475::_ID34545();
    var_2 = _ID42490::_ID34537();
    var_3 = var_2;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _func_080( var_4, var_0 );
        var_1 _ID42475::_ID34685();
    }

    var_clear_2
    var_clear_0
}

_ID34656( var_0, var_1 )
{
    thread _unknown_01C9( var_0, var_1 );
}

_ID34657( var_0, var_1 )
{
    var_2 = _ID42475::_ID34545();
    var_3 = var_0;

    for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
    {
        var_4 = var_3[var_5];
        _func_080( var_4, var_1 );
        var_2 _ID42475::_ID34685();
    }

    var_clear_2
    var_clear_0
}
