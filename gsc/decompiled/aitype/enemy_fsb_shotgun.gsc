// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "riotshield.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "elite";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "spas12";
            break;
        case 1:
            self.weapon = "spas12_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            _id_ABF2::main();
            break;
        case 1:
            _id_C9AD::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_ABF2::precache();
    _id_C9AD::precache();
    precacheitem( "spas12" );
    precacheitem( "spas12_reflex" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
