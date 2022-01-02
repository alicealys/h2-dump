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
    self._ID949 = "m79";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_grenadier_airport";
    _ID46399::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID46399::_ID814();
    precacheitem( "m4_grenadier_airport" );
    precacheitem( "m203_m4_airport" );
    precacheitem( "m79" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
