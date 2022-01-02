// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self.team = "axis";
    self.type = "human";
    self._ID36736 = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self._ID949 = "";
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( _ID42226::_ID15950( 7 ) )
    {
        case 0:
            self.weapon = "kriss";
            break;
        case 1:
            self.weapon = "kriss_reflex";
            break;
        case 2:
            self.weapon = "ump45_arctic";
            break;
        case 3:
            self.weapon = "ump45_reflex";
            break;
        case 4:
            self.weapon = "p90";
            break;
        case 5:
            self.weapon = "kriss_eotech";
            break;
        case 6:
            self.weapon = "p90_arctic";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            character\character_opforce_arctic_smg_l1::main();
            break;
        case 1:
            character\character_opforce_arctic_smg_b_l1::main();
            break;
        case 2:
            character\character_opforce_arctic_smg_c_l1::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    character\character_opforce_arctic_smg_l1::_ID814();
    character\character_opforce_arctic_smg_b_l1::_ID814();
    character\character_opforce_arctic_smg_c_l1::_ID814();
    precacheitem( "kriss" );
    precacheitem( "kriss_reflex" );
    precacheitem( "ump45_arctic" );
    precacheitem( "ump45_reflex" );
    precacheitem( "p90" );
    precacheitem( "kriss_eotech" );
    precacheitem( "p90_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
