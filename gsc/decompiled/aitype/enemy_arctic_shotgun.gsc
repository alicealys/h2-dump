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
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "spas12_arctic";
            break;
        case 1:
            self.weapon = "spas12";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_D427::main();
            break;
        case 1:
            _id_C469::main();
            break;
        case 2:
            _id_C267::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_D427::precache();
    _id_C469::precache();
    _id_C267::precache();
    precacheitem( "spas12_arctic" );
    precacheitem( "spas12" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
