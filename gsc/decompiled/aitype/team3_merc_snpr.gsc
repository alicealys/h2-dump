// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "sniper_glint.csv";
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
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "dragunov";
            break;
        case 1:
            self.weapon = "dragunov_woodland";
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
            _id_BCF1::main();
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
    _id_BCF1::precache();
    precacheitem( "dragunov" );
    precacheitem( "dragunov_woodland" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
    maps\_sniper_glint::main();
}
