// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_arctic_tf141_ghost" );
    self attach( "head_hero_ghost_arctic", "", 1 );
    self._ID18304 = "head_hero_ghost_arctic";
    self._ID40757 = "taskforce";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_arctic_tf141_ghost" );
    precachemodel( "head_hero_ghost_arctic" );
}
