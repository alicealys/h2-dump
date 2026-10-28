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
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( codescripts\character::get_random_weapon( 7 ) )
    {
        case 0:
            self.weapon = "kriss";
            break;
        case 1:
            self.weapon = "kriss_reflex";
            break;
        case 2:
            self.weapon = "ump45_arctic";
            break;
        case 3:
            self.weapon = "ump45_reflex";
            break;
        case 4:
            self.weapon = "p90";
            break;
        case 5:
            self.weapon = "kriss_eotech";
            break;
        case 6:
            self.weapon = "p90_arctic";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_A8F5::main();
            break;
        case 1:
            _id_B526::main();
            break;
        case 2:
            _id_CAF5::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_A8F5::precache();
    _id_B526::precache();
    _id_CAF5::precache();
    precacheitem( "kriss" );
    precacheitem( "kriss_reflex" );
    precacheitem( "ump45_arctic" );
    precacheitem( "ump45_reflex" );
    precacheitem( "p90" );
    precacheitem( "kriss_eotech" );
    precacheitem( "p90_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
