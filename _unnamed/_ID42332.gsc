// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616( var_0, var_1 )
{
    thread _unknown_0024( self, var_0, var_1 );
}

_ID36563( var_0, var_1, var_2 )
{
    var_1 waittill( "death" );

    if ( !_func_02F( var_0 ) )
        return;

    if ( _func_2A5( var_0 ) )
        return;

    var_0 _meth_806C( "manual" );
    var_0 _meth_8111();
    var_0 _meth_80EA();
}

_ID21211( var_0, var_1 )
{
    var_1 endon( "death" );

    for (;;)
    {
        var_2 = var_0 _meth_818D( "tag_aim_pivot" );
        var_1 _meth_819B( "face angle", var_2[1] );
        wait 0.05;
    }
}

_ID32492( var_0, var_1, var_2 )
{
    var_1 endon( "death" );
    var_0 endon( "death" );
    var_0 _meth_806C( "auto_nonai" );
    var_1 _meth_8053( var_0, var_2._ID34225, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _unknown_0091( var_0, var_1, var_2 );
    thread _unknown_00A4( var_0, var_1 );
    var_3 = var_0 _meth_818C( var_2._ID34225 );
    var_4 = var_0 _meth_818D( var_2._ID34225 );

    for (;;)
        var_0 _ID42412::_ID3191( var_1, var_2._ID34225, var_2._ID19302 );
}
