// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_us_army_assault_a_foley" );
    self attach( "head_hero_foley", "", 1 );
    self._ID18304 = "head_hero_foley";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_us_army_assault_a_foley" );
    precachemodel( "head_hero_foley" );
}
