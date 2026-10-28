// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_soap_arctic" );
    self attach( "head_hero_soap_arctic", "", 1 );
    self.headmodel = "head_hero_soap_arctic";
    self.voice = "british";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_hero_soap_arctic" );
    precachemodel( "head_hero_soap_arctic" );
}
