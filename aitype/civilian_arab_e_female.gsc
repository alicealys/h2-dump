// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "neutral";
    self.type = "civilian";
    self._ID36736 = "elite";
    self.accuracy = 0.2;
    self.health = 25;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "beretta";
    self._ID34144 = "colt45";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "ak47";
    _ID49190::main();
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID49190::_ID814();
    precacheitem( "ak47" );
    precacheitem( "beretta" );
    precacheitem( "colt45" );
    precacheitem( "fraggrenade" );
}
