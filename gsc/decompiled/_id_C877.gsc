// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_riot_udt" );
    self attach( "head_riot_udt", "", 1 );
    self.headmodel = "head_riot_udt";
    self.voice = "shadowcompany";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_riot_udt" );
    precachemodel( "head_riot_udt" );
}
