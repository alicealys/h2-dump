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

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "winchester1200";
            break;
        case 1:
            self.weapon = "m1014";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_BF0B::main();
            break;
        case 1:
            _id_A955::main();
            break;
        case 2:
            _id_CC4D::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_BF0B::precache();
    _id_A955::precache();
    _id_CC4D::precache();
    precacheitem( "winchester1200" );
    precacheitem( "m1014" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
