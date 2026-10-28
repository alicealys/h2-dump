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

    switch ( codescripts\character::get_random_character( 2 ) )
    {
        case 0:
            character\character_us_army_casual_blk::main();
            break;
        case 1:
            character\character_us_army_casual_wht::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_us_army_casual_blk::precache();
    character\character_us_army_casual_wht::precache();
    precacheitem( "m4_grunt" );
    precacheitem( "beretta" );
}
