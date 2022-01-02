// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_price_gulag" );
    self attach( "head_hero_price_gulag", "", 1 );
    self._ID18304 = "head_hero_price_gulag";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_hero_price_gulag" );
    precachemodel( "head_hero_price_gulag" );
}
