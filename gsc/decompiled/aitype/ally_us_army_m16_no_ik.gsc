// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "m16_basic";
            break;
        case 1:
            self.weapon = "m16_acog";
            break;
        case 2:
            self.weapon = "m16_grenadier";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_us_army_assault_a_no_ik::main();
            break;
        case 1:
            character\character_us_army_assault_b_no_ik::main();
            break;
        case 2:
            character\character_us_army_assault_c_no_ik::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_us_army_assault_a_no_ik::precache();
    character\character_us_army_assault_b_no_ik::precache();
    character\character_us_army_assault_c_no_ik::precache();
    precacheitem( "m16_basic" );
    precacheitem( "m16_acog" );
    precacheitem( "m16_grenadier" );
    precacheitem( "m203_m16" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
