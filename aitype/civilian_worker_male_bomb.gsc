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

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID44659::main();
            break;
        case 1:
            _ID45212::main();
            break;
        case 2:
            _ID54354::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID44659::_ID814();
    _ID45212::_ID814();
    _ID54354::_ID814();
}
