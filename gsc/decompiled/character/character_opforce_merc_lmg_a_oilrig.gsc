// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arctic_shotgun_c" );
    codescripts\character::attachhead( "alias_opforce_merc_heads_oilrig", xmodelalias\alias_opforce_merc_heads_oilrig::main() );
    self.hatmodel = "hat_opforce_merc_b";
    self attach( self.hatmodel );
    self.voice = "russian";
    self setclothtype( "vestlight" );
}

precache()
{
    precachemodel( "body_opforce_arctic_shotgun_c" );
    codescripts\character::precachemodelarray( xmodelalias\alias_opforce_merc_heads_oilrig::main() );
    precachemodel( "hat_opforce_merc_b" );
}
