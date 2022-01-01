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

    switch ( _ID42226::_ID15950( 3 ) )
    {
        case 0:
            self._ID1302 = "spas12";
            break;
        case 1:
            self._ID1302 = "m1014";
            break;
        case 2:
            self._ID1302 = "aa12_reflex";
            break;
    }

    _ID53786::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID53786::_ID814();
    precacheitem( "spas12" );
    precacheitem( "m1014" );
    precacheitem( "aa12_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
