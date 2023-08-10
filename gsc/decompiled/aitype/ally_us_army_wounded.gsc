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
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self.secondaryweapon = "beretta";
    self.sidearm = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m4_grunt";

    switch ( codescripts\character::get_random_character( 6 ) )
    {
        case 0:
            _id_AF5B::main();
            break;
        case 1:
            _id_BE5A::main();
            break;
        case 2:
            _id_B232::main();
            break;
        case 3:
            _id_B567::main();
            break;
        case 4:
            _id_B990::main();
            break;
        case 5:
            _id_B91D::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_AF5B::precache();
    _id_BE5A::precache();
    _id_B232::precache();
    _id_B567::precache();
    _id_B990::precache();
    _id_B91D::precache();
    precacheitem( "m4_grunt" );
    precacheitem( "beretta" );
}
