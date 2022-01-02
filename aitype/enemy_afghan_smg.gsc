// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( _ID42226::_ID15950( 4 ) )
    {
        case 0:
            self.weapon = "uzi";
            break;
        case 1:
            self.weapon = "tmp";
            break;
        case 2:
            self.weapon = "mp5";
            break;
        case 3:
            self.weapon = "uzi";
            break;
    }

    _ID47889::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID47889::_ID814();
    precacheitem( "uzi" );
    precacheitem( "tmp" );
    precacheitem( "mp5" );
    precacheitem( "uzi" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
