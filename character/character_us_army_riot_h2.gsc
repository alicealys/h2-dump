// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "Body_US_army_Shotgun" );
    self attach( "h2_head_riot_udt", "", 1 );
    self._ID18304 = "h2_head_riot_udt";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "Body_US_army_Shotgun" );
    precachemodel( "h2_head_riot_udt" );
}
