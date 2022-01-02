// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_desert_tf141_zodiac" );
    self attach( "head_hero_price_desert", "", 1 );
    self._ID18304 = "head_hero_price_desert";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_desert_tf141_zodiac" );
    precachemodel( "head_hero_price_desert" );
}
