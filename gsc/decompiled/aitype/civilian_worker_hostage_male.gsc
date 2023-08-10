// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "neutral";
    self.type = "civilian";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 30;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "none";

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_BF3A::main();
            break;
        case 1:
            _id_B05D::main();
            break;
        case 2:
            _id_D1CB::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    _id_BF3A::precache();
    _id_B05D::precache();
    _id_D1CB::precache();
}
