// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_nikolai" );
    self attach( "head_hero_nikolai", "", 1 );
    self._ID18304 = "head_hero_nikolai";
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_hero_nikolai" );
    precachemodel( "head_hero_nikolai" );
}
