// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_us_army_assault_a_dead_elevator" );
    self attach( "head_us_army_d_dead_elevator", "", 1 );
    self._ID18304 = "head_us_army_d_dead_elevator";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_us_army_assault_a_dead_elevator" );
    precachemodel( "head_us_army_d_dead_elevator" );
}
