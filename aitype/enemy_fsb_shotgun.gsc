// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "riotshield.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "elite";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {
        case 0:
            self._ID1302 = "spas12";
            break;
        case 1:
            self._ID1302 = "spas12_reflex";
            break;
    }

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID44018::_ID616();
            break;
        case 1:
            _ID51629::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID44018::_ID814();
    _ID51629::_ID814();
    precacheitem( "spas12" );
    precacheitem( "spas12_reflex" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
