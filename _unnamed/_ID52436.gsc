// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_casual_a_wht" );
    self attach( "head_army_welder", "", 1 );
    self._ID18304 = "head_army_welder";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_us_army_casual_a_wht" );
    precachemodel( "head_army_welder" );
}
