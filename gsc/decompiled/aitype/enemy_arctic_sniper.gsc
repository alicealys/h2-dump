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
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 1024.0, 825.0 );
        self setengagementmaxdist( 1450.0, 2100.0 );
    }

    self.weapon = "dragunov_arctic";
    _id_B09F::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B09F::precache();
    precacheitem( "dragunov_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
    maps\_sniper_glint::main();
}
