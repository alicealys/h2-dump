// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_shepherd" );
    self attach( "head_vil_shepherd", "", 1 );
    self._ID18304 = "head_vil_shepherd";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_vil_shepherd" );
    precachemodel( "head_vil_shepherd" );
}
