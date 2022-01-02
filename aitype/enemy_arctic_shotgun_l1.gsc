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
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {
        case 0:
            self.weapon = "spas12_arctic";
            break;
        case 1:
            self.weapon = "spas12";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            character\character_opforce_arctic_shotgun_l1::main();
            break;
        case 1:
            character\character_opforce_arctic_shotgun_b_l1::main();
            break;
        case 2:
            character\character_opforce_arctic_shotgun_c_l1::main();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    character\character_opforce_arctic_shotgun_l1::_ID814();
    character\character_opforce_arctic_shotgun_b_l1::_ID814();
    character\character_opforce_arctic_shotgun_c_l1::_ID814();
    precacheitem( "spas12_arctic" );
    precacheitem( "spas12" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
