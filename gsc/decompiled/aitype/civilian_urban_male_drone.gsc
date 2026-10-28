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

    switch ( codescripts\character::get_random_character( 7 ) )
    {
        case 0:
            _id_CF19::main();
            break;
        case 1:
            _id_B368::main();
            break;
        case 2:
            _id_D122::main();
            break;
        case 3:
            _id_C5FC::main();
            break;
        case 4:
            _id_C63E::main();
            break;
        case 5:
            _id_B869::main();
            break;
        case 6:
            _id_B2AC::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    _id_CF19::precache();
    _id_B368::precache();
    _id_D122::precache();
    _id_C5FC::precache();
    _id_C63E::precache();
    _id_B869::precache();
    _id_B2AC::precache();
}
