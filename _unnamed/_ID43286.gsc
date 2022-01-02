// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_vil_faust_assist" );
    self attach( "head_vil_faust_assist", "", 1 );
    self._ID18304 = "head_vil_faust_assist";
    self._ID40757 = "portuguese";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_vil_faust_assist" );
    precachemodel( "head_vil_faust_assist" );
}
