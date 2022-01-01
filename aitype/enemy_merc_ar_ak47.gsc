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
    self._ID949 = "beretta";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self._ID1302 = "ak47";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID45139::_ID616();
            break;
        case 1:
            _ID49398::_ID616();
            break;
        case 2:
            _ID46819::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45139::_ID814();
    _ID49398::_ID814();
    _ID46819::_ID814();
    precacheitem( "ak47" );
    precacheitem( "beretta" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
