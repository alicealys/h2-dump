// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "neutral";
    self.type = "civilian";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 30;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "none";

    switch ( _ID42226::_ID15942( 7 ) )
    {
        case 0:
            _ID53017::main();
            break;
        case 1:
            _ID45928::main();
            break;
        case 2:
            _ID53538::main();
            break;
        case 3:
            _ID50684::main();
            break;
        case 4:
            _ID50750::main();
            break;
        case 5:
            _ID47209::main();
            break;
        case 6:
            _ID45740::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID53017::_ID814();
    _ID45928::_ID814();
    _ID53538::_ID814();
    _ID50684::_ID814();
    _ID50750::_ID814();
    _ID47209::_ID814();
    _ID45740::_ID814();
}
