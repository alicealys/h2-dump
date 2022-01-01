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

    switch ( _ID42226::_ID15950( 7 ) )
    {
        case 0:
            self._ID1302 = "striker";
            break;
        case 1:
            self._ID1302 = "striker_reflex";
            break;
        case 2:
            self._ID1302 = "striker_woodland";
            break;
        case 3:
            self._ID1302 = "striker_woodland_reflex";
            break;
        case 4:
            self._ID1302 = "m1014";
            break;
        case 5:
            self._ID1302 = "m1014";
            break;
        case 6:
            self._ID1302 = "m1014";
            break;
    }

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID53933::_ID616();
            break;
        case 1:
            _ID51729::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID53933::_ID814();
    _ID51729::_ID814();
    precacheitem( "striker" );
    precacheitem( "striker_reflex" );
    precacheitem( "striker_woodland" );
    precacheitem( "striker_woodland_reflex" );
    precacheitem( "m1014" );
    precacheitem( "m1014" );
    precacheitem( "m1014" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
