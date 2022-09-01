// H2 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "common_rambo_anims.csv";
    self.team = "axis";
    self.type = "human";
    self.subclass = "militia";
    self.accuracy = 0.12;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 512.0, 400.0 );
        self setengagementmaxdist( 1024.0, 1250.0 );
    }

    switch ( codescripts\character::get_random_weapon( 3 ) )
    {
        case 0:
            self.weapon = "rpd_acog";
            break;
        case 1:
            self.weapon = "rpd";
            break;
        case 2:
            self.weapon = "rpd_reflex";
            break;
    }

    switch ( codescripts\character::get_random_character( 11 ) )
    {
        case 0:
            _id_C874::main();
            break;
        case 1:
            _id_B17F::main();
            break;
        case 2:
            _id_C242::main();
            break;
        case 3:
            _id_D2AA::main();
            break;
        case 4:
            _id_AEDD::main();
            break;
        case 5:
            _id_D303::main();
            break;
        case 6:
            _id_B90E::main();
            break;
        case 7:
            _id_B377::main();
            break;
        case 8:
            _id_BC62::main();
            break;
        case 9:
            _id_B9C3::main();
            break;
        case 10:
            _id_A935::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "axis" );
}

precache()
{
    _id_C874::precache();
    _id_B17F::precache();
    _id_C242::precache();
    _id_D2AA::precache();
    _id_AEDD::precache();
    _id_D303::precache();
    _id_B90E::precache();
    _id_B377::precache();
    _id_BC62::precache();
    _id_B9C3::precache();
    _id_A935::precache();
    precacheitem( "rpd_acog" );
    precacheitem( "rpd" );
    precacheitem( "rpd_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
    maps\_rambo::main();
}
