// H2 GSC SOURCE
// Dumped by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "neutral";
    self.type = "civilian";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 30;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self.secondaryweapon = "";
    self.sidearm = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "none";

    switch ( codescripts\character::get_random_character( 9 ) )
    {
        case 0:
            _id_A471::main();
            break;
        case 1:
            _id_A472::main();
            break;
        case 2:
            _id_A473::main();
            break;
        case 3:
            _id_A474::main();
            break;
        case 4:
            _id_A475::main();
            break;
        case 5:
            _id_A476::main();
            break;
        case 6:
            _id_A477::main();
            break;
        case 7:
            _id_A478::main();
            break;
        case 8:
            character\character_civ_slum_female_a::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    _id_A471::precache();
    _id_A472::precache();
    _id_A473::precache();
    _id_A474::precache();
    _id_A475::precache();
    _id_A476::precache();
    _id_A477::precache();
    _id_A478::precache();
    character\character_civ_slum_female_a::precache();
}
