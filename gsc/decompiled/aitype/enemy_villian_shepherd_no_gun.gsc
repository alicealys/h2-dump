// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "axis";
    self.type = "human";
    self.subclass = "elite";
    self.accuracy = 0.12;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "coltanaconda";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    self.weapon = "coltanaconda_shepherd";
    _id_B30C::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B30C::precache();
    precacheitem( "coltanaconda_shepherd" );
    precacheitem( "coltanaconda" );
    precacheitem( "fraggrenade" );
}
