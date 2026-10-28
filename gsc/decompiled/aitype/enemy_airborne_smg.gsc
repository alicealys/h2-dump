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
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( codescripts\character::get_random_weapon( 8 ) )
    {
        case 0:
            self.weapon = "p90";
            break;
        case 1:
            self.weapon = "p90_acog";
            break;
        case 2:
            self.weapon = "p90_reflex";
            break;
        case 3:
            self.weapon = "p90_eotech";
            break;
        case 4:
            self.weapon = "ump45_digital_acog";
            break;
        case 5:
            self.weapon = "ump45_digital_eotech";
            break;
        case 6:
            self.weapon = "kriss";
            break;
        case 7:
            self.weapon = "kriss_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_AC43::main();
            break;
        case 1:
            _id_CB95::main();
            break;
        case 2:
            _id_C748::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_AC43::precache();
    _id_CB95::precache();
    _id_C748::precache();
    precacheitem( "p90" );
    precacheitem( "p90_acog" );
    precacheitem( "p90_reflex" );
    precacheitem( "p90_eotech" );
    precacheitem( "ump45_digital_acog" );
    precacheitem( "ump45_digital_eotech" );
    precacheitem( "kriss" );
    precacheitem( "kriss_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
