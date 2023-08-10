// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "spas12";
            break;
        case 1:
            self.weapon = "m1014";
            break;
        case 2:
            self.weapon = "aa12_reflex";
            break;
    }

    _id_D21A::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_D21A::precache();
    precacheitem( "spas12" );
    precacheitem( "m1014" );
    precacheitem( "aa12_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
