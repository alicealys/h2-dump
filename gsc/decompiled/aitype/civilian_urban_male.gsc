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

    switch ( codescripts\character::get_random_character( 24 ) )
    {
        case 0:
            _id_B427::main();
            break;
        case 1:
            _id_BE0F::main();
            break;
        case 2:
            _id_CAA9::main();
            break;
        case 3:
            _id_C4D7::main();
            break;
        case 4:
            _id_A8D4::main();
            break;
        case 5:
            _id_AF6D::main();
            break;
        case 6:
            _id_AFE0::main();
            break;
        case 7:
            character\character_civilian_urban_male_bc_b_wht::main();
            break;
        case 8:
            character\character_civilian_urban_male_bc_g_wht::main();
            break;
        case 9:
            character\character_civilian_urban_male_bc_r_wht::main();
            break;
        case 10:
            character\character_civilian_urban_male_bc_w_wht::main();
            break;
        case 11:
            character\character_civilian_urban_male_aa_a_wht::main();
            break;
        case 12:
            character\character_civilian_urban_male_aa_b_wht::main();
            break;
        case 13:
            character\character_civilian_urban_male_aa_c_wht::main();
            break;
        case 14:
            character\character_civilian_urban_male_ab_a_wht::main();
            break;
        case 15:
            character\character_civilian_urban_male_ab_b_wht::main();
            break;
        case 16:
            character\character_civilian_urban_male_ab_c_wht::main();
            break;
        case 17:
            character\character_civilian_urban_male_ac_a_wht::main();
            break;
        case 18:
            character\character_civilian_urban_male_ac_b_wht::main();
            break;
        case 19:
            character\character_civilian_urban_male_ac_c_wht::main();
            break;
        case 20:
            character\character_civilian_urban_male_ba_a_wht::main();
            break;
        case 21:
            character\character_civilian_urban_male_ba_b_wht::main();
            break;
        case 22:
            character\character_civilian_urban_male_bb_a_wht::main();
            break;
        case 23:
            character\character_civilian_urban_male_bb_b_wht::main();
            break;
    }
}

spawner()
{
    self setspawnerteam( "neutral" );
}

precache()
{
    _id_B427::precache();
    _id_BE0F::precache();
    _id_CAA9::precache();
    _id_C4D7::precache();
    _id_A8D4::precache();
    _id_AF6D::precache();
    _id_AFE0::precache();
    character\character_civilian_urban_male_bc_b_wht::precache();
    character\character_civilian_urban_male_bc_g_wht::precache();
    character\character_civilian_urban_male_bc_r_wht::precache();
    character\character_civilian_urban_male_bc_w_wht::precache();
    character\character_civilian_urban_male_aa_a_wht::precache();
    character\character_civilian_urban_male_aa_b_wht::precache();
    character\character_civilian_urban_male_aa_c_wht::precache();
    character\character_civilian_urban_male_ab_a_wht::precache();
    character\character_civilian_urban_male_ab_b_wht::precache();
    character\character_civilian_urban_male_ab_c_wht::precache();
    character\character_civilian_urban_male_ac_a_wht::precache();
    character\character_civilian_urban_male_ac_b_wht::precache();
    character\character_civilian_urban_male_ac_c_wht::precache();
    character\character_civilian_urban_male_ba_a_wht::precache();
    character\character_civilian_urban_male_ba_b_wht::precache();
    character\character_civilian_urban_male_bb_a_wht::precache();
    character\character_civilian_urban_male_bb_b_wht::precache();
}
