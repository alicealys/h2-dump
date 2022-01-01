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
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 12 ) )
    {
        case 0:
            self._ID1302 = "ak47";
            break;
        case 1:
            self._ID1302 = "ak47_digital_reflex";
            break;
        case 2:
            self._ID1302 = "ak47_digital_grenadier";
            break;
        case 3:
            self._ID1302 = "ak47_digital_acog";
            break;
        case 4:
            self._ID1302 = "fal_acog";
            break;
        case 5:
            self._ID1302 = "fal_shotgun";
            break;
        case 6:
            self._ID1302 = "tavor_digital_acog";
            break;
        case 7:
            self._ID1302 = "tavor_mars";
            break;
        case 8:
            self._ID1302 = "tavor_digital_eotech";
            break;
        case 9:
            self._ID1302 = "tavor_reflex";
            break;
        case 10:
            self._ID1302 = "ak47_shotgun";
            break;
        case 11:
            self._ID1302 = "ak47_digital_eotech";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID44009::_ID616();
            break;
        case 1:
            _ID53555::_ID616();
            break;
        case 2:
            _ID54071::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID44009::_ID814();
    _ID53555::_ID814();
    _ID54071::_ID814();
    precacheitem( "ak47" );
    precacheitem( "ak47_digital_reflex" );
    precacheitem( "ak47_digital_grenadier" );
    precacheitem( "gl_ak47_digital" );
    precacheitem( "ak47_digital_acog" );
    precacheitem( "fal_acog" );
    precacheitem( "fal_shotgun" );
    precacheitem( "fal_shotgun_attach" );
    precacheitem( "tavor_digital_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "tavor_digital_eotech" );
    precacheitem( "tavor_reflex" );
    precacheitem( "ak47_shotgun" );
    precacheitem( "ak47_shotgun_attach" );
    precacheitem( "ak47_digital_eotech" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
