// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "h2_body_airborne_pilot" );
    self attach( "h2_head_airborne_pilot", "", 1 );
    self._ID18304 = "h2_head_airborne_pilot";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "h2_body_airborne_pilot" );
    precachemodel( "h2_head_airborne_pilot" );
}
