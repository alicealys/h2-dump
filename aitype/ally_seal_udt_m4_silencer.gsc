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
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_silencer";

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID46132::main();
            break;
        case 1:
            _ID47421::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID46132::_ID814();
    _ID47421::_ID814();
    precacheitem( "m4_silencer" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
