// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_desert_tf141_lmg" );
    self attach( "head_seal_soccom_rook", "", 1 );
    self._ID18304 = "head_seal_soccom_rook";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_desert_tf141_lmg" );
    precachemodel( "head_seal_soccom_rook" );
}
