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

    switch ( _ID42226::_ID15950( 6 ) )
    {
        case 0:
            self._ID1302 = "tavor_acog";
            break;
        case 1:
            self._ID1302 = "tavor_mars";
            break;
        case 2:
            self._ID1302 = "fn2000";
            break;
        case 3:
            self._ID1302 = "fn2000_acog";
            break;
        case 4:
            self._ID1302 = "fn2000_reflex";
            break;
        case 5:
            self._ID1302 = "fn2000_scope";
            break;
    }

    _ID45698::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45698::_ID814();
    precacheitem( "tavor_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "fn2000" );
    precacheitem( "fn2000_acog" );
    precacheitem( "fn2000_reflex" );
    precacheitem( "fn2000_scope" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
