// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_forest_tf141_ghost_dmg" );
    self attach( "head_hero_ghost_forest_dmg", "", 1 );
    self._ID18304 = "head_hero_ghost_forest_dmg";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_forest_tf141_ghost_dmg" );
    precachemodel( "head_hero_ghost_forest_dmg" );
}
