// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_riot_op_airborne" );
    self attach( "head_riot_op_airborne", "", 1 );
    self._ID18304 = "head_riot_op_airborne";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_riot_op_airborne" );
    precachemodel( "head_riot_op_airborne" );
}
