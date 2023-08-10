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
    self.secondaryweapon = "ak47_reflex";
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self.weapon = "rpg";

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_CCF0::main();
            break;
        case 1:
            _id_C1CD::main();
            break;
        case 2:
            _id_D3E9::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_CCF0::precache();
    _id_C1CD::precache();
    _id_D3E9::precache();
    precacheitem( "rpg" );
    precacheitem( "ak47_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
