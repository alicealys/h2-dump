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
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( _ID42226::_ID15950( 7 ) )
    {
        case 0:
            self._ID1302 = "p90";
            break;
        case 1:
            self._ID1302 = "p90_acog";
            break;
        case 2:
            self._ID1302 = "p90_reflex";
            break;
        case 3:
            self._ID1302 = "ump45_reflex";
            break;
        case 4:
            self._ID1302 = "tmp";
            break;
        case 5:
            self._ID1302 = "ump45_acog";
            break;
        case 6:
            self._ID1302 = "ump45_eotech";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID50028::_ID616();
            break;
        case 1:
            _ID45779::_ID616();
            break;
        case 2:
            _ID48369::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID50028::_ID814();
    _ID45779::_ID814();
    _ID48369::_ID814();
    precacheitem( "p90" );
    precacheitem( "p90_acog" );
    precacheitem( "p90_reflex" );
    precacheitem( "ump45_reflex" );
    precacheitem( "tmp" );
    precacheitem( "ump45_acog" );
    precacheitem( "ump45_eotech" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
