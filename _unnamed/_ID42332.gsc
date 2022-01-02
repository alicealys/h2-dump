// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main( var_0, var_1 )
{
    thread _ID32492( self, var_0, var_1 );
}

_ID36563( var_0, var_1, var_2 )
{
    var_1 waittill( "death" );

    if ( !isdefined( var_0 ) )
        return;

    if ( _func_2a5( var_0 ) )
        return;

    var_0 setmode( "manual" );
    var_0 cleartargetentity();
    var_0 stopfiring();
}

_ID21211( var_0, var_1 )
{
    var_1 endon( "death" );

    for (;;)
    {
        var_2 = var_0 gettagangles( "tag_aim_pivot" );
        var_1 orientmode( "face angle", var_2[1] );
        wait 0.05;
    }
}

_ID32492( var_0, var_1, var_2 )
{
    var_1 endon( "death" );
    var_0 endon( "death" );
    var_0 setmode( "auto_nonai" );
    var_1 linkto( var_0, var_2._ID34225, ( 0, 0, 0 ), ( 0, 0, 0 ) );
    thread _ID36563( var_0, var_1, var_2 );
    thread _ID21211( var_0, var_1 );
    var_3 = var_0 gettagorigin( var_2._ID34225 );
    var_4 = var_0 gettagangles( var_2._ID34225 );

    for (;;)
        var_0 _ID42412::_ID3191( var_1, var_2._ID34225, var_2._ID19302 );
}
