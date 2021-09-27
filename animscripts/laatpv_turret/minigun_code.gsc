// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0 )
{
    var_0._ID14299 = 0.1;
    var_0._ID8158 = 45;
    var_0._ID14294 = ::_unknown_002A;
    var_0._ID35372 = ::_unknown_002D;
    var_0._ID10110 = 20;
    animscripts\laatpv_turret\common::_ID19210( var_0, "minigun" );
    wait 0.05;
    var_0 notify( "turret_ready" );
}

_ID23662( var_0, var_1 )
{
    if ( var_1 _meth_80EE() > 0 )
        var_1 _meth_80ED();
}

_ID14293( var_0 )
{
    self endon( "death" );
    self endon( "dismount" );
    var_0 endon( "kill_fireController" );
    var_0 endon( "death" );
    var_0._ID13742 = 600;
    var_0._ID13741 = 900;
    var_1 = -1;
    var_2 = undefined;
    var_3 = undefined;
    var_0._ID13746 = 250;
    var_0._ID13745 = 2250;
    var_4 = -1;
    var_5 = undefined;
    var_6 = 0;
    var_7 = 0;
    var_0._ID31750 = 15;

    if ( _func_02F( var_0._ID31751 ) )
        var_0._ID31750 = var_0._ID31751;

    var_0._ID14320 = 0;
    animscripts\laatpv_turret\common::_ID11236( var_0 );

    for (;;)
    {
        if ( var_0._ID11393 && !var_6 && !self._ID20721 )
        {
            var_6 = 1;

            if ( !var_7 )
            {
                var_0 _unknown_0157();
                var_7 = 1;
            }

            var_0 notify( "startfiring" );
            var_1 = _func_03D();
            animscripts\laatpv_turret\common::_ID11644( var_0 );
            wait 0.05;
        }
        else if ( !var_0._ID11393 && var_6 )
        {
            if ( !_func_02F( var_2 ) )
                var_2 = _func_03D();

            if ( !_func_02F( var_3 ) )
                var_3 = _func_0BA( var_0._ID13742, var_0._ID13741 );

            if ( _func_03D() - var_2 >= var_3 )
            {
                var_6 = 0;
                animscripts\laatpv_turret\common::_ID11236( var_0 );
                var_4 = _func_03D();
                var_2 = undefined;
                var_3 = undefined;
            }
        }
        else if ( !var_0._ID11393 && !var_6 && var_7 )
        {
            if ( !_func_02F( var_5 ) )
                var_5 = _func_0BA( var_0._ID13746, var_0._ID13745 );

            if ( self._ID20721 || _func_03D() - var_4 >= var_5 )
            {
                var_0 _meth_80ED();
                var_7 = 0;
                var_5 = undefined;
            }
        }

        if ( var_0._ID39365 == "fire" )
            var_0._ID14320 = var_0._ID14320 + 0.05;

        if ( var_0._ID14320 > var_0._ID31750 )
        {
            var_0._ID11393 = 0;
            var_6 = 0;
            animscripts\laatpv_turret\common::_ID11236( var_0 );
            var_4 = -1;
            var_2 = undefined;
            var_3 = undefined;
            thread animscripts\laatpv_turret\common::_ID11641( var_0 );
            var_0._ID14320 = 0;
        }

        wait 0.05;

        if ( !_func_02F( var_0 ) )
            break;
    }
}

_ID23667()
{
    if ( self _meth_80EE() == 1 )
        return;

    self _meth_80EC();

    while ( self _meth_80EE() < 1 )
        wait 0.05;
}
