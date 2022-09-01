// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "team3";
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
    self setspawnerteam( "team3" );
}

precache()
{
    _id_B053::precache();
    _id_C0F6::precache();
    _id_B6E3::precache();
    precacheitem( "rpg" );
    precacheitem( "ak47_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
