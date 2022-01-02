// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_faust_beaten" );
    self attach( "head_vil_faust_beaten", "", 1 );
    self._ID18304 = "head_vil_faust_beaten";
    self._ID40757 = "portuguese";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_vil_faust_beaten" );
    precachemodel( "head_vil_faust_beaten" );
}
