// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "sniper_glint.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    self.weapon = "dragunov";
    _id_ACDF::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_ACDF::precache();
    precacheitem( "dragunov" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
    maps\_sniper_glint::main();
}
