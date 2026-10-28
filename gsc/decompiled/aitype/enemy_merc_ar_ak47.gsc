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
    self.secondaryweapon = "beretta";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "ak47";

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_B053::main();
            break;
        case 1:
            _id_C0F6::main();
            break;
        case 2:
            _id_B6E3::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B053::precache();
    _id_C0F6::precache();
    _id_B6E3::precache();
    precacheitem( "ak47" );
    precacheitem( "beretta" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
