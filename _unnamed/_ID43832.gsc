// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self setmodel( "character_arab_civilian_lowres_c" );
    self attach( "character_arab_civilian_lowres_c_head", "", 1 );
    self._ID18304 = "character_arab_civilian_lowres_c_head";
    self._ID40757 = "arab";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "character_arab_civilian_lowres_c" );
    precachemodel( "character_arab_civilian_lowres_c_head" );
}
