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

    switch ( codescripts\character::get_random_character( 8 ) )
    {
        case 0:
            _id_B276::main();
            break;
        case 1:
            _id_B43F::main();
            break;
        case 2:
            character\character_civilian_urban_female_a_b::main();
            break;
        case 3:
            character\character_civilian_urban_female_a_g::main();
            break;
        case 4:
            character\character_civilian_urban_female_a_p::main();
            break;
        case 5:
            character\character_civilian_urban_female_a_y::main();
            break;
        case 6:
            character\character_civilian_urban_female_b_a::main();
            break;
        case 7:
            character\character_civilian_urban_female_b_b::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    _id_B276::precache();
    _id_B43F::precache();
    character\character_civilian_urban_female_a_b::precache();
    character\character_civilian_urban_female_a_g::precache();
    character\character_civilian_urban_female_a_p::precache();
    character\character_civilian_urban_female_a_y::precache();
    character\character_civilian_urban_female_b_a::precache();
    character\character_civilian_urban_female_b_b::precache();
}
