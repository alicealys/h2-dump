// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_assault_a_drone_low" );
    codescripts\character::attachhead( "alias_airborne_heads", _id_D21B::main() );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_airborne_assault_a_drone_low" );
    codescripts\character::precachemodelarray( _id_D21B::main() );
}
