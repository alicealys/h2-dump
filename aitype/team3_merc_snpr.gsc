// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint.csv";
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
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {
        case 0:
            self._ID1302 = "dragunov";
            break;
        case 1:
            self._ID1302 = "dragunov_woodland";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID50028::_ID616();
            break;
        case 1:
            _ID45779::_ID616();
            break;
        case 2:
            _ID48369::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "team3" );
}

_ID814()
{
    _ID50028::_ID814();
    _ID45779::_ID814();
    _ID48369::_ID814();
    precacheitem( "dragunov" );
    precacheitem( "dragunov_woodland" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
    _ID42368::_ID616();
}
