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
    self.sidearm = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 4 ) )
    {
        case 0:
            self.weapon = "ak47";
            break;
        case 1:
            self.weapon = "ak47_acog";
            break;
        case 2:
            self.weapon = "ak47_grenadier";
            break;
        case 3:
            self.weapon = "ak47_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_ABE9::main();
            break;
        case 1:
            _id_D133::main();
            break;
        case 2:
            _id_D337::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_ABE9::precache();
    _id_D133::precache();
    _id_D337::precache();
    precacheitem( "ak47" );
    precacheitem( "ak47_acog" );
    precacheitem( "ak47_grenadier" );
    precacheitem( "gl_ak47" );
    precacheitem( "ak47_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
