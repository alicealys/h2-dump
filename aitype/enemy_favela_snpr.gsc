// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "sniper_glint_and_rambo.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "militia";
    self._ID10 = 0.15;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 1250.0, 1024.0 );
        self setengagementmaxdist( 1600.0, 2400.0 );
    }

    self._ID1302 = "dragunov";

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID52867::_ID616();
            break;
        case 1:
            _ID45439::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52867::_ID814();
    _ID45439::_ID814();
    precacheitem( "dragunov" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
    _ID42359::_ID616();
    _ID42368::_ID616();
}
