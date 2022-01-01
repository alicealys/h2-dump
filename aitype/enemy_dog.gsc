// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "dog.atr";
    self._ID2032 = "";
    self._ID1194 = "axis";
    self._ID1244 = "dog";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 200;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "dog_bite";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self._ID1302 = "dog_bite";
    _ID46187::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID46187::_ID814();
    precacheitem( "dog_bite" );
    precacheitem( "dog_bite" );
    precacheitem( "fraggrenade" );
}
