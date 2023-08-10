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
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "striker";
            break;
        case 1:
            self.weapon = "striker_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_B388::main();
            break;
        case 1:
            _id_BDDF::main();
            break;
        case 2:
            _id_CA4F::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B388::precache();
    _id_BDDF::precache();
    _id_CA4F::precache();
    precacheitem( "striker" );
    precacheitem( "striker_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
