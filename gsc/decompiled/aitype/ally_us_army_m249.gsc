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
            self.weapon = "m240";
            break;
        case 1:
            self.weapon = "m240_acog";
            break;
        case 2:
            self.weapon = "m240_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_BA70::main();
            break;
        case 1:
            _id_B280::main();
            break;
        case 2:
            _id_C896::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    _id_BA70::precache();
    _id_B280::precache();
    _id_C896::precache();
    precacheitem( "m240" );
    precacheitem( "m240_acog" );
    precacheitem( "m240_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
