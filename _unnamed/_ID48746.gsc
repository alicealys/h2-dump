// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_ghost_socom" );
    self attach( "head_hero_ghost_soccom", "", 1 );
    self._ID18304 = "head_hero_ghost_soccom";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_hero_ghost_socom" );
    precachemodel( "head_hero_ghost_soccom" );
}
