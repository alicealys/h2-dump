// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "team3";
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
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "striker_woodland";
            break;
        case 1:
            self.weapon = "striker_woodland_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            _id_D2AD::main();
            break;
        case 1:
            _id_CA11::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "team3" );
}

precache()
{
    _id_D2AD::precache();
    _id_CA11::precache();
    precacheitem( "striker_woodland" );
    precacheitem( "striker_woodland_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
