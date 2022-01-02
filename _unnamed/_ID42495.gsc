// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID34687()
{
    _ID34570();
    _ID34646( "" );
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
    level._ID1632._ID37760 = spawnstruct();
    var_0 = [];
    var_0[var_0.size] = "soundtables/sp_defaults.csv";
    var_0[var_0.size] = "soundtables/" + level.script + ".csv";
    level._ID1632._ID37760._ID28453 = _ID42475::_ID34590( "Timescale", var_0, 3, "timescale_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );
}

_ID34653( var_0 )
{
    var_1 = _ID34546( var_0 );

    if ( !isdefined( var_1 ) )
        return;

    if ( _ID34536() != var_0 )
        thread _ID34658( var_1 );
}

_ID34546( var_0 )
{
    if ( isdefined( level._ID1632._ID37760._ID28453 ) && isdefined( level._ID1632._ID37760._ID28453[var_0] ) )
        return level._ID1632._ID37760._ID28453[var_0];

    return undefined;
}

_ID34658( var_0 )
{
    var_1 = _ID42475::_ID34545();

    foreach ( var_3 in var_0._ID32823 )
    {
        var_4 = var_3["dsp_bus_name"];

        if ( var_4 == "all" )
        {
            var_5 = _ID42490::_ID34537();

            foreach ( var_7 in var_5 )
            {
                soundtime( var_7, var_3["scalefactor"] );
                var_1 _ID42475::_ID34685();
            }

            continue;
        }

        soundtime( var_4, var_3["scalefactor"] );
    }
}

_ID34654( var_0 )
{
    thread _ID34655( var_0 );
}

_ID34655( var_0 )
{
    var_1 = _ID42475::_ID34545();
    var_2 = _ID42490::_ID34537();

    foreach ( var_4 in var_2 )
    {
        soundtime( var_4, var_0 );
        var_1 _ID42475::_ID34685();
    }
}

_ID34656( var_0, var_1 )
{
    thread _ID34657( var_0, var_1 );
}

_ID34657( var_0, var_1 )
{
    var_2 = _ID42475::_ID34545();

    foreach ( var_4 in var_0 )
    {
        soundtime( var_4, var_1 );
        var_2 _ID42475::_ID34685();
    }
}
