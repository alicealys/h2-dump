// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "character_arab_civilian_lowres_a" );
    self attach( "character_arab_civilian_lowres_a_head", "", 1 );
    self._ID18304 = "character_arab_civilian_lowres_a_head";
    self._ID40757 = "arab";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "character_arab_civilian_lowres_a" );
    precachemodel( "character_arab_civilian_lowres_a_head" );
}
