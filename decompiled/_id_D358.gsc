// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_ultra_nationalist_assault_d" );
    self attach( "head_ultra_nationalist_fullwrap", "", 1 );
    self.headmodel = "head_ultra_nationalist_fullwrap";
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_ultra_nationalist_assault_d" );
    precachemodel( "head_ultra_nationalist_fullwrap" );
}
