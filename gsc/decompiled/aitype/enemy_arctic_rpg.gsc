// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "weapon_rpg_player.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "ak47_arctic_reflex";
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    self.weapon = "rpg";

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
    precacheitem( "rpg" );
    precacheitem( "ak47_arctic_reflex" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
