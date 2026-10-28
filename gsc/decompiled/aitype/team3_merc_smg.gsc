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
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( codescripts\character::get_random_weapon( 5 ) )
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
            self.weapon = "uzi";
            break;
        case 4:
            self.weapon = "uzi";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_C36C::main();
            break;
        case 1:
            _id_B2D3::main();
            break;
        case 2:
            _id_C36C::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "team3" );
}

precache()
{
    _id_C36C::precache();
    _id_B2D3::precache();
    _id_C36C::precache();
    precacheitem( "p90" );
    precacheitem( "p90_acog" );
    precacheitem( "p90_reflex" );
    precacheitem( "uzi" );
    precacheitem( "uzi" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
