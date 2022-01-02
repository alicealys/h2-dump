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
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 1024.0, 825.0 );
        self setengagementmaxdist( 1450.0, 2100.0 );
    }

    self.weapon = "dragunov_arctic";
    _ID45215::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45215::_ID814();
    precacheitem( "dragunov_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
    _ID42368::main();
}
