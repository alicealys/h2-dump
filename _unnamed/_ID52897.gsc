// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID54172( var_0 )
{
    var_1 = _ID42237::_ID37527( var_0 > 0, 1, 0 );
    _func_2f1( 0, "x", var_1 );
    _func_2f1( 0, "y", var_0 );
}

_ID45854( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_3 )
        _ID54172( 1.0 );

    level._ID48775 = var_2;

    if ( var_4 && var_2 == "exterior" && !var_3 )
        _ID54172( 0.5 );

    var_5 = getentarray( "trigger_wibble", "targetname" );
    _ID42237::_ID3350( var_5, ::_ID46895, var_0, var_1, var_4 );
    thread _ID50951( var_0, var_1 );
}

_ID50951( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        _ID42237::_ID14413( var_1 );

    if ( var_0 )
    {
        wait 2;
        level endon( "wibble_heli_check_stop" );

        for (;;)
        {
            var_2 = 0;

            if ( isdefined( level._ID18457 ) )
            {
                level._ID18457 = _ID42237::_ID3332( level._ID18457 );

                foreach ( var_4 in level._ID18457 )
                {
                    if ( distancesquared( level._ID794._ID740, var_4._ID740 ) <= 1690000 )
                    {
                        var_2 = 0.5;
                        break;
                    }
                }
            }

            _ID54172( var_2 );
            wait 0.5;
        }
    }
    else
        _ID54172( 0.5 );
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
                case "exterior":
                    if ( var_2 )
                    {
                        _ID54172( 0.5 );
                        break;
                    }
                    else
                    {
                        thread _ID50951( var_0, var_1 );
                        break;
                    }
                case "interior":
                    level notify( "wibble_heli_check_stop" );
                    _ID54172( 0.0 );
                    break;
            }

            level._ID48775 = self._ID922;
        }
    }
}

_ID52755( var_0 )
{
    if ( !isdefined( level._ID18457 ) )
        level._ID18457 = [];

    level._ID18457 = _ID42237::_ID3293( level._ID18457, var_0 );
}
