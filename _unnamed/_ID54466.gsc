// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "body_us_army_lmg_dunn" );
    self attach( "head_hero_dunn", "", 1 );
    self._ID18304 = "head_hero_dunn";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_us_army_lmg_dunn" );
    precachemodel( "head_hero_dunn" );
}
