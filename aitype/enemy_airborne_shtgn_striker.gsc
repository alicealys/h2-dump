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
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 280.0, 400.0 );
    }

    switch ( _ID42226::_ID15950( 2 ) )
    {
        case 0:
            self._ID1302 = "striker";
            break;
        case 1:
            self._ID1302 = "striker_reflex";
            break;
    }

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID45960::_ID616();
            break;
        case 1:
            _ID48607::_ID616();
            break;
        case 2:
            _ID51791::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45960::_ID814();
    _ID48607::_ID814();
    _ID51791::_ID814();
    precacheitem( "striker" );
    precacheitem( "striker_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
