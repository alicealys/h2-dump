// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self setmodel( "body_airborne_shotgun" );
    _ID42226::_ID3584( "alias_airborne_heads", _ID53787::main() );
    self._ID40757 = "russian";
    self setclothtype( "vestlight" );
}

_ID814()
{
    precachemodel( "body_airborne_shotgun" );
    _ID42226::_ID28388( _ID53787::main() );
}
