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
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "ak47_arctic";
    _ID51745::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID51745::_ID814();
    precacheitem( "ak47_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
