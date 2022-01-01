// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0 )
{
    var_0._ID14299 = 0.1;
    var_0._ID8158 = 45;
    var_0._ID14294 = ::_ID14293;
    var_0._ID35372 = ::_ID23662;
    var_0._ID10110 = 20;
    animscripts\laatpv_turret\common::_ID19210( var_0, "minigun" );
    wait 0.05;
    var_0 notify( "turret_ready" );
}

_ID23662( var_0, var_1 )
{
    if ( var_1 getbarrelspinrate() > 0 )
        var_1 stopbarrelspin();
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

    if ( isdefined( var_0._ID31751 ) )
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
                var_0 _ID23667();
                var_7 = 1;
            }

            var_0 notify( "startfiring" );
            var_1 = gettime();
            animscripts\laatpv_turret\common::_ID11644( var_0 );
            wait 0.05;
        }
        else if ( !var_0._ID11393 && var_6 )
        {
            if ( !isdefined( var_2 ) )
                var_2 = gettime();

            if ( !isdefined( var_3 ) )
                var_3 = randomfloatrange( var_0._ID13742, var_0._ID13741 );

            if ( gettime() - var_2 >= var_3 )
            {
                var_6 = 0;
                animscripts\laatpv_turret\common::_ID11236( var_0 );
                var_4 = gettime();
                var_2 = undefined;
                var_3 = undefined;
            }
        }
        else if ( !var_0._ID11393 && !var_6 && var_7 )
        {
            if ( !isdefined( var_5 ) )
                var_5 = randomfloatrange( var_0._ID13746, var_0._ID13745 );

            if ( self._ID20721 || gettime() - var_4 >= var_5 )
            {
                var_0 stopbarrelspin();
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

        if ( !isdefined( var_0 ) )
            break;
    }
}

_ID23667()
{
    if ( self getbarrelspinrate() == 1 )
        return;

    self startbarrelspin();

    while ( self getbarrelspinrate() < 1 )
        wait 0.05;
}
