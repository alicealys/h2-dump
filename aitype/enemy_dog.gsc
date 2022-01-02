// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "dog.atr";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "dog";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "dog_bite";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "dog_bite";
    _ID46187::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID46187::_ID814();
    precacheitem( "dog_bite" );
    precacheitem( "dog_bite" );
    precacheitem( "fraggrenade" );
}
