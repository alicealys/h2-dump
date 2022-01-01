// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "h2_body_airborne_shotgun_c" );
    self attach( "h2_head_airborne_a", "", 1 );
    self._ID18304 = "h2_head_airborne_a";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "h2_body_airborne_shotgun_c" );
    precachemodel( "h2_head_airborne_a" );
}
