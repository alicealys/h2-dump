// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID521()
{
    _ID42237::_ID14400( "_escalator_on" );
    _ID42237::_ID14402( "_escalator_on" );
    level._ID50063 = 0.8;
    var_0 = getentarray( "escalator", "targetname" );
    _ID42237::_ID3350( var_0, ::_ID49756 );
}

_ID49756()
{
    for ( var_0 = self; isdefined( var_0._ID1191 ); var_0 = var_0._ID50433 )
    {
        var_0 startusinglessfrequentlighting();
        var_0._ID49426 = var_0._ID740;
        var_0._ID50433 = getent( var_0._ID1191, "targetname" );
    }

    var_0._ID49426 = var_0._ID740;
    var_0._ID49880 = 1;
    var_0._ID50433 = self;
    thread _ID52300( self );
}

_ID52300( var_0 )
{
    var_1 = var_0;
    var_2 = var_1._ID740;

    while ( _ID42237::_ID14385( "_escalator_on" ) )
    {
        var_3 = level._ID50063;
        var_4 = var_1._ID50433;
        var_1 show();

        if ( var_4 != var_0 )
            var_1 moveto( var_4._ID49426, var_3 );
        else
            var_1._ID740 = var_2;

        if ( var_4 == var_0 )
        {
            var_1 hide();
            var_1._ID49426 = var_2;
            var_0 = var_1;
            wait(var_3);
            continue;
        }

        var_1._ID49426 = var_4._ID49426;
        var_1 = var_4;
    }

    var_1 = var_0;

    for (;;)
    {
        var_3 = 2;
        var_4 = var_1._ID50433;
        var_1 show();
        var_1 thread _ID52968( var_3, var_4 );

        if ( var_4 == var_0 )
        {
            var_1 hide();
            var_1._ID49426 = var_2;
        }

        var_1._ID49426 = var_4._ID49426;
        var_1 = var_4;

        if ( var_1 == var_0 )
            return;
    }
}

_ID52968( var_0, var_1 )
{
    self moveto( var_1._ID49426, var_0, 0, var_0 );
    wait(var_0);
    self moveto( self._ID740, 0.05 );
}
