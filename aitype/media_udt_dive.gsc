// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "neutral";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 100;
    self._ID470 = "";
    self._ID464 = 0;
    self._ID949 = "fraggrenade";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self._ID1302 = "beretta";
    _ID51328::_ID616();
}

_ID988()
{
    self setspawnerteam( "neutral" );
}

_ID814()
{
    _ID51328::_ID814();
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
    precacheitem( "glock" );
}
