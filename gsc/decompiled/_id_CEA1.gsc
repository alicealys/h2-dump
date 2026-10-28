// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_D39C( var_0 )
{
    var_1 = common_scripts\utility::ter_op( var_0 > 0, 1, 0 );
    _func_2F1( 0, "x", var_1 );
    _func_2F1( 0, "y", var_0 );
}

_id_B31E( var_0, var_1, var_2, var_3, var_4 )
{
    if ( var_3 )
        _id_D39C( 1.0 );

    level._id_BE87 = var_2;

    if ( var_4 && var_2 == "exterior" && !var_3 )
        _id_D39C( 0.5 );

    var_5 = getentarray( "trigger_wibble", "targetname" );
    common_scripts\utility::array_thread( var_5, ::_id_B72F, var_0, var_1, var_4 );
    thread _id_C707( var_0, var_1 );
}

_id_C707( var_0, var_1 )
{
    if ( isdefined( var_1 ) )
        common_scripts\utility::flag_wait( var_1 );

    if ( var_0 )
    {
        wait 2;
        level endon( "wibble_heli_check_stop" );

        for (;;)
        {
            var_2 = 0;

            if ( isdefined( level.helis ) )
            {
                level.helis = common_scripts\utility::array_removeundefined( level.helis );

                foreach ( var_4 in level.helis )
                {
                    if ( distancesquared( level.player.origin, var_4.origin ) <= 1690000 )
                    {
                        var_2 = 0.5;
                        break;
                    }
                }
            }

            _id_D39C( var_2 );
            wait 0.5;
        }
    }
    else
        _id_D39C( 0.5 );
}

_id_B72F( var_0, var_1, var_2 )
{
    for (;;)
    {
        self waittill( "trigger" );

        if ( self.script_noteworthy != level._id_BE87 )
        {
            switch ( self.script_noteworthy )
            {
                case "exterior":
                    if ( var_2 )
                    {
                        _id_D39C( 0.5 );
                        break;
                    }
                    else
                    {
                        thread _id_C707( var_0, var_1 );
                        break;
                    }
                case "interior":
                    level notify( "wibble_heli_check_stop" );
                    _id_D39C( 0.0 );
                    break;
            }

            level._id_BE87 = self.script_noteworthy;
        }
    }
}

_id_CE13( var_0 )
{
    if ( !isdefined( level.helis ) )
        level.helis = [];

    level.helis = common_scripts\utility::array_add( level.helis, var_0 );
}
