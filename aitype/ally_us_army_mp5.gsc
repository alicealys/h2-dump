// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "allies";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "mp5";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID53313::main();
            break;
        case 1:
            _ID49021::main();
            break;
        case 2:
            _ID48479::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID53313::_ID814();
    _ID49021::_ID814();
    _ID48479::_ID814();
    precacheitem( "mp5" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
