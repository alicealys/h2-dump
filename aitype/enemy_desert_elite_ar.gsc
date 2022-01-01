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
    self._ID486 = 200;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 12 ) )
    {
        case 0:
            self._ID1302 = "masada_digital";
            break;
        case 1:
            self._ID1302 = "masada_acog";
            break;
        case 2:
            self._ID1302 = "masada_reflex";
            break;
        case 3:
            self._ID1302 = "scar_h";
            break;
        case 4:
            self._ID1302 = "scar_h_acog";
            break;
        case 5:
            self._ID1302 = "scar_h_grenadier";
            break;
        case 6:
            self._ID1302 = "scar_h_reflex";
            break;
        case 7:
            self._ID1302 = "scar_h_shotgun";
            break;
        case 8:
            self._ID1302 = "scar_h_thermal";
            break;
        case 9:
            self._ID1302 = "masada_digital_eotech";
            break;
        case 10:
            self._ID1302 = "masada_digital_acog";
            break;
        case 11:
            self._ID1302 = "masada_digital_reflex";
            break;
    }

    _ID53126::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID53126::_ID814();
    precacheitem( "masada_digital" );
    precacheitem( "masada_acog" );
    precacheitem( "masada_reflex" );
    precacheitem( "scar_h" );
    precacheitem( "scar_h_acog" );
    precacheitem( "scar_h_grenadier" );
    precacheitem( "scar_h_m203" );
    precacheitem( "scar_h_reflex" );
    precacheitem( "scar_h_shotgun" );
    precacheitem( "scar_h_shotgun_attach" );
    precacheitem( "scar_h_thermal" );
    precacheitem( "masada_digital_eotech" );
    precacheitem( "masada_digital_acog" );
    precacheitem( "masada_digital_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
