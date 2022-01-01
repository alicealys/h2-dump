// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_vil_faust" );
    self attach( "head_vil_faust", "", 1 );
    self._ID18304 = "head_vil_faust";
    self._ID40757 = "portuguese";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_vil_faust" );
    precachemodel( "head_vil_faust" );
}
