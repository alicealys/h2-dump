// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_op_airborne_sniper" );
    self attach( "head_op_airborne_sniper", "", 1 );
    self._ID18304 = "head_op_airborne_sniper";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_op_airborne_sniper" );
    precachemodel( "head_op_airborne_sniper" );
}
