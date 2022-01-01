// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "h2_body_vil_shepherd_cheat" );
    self attach( "head_vil_shepherd", "", 1 );
    self._ID18304 = "head_vil_shepherd";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "h2_body_vil_shepherd_cheat" );
    precachemodel( "head_vil_shepherd" );
}
