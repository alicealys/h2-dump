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
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( codescripts\character::get_random_weapon( 8 ) )
    {
        case 0:
            self.weapon = "tmp";
            break;
        case 1:
            self.weapon = "tmp_reflex";
            break;
        case 2:
            self.weapon = "tmp";
            break;
        case 3:
            self.weapon = "mp5";
            break;
        case 4:
            self.weapon = "mp5_reflex";
            break;
        case 5:
            self.weapon = "ump45";
            break;
        case 6:
            self.weapon = "ump45_eotech";
            break;
        case 7:
            self.weapon = "ump45_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            _id_CE40::main();
            break;
        case 1:
            _id_ABAF::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_CE40::precache();
    _id_ABAF::precache();
    precacheitem( "tmp" );
    precacheitem( "tmp_reflex" );
    precacheitem( "tmp" );
    precacheitem( "mp5" );
    precacheitem( "mp5_reflex" );
    precacheitem( "ump45" );
    precacheitem( "ump45_eotech" );
    precacheitem( "ump45_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
