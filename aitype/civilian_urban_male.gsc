// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "neutral";
    self.type = "civilian";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 30;
    self.grenadeweapon = "";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "none";

    switch ( _ID42226::_ID15942( 24 ) )
    {
        case 0:
            _ID46119::main();
            break;
        case 1:
            _ID48655::main();
            break;
        case 2:
            _ID51881::main();
            break;
        case 3:
            _ID50391::main();
            break;
        case 4:
            _ID43220::main();
            break;
        case 5:
            _ID44909::main();
            break;
        case 6:
            _ID45024::main();
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

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID46119::_ID814();
    _ID48655::_ID814();
    _ID51881::_ID814();
    _ID50391::_ID814();
    _ID43220::_ID814();
    _ID44909::_ID814();
    _ID45024::_ID814();
    character\character_civilian_urban_male_bc_b_wht::_ID814();
    character\character_civilian_urban_male_bc_g_wht::_ID814();
    character\character_civilian_urban_male_bc_r_wht::_ID814();
    character\character_civilian_urban_male_bc_w_wht::_ID814();
    character\character_civilian_urban_male_aa_a_wht::_ID814();
    character\character_civilian_urban_male_aa_b_wht::_ID814();
    character\character_civilian_urban_male_aa_c_wht::_ID814();
    character\character_civilian_urban_male_ab_a_wht::_ID814();
    character\character_civilian_urban_male_ab_b_wht::_ID814();
    character\character_civilian_urban_male_ab_c_wht::_ID814();
    character\character_civilian_urban_male_ac_a_wht::_ID814();
    character\character_civilian_urban_male_ac_b_wht::_ID814();
    character\character_civilian_urban_male_ac_c_wht::_ID814();
    character\character_civilian_urban_male_ba_a_wht::_ID814();
    character\character_civilian_urban_male_ba_b_wht::_ID814();
    character\character_civilian_urban_male_bb_a_wht::_ID814();
    character\character_civilian_urban_male_bb_b_wht::_ID814();
}
