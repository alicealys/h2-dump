// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self endon( "killanimscript" );
    var_0 = self getnegotiationstartnode();
    self orientmode( "face angle", var_0._ID65[1] );
    var_1 = var_0._ID38701 - var_0._ID740[2];
    var_2 = var_1;
    var_3 = 6;
    var_4 = ( 0, 0, var_2 / var_3 );
    self traversemode( "noclip" );

    for ( var_5 = 0; var_5 < var_3; var_5++ )
    {
        self teleport( self._ID740 + var_4 );
        wait 0.05;
    }

    self traversemode( "gravity" );
}
