// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "riotshield.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "riotshield";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "riotshield";
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "mp5";
            break;
        case 1:
            self.weapon = "mp5_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_B282::main();
            break;
        case 1:
            _id_ABF2::main();
            break;
        case 2:
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
    _id_B282::precache();
    _id_ABF2::precache();
    _id_C9AD::precache();
    precacheitem( "mp5" );
    precacheitem( "mp5_reflex" );
    precacheitem( "riotshield" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
    maps\_riotshield::init_riotshield();
}
