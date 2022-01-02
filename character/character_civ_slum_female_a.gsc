// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_slum_civ_female_a" );
    _ID42226::_ID3584( "alias_civ_slum_heads_female", xmodelalias\alias_civ_slum_heads_female::main() );
    self._ID40757 = "american";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_slum_civ_female_a" );
    _ID42226::_ID28388( xmodelalias\alias_civ_slum_heads_female::main() );
}
