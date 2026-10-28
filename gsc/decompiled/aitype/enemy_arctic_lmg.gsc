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
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "mg4";
            break;
        case 1:
            self.weapon = "mg4_arctic";
            break;
        case 2:
            self.weapon = "mg4_arctic";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_B5A7::main();
            break;
        case 1:
            _id_D195::main();
            break;
        case 2:
            _id_BB8A::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B5A7::precache();
    _id_D195::precache();
    _id_BB8A::precache();
    precacheitem( "mg4" );
    precacheitem( "mg4_arctic" );
    precacheitem( "mg4_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
