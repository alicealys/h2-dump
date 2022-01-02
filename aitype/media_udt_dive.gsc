// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "neutral";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self._ID949 = "fraggrenade";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "beretta";
    _ID51328::main();
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID51328::_ID814();
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
    precacheitem( "glock" );
}
