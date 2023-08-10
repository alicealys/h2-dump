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
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 2 ) )
    {
        case 0:
            self.weapon = "ak47";
            break;
        case 1:
            self.weapon = "ump45";
            break;
    }

    _id_B097::main();
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_B097::precache();
    precacheitem( "ak47" );
    precacheitem( "ump45" );
    precacheitem( "fraggrenade" );
}
