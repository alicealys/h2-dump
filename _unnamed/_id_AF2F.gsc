// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "character_arab_civilian_lowres_d" );
    self attach( "character_arab_civilian_lowres_d_head", "", 1 );
    self.headmodel = "character_arab_civilian_lowres_d_head";
    self.voice = "arab";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "character_arab_civilian_lowres_d" );
    precachemodel( "character_arab_civilian_lowres_d_head" );
}
