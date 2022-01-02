// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arctic_shotgun_c" );
    _ID42226::_ID3584( "alias_opforce_merc_heads_oilrig", xmodelalias\alias_opforce_merc_heads_oilrig::main() );
    self._ID18272 = "hat_opforce_merc_b";
    self attach( self._ID18272 );
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_opforce_arctic_shotgun_c" );
    _ID42226::_ID28388( xmodelalias\alias_opforce_merc_heads_oilrig::main() );
    precachemodel( "hat_opforce_merc_b" );
}
