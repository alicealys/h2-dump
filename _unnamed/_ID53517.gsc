// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_corpse_civ_male_a" );
    self attach( "head_corpse_civ_male_a", "", 1 );
    self._ID18304 = "head_corpse_civ_male_a";
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_corpse_civ_male_a" );
    precachemodel( "head_corpse_civ_male_a" );
}
