// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "dog.atr";
    self.additionalassets = "common_dogs.csv";
    self.team = "team3";
    self.type = "dog";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 200;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "dog_bite";
    self.sidearm = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "dog_bite";
    _id_B46B::main();
}

spawner()
{
    self setspawnerteam( "team3" );
}

precache()
{
    _id_B46B::precache();
    precacheitem( "dog_bite" );
    precacheitem( "dog_bite" );
    precacheitem( "fraggrenade" );
    animscripts\dog\dog_init::initdoganimations();
}
