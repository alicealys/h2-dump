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
        self setengagementmindist( 512.0, 400.0 );
        self setengagementmaxdist( 1024.0, 1250.0 );
    }

    switch ( codescripts\character::get_random_weapon( 6 ) )
    {
        case 0:
            self.weapon = "rpd";
            break;
        case 1:
            self.weapon = "rpd_reflex";
            break;
        case 2:
            self.weapon = "rpd_acog";
            break;
        case 3:
            self.weapon = "rpd_digital";
            break;
        case 4:
            self.weapon = "rpd_digital_acog";
            break;
        case 5:
            self.weapon = "rpd_digital_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_CCF0::main();
            break;
        case 1:
            _id_C1CD::main();
            break;
        case 2:
            _id_D3E9::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_CCF0::precache();
    _id_C1CD::precache();
    _id_D3E9::precache();
    precacheitem( "rpd" );
    precacheitem( "rpd_reflex" );
    precacheitem( "rpd_acog" );
    precacheitem( "rpd_digital" );
    precacheitem( "rpd_digital_acog" );
    precacheitem( "rpd_digital_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
