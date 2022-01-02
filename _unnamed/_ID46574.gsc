// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_seal_udt_ghost" );
    self attach( "head_hero_ghost_udt", "", 1 );
    self._ID18304 = "head_hero_ghost_udt";
    self._ID40757 = "seal";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_hero_seal_udt_ghost" );
    precachemodel( "head_hero_ghost_udt" );
}
