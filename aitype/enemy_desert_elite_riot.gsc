// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "riotshield.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "riotshield";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "riotshield";
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "mp5";
    _ID51319::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID51319::_ID814();
    precacheitem( "mp5" );
    precacheitem( "riotshield" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
    _ID42360::_ID19772();
}
