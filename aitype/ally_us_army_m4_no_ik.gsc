// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "allies";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 100;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {
        case 0:
            self._ID1302 = "m4_grenadier";
            break;
        case 1:
            self._ID1302 = "m4_grunt";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            character\character_us_army_assault_a_no_ik::_ID616();
            break;
        case 1:
            character\character_us_army_assault_b_no_ik::_ID616();
            break;
        case 2:
            character\character_us_army_assault_c_no_ik::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    character\character_us_army_assault_a_no_ik::_ID814();
    character\character_us_army_assault_b_no_ik::_ID814();
    character\character_us_army_assault_c_no_ik::_ID814();
    precacheitem( "m4_grenadier" );
    precacheitem( "m203_m4" );
    precacheitem( "m4_grunt" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
