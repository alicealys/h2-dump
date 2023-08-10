// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_hero_soap_socom" );
    self attach( "head_hero_soap_soccom_a", "", 1 );
    self.headmodel = "head_hero_soap_soccom_a";
    self.voice = "taskforce";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_hero_soap_socom" );
    precachemodel( "head_hero_soap_soccom_a" );
}
