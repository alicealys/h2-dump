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

    switch ( _ID42226::_ID15950( 17 ) )
    {
        case 0:
            self._ID1302 = "m4_grenadier";
            break;
        case 1:
            self._ID1302 = "m4_grunt";
            break;
        case 2:
            self._ID1302 = "m4m203_acog";
            break;
        case 3:
            self._ID1302 = "m4m203_eotech";
            break;
        case 4:
            self._ID1302 = "m4m203_reflex";
            break;
        case 5:
            self._ID1302 = "tavor_acog";
            break;
        case 6:
            self._ID1302 = "tavor_mars";
            break;
        case 7:
            self._ID1302 = "m16_acog";
            break;
        case 8:
            self._ID1302 = "m16_grenadier";
            break;
        case 9:
            self._ID1302 = "m16_reflex";
            break;
        case 10:
            self._ID1302 = "masada";
            break;
        case 11:
            self._ID1302 = "masada_acog";
            break;
        case 12:
            self._ID1302 = "masada_reflex";
            break;
        case 13:
            self._ID1302 = "scar_h";
            break;
        case 14:
            self._ID1302 = "scar_h_acog";
            break;
        case 15:
            self._ID1302 = "scar_h_reflex";
            break;
        case 16:
            self._ID1302 = "scar_h_shotgun";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID48907::_ID616();
            break;
        case 1:
            _ID43349::_ID616();
            break;
        case 2:
            _ID52301::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    _ID48907::_ID814();
    _ID43349::_ID814();
    _ID52301::_ID814();
    precacheitem( "m4_grenadier" );
    precacheitem( "m203_m4" );
    precacheitem( "m4_grunt" );
    precacheitem( "m4m203_acog" );
    precacheitem( "m203_m4_acog" );
    precacheitem( "m4m203_eotech" );
    precacheitem( "m203_m4_eotech" );
    precacheitem( "m4m203_reflex" );
    precacheitem( "m203_m4_reflex" );
    precacheitem( "tavor_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "m16_acog" );
    precacheitem( "m16_grenadier" );
    precacheitem( "m203_m16" );
    precacheitem( "m16_reflex" );
    precacheitem( "masada" );
    precacheitem( "masada_acog" );
    precacheitem( "masada_reflex" );
    precacheitem( "scar_h" );
    precacheitem( "scar_h_acog" );
    precacheitem( "scar_h_reflex" );
    precacheitem( "scar_h_shotgun" );
    precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
