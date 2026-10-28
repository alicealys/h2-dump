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
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "mp5_silencer";

    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            _id_B434::main();
            break;
        case 1:
            _id_BFDC::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_B434::precache();
    _id_BFDC::precache();
    precacheitem( "mp5_silencer" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
