// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "allies";
    self.type = "human";
    self._ID36736 = "elite";
    self.accuracy = 0.12;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "coltanaconda";
    self._ID34144 = "coltanaconda";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "m4_grunt";
    _ID43281::main();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID43281::_ID814();
    precacheitem( "m4_grunt" );
    precacheitem( "coltanaconda" );
    precacheitem( "coltanaconda" );
    precacheitem( "fraggrenade" );
}
