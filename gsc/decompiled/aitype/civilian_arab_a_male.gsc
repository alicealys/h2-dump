// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "neutral";
    self.type = "civilian";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 25;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "beretta";
    self.sidearm = "colt45";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "ak47";
    _id_B0E1::main();
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    _id_B0E1::precache();
    precacheitem( "ak47" );
    precacheitem( "beretta" );
    precacheitem( "colt45" );
    precacheitem( "fraggrenade" );
}
