// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

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

    switch ( codescripts\character::get_random_weapon( 9 ) )
    {
        case 0:
            self.weapon = "ak47_arctic";
            break;
        case 1:
            self.weapon = "ak47_arctic_acog";
            break;
        case 2:
            self.weapon = "ak47_arctic_grenadier";
            break;
        case 3:
            self.weapon = "ak47_arctic_reflex";
            break;
        case 4:
            self.weapon = "famas_arctic";
            break;
        case 5:
            self.weapon = "famas_arctic_reflex";
            break;
        case 6:
            self.weapon = "aug_scope_arctic";
            break;
        case 7:
            self.weapon = "aug_reflex_arctic";
            break;
        case 8:
            self.weapon = "aug_reflex_arctic";
            break;
    }

    switch ( codescripts\character::get_random_character( 3 ) )
    {
        case 0:
            character\character_opforce_arctic_assault_a_l1::main();
            break;
        case 1:
            character\character_opforce_arctic_assault_b_l1::main();
            break;
        case 2:
            character\character_opforce_arctic_assault_c_l1::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    character\character_opforce_arctic_assault_a_l1::precache();
    character\character_opforce_arctic_assault_b_l1::precache();
    character\character_opforce_arctic_assault_c_l1::precache();
    precacheitem( "ak47_arctic" );
    precacheitem( "ak47_arctic_acog" );
    precacheitem( "ak47_arctic_grenadier" );
    precacheitem( "gl_ak47_arctic" );
    precacheitem( "ak47_arctic_reflex" );
    precacheitem( "famas_arctic" );
    precacheitem( "famas_arctic_reflex" );
    precacheitem( "aug_scope_arctic" );
    precacheitem( "aug_reflex_arctic" );
    precacheitem( "aug_reflex_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
