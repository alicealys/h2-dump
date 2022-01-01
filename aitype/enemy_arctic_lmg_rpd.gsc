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
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 3 ) )
    {
        case 0:
            self._ID1302 = "rpd";
            break;
        case 1:
            self._ID1302 = "rpd_reflex";
            break;
        case 2:
            self._ID1302 = "rpd_acog";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID46503::_ID616();
            break;
        case 1:
            _ID53653::_ID616();
            break;
        case 2:
            _ID48010::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID46503::_ID814();
    _ID53653::_ID814();
    _ID48010::_ID814();
    precacheitem( "rpd" );
    precacheitem( "rpd_reflex" );
    precacheitem( "rpd_acog" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
