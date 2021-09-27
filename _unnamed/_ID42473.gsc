// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID41745()
{
    level._ID1374._ID41744 = _func_1A5();
    level._ID1374._ID41744._ID39914 = 0;
}

_ID41751()
{
    level._ID1374._ID41744._ID39914 = 1;
}

_ID41747( var_0 )
{
    var_1 = [];
    var_1 = _unknown_0060( var_0 );
    var_1["name"] = var_0;
    var_2 = var_1["probability"];
    var_3 = var_1["spread"];
    var_4 = var_1["radius"];
    var_5 = var_1["offset"];
    level._ID794 _meth_80CA( var_2[0], var_2[1], var_2[2] );
    level._ID794 _meth_8337( var_3[0], var_3[1], var_3[2] );
    level._ID794 _meth_8338( var_4[0], var_4[1], var_4[2] );
    level._ID794 _meth_810B( var_5 );
}

_ID41748( var_0, var_1, var_2 )
{
    level._ID794 _meth_80CA( var_0, var_1, var_2 );
}

_ID41750( var_0, var_1, var_2 )
{
    level._ID794 _meth_8337( var_0, var_1, var_2 );
}

_ID41749( var_0, var_1, var_2 )
{
    level._ID794 _meth_8338( var_0, var_1, var_2 );
}

_ID41746( var_0 )
{
    level._ID794 _meth_810B( var_0 );
}

_ID41755( var_0 )
{
    var_1 = "soundtables/sp_defaults.csv";
    var_2 = [];
    var_2 = _unknown_00F7( var_1, var_0 );
    return var_2;
}

_ID41754( var_0, var_1 )
{
    var_2 = [];
    var_3 = "";
    var_4 = "";
    var_5 = 12;
    var_6 = [];
    var_7 = [];
    var_8 = [];
    var_9 = 0;
    var_10 = 0;
    var_11 = _func_2A0( var_0, "whizby_preset_names", "zone_names;reverb_names;filter_names;occlusion_names;timescale_names;dynamic_ambience_names;components;loop_defs;whizby_preset_names;mix_names;healthfx_params" );

    if ( _func_02F( var_11 ) )
    {
        for ( var_12 = 1; var_12 < var_5; var_12++ )
        {
            var_3 = _func_2A1( var_0, 0, "whizby_preset_names", var_12, var_11[0], var_11[1] );
            var_4 = _func_2A1( var_0, 0, var_1, var_12, var_11[0], var_11[1] );

            if ( !_func_02F( var_4 ) )
                break;

            if ( var_4 != "" && var_4 != "comments" )
            {
                var_10++;

                switch ( var_3 )
                {

                }

                case "far_prob":
                case "medium_prob":
                case "near_prob":
                case "far_spread":
                case "medium_spread":
                case "near_spread":
                case "far_radius":
                case "medium_radius":
                case "near_radius":
                case "radius_offset":
            }
        }

        if ( var_10 > 0 )
        {
            var_2["radius"] = var_6;
            var_2["spread"] = var_7;
            var_2["probability"] = var_8;

            if ( _func_02F( var_9 ) )
                var_2["offset"] = var_9;
        }

        return var_2;
    }
}
