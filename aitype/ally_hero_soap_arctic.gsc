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
    self._ID34144 = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m21_soap";
    _ID44069::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID44069::_ID814();
    precacheitem( "m21_soap" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
