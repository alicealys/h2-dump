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

    switch ( _ID42226::_ID15950( 12 ) )
    {
        case 0:
            self._ID1302 = "m16_basic";
            break;
        case 1:
            self._ID1302 = "m240";
            break;
        case 2:
            self._ID1302 = "m16_grenadier";
            break;
        case 3:
            self._ID1302 = "m240_reflex";
            break;
        case 4:
            self._ID1302 = "m16_acog";
            break;
        case 5:
            self._ID1302 = "m240_acog";
            break;
        case 6:
            self._ID1302 = "m4_grenadier";
            break;
        case 7:
            self._ID1302 = "scar_h_acog";
            break;
        case 8:
            self._ID1302 = "m4_grunt";
            break;
        case 9:
            self._ID1302 = "scar_h_shotgun";
            break;
        case 10:
            self._ID1302 = "scar_h_reflex";
            break;
        case 11:
            self._ID1302 = "scar_h_grenadier";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID45035::_ID616();
            break;
        case 1:
            _ID45927::_ID616();
            break;
        case 2:
            _ID43332::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID45035::_ID814();
    _ID45927::_ID814();
    _ID43332::_ID814();
    precacheitem( "m16_basic" );
    precacheitem( "m240" );
    precacheitem( "m16_grenadier" );
    precacheitem( "m203_m16" );
    precacheitem( "m240_reflex" );
    precacheitem( "m16_acog" );
    precacheitem( "m240_acog" );
    precacheitem( "m4_grenadier" );
    precacheitem( "m203_m4" );
    precacheitem( "scar_h_acog" );
    precacheitem( "m4_grunt" );
    precacheitem( "scar_h_shotgun" );
    precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "scar_h_reflex" );
    precacheitem( "scar_h_grenadier" );
    precacheitem( "scar_h_m203" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
