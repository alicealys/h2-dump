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
    self.sidearm = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( codescripts\character::get_random_weapon( 12 ) )
    {
        case 0:
            self.weapon = "ak47";
            break;
        case 1:
            self.weapon = "ak47_digital_reflex";
            break;
        case 2:
            self.weapon = "ak47_digital_grenadier";
            break;
        case 3:
            self.weapon = "ak47_digital_acog";
            break;
        case 4:
            self.weapon = "fal_acog";
            break;
        case 5:
            self.weapon = "fal_shotgun";
            break;
        case 6:
            self.weapon = "tavor_digital_acog";
            break;
        case 7:
            self.weapon = "tavor_mars";
            break;
        case 8:
            self.weapon = "tavor_digital_eotech";
            break;
        case 9:
            self.weapon = "tavor_reflex";
            break;
        case 10:
            self.weapon = "ak47_shotgun";
            break;
        case 11:
            self.weapon = "ak47_digital_eotech";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            _id_ABE9::main();
            break;
        case 1:
            _id_D133::main();
            break;
        case 2:
            _id_D337::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_ABE9::precache();
    _id_D133::precache();
    _id_D337::precache();
    precacheitem( "ak47" );
    precacheitem( "ak47_digital_reflex" );
    precacheitem( "ak47_digital_grenadier" );
    precacheitem( "gl_ak47_digital" );
    precacheitem( "ak47_digital_acog" );
    precacheitem( "fal_acog" );
    precacheitem( "fal_shotgun" );
    precacheitem( "fal_shotgun_attach" );
    precacheitem( "tavor_digital_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "tavor_digital_eotech" );
    precacheitem( "tavor_reflex" );
    precacheitem( "ak47_shotgun" );
    precacheitem( "ak47_shotgun_attach" );
    precacheitem( "ak47_digital_eotech" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
