// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_force_assault_woodland" );
    self attach( "head_force_assault", "", 1 );
    self.headmodel = "head_force_assault";
    self.voice = "british";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_force_assault_woodland" );
    precachemodel( "head_force_assault" );
}
