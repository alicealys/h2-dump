// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
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
            self._ID1302 = "spas12_arctic";
            break;
        case 1:
            self._ID1302 = "spas12";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            character\character_opforce_arctic_shotgun_l1::_ID616();
            break;
        case 1:
            character\character_opforce_arctic_shotgun_b_l1::_ID616();
            break;
        case 2:
            character\character_opforce_arctic_shotgun_c_l1::_ID616();
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
