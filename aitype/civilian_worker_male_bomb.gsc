// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "neutral";
    self._ID1244 = "civilian";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 30;
    self._ID470 = "";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self._ID1302 = "none";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID44659::_ID616();
            break;
        case 1:
            _ID45212::_ID616();
            break;
        case 2:
            _ID54354::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID44659::_ID814();
    _ID45212::_ID814();
    _ID54354::_ID814();
}
