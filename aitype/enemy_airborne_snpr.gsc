// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint.csv";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    self.weapon = "dragunov";
    _ID44255::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID44255::_ID814();
    precacheitem( "dragunov" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
    _ID42368::main();
}
