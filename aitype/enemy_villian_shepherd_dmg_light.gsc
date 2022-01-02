// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "elite";
    self.accuracy = 0.12;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "coltanaconda";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "coltanaconda_shepherd";
    character\character_vil_shepherd_dmg_light::main();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    character\character_vil_shepherd_dmg_light::_ID814();
    precacheitem( "coltanaconda_shepherd" );
    precacheitem( "coltanaconda" );
    precacheitem( "fraggrenade" );
}
