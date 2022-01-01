// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "team3";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 9 ) )
    {
        case 0:
            self._ID1302 = "tavor_woodland_acog";
            break;
        case 1:
            self._ID1302 = "tavor_mars";
            break;
        case 2:
            self._ID1302 = "tavor_woodland_eotech";
            break;
        case 3:
            self._ID1302 = "tavor_reflex";
            break;
        case 4:
            self._ID1302 = "fn2000";
            break;
        case 5:
            self._ID1302 = "fn2000_acog";
            break;
        case 6:
            self._ID1302 = "fn2000_eotech";
            break;
        case 7:
            self._ID1302 = "fn2000_reflex";
            break;
        case 8:
            self._ID1302 = "fn2000_thermal";
            break;
    }

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
    self setspawnerteam( "team3" );
}

_ID814()
{
    _ID45139::_ID814();
    _ID49398::_ID814();
    _ID46819::_ID814();
    precacheitem( "tavor_woodland_acog" );
    precacheitem( "tavor_mars" );
    precacheitem( "tavor_woodland_eotech" );
    precacheitem( "tavor_reflex" );
    precacheitem( "fn2000" );
    precacheitem( "fn2000_acog" );
    precacheitem( "fn2000_eotech" );
    precacheitem( "fn2000_reflex" );
    precacheitem( "fn2000_thermal" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
