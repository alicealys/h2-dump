// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

_id_C352()
{
    var_0 = [];

    if ( isdefined( var_0[level.script] ) )
        thread _id_B2C9( var_0[level.script] );
}

_id_B2C9( var_0 )
{
    var_1 = 0;
    var_2 = 0;

    for (;;)
    {
        var_3 = level.player getcurrentweapon();
        var_4 = level.player playerads();
        var_5 = var_4 == 1.0 || var_4 > var_1;
        var_6 = isdefined( var_3 ) && var_3 == "dragunov" && var_5;

        if ( var_6 && !var_2 )
            level.player lightset2( var_0, 0 );
        else if ( !var_6 && var_2 )
            level.player lightset3( 0 );

        var_2 = var_6;
        var_1 = var_4;
        wait 0.05;
    }
}
