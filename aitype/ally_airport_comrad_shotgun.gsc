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
    self.health = 3600;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 4;
    self._ID949 = "beretta";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "striker";
    _ID49580::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID49580::_ID814();
    precacheitem( "striker" );
    precacheitem( "beretta" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
