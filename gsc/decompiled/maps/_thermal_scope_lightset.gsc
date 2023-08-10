// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

init( var_0 )
{
    level.thermal_scope_lightset = var_0;
    thread update_lightset();
}

update_lightset()
{
    var_0 = "";
    var_1 = 0;

    for (;;)
    {
        var_2 = "";
        var_3 = level.player playerads();

        if ( isdefined( level.thermal_scope_lightset ) && !level.player common_scripts\utility::isflashed() && ( var_3 > 0.6 && var_3 > var_1 || var_3 == 1 ) )
        {
            var_4 = level.player getcurrentweapon();

            if ( maps\_load::weap_has_thermal( var_4 ) )
                var_2 = level.thermal_scope_lightset;
        }

        if ( var_2 != var_0 )
        {
            if ( var_2 != "" )
                level.player lightset2( var_2, 1.0 );
            else
                level.player lightset3( 0.5 );

            var_0 = var_2;
        }

        var_1 = var_3;
        waitframe();
    }
}
