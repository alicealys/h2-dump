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

    switch ( codescripts\character::get_random_weapon( 4 ) )
    {
        case 0:
            self.weapon = "scar_h_acog";
            break;
        case 1:
            self.weapon = "scar_h_reflex";
            break;
        case 2:
            self.weapon = "scar_h_shotgun";
            break;
        case 3:
            self.weapon = "scar_h_grenadier";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_AFEB::main();
            break;
        case 1:
            _id_B367::main();
            break;
        case 2:
            _id_A944::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_AFEB::precache();
    _id_B367::precache();
    _id_A944::precache();
    precacheitem( "scar_h_acog" );
    precacheitem( "scar_h_reflex" );
    precacheitem( "scar_h_shotgun" );
    precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "scar_h_grenadier" );
    precacheitem( "scar_h_m203" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
