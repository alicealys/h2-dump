// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_opforce_arctic_shotgun_c_L1" );
    _ID42226::_ID3584( "alias_opforce_arctic_heads_L1", xmodelalias\alias_opforce_arctic_heads_l1::main() );
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_opforce_arctic_shotgun_c_L1" );
    _ID42226::_ID28388( xmodelalias\alias_opforce_arctic_heads_l1::main() );
}
