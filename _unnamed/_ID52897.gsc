// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID54172( var_0 )
{
    var_1 = _ID42237::_ID37527( var_0 > 0, 1, 0 );
    _func_2F1( 0, "x", var_1 );
    _func_2F1( 0, "y", var_0 );
}

_ID45854( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_3 )
        _unknown_002E( 1.0 );

    level._ID48775 = var_2;

    if ( var_4 && var_2 == "exterior" && !var_3 )
        _unknown_0049( 0.5 );

    var_5 = _func_1A2( "trigger_wibble", "targetname" );
    _ID42237::_ID3350( var_5, ::_unknown_00A7, var_0, var_1, var_4 );
    thread _unknown_0087( var_0, var_1 );
}

_ID50951( var_0, var_1 )
{
    if ( _func_02F( var_1 ) )
        _ID42237::_ID14413( var_1 );

    if ( var_0 )
    {
        wait 2;
        level endon( "wibble_heli_check_stop" );

        for (;;)
        {
            var_2 = 0;

            if ( _func_02F( level._ID18457 ) )
            {
                level._ID18457 = _ID42237::_ID3332( level._ID18457 );
                var_3 = level._ID18457;

                for ( var_5 = _func_1DA( var_3 ); _func_02F( var_5 ); var_5 = _func_1BF( var_3, var_5 ) )
                {
                    var_4 = var_3[var_5];

                    if ( _func_0F5( level._ID794._ID740, var_4._ID740 ) <= 1690000 )
                    {
                        var_2 = 0.5;
                        break;
                    }
                }

                var_clear_2
                var_clear_0
            }

            _unknown_00CE( var_2 );
            wait 0.5;
        }
    }
    else
        _unknown_00DF( 0.5 );
}

_ID46895( var_0, var_1, var_2 )
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( self._ID922 != level._ID48775 )
        {
            switch ( self._ID922 )
            {

            }

            level._ID48775 = self._ID922;
            case "exterior":
            case "interior":
        }
    }
}

_ID52755( var_0 )
{
    if ( !_func_02F( level._ID18457 ) )
        level._ID18457 = [];

    level._ID18457 = _ID42237::_ID3293( level._ID18457, var_0 );
}
