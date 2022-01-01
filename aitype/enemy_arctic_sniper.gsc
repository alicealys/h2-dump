// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint.csv";
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
        self setengagementmindist( 1024.0, 825.0 );
        self setengagementmaxdist( 1450.0, 2100.0 );
    }

    self._ID1302 = "dragunov_arctic";
    _ID45215::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45215::_ID814();
    precacheitem( "dragunov_arctic" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
    _ID42368::_ID616();
}
