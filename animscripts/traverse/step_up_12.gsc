// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "killanimscript" );
    var_0 = self _meth_81A9();
    self _meth_819B( "face angle", var_0._ID65[1] );
    var_1 = var_0._ID38701 - var_0._ID740[2];
    var_2 = var_1;
    var_3 = 6;
    var_4 = ( 0, 0, var_2 / var_3 );
    self _meth_8199( "noclip" );

    for ( var_5 = 0; var_5 < var_3; var_5++ )
    {
        self _meth_81D1( self._ID740 + var_4 );
        wait 0.05;
    }

    self _meth_8199( "gravity" );
}
